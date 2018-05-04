/*
 * This file is part of FFmpeg.
 *
 * FFmpeg is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * FFmpeg is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with FFmpeg; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
 *
 */


#ifndef _XLNXFILTER_CORE_H_
#define _XLNXFILTER_CORE_H_



#include "libavfilter/avfilter.h"
#include "libavutil/opencl.h"
#include "libavutil/log.h"
#include <CL/cl_ext.h>

typedef int COEFFTYPE;
#define COEFF_ARRAY_SIZE 900
//typedef short COEFFTYPE;
//#define COEFF_ARRAY_SIZE 450

typedef enum {
     RUN_SW,
     RUN_HW,
     RUN_BOTH
}RunMode;

#define KERNEL_V_SIZE 15
#define KERNEL_H_SIZE 15
typedef struct Window2D {
        int mWidth;
        int mHeight;
        int mStride;
   unsigned char mPixelWindow[KERNEL_V_SIZE][KERNEL_H_SIZE];
} Window2D;

typedef struct oclRequest_t {

  cl_event mEvent[3];	
  //cl_event mEventF[2];	
  int      mId;
} oclRequest;

typedef struct FilterDispatcher_t {

  cl_kernel         mKernel[3];
  cl_command_queue  mQueue;	
  cl_context        mContext;  
  cl_program        mProgram;
  cl_mem_ext_ptr_t  mSrcExtY;
  cl_mem_ext_ptr_t  mSrcExtU;
  cl_mem_ext_ptr_t  mSrcExtV;
  cl_mem_ext_ptr_t  mCoeffExt;
  cl_mem_ext_ptr_t  mDstExtY;
  cl_mem_ext_ptr_t  mDstExtU;
  cl_mem_ext_ptr_t  mDstExtV;
  cl_int            mErr;
  //cl_mem            mSrcBuf[3];
  cl_mem            mSrcBufY[1];
  cl_mem            mSrcBufU[1];
  cl_mem            mSrcBufV[1];
  cl_mem            mCoeffBuf[1];
  //cl_mem            mDstBuf[3]; 
  cl_mem            mDstBufY[1]; 
  cl_mem            mDstBufU[1]; 
  cl_mem            mDstBufV[1]; 
  int               mCounter; 
}FilterDispatcher;

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
   FilterDispatcher *filter;
} XlnxFilterContext;



FilterDispatcher* FilterDispatcher_init(cl_device_id Device, cl_context Context, cl_program Program );
oclRequest* Execute ( FilterDispatcher* B, unsigned char    *src, unsigned int      width, unsigned int      height, unsigned int      stride, COEFFTYPE* coeff, unsigned char    *dst , int num);
int init_xlnxfilter_core(XlnxFilterContext *ctx);
void release_xlnxfilter_core(XlnxFilterContext *ctx);
void FilterDispatcher_destroy(FilterDispatcher* B);

int xlnxfilter_core(XlnxFilterContext *ctx, const AVFrame *pic, const AVFrame *dst, int format);
int window_next(Window2D* win, unsigned char *srcImg, unsigned x, unsigned y);
unsigned char get_window (Window2D* win, int row, int col); 
Window2D* initialize_Window2D(unsigned short width, unsigned short height, unsigned short stride);
void xlnxfilter_software( unsigned char *srcImg, unsigned int   width, unsigned int   height, unsigned int   stride, int* coeff, unsigned char *dstImg );
void sync(oclRequest* p);

#endif 
