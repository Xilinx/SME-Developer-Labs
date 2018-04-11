#include <stdio.h>
#include <malloc.h>
#include <stdlib.h>
#include <string.h>
#include <iostream>
#include <vector>
#include <chrono>
#include "logger.h"
#include "cmdlineparser.h" 

#include "xclbin_helper.h" 
#include "opencv2/opencv.hpp"

//#include "blur.h" 

using namespace sda;
using namespace sda::utils;

static void IplImage2Raw(IplImage* img, uchar* y, int stride_y, uchar* u, int stride_u, uchar* v, int stride_v);
static void Raw2IplImage(uchar* y, int stride_y, uchar* u, int stride_u, uchar* v, int stride_v, IplImage* img);

//Software version
#define BLUR_KERNEL_H_SIZE 	15
#define BLUR_KERNEL_V_SIZE 	15
struct Window2D {
	int mWidth;
	int mHeight;	
	int mStride;	
   unsigned char mPixelWindow[BLUR_KERNEL_V_SIZE][BLUR_KERNEL_H_SIZE];
};

Window2D* initialize_Window2D(unsigned short width, unsigned short height, unsigned short stride) 
{
    Window2D * win = (Window2D*) malloc(sizeof(Window2D));
    win->mWidth  = width;
    win->mHeight = height;
    win->mStride = stride;

    return win;
}		

	bool next(Window2D* win, unsigned char *srcImg, unsigned x, unsigned y)
	{
		// Clamp pixels to 0 when outside of image 
		for(int row=0; row<BLUR_KERNEL_V_SIZE; row++)
		{
			for(int col=0; col<BLUR_KERNEL_H_SIZE; col++)
			{
				int xoffset = (x+col-(BLUR_KERNEL_H_SIZE/2));
				int yoffset = (y+row-(BLUR_KERNEL_V_SIZE/2));
				
				if ( (xoffset<0) || (xoffset>=win->mWidth) ||
					 (yoffset<0) || (yoffset>=win->mHeight) ) {
					win->mPixelWindow[row][col] = 0;
				} else {
					win->mPixelWindow[row][col] = srcImg[yoffset*win->mStride+xoffset];
				}	
			}
		}
		
		return true;	
	}

	unsigned char get_window (Window2D* win, int row, int col) {
		return win->mPixelWindow[row][col];
	}

void BlurPixels_software(
		unsigned char *srcImg,
		unsigned int   width,
		unsigned int   height,
		unsigned int   stride,
		unsigned char *dstImg )
{
    int blurCoeff[15][15] =
    	{
    			{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
    			{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
    			{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
    			{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
    			{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
    			{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
    			{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
    			{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
    			{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
    			{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
    			{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
    			{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
    			{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
    			{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
    			{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}
    	};
	
	Window2D* win= initialize_Window2D(width, height, stride);

    for(int y=0; y<height; ++y)
    {
        for(int x=0; x<width; ++x)
        {
            // Determine whether to get a new pixel and update the 2D window
			bool is_valid = next(win,srcImg, x, y);

			//Apply 2D filter
			int sum = 0;
			for(int row=0; row<BLUR_KERNEL_V_SIZE; row++)
			{
				for(int col=0; col<BLUR_KERNEL_H_SIZE; col++)
				{
					sum += get_window(win,row,col)*blurCoeff[row][col];
				}
			}
			
			//Clamp the normalized mean value to s7.4 bits
			unsigned char outpix = sum/(BLUR_KERNEL_V_SIZE*BLUR_KERNEL_H_SIZE);

            // Take care of run-in effect, write output only when the window is valid
			// i.e. if kernel is VxH need at least V/2 rows and H/2 pixels before generating output
            if ( is_valid )
            {
            	dstImg[y*stride+x] = outpix;
            }
        }
    }
}




// -------------------------------------------------------------------------------------------
// An event callback function that prints the operations performed by the OpenCL runtime.
// -------------------------------------------------------------------------------------------
void event_cb(cl_event event, cl_int cmd_status, void *id) 
{
  std::cout << "  kernel finished processing request " << *(int *)id << std::endl;
}

// -------------------------------------------------------------------------------------------
// Struct returned by BlurDispatcher() and used to keep track of the request sent to the kernel
// The sync() method waits for completion of the request. After it returns, results are ready
// -------------------------------------------------------------------------------------------
struct BlurRequest {

  //cl_event mEvent[3];	
  cl_event mEvent[4];	
  int      mId;


};

void sync(BlurRequest* p)
{
  	// Wait until the outputs have been read back
	//clWaitForEvents(1, &(p->mEvent[2]));
	clWaitForEvents(1, &(p->mEvent[3]));
	clReleaseEvent(p->mEvent[0]);
   	clReleaseEvent(p->mEvent[1]);
   	clReleaseEvent(p->mEvent[2]);	
   	clReleaseEvent(p->mEvent[3]);	
}

// -------------------------------------------------------------------------------------------
// Class used to dispatch requests to the kernel
// The BlurDispatcher() method schedules the necessary operations (write, kernel, read) and
// returns a BlurRequest* struct which can be used to track the completion of the request. 
// The dispatcher has its own OOO command queue allowing multiple requests to be scheduled
// and executed independently by the OpenCL runtime.
// -------------------------------------------------------------------------------------------
struct BlurDispatcher {

  cl_kernel         mKernel;
  cl_command_queue  mQueue;	
  cl_context        mContext;  
  cl_mem_ext_ptr_t  mSrcExt;
  cl_mem_ext_ptr_t  mCoeffExt;
  cl_mem_ext_ptr_t  mDstExt;
  cl_int            mErr;
  cl_mem            mSrcBuf[1];
  cl_mem            mCoeffBuf[1];
  cl_mem            mDstBuf[1]; 
  int               mCounter; 
};


//BlurDispatcher* BlurDispatcher_init(cl_device_id  &Device, cl_context   &Context, cl_program   &Program )	{
BlurDispatcher* BlurDispatcher_init(cl_device_id  Device, cl_context   Context, cl_program   Program )	{
        BlurDispatcher* B = (BlurDispatcher*) malloc(sizeof(BlurDispatcher));
	B->mKernel  = clCreateKernel(Program, "HardwareFilterKernel", NULL);
	B->mQueue   = clCreateCommandQueue(Context, Device, CL_QUEUE_PROFILING_ENABLE | CL_QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE, &(B->mErr));
	B->mContext = Context;
	B->mCounter = 0;
        return B;
}

BlurRequest* Execute (
        BlurDispatcher* B,
	unsigned char    *src,
	unsigned int      width,
	unsigned int      height,
	unsigned int      stride,
        int      *coeff, // [15][15],
	unsigned char    *dst ) 
  { 
  
  	BlurRequest* req = (BlurRequest*) malloc(sizeof(BlurRequest));
        req->mId=B->mCounter;
        B->mCounter++;
        

	unsigned nbytes = (stride*height);

	// Create input buffer (host to device)
	B->mSrcExt.flags = XCL_MEM_DDR_BANK0;
	B->mSrcExt.param = 0;
	B->mSrcExt.obj   = src;
  	B->mSrcBuf[0] = clCreateBuffer(B->mContext, CL_MEM_EXT_PTR_XILINX | CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY,  nbytes, &(B->mSrcExt), &(B->mErr));
  	//B->mSrcBuf[0] = clCreateBuffer(B->mContext, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY,  nbytes, NULL, &(B->mErr));
  	//
	B->mCoeffExt.flags = XCL_MEM_DDR_BANK0;
	B->mCoeffExt.param = 0;
	B->mCoeffExt.obj   = coeff;
  	B->mCoeffBuf[0] = clCreateBuffer(B->mContext, CL_MEM_EXT_PTR_XILINX | CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY,  900, &(B->mCoeffExt), &(B->mErr));
	
	// Create output buffer (device to host)
	B->mDstExt.flags = XCL_MEM_DDR_BANK0;
	B->mDstExt.param = 0;
	B->mDstExt.obj   = dst;
	B->mDstBuf[0] = clCreateBuffer(B->mContext, CL_MEM_EXT_PTR_XILINX | CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY, nbytes, &(B->mDstExt), &(B->mErr));
	//B->mDstBuf[0] = clCreateBuffer(B->mContext, CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY, nbytes, NULL, &(B->mErr));
  
	// Schedule the writing of the inputs
	clEnqueueMigrateMemObjects(B->mQueue, 1, B->mSrcBuf, 0, 0, nullptr,  &req->mEvent[0]);	
	clEnqueueMigrateMemObjects(B->mQueue, 1, B->mCoeffBuf, 0, 1, &req->mEvent[0],  &req->mEvent[1]);	

  	// Set the kernel arguments
  	clSetKernelArg(B->mKernel, 0, sizeof(cl_mem),       &B->mSrcBuf[0]);
  	clSetKernelArg(B->mKernel, 1, sizeof(unsigned int), &width);
  	clSetKernelArg(B->mKernel, 2, sizeof(unsigned int), &height);
  	clSetKernelArg(B->mKernel, 3, sizeof(unsigned int), &stride);
  	clSetKernelArg(B->mKernel, 4, sizeof(cl_mem),       &B->mCoeffBuf[0]);
  	clSetKernelArg(B->mKernel, 5, sizeof(cl_mem),       &B->mDstBuf[0]);

	// Schedule the execution of the kernel
	//clEnqueueTask(B->mQueue, B->mKernel, 1,  &req->mEvent[0], &req->mEvent[1]);	
	clEnqueueTask(B->mQueue, B->mKernel, 1,  &req->mEvent[1], &req->mEvent[2]);	
	
	// Schedule the reading of the outputs
  	//clEnqueueMigrateMemObjects(B->mQueue, 1, B->mDstBuf, CL_MIGRATE_MEM_OBJECT_HOST, 1, &req->mEvent[1], &req->mEvent[2]);
  	clEnqueueMigrateMemObjects(B->mQueue, 1, B->mDstBuf, CL_MIGRATE_MEM_OBJECT_HOST, 1, &req->mEvent[2], &req->mEvent[3]);

	// Register call back to notify of kernel completion
	// clSetEventCallback(req->mEvent[1], CL_COMPLETE, event_cb, &req->mId); 
	
	return req;
  } 
void BlurDispatcher_destroy(BlurDispatcher* B)
{  
	clReleaseCommandQueue(B->mQueue);
	clReleaseKernel(B->mKernel);
}  

int main(int argc, char** argv)
{
	std::cout << std::endl;	
	std::cout << "Xilinx 2D Filter Example Application\n";
		
	// ---------------------------------------------------------------------------------
	// Parse command line
	// ---------------------------------------------------------------------------------

	CmdLineParser parser;
	parser.addSwitch("--nruns", "-n", "Number of times to image is processed", "1");
	parser.addSwitch("--fpga", "-x", "FPGA binary (xclbin) file to use", "xclbin/fpga.hw.xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0.awsxclbin");
	parser.addSwitch("--input", "-i", "Input image file");

	//parse all command line options
	parser.parse(argc, argv);
	string inputImage = parser.value("input");
	string fpgaBinary = parser.value("fpga");
	int    numRuns    = parser.value_to_int("nruns");

	if (inputImage.size() == 0) {
		std::cout << std::endl;	
		std::cout << "ERROR: input image file must be specified using -i command line switch" << std::endl;
		exit(1);
	}
	
	std::cout << std::endl;	
	std::cout << "FPGA binary    : " << fpgaBinary << std::endl;
	std::cout << "Input image    : " << inputImage << std::endl;
	std::cout << "Number of runs : " << numRuns    << std::endl;
	std::cout << std::endl;	
	
	
	// ---------------------------------------------------------------------------------
	// Load XCLBIN file, create OpenCL context, device and program
	// ---------------------------------------------------------------------------------

	std::cout << "Programming FPGA" << std::endl;
	cl_context    	context;
	cl_program    	program;
	cl_device_id	device;
	load_xclbin_file(fpgaBinary.c_str(), context, device, program);



	// ---------------------------------------------------------------------------------
	// Read input image and format inputs
	// ---------------------------------------------------------------------------------
	
	// Create filenames for input and ouput images
	std::string srcFileName  = inputImage;
	std::string dstFileName  = inputImage.substr(0, inputImage.size()-4)+"_out.bmp";

	// Read Input image
	IplImage *src, *dst;
	src = cvLoadImage(srcFileName.c_str()); //format is BGR
	if(!src) {
		std::cout << "ERROR: Loading image " << srcFileName << " failed" << std::endl;
		exit(1);
	}
	unsigned width  = src->width;
	unsigned height = src->height;
	unsigned stride = width;
	unsigned nbytes = (stride*height);

        int coeff_array[15][15] =
    	{
    			{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
    			{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
    			{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
    			{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
    			{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
    			{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
    			{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
    			{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
    			{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
    			{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
    			{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
    			{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
    			{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
    			{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
    			{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}
    	};

	// 4k alligned buffers for efficient data transfer to the kernel
	std::vector<uchar, aligned_allocator<uchar>> y_src(nbytes);
	std::vector<uchar, aligned_allocator<uchar>> u_src(nbytes);
	std::vector<uchar, aligned_allocator<uchar>> v_src(nbytes);
	std::vector<uchar, aligned_allocator<uchar>> y_dst(nbytes);
	std::vector<uchar, aligned_allocator<uchar>> u_dst(nbytes);
	std::vector<uchar, aligned_allocator<uchar>> v_dst(nbytes);

	// Create destination image
	dst = cvCreateImage(cvSize(width, height), src->depth, src->nChannels);

	// Convert CV Image to AXI video data
	IplImage2Raw(src, y_src.data(), stride, u_src.data(), stride, v_src.data(), stride);

        int *coeff_char = (int*) malloc(225*sizeof(int));

        for(int i=0;i<15;i++)
             for(int j=0;j<15;j++) {
                  *(coeff_char + i*15+ j) = (int) coeff_array[i][j];
              }


	// ---------------------------------------------------------------------------------
	// Make requests to kernel(s) 
	// ---------------------------------------------------------------------------------
	// Note: change the number of kernels in the device, or reorder the sync() methods
	// to see the impact on performance and how requests are scheduled.
	// ---------------------------------------------------------------------------------

	std::cout << std::endl;	
	std::cout << "Running FPGA version" << std::endl;	

	// Create a dispatcher of requests to the Blur kernel(s) 
	BlurDispatcher *Blur ; //(device, context, program);
        Blur = BlurDispatcher_init(device,context, program);

  auto fpga_begin = std::chrono::high_resolution_clock::now();

	BlurRequest* request[numRuns*3];
  for(int xx=0; xx<numRuns; xx++) 
  {
	// Make independent requests to Blur Y, U and V planes
	// Requests will run sequentially if there is a single kernel
	// Requests will run in parallel is there are two or more kernels
	request[xx*3+0] = Execute(Blur,y_src.data(), width, height, stride, coeff_char, y_dst.data());
	request[xx*3+1] = Execute(Blur,u_src.data(), width, height, stride, coeff_char, u_dst.data());
	request[xx*3+2] = Execute(Blur,v_src.data(), width, height, stride, coeff_char, v_dst.data());
	//std::cout << "Blurring requests #1 for Y, U, V planes scheduled" << std::endl;

	// Wait for completion of the outstanding requests
	//request[0]->sync();
	//request[1]->sync();
	//request[2]->sync();
   	//std::cout << "Blurring requests #1 for Y, U, V planes completed" << std::endl;
  }
  for(int xx=0; xx<numRuns; xx++) 
  {
	// Wait for completion of the outstanding requests
	//request[xx*3+0]->sync();
	//request[xx*3+1]->sync();
	//request[xx*3+2]->sync();
	sync(request[xx*3+0]);
	sync(request[xx*3+1]);
	sync(request[xx*3+2]);
  }


  auto fpga_end = std::chrono::high_resolution_clock::now();

	// ---------------------------------------------------------------------------------
	// Format output and write image out 
	// ---------------------------------------------------------------------------------

    	// Convert processed image back to CV Image
    	Raw2IplImage(y_dst.data(), stride, u_dst.data(), stride, v_dst.data(), stride, dst);

	// Convert image to cvMat and write it to disk
    	cvConvert( dst, cvCreateMat(height, width, CV_32FC3 ) );
	cvSaveImage(dstFileName.c_str(), dst);

	// Release allocated memory
	cvReleaseImage(&src);
	cvReleaseImage(&dst);

	// ---------------------------------------------------------------------------------
	// Compute reference results and compare 
	// ---------------------------------------------------------------------------------

	std::cout << std::endl;
   	std::cout << "Running Software version" << std::endl;

	// Create output buffers for reference results
	std::vector<uchar, aligned_allocator<uchar>> y_ref(nbytes);
	std::vector<uchar, aligned_allocator<uchar>> u_ref(nbytes);
	std::vector<uchar, aligned_allocator<uchar>> v_ref(nbytes);

  auto cpu_begin = std::chrono::high_resolution_clock::now();

  #pragma omp parallel for
  for(int xx=0; xx<numRuns; xx++) 
  {
	// Compute reference results
	BlurPixels_software(y_src.data(), width, height, stride, y_ref.data());
	BlurPixels_software(u_src.data(), width, height, stride, u_ref.data());
	BlurPixels_software(v_src.data(), width, height, stride, v_ref.data());
  }

  auto cpu_end = std::chrono::high_resolution_clock::now();

	// Compare results
	bool diff = false;
	for (int y = 0; y < height; y++) {
        	for (int x = 0; x < width; x++) {
			if ( y_dst[y*stride+x] != y_ref[y*stride+x] ) diff = true;
			if ( u_dst[y*stride+x] != u_ref[y*stride+x] ) diff = true;
			if ( v_dst[y*stride+x] != v_ref[y*stride+x] ) diff = true;
        	}
    	}

	std::cout << std::endl;	
	std::cout << "*******************************************************" << std::endl;	
	if(diff) {
		std::cout << "MATCH FAILED: Output has mismatches with reference" << std::endl;
	} else {
		std::cout << "MATCH PASS: Output matches reference" << std::endl;
	}
	std::cout << "*******************************************************" << std::endl;	


	std::chrono::duration<double> fpga_duration = fpga_end - fpga_begin;
	std::cout << "FPGA Time:       " << fpga_duration.count() << " s" << std::endl;
	std::cout << "FPGA Throughput: " 
	          << (double) numRuns*3*nbytes / fpga_duration.count() / (1024.0*1024.0)
	          << " MB/s" << std::endl;

	std::chrono::duration<double> cpu_duration = cpu_end - cpu_begin;
	std::cout << "CPU Time:        " << cpu_duration.count() << " s" << std::endl;
	std::cout << "CPU Throughput:  " 
	          << (double) numRuns*3*nbytes / cpu_duration.count() / (1024.0*1024.0)
	          << " MB/s" << std::endl;

	// ---------------------------------------------------------------------------------
	// Clean-up and Exit 
	// ---------------------------------------------------------------------------------
	//
	BlurDispatcher_destroy(Blur);

	clReleaseProgram(program);
	clReleaseContext(context);	
	clReleaseDevice(device);

	return (diff?1:0);
}


static void IplImage2Raw(IplImage* img, uchar* y_buf, int stride_y, uchar* u_buf, int stride_u, uchar* v_buf, int stride_v)
{
    // Assumes RGB or YUV 4:4:4
    for (int y = 0; y < img->height; y++)
    {
        for (int x = 0; x < img->width; x++)
        {
        	CvScalar cv_pix = cvGet2D(img, y, x);
		y_buf[y*stride_y+x] = (uchar)cv_pix.val[0];
		u_buf[y*stride_u+x] = (uchar)cv_pix.val[1];
		v_buf[y*stride_v+x] = (uchar)cv_pix.val[2];
        }
    }
}

static void Raw2IplImage(uchar* y_buf, int stride_y, uchar* u_buf, int stride_u, uchar* v_buf, int stride_v, IplImage* img )
{
    // Assumes RGB or YUV 4:4:4
    for (int y = 0; y < img->height; y++)
    {
        for (int x = 0; x < img->width; x++)
        {
        	CvScalar cv_pix;
		cv_pix.val[0] = y_buf[y*stride_y+x];
		cv_pix.val[1] = u_buf[y*stride_u+x];
		cv_pix.val[2] = v_buf[y*stride_v+x];
		cvSet2D(img, y, x, cv_pix);
        }
    }
}

