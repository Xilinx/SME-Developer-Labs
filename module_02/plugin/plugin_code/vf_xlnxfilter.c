/*
 * Copyright (c) 2016 Paul B Mahol
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */

#include "libavutil/imgutils.h"
#include "libavutil/opt.h"
#include "libavutil/pixdesc.h"
#include "avfilter.h"
#include "formats.h"
#include "internal.h"
#include "video.h"

#include "xlnxfilter_core/xlnxfilter_core.h"

//
enum CoeffMode {
    COEFF_BLUR,
    COEFF_IDENTITY,
    COEFF_MOTIONBLUR,
    COEFF_EMBOSS,
    NB_COEFF
};

typedef struct {
    const AVClass *class;
    int coeff;
    int linesize[3];
    int depth;
    int width;
    int height;
    int nb_planes;
    int sw_only;
    int hw_only;
    int ncompute_unit;
    int both; // Debug
    RunMode run;
    //XFILTER_PRIV_CNTX *xlnx_priv_cntx;  
} XlnxFilterContext;

#define OFFSET(x) offsetof(XlnxFilterContext, x)
#define FLAGS AV_OPT_FLAG_FILTERING_PARAM|AV_OPT_FLAG_VIDEO_PARAM

static const AVOption xlnxfilter_options[] = {
   // { "sw_only", "Don't use HW when sw_only == 1", OFFSET(sw_only), AV_OPT_TYPE_INT, {.i64=0},    0,    1, .flags = FLAGS },
   // { "hw_only", "Don't use SW when hw_only == 1", OFFSET(hw_only), AV_OPT_TYPE_INT, {.i64=0},    0,    1, .flags = FLAGS },
    { "ncompute_unit", "specify number of compute unit on FPGA", OFFSET(ncompute_unit), AV_OPT_TYPE_INT, {.i64=0},    0,    6, .flags = FLAGS },
    { "coeff", "set coeff", OFFSET(coeff), AV_OPT_TYPE_INT, {.i64=COEFF_BLUR}, 0, NB_COEFF-1, FLAGS, "coeff" },
    { "blur",    "blur coefficients",  0, AV_OPT_TYPE_CONST, {.i64=COEFF_BLUR},    INT_MIN, INT_MAX, FLAGS, "coeff" },
    { "identity", "identity coefficients",    0, AV_OPT_TYPE_CONST, {.i64=COEFF_IDENTITY}, INT_MIN, INT_MAX, FLAGS, "coeff" },
    { "motionblur", "motionblur coefficients",    0, AV_OPT_TYPE_CONST, {.i64=COEFF_MOTIONBLUR}, INT_MIN, INT_MAX, FLAGS, "coeff" },
    { "emboss", "emboss coefficients",    0, AV_OPT_TYPE_CONST, {.i64=COEFF_EMBOSS}, INT_MIN, INT_MAX, FLAGS, "coeff" },
    { "both", "running both software and hardware", OFFSET(both), AV_OPT_TYPE_INT, {.i64=0},    0,    1, .flags = FLAGS },
    { NULL }
};

AVFILTER_DEFINE_CLASS(xlnxfilter);

static av_cold int init(AVFilterContext *ctx)
{
             return 0;
}
    


static int config_input(AVFilterLink *inlink)
{
    const AVPixFmtDescriptor *desc = av_pix_fmt_desc_get(inlink->format);
    XlnxFilterContext *s = inlink->dst->priv;

    s->depth = desc->comp[0].depth;
    s->width = inlink->w;
    s->height = inlink->h;
    s->nb_planes = av_pix_fmt_count_planes(inlink->format);

    // Check if number of video planes == 3
    if (s->nb_planes != 3) {
        av_log(NULL, AV_LOG_ERROR, "ERROR: Number of video planes should be 3; Exiting...\n");
        return AVERROR(EINVAL);
    }

    // Check if input format is YUV420p
    if (inlink->format != AV_PIX_FMT_YUV444P) {
        av_log(NULL, AV_LOG_ERROR, "ERROR: Input format %d doesnot match supported format %d. Supports only YUV444p; Exiting... \n", (int)inlink->format, (int)AV_PIX_FMT_YUV420P);
        return AVERROR(EINVAL);
    }

    // Check if input format is 8 bpp
    if (s->depth != 8) {
        av_log(NULL, AV_LOG_ERROR, "ERROR: Only 8 bit formats implemented; Exiting...\n");
        return AVERROR(EINVAL);
    }
    

    return 0;
}


static int query_formats(AVFilterContext *ctx)
{
    static const enum AVPixelFormat pix_fmts[] = {
        AV_PIX_FMT_YUV444P,
        AV_PIX_FMT_NONE
    };

    AVFilterFormats *fmts_list = ff_make_format_list(pix_fmts);
    if (!fmts_list)
        return AVERROR(ENOMEM);
    return ff_set_common_formats(ctx, fmts_list);
    //return ff_set_common_formats(ctx, ff_make_format_list(pix_fmts));
}

static int filter_frame(AVFilterLink *inlink, AVFrame *in) 
{
    AVFilterContext *ctx = inlink->dst;
    XlnxFilterContext *s = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];
    AVFrame *out;
    int ret;
    unsigned int w,h;

    out = ff_get_video_buffer(outlink, outlink->w, outlink->h);

    if (!out)
        {
        av_frame_free(&in);
        return AVERROR(ENOMEM);
    }
    av_frame_copy_props(out, in);

    // If hardware is detected and xclbin is successfully loaded, hardware processing is done here
    w = s->width;
    h = s->height;

    unsigned int nk;
    nk=s->ncompute_unit;

    unsigned both=s->both;

    ret = xlnxfilter_core(in, out, w,h, s->coeff,nk,both);

    if ((ret < 0) ) {
            printf("Error while processing in HW...\n");
    }
    av_frame_free(&in);
    return ff_filter_frame(outlink, out);
}



static av_cold void uninit(AVFilterContext *ctx)
{
}

static const AVFilterPad xlnxfilter_inputs[] = {
    {
        .name         = "default",
        .type         = AVMEDIA_TYPE_VIDEO,
        .config_props = config_input,
        .filter_frame = filter_frame,
    },
    { NULL }
};

static const AVFilterPad xlnxfilter_outputs[] = {
    {
        .name = "default",
        .type = AVMEDIA_TYPE_VIDEO,
    },
    { NULL }
};

AVFilter ff_vf_xlnxfilter = {
    .name          = "xlnxfilter",
    .description   = NULL_IF_CONFIG_SMALL("Apply xilinx filter."),
    .priv_size     = sizeof(XlnxFilterContext),
    .init          = init,
    .uninit        = uninit,
    .query_formats = query_formats,
    .inputs        = xlnxfilter_inputs,
    .outputs       = xlnxfilter_outputs,
    .priv_class    = &xlnxfilter_class,
    .flags         = AVFILTER_FLAG_SUPPORT_TIMELINE_GENERIC,
};
