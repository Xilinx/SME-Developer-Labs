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

This tutorial is designed to show how we add filter plugin that would be used to accelerate on FPGA. 

The kernel used in this tutorial is a 2D image filter, that you already have seen in the previous section while working with standalone SDAccel environment. The Kernel is already precompiled with SDAccel with 1 and 3 hardware unit version (can be selected through FFMpeg command line by ncompute_unit=1 and ncompute_unit=3 respectively). The OpenCL Host code is used to write FFMpeg Plugin code by using standard FFMpeg filter writing process. 

We will follow these steps during this tutorial
* Building FFMpeg standalone without Xilinx 2D Filter Plugin
* Observe Xilinx 2D Filter Plugin code, run a script to add Xilinx 2D Filter Plugin code inside the FFMpeg code base that we downloaded in the previous step
* Build FFMpeg with Xilinx 2D Filter Plugin code and generate the execuatable that can be used to run 2D filter on FPGA to enjoy the acceleration

1. Right Click anywhere in the desktop and Open a Terminal
2. Navigate to the FFmpeg lab directory
   ```bash
    cd ~/SME-Developer-Labs/module_02/plugin
    ```
3. The directory contains following scripts and directories
 * build_ffmpeg.sh : Script to download the FFMpeg source code, its dependencies and build ```ffmpeg``` executable
 * merge_plugin_code.sh : Script to merge Xilinx 2D filter plugin code inside ffmpeg code base
 * build_ffmpeg_with_plugin.sh : Script to do incremental build with the Xilinx 2D filter plugin and rebuild ```ffmpeg``` executable
 * plugin_code : Directory contains Xilinx 2D filter plugin code

#### Building FFMpeg Application

We will execute script build_ffmpeg.sh to Build the FFMpeg executable.
The script will do following things
1. DOwnload and build FFMpeg Dependencies: NASM and YASM
2. Clone FFMpeg from git.ffmpeg.org
3. Copy Xilinx SDAccel Runtime library and OpenCL library
4. Build FFMpeg

This is pretty much standard FFMpeg building procedure. We have included Xilinx SDAccel runtime and OpenCL library as these libraries will be used when we add Xilinx 2D filter plugin code in next step. 

Execute the script 
```
  ./build_ffmpeg.sh
```
This build procedure takes little less than 5 minutes. Have a nice short break :) 

---------------------------------------

<p align="center"><b>
Start the next module: <a href="WRAP_UP.md">4. Wrapping-up</a>
</b></p>  
