<table style="width:100%">
  <tr>
    <th width="100%" colspan="5"><h2>AWS F1 Xilinx Developer Labs</h2></th>
  </tr>
  <tr>
    <td width="20%" align="center"><a href="README.md">Introduction</a></td>
    <td width="20%" align="center"><a href="SETUP.md">1. Connecting to your F1 instance</a></td> 
    <td width="20%" align="center"><a href="FFMPEG_Lab.md">2. Experiencing F1 acceleration</a></td>
    <td width="20%" align="center"><a href="FILTER2D_Lab.md">3. Developing F1 applications</a></td>
    <td width="20%" align="center"><b>4. Creating a custom FFmpeg plug-in</b></td>
    <td width="20%" align="center"><a href="WRAP_UP.md">5. Wrapping-up</td>
  </tr>
</table>
	
---------------------------------------
	
### Creating a custom FFmpeg plug-in

This tutorial is designed to teach how to add your own custom ```FFmpeg``` plugin. The filter will be added to the **libavfilter** library that provides a generic audio/video filtering framework containing several filters, sources, and sinks.

1.	First, we need to register the new filter. Open the **allfilters.c** file and find the following entry.
    ```bash
    REGISTER_FILTER(XLNXFILTER, xlnxfilter, vf);
	```

1.	The filter needs to be added to the **Makefile** of **libavfilter**. 
    ```bash
	OBJS-$(CONFIG_XLNXFILTER_FILTER) += vf_xlnxfilter.o xlnxfilter_core/xlnxfilter_core.o
	```

1.	Next open **vf_xlnxfilter.c**. This file implements the Xilinx hardware accelerated Filter 2D ```FFmpeg``` plugin.

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

### Summary  

In this lab, you learned:
* How to build your own ```FFmpeg``` plugin.
 
---------------------------------------

<p align="center"><b>
Start the next module: <a href="WRAP_UP.md">4. Wrapping-up</a>
</b></p>  
