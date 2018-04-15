
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

In this module you will experience the acceleration potential of AWS F1 instances by using ffmpeg to filter raw YUV 1920x1080 image, first using the filter executing on the CPU, and then executing the hardware accelerated filter optimized for F1 FPGAs. 

```ffmpeg``` is a very popular framework providing very fast video and audio converters. The ```ffmpeg``` code is open-source and allows for the addition of custom plugins. For this lab, a custom AVFilter plugin has been created to transparently use the hardware accelerated two-dimensional filter running on AWS F1.

Users can switch between the filter running on CPU and the F1-accelerated implementation by simply changing a parameter on the ```ffmpeg``` command line. The plugin uses OpenCL API calls to write image Y, U and V planes to the FPGA, execute the filter on the FPGA, and read back the filtered planes. A number of preset filters (identity, blur, motionblur, sharpen) can be accesses via the ffmpeg command line.

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


1. Run with the video filter running on the CPU. Plugin xlnxfilter takes two switches. Switch ncompute_unit denotes how many hardware units will be used to accelerate the application. ncompute_unit=0 runs the application completely on CPU. Switch "coeff" specifies the type of applied filter on the input image. 
    ```bash
    time ./ffmpeg -i picadilly_1080p.bmp -vf "xlnxfilter=ncompute_unit=0:coeff=blur" picadilly_1080p_cpu.bmp
    ```

    ```ffmpeg``` will show with a message similar to this one: \
    
    Running Software version

    Software time spent = 2.230000 seconds
    
    Output #0, image2, to 'picadilly_1080p_cpu.bmp':

    real	0m2.911s
    
    user	0m2.268s

#### Step 2: Running with the filter on the F1 FPGA 
  

1. Run with the filter running on the F1 FPGA, using just one hardware unit for filter kernels. Before running the FPGA executable we will load the corresponding AFI. 

    ```bash
    fpga-load-local-image -S 0 -I agfi-08afc45e98b56134e
    time ./ffmpeg -i picadilly_1080p.bmp -vf "xlnxfilter=ncompute_unit=1:coeff=blur" picadilly_1080p_fpga_1.bmp
    ```

    ```ffmpeg``` will show with a message similar to this one: \
    
     Hardware time spent = 0.040000 seconds
     Output #0, image2, to 'picadilly_1080p_fpga_1.bmp':

     real	0m1.356s

     user	0m0.085s



1. Run with the filter running on the F1 FPGA, now using just three hardware unit for filter kernels
    ```bash
      fpga-load-local-image -S 0 -I agfi-0aca85d72bf96b3f4
      time ./ffmpeg -i picadilly_1080p.bmp -vf "xlnxfilter=ncompute_unit=3:coeff=blur" picadilly_1080p_fpga_3.bmp
    ```

    ```ffmpeg``` will show with a message similar to this one: \
    
    Hardware time spent = 0.030000 seconds
    
    Output #0, image2, to 'picadilly_1080p_fpga_3.bmp':
    
    real	0m1.319s
    
    user	0m0.065s



#### Step 3: Comparing performance 

1. The table below summarizes the performance of both encoders:

    |                           | Filter on CPU | Filter on F1 (1 kernel) | Filter on F1 (3 kernels) |
    | :------------------------ |-------------:| -------:| -------:|
    | duration                  | 2.28 sec     | 0.04 sec | 0.03 sec |

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

