<table style="width:100%">
  <tr>
    <th width="100%" colspan="6"><h2>AWS F1 Xilinx Developer Labs</h2></th>
  </tr>
  <tr>
    <td width="17%" align="center"><a href="README.md">Introduction</a></td>
    <td width="16%" align="center"><a href="SETUP.md">1. Connecting to your F1 instance</a></td> 
    <td width="17%" align="center"><a href="FFMPEG_Lab.md">2. Experiencing F1 acceleration</a></td>
    <td width="17%" align="center"><a href="FILTER2D_Lab.md">3. Developing F1 applications</a></td>
    <td width="16%" align="center"><b>4. Creating a custom FFmpeg plug-in</b></td>
    <td width="17%" align="center"><a href="WRAP_UP.md">5. Wrapping-up</td>
  </tr>
</table>
	
---------------------------------------
	
### Creating a custom FFmpeg plug-in

This tutorial is designed to teach how to add your own custom FFmpeg plugin. The filter will be added to the libavfilter library that provides a generic audio/video filtering framework containing several filters, sources, and sinks. 

The kernel used in this tutorial is the 2D image filter, that you already have seen in the previous section while working with the standalone SDAccel environment. The kernel is already precompiled with SDAccel with 1 and 3 kernels per xclbin. This can be selected through the FFmpeg command line by ncompute_unit=1 and ncompute_unit=3, respectively. The OpenCL host code is used to write FFMpeg Plugin code by using standard FFMpeg filter writing process. 

We will follow these steps during this tutorial:
* Build FFmpeg standalone without the Xilinx 2D filter plugin
* Observe the Xilinx 2D filter plugin code
* Merge our code into the FFmpeg code base
* Rebuild FFmpeg with the Xilinx 2D filter plugin code

### Building FFMpeg Application

1. Right Click anywhere in the desktop and Open a Terminal. 

    **Please make sure to open a new terminal and do not use the old terminal from previous lab.** 
2. Navigate to the FFmpeg lab directory
   ```bash
    cd ~/SME-Developer-Labs/module_02/plugin
    ```
3. The directory contains following scripts and directories
 * build_ffmpeg.sh : Script to download the FFMpeg source code, its dependencies and build ```ffmpeg``` executable
 * merge_plugin_code.sh : Script to merge Xilinx 2D filter plugin code inside ffmpeg code base
 * build_ffmpeg_with_plugin.sh : Script to do an incremental build with the Xilinx 2D filter plugin and rebuild the ```ffmpeg``` executable
 * plugin_code : Directory containing the Xilinx 2D filter plugin code

We will execute script build_ffmpeg.sh to Build the FFmpeg executable.
The script will do following things
1. Download and build FFMpeg Dependencies: NASM and YASM
2. Clone FFMpeg from git.ffmpeg.org
3. Copy Xilinx SDAccel Runtime library and OpenCL library
4. Build FFMpeg

This is pretty much standard FFmpeg building procedure. We have included the Xilinx SDAccel runtime and OpenCL library as these libraries will be used when we add the Xilinx 2D filter plugin code in the next step. 

Execute the script 
```
  ./build_ffmpeg.sh
```
This build procedure takes a little less than 5 minutes. Have a nice short break :) 

After the build process, you can find a new directory XlnxFilter (though it does not contain the Xilinx 2D filter yet). You can find the ```ffmpeg``` executable inside XlnxFilter/bin/ffmpeg

### Xilinx 2D filter FFmpeg plugin code
You can find all related code inside the **plugin_code** directory. 
The steps below describe how Xilinx 2D filter is integrated inside the FFMpeg. You DO NOT need to edit any file. 

1.	First step to register the new filter. Open the **plugin_code/allfilters.c** file and find the following entry (**line 140**).
    ```bash
    REGISTER_FILTER(XLNXFILTER, xlnxfilter, vf);
	```
	The **allfilters.c** file is parsed by the configure script, which in turn will define variables for the build system and the C sources.
	
2.	The filter needs to be added to the **Makefile** of **libavfilter**. 
        Open **plugin_code/Makefile** and look at **line 130** 
    ```bash
	OBJS-$(CONFIG_XLNXFILTER_FILTER)             += vf_xlnxfilter.o
	```
       
       
3.	Next open **plugin_code/xlnxfilter_core/xlnxfilter_core.h**. 
	* Take a look at the **context** structure (**line 67**). This contains the local state context and is where we put all "global" information that we need; typically the variables storing the user options. Notice the first field **const AVClass *class;** it is the only field we need to keep assuming we have a context.
    ```bash
	typedef struct {
		const AVClass *class;
		int coeff;
		int linesize[3];
		int depth;
		int width;
		int height;
		int nb_planes;
		int ncompute_unit;
	} XlnxFilterContext;
	```

4. Next open **plugin_code/vf_xlnxfilter.c**  This file implements the Xilinx hardware accelerated Filter 2D ```FFmpeg``` plugin.

	* The **options** array (**line 46**) defines the user accessible options. For example, -vf xlnxfilter=coeff=blur:ncompute_unit=3. Most options
have the following pattern:
		* name, description, offset, type, default value, minimum value, maximum value, flags
		* **name** is the option name, keep it simple and lowercase
		* **description** describes what the option does
		* **offset** is the offset of the field in your local context, see the **OFFSET()** macro
		* **type** is any of AV_OPT_TYPE_* defined in libavutil/opt.h
		* **default value** defines the appropriate type with default value, for example "{.dbl=0.1}", "{.i64=0x1234}", "{.str=NULL}"
		* **min** and **max** values define the range (inclusive) of available values
		* **flags** are **AVOption** generic flags, see **AV_OPT_FLAG_ ** definitions for more information.
		```bash
		static const AVOption xlnxfilter_options[] = {
			{ "ncompute_unit", "specify number of compute unit on FPGA", OFFSET(ncompute_unit), AV_OPT_TYPE_INT, {.i64=0},    0,    6, .flags = FLAGS },
			{ "coeff", "set coeff", OFFSET(coeff), AV_OPT_TYPE_INT, {.i64=COEFF_BLUR}, 0, NB_COEFF-1, FLAGS, "coeff" },
				{ "blur",    "blur coefficients",  0, AV_OPT_TYPE_CONST, {.i64=COEFF_BLUR},    INT_MIN, INT_MAX, FLAGS, "coeff" },
				{ "identity", "identity coefficients",    0, AV_OPT_TYPE_CONST, {.i64=COEFF_IDENTITY}, INT_MIN, INT_MAX, FLAGS, "coeff" },
				{ "motionblur", "motionblur coefficients",    0, AV_OPT_TYPE_CONST, {.i64=COEFF_MOTIONBLUR}, INT_MIN, INT_MAX, FLAGS, "coeff" },
				{ "emboss", "emboss coefficients",    0, AV_OPT_TYPE_CONST, {.i64=COEFF_EMBOSS}, INT_MIN, INT_MAX, FLAGS, "coeff" },
			{ NULL }
		};
		```

	* All filters are described by an AVFilter structure (**line 181**) . This structure gives information needed to initialize the filter, and information on the entry points (callbacks) into the filter code. The **AVFilter** structure is declared in **libavfilter/avfilter.h**.
		```bash
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
		```

		```bash
		static const AVFilterPad xlnxfilter_inputs[] = {
			{
				.name         = "default",
				.type         = AVMEDIA_TYPE_VIDEO,
				.config_props = config_input,
				.filter_frame = filter_frame,
			},
			{ NULL }
		};
		```

		```bash
		static const AVFilterPad xlnxfilter_outputs[] = {
			{
				.name = "default",
				.type = AVMEDIA_TYPE_VIDEO,
			},
			{ NULL }
		};
		```
		* **init** as the name suggest is where the filter will get initialized. Note that at this point, the local context already has the user options initialized, but at this point we still don't know about the kind of data input we will get. Therefore, this function is often mainly used to sanitize the user options.
		* **uninit** should free everything you would have allocated in **init**.
		* **query_formats** follows the **init** and is used for pixel format negotiation. You specify here what pixel format(s) (yuv 4:2:0, yuv 4:2:2, ...) the filter accepts for its input, and what format it can output. All pixel formats are defined in **libavutil/pixfmt.h**. If the filter doesn't change the pixel format between the input and the output, just define a pixel formats array and call **ff_set_common_formats**.
		* Inside the **inputs** **config_props**, you are at a point where you know which pixel format has been picked after **query_formats**, and more information such as the video width and height (inlink->{w,h}).
		* Inside the **output** **config_props**, you can define what you want to change in the output.If your filter is going to modify the size of the video, you
will update outlink->w and outlink->h.
		* **filter_frame** is where you process the received frames. Along with the frame, you get the input link from where the frame comes from. You can get the filter context through that input link, and then access your internal state context, and also the output link where you will send your frame when you are done. If you want to define a simple pass-through filter, you can just do **return ff_filter_frame(outlink, in);**. Next we create an output buffer to write the filtered pixels to:
		```bash
		AVFrame *out = ff_get_video_buffer(outlink, outlink->w, outlink->h);
		if (!out) {
			av_frame_free(&in);
			return AVERROR(ENOMEM);
		}
		av_frame_copy_props(out, in);
		```

### Merge our plugin code into FFmpeg

Now execute the following script so that these files will be copied inside the FFmpeg code base we built before. 

```
  ./merge_plugin_code.sh
```
This script copies the plugin code to the proper directories. 

```
======================== Replacing allfilters.c=========================
======================== Replacing Makefiles===========================
======================== Copying vf_xlnxfilter.c=========================
======================== Copying Directory xlnxfilter_core========================
```

### Rebuild FFmpeg with the Xilinx filter 2D plugin code

Now finally you rebuild FFppeg with the new plugin code, and generate the executable that can be used to run the filter on the FPGA to enjoy the acceleration.

Execute the following script

```
./build_ffmpeg_with_plugin.sh
```

The new ffmpeg executable will be created with the Xilinx 2D filter plugin. 

### Summary  

In this lab, you learned:
* How to build your own ```FFmpeg``` plugin.
* The 'anatomy' of an ```FFmpeg``` AVFilter plugin.

---------------------------------------

<p align="center"><b>
Start the next module: <a href="WRAP_UP.md">5. Wrapping-up</a>
</b></p>  
