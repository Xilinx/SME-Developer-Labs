
<table style="width:100%">
  <tr>
    <th width="100%" colspan="6"><h2>AWS F1 Xilinx Developer Labs</h2></th>
  </tr>
  <tr>
    <td width="17%" align="center"><a href="README.md">Introduction</a></td>
    <td width="16%" align="center"><a href="SETUP.md">1. Connecting to your F1 instance</a></td> 
    <td width="17%" align="center"><b>2. Experiencing F1 acceleration</b></td>
    <td width="17%" align="center"><a href="FILTER2D_Lab.md">3. Developing F1 applications</a></td>
    <td width="16%" align="center"><a href="AVFILTER_Lab.md">4. Creating a custom FFmpeg plugin</td>
    <td width="17%" align="center"><a href="WRAP_UP.md">5. Wrapping-up</td>
  </tr>
</table>

---------------------------------------
### Experiencing F1 Acceleration

In this module you will experience the acceleration potential of AWS F1 instances by using ffmpeg to filter raw YUV 1920x1080 video, first using the filter executing on the CPU, and then executing the hardware accelerated filter optimized for F1 FPGAs. 

```ffmpeg``` is a very popular multimedia framework able to decode, encode, transcode, mux, demux, stream, filter and play pretty much any audio/video format that exists. The ```ffmpeg``` code is open-source and allows for the addition of custom plugins. For this lab, a custom AVFilter plugin has been created to transparently use the hardware accelerated two-dimensional filter running on AWS F1.

Users can switch between the filter running on CPU and the F1-accelerated implementation by simply changing a parameter on the ```ffmpeg``` command line. The plugin uses OpenCL API calls to write Y, U and V planes of the video frames to the FPGA, execute the filter on the FPGA, and read back the filtered planes. A number of preset filters (identity, blur, motionblur, sharpen) can be accesses via the ffmpeg command line.

#### Setting-up the lab

1. Open a new terminal by right-clicking anywhere in the Desktop area and selecting **Open Terminal**. 
1. Navigate to the FFmpeg lab directory.
    ```bash
    cd ~/SME-Developer-Labs/module_02/ffmpeg
    ```

1. Source the SDAccel runtime environment.
    ```bash
    sudo sh
    source /opt/Xilinx/SDx/2017.1.rte/setup.sh
    ```

#### Step 1: Running with the filter on the CPU 


1. Run with the video filter running on the CPU. 

  Plugin xlnxfilter takes two switches:
   * Switch "ncompute_unit" denotes how many hardware units will be used to accelerate the application. ncompute_unit=0 runs the application completely on CPU.
   * Switch "coeff" specifies the type of applied filter on the input frames. 
     
   As running on CPU is slow, we will process only 10 frames of the video
   ```bash
  ./ffmpeg -f rawvideo -pix_fmt yuv420p -s:v 1920x1080 -i /home/centos/vectors/crowd8_420_1920x1080_50.yuv -vf "xlnxfilter=ncompute_unit=0:coeff=blur" -frames 10 crowd_out_cpu.yuv
  ```
  ```ffmpeg``` will show with a message similar to this one: 
```bash
  frame=   10 fps=1.0 q=-0.0 Lsize=   30375kB time=00:00:00.40 bitrate=622080.0kbits/s speed=0.0388x    
  ```
  Note that CPU speed is approximately 1 frame/second. 

  
#### Step 2: Running with the filter on the F1 FPGA 
  

1. Run with the filter running on the F1 FPGA, using just one hardware unit for filter kernels. Before running the FPGA executable we will load the corresponding AFI. ALso note we are not specifying -frames switch so ffmpeg will process all 500 frames. 

    ```bash
    fpga-load-local-image -S 0 -I agfi-08afc45e98b56134e
    ./ffmpeg -f rawvideo -pix_fmt yuv420p -s:v 1920x1080 -i /home/centos/vectors/crowd8_420_1920x1080_50.yuv -vf "xlnxfilter=ncompute_unit=1:coeff=blur" crowd_fpga_1.yuv

    ```

    ```ffmpeg``` will show with a message similar (the exact numbers such as fps may vary) to this one: 
    ```bash
        frame=  500 fps= 40 q=-0.0 Lsize= 1518750kB time=00:00:20.00 bitrate=622080.0kbits/s speed= 1.6x   
  
   
    ```
     



1. Run with the filter running on the F1 FPGA, now using just three hardware unit for filter kernels
    ```bash
      fpga-load-local-image -S 0 -I agfi-0aca85d72bf96b3f4
      ./ffmpeg -f rawvideo -pix_fmt yuv420p -s:v 1920x1080 -i /home/centos/vectors/crowd8_420_1920x1080_50.yuv -vf "xlnxfilter=ncompute_unit=3:coeff=blur" crowd_fpga_3.yuv

    ```

    ```ffmpeg``` will show with a message similar (the exact numbers such as fps may vary) to this one: 
    
   ```bash
      frame=  500 fps= 46 q=-0.0 Lsize= 1518750kB time=00:00:20.00 bitrate=622080.0kbits/s speed=1.85x    
   
    ```

We are getting approximately 1.43x better performance using more instances of filter kernels on hardware

#### Step 3: Comparing performance 

1. The table below summarizes the performance of both encoders:

    |                           | Filter on CPU | Filter on F1 (1 kernel) | Filter on F1 (3 kernels) |
    | :------------------------ |-------------:| -------:| -------:|
    | performance                  | 1 fps sec     | 37 fps | 53 fps |


#### Optional: Playing video
You can run ffplay to view any video using the excutable inside the same directory. However, just aware that ffplay is very slow on F1 instance. 

Original:
```bash
./ffplay -f rawvideo -pix_fmt yuv420p -s:v 1920x1080 -i /home/centos/vectors/crowd8_420_1920x1080_50.yuv
```
Filtered:
```bash
./ffplay -f rawvideo -pix_fmt yuv420p -s:v 1920x1080 -i crowd_fpga_1.yuv
```
#### Step 4: Exiting from the terminals 

1. Close your terminal to conclude this module.
    ```bash
    exit
    exit
    ```

#### Conclusion

AWS F1 instances with Xilinx FPGAs can provide significant performance improvements over CPUs. 

It is possible to use F1 to accelerate popular frameworks such as ```ffmpeg```. This is a very powerful proposition as it allows end-users to keep working with their preferred tools and APIs while transparently benefiting from acceleration.

In addition to video filtering, F1 instances are very well suited to accelerate compute intensive workloads such as: video transcoding, genomics, financial analytics, big data analytics, security or machine learning.

Now that you have experienced the performance potential of AWS F1 instances, the next lab will introduce you to the SDAccel IDE and how to develop, profile and optimize an F1 application.

---------------------------------------

<p align="center"><b>
Start the next module: <a href="FILTER2D_Lab.md">3. Developing, profiling and optimizing F1 applications with SDAccel</a>
</b></p>

