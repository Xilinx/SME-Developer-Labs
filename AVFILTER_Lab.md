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

#### Building FFMpeg Application

1. Right Click anywhere in the desktop and Open a Terminal
2. Navigate to the FFmpeg lab directory
   ```bash
    cd ~/SME-Developer-Labs/module_02/plugin
    ```
3. The directory contains following files/directories:
    i) Script: build_ffmpeg_standalone.sh 
 
---------------------------------------

<p align="center"><b>
Start the next module: <a href="WRAP_UP.md">4. Wrapping-up</a>
</b></p>  
