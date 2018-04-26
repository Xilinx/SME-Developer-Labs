#include <stdio.h>
#include <malloc.h>
#include <stdlib.h>
#include <time.h>

#include "xlnxfilter_core.h" 
#include "coefficients.h"

int load_file_to_memory_copy(const char *filename, unsigned char **result);
static	   AVOpenCLExternalEnv *cl_env;

FilterDispatcher* FilterDispatcher_init(cl_device_id Device, cl_context Context, cl_program Program )	{
        FilterDispatcher* B  = (FilterDispatcher*) malloc(sizeof(FilterDispatcher));
	B->mKernel  = clCreateKernel(Program, "HardwareFilterKernel", NULL);
	B->mQueue   = clCreateCommandQueue(Context, Device, CL_QUEUE_PROFILING_ENABLE | CL_QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE, &(B->mErr));
	B->mContext = Context;
	B->mCounter = 0;
        B->mProgram = Program;
        return B;
}
int init_xlnxfilter_core(XlnxFilterContext *ctx) 
{
           int ncompute_unit = ctx->ncompute_unit; 

           cl_platform_id platforms[16] = { 0 };
           cl_device_id devices[16];
           char platformName[256];
           char deviceName[256];
           cl_uint platformCount = 0;
	   cl_env = av_opencl_alloc_external_env();
           cl_int err = clGetPlatformIDs(0, 0, &platformCount);
           err = clGetPlatformIDs(16, platforms, &platformCount);
           if (err != CL_SUCCESS) {
               return -1;
           }
           cl_env->device_type = CL_DEVICE_TYPE_ACCELERATOR;

           for (cl_uint i = 0; i < platformCount; i++) {
                err = clGetPlatformInfo(platforms[i], CL_PLATFORM_NAME, 256, platformName, 0);
                if (err != CL_SUCCESS) {
                     return -1;
                }
                cl_uint deviceCount = 0;
                err = clGetDeviceIDs(platforms[i], cl_env->device_type, 16, devices, &deviceCount);
                if ((err != CL_SUCCESS) || (deviceCount == 0)) {
                    continue;
                }

                err = clGetDeviceInfo(devices[0], CL_DEVICE_NAME, 256, deviceName, 0);
                if (err != CL_SUCCESS) {
                    return -1;
                }

                cl_context_properties contextData[3] = {CL_CONTEXT_PLATFORM, (cl_context_properties)platforms[i], 0};
                cl_context context = clCreateContextFromType(contextData, cl_env->device_type, 0, 0, &err);
                if (err != CL_SUCCESS) {
                    continue;
                }
                cl_command_queue queue = clCreateCommandQueue(context, devices[0], 0, &err);
                if (err != CL_SUCCESS) {
                    return -1;
                }
                cl_env->platform_id = platforms[i];
                cl_env->context = context;
                cl_env->command_queue = queue;
                cl_env->device_type = CL_DEVICE_TYPE_ACCELERATOR;
                cl_env->device_id = devices[0];
                break;
           }

           unsigned char* xlnx_xclbin ; //  = getenv("XLNX_XCLBIN");


           if(ncompute_unit ==0) {
                av_log(NULL, AV_LOG_INFO, "INFO: No Compute Unit Specified, running Software version \n");
           } else if(ncompute_unit==1) {
                av_log(NULL, AV_LOG_INFO, "INFO: ncompute_unit 1  \n");
                xlnx_xclbin = "xclbin/fpga.1k.hw.xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0.awsxclbin";
           } else if(ncompute_unit==3) {
                av_log(NULL, AV_LOG_INFO, "INFO: ncompute_unit 3  \n");
                xlnx_xclbin = "xclbin/fpga.3k.hw.xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0.awsxclbin";
           } else {
                av_log(NULL, AV_LOG_ERROR, "ERROR: ncompute_unit %d not supported, please specify 0,1 or 3 \n",ncompute_unit);
           }


          if((ncompute_unit == 3)||(ncompute_unit ==1)) {
           unsigned char *kernelbinary = 0;
           size_t kernel_len = 0;
           int mlen = 0;
           mlen = load_file_to_memory_copy(xlnx_xclbin, &kernelbinary);

             if (mlen < 0) {
                 av_log(NULL, AV_LOG_ERROR, "ERROR: Loading file to memory failed %s \n", xlnx_xclbin);
                 return EXIT_FAILURE;
             } else {
	         av_log(NULL, AV_LOG_INFO, "INFO: Loaded file to memory: %s\n", xlnx_xclbin);
	     }

           kernel_len = mlen;
           cl_int status;


            cl_program program = clCreateProgramWithBinary(cl_env->context, 1, &(cl_env->device_id), &kernel_len, (const unsigned char**)&kernelbinary, &status, NULL);
           if( status != CL_SUCCESS || !program ) {
               av_log(NULL, AV_LOG_ERROR, "OpenCL unable to create fpga accelerator program\n");
               return -1;
           }

           //
           // Build the program
           //
           status = clBuildProgram(program, 1, &(cl_env->device_id), NULL, NULL, NULL);
           if( status != CL_SUCCESS )
           {
               av_log(NULL, AV_LOG_ERROR, "OpenCL unable to build program\n");
               return -1;
           }


	// ---------------------------------------------------------------------------------
	// Load XCLBIN file, create OpenCL context, device and program
	// ---------------------------------------------------------------------------------

	FilterDispatcher *Filter ; //(device, context, program);
        Filter = FilterDispatcher_init(cl_env->device_id,cl_env->context, program);

        ctx->filter = Filter;

      }

  return 0;
}

void release_xlnxfilter_core(XlnxFilterContext *ctx) 
{
  int ncompute_unit = ctx->ncompute_unit; 
  if((ncompute_unit == 3)||(ncompute_unit ==1)) {
     FilterDispatcher* Filter = ctx->filter; 
     FilterDispatcher_destroy(Filter);
  }
  clReleaseContext(cl_env->context);	
  clReleaseDevice(cl_env->device_id);

}

////Software code ///////////////////////////
//
//
Window2D* initialize_Window2D(unsigned short width, unsigned short height, unsigned short stride)
{
    Window2D * win = (Window2D*) malloc(sizeof(Window2D));
    win->mWidth  = width;
    win->mHeight = height;
    win->mStride = stride;

    return win;
}

        int window_next(Window2D* win, unsigned char *srcImg, unsigned x, unsigned y)
        {
                // Clamp pixels to 0 when outside of image 
                for(int row=0; row<KERNEL_V_SIZE; row++)
                {
                        for(int col=0; col<KERNEL_H_SIZE; col++)
                        {
                                int xoffset = (x+col-(KERNEL_H_SIZE/2));
                                int yoffset = (y+row-(KERNEL_V_SIZE/2));

                                if ( (xoffset<0) || (xoffset>=win->mWidth) ||
                                         (yoffset<0) || (yoffset>=win->mHeight) ) {
                                        win->mPixelWindow[row][col] = 0;
                                } else {
                                        win->mPixelWindow[row][col] = srcImg[yoffset*win->mStride+xoffset];
                                }
                        }
                }

                return 1;
        }

        unsigned char get_window (Window2D* win, int row, int col) {
                return win->mPixelWindow[row][col];
        }

void xlnxfilter_software(
                unsigned char *srcImg,
                unsigned int   width,
                unsigned int   height,
                unsigned int   stride,
                int * coeff,
                unsigned char *dstImg )
{

        Window2D* win= initialize_Window2D(width, height, stride);

    for(int y=0; y<height; ++y)
    {
        for(int x=0; x<width; ++x)
        {
            // Determine whether to get a new pixel and update the 2D window
                        int is_valid = window_next(win,srcImg, x, y);

                        //Apply 2D filter
                        int sum = 0;
                        for(int row=0; row<KERNEL_V_SIZE; row++)
                        {
                                for(int col=0; col<KERNEL_H_SIZE; col++)
                                {
                                        sum += get_window(win,row,col)*(*(coeff+row*KERNEL_H_SIZE+col));
                                }
                        }

                        //Clamp the normalized mean value to s7.4 bits
                        unsigned char outpix = sum/(KERNEL_V_SIZE*KERNEL_H_SIZE);

            // Take care of run-in effect, write output only when the window is valid
                        // i.e. if kernel is VxH need at least V/2 rows and H/2 pixels before generating output
            if ( is_valid )
            {
                dstImg[y*stride+x] = outpix;
            }
        }
    }
}

// Software code FInished


void sync(oclRequest* p)
{
  	// Wait until the outputs have been read back
	clWaitForEvents(1, &(p->mEvent[2]));
	clReleaseEvent(p->mEvent[0]);
   	clReleaseEvent(p->mEvent[1]);
   	clReleaseEvent(p->mEvent[2]);	
}



oclRequest* Execute (
        FilterDispatcher* B,
	unsigned char    *src,
	unsigned int      width,
	unsigned int      height,
	unsigned int      stride,
        int* coeff,
	unsigned char    *dst ) 
  { 
	unsigned int nbytes; 
  
  	oclRequest* req = (oclRequest*) malloc(sizeof(oclRequest));
        req->mId=B->mCounter;
        B->mCounter++;
        

        nbytes = (stride*height);

	// Create input buffer (host to device)
	B->mSrcExt.flags = XCL_MEM_DDR_BANK0;
	B->mSrcExt.param = 0;
	B->mSrcExt.obj   = src;
  	B->mSrcBuf[0] = clCreateBuffer(B->mContext, CL_MEM_EXT_PTR_XILINX | CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY,  nbytes, &(B->mSrcExt), &(B->mErr));

        B->mCoeffExt.flags = XCL_MEM_DDR_BANK0;
        B->mCoeffExt.param = 0;
        B->mCoeffExt.obj   = coeff;
        B->mCoeffBuf[0] = clCreateBuffer(B->mContext, CL_MEM_EXT_PTR_XILINX | CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY,  900, &(B->mCoeffExt), &(B->mErr));
	
	// Create output buffer (device to host)
	B->mDstExt.flags = XCL_MEM_DDR_BANK0;
	B->mDstExt.param = 0;
	B->mDstExt.obj   = dst;
	B->mDstBuf[0] = clCreateBuffer(B->mContext, CL_MEM_EXT_PTR_XILINX | CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY, nbytes, &(B->mDstExt), &(B->mErr));
  
	// Schedule the writing of the inputs
	clEnqueueMigrateMemObjects(B->mQueue, 1, B->mSrcBuf, 0, 0, NULL,  &req->mEvent[0]);	
        clEnqueueMigrateMemObjects(B->mQueue, 1, B->mCoeffBuf, 0, 1, &req->mEvent[0],  &req->mEvent[1]);


  	// Set the kernel arguments
  	clSetKernelArg(B->mKernel, 0, sizeof(cl_mem),       &B->mSrcBuf[0]);
  	clSetKernelArg(B->mKernel, 1, sizeof(unsigned int), &width);
  	clSetKernelArg(B->mKernel, 2, sizeof(unsigned int), &height);
  	clSetKernelArg(B->mKernel, 3, sizeof(unsigned int), &stride);
        clSetKernelArg(B->mKernel, 4, sizeof(cl_mem),       &B->mCoeffBuf[0]);
        clSetKernelArg(B->mKernel, 5, sizeof(cl_mem),       &B->mDstBuf[0]);

  	//clSetKernelArg(B->mKernel, 4, sizeof(cl_mem),       &B->mDstBuf[0]);

	// Schedule the execution of the kernel
	clEnqueueTask(B->mQueue, B->mKernel, 1,  &req->mEvent[0], &req->mEvent[1]);	
	
	// Schedule the reading of the outputs
  	clEnqueueMigrateMemObjects(B->mQueue, 1, B->mDstBuf, CL_MIGRATE_MEM_OBJECT_HOST, 1, &req->mEvent[1], &req->mEvent[2]);

	// Register call back to notify of kernel completion
	// clSetEventCallback(req->mEvent[1], CL_COMPLETE, event_cb, &req->mId); 
	
	return req;
  } 
void FilterDispatcher_destroy(FilterDispatcher* B)
{  
	clReleaseCommandQueue(B->mQueue);
	clReleaseKernel(B->mKernel);
        clReleaseProgram(B->mProgram);
}  

int load_file_to_memory_copy(const char *filename, unsigned char **result)
{
   int size = 0;
   FILE *f = fopen(filename, "rb");
   if(f == NULL)
   {
       *result = NULL;
        return -1; // -1 means file opening fail
   }
   fseek(f, 0, SEEK_END);
   size = ftell(f);
   fseek(f, 0, SEEK_SET);
   *result = (unsigned char*) malloc(size);
   if(size != fread(*result, sizeof(char), size, f))
   {
      free(*result);
      return -2; // -2 means file reading fail
   }
   fclose(f);
   return size;
 }


int xlnxfilter_core(XlnxFilterContext *ctx, const AVFrame *pic, const AVFrame *dst, unsigned int w, unsigned int h, unsigned int coeff_select, int ncompute_unit, unsigned int both, int format)
{

	int    numRuns    = 1; 

	unsigned width  = w;
	unsigned height = h;
	unsigned stride = width;

	int *coeff_array; // = (int*) malloc(225*sizeof(int));
        posix_memalign(&coeff_array,4096,225*sizeof(int));

        switch(coeff_select) {
             case 0:
                for(int i=0;i<15;i++)
                     for(int j=0;j<15;j++) {
                          *(coeff_array + i*15+ j) = (int) blur_array[i][j];
                      }
                break;
             case 1:
                for(int i=0;i<15;i++)
                     for(int j=0;j<15;j++) {
                          *(coeff_array + i*15+ j) = (int) identity_array[i][j];
                      }
                break;
             case 2:
                for(int i=0;i<15;i++)
                     for(int j=0;j<15;j++) {
                          *(coeff_array + i*15+ j) = (int) motionblur_array[i][j];
                      }
                break;
             case 3:
                for(int i=0;i<15;i++)
                     for(int j=0;j<15;j++) {
                          *(coeff_array + i*15+ j) = (int) emboss_array[i][j];
                      }
                break;
             default:
                break;
         }

	oclRequest* request[3];

          if((ncompute_unit == 3)||(ncompute_unit ==1)) {
      printf("\n Running Hardware version\n");

      FilterDispatcher* Filter = ctx->filter;

      clock_t begin = clock();
            // Make independent requests to Y, U and V planes
            // Requests will run sequentially if there is a single kernel
            // Requests will run in parallel is there are two or more kernels
            request[0] = Execute(Filter,pic->data[0], width, height, stride, coeff_array, dst->data[0]);
            if(format == AV_PIX_FMT_YUV444P) {
                request[1] = Execute(Filter,pic->data[1], width, height, stride, coeff_array, dst->data[1]);
                request[2] = Execute(Filter,pic->data[2], width, height, stride, coeff_array, dst->data[2]);
            }
            if(format == AV_PIX_FMT_YUV420P) {
                request[1] = Execute(Filter,pic->data[1], width/2, height/2, stride/2, coeff_array, dst->data[1]);
                request[2] = Execute(Filter,pic->data[2], width/2, height/2, stride/2, coeff_array, dst->data[2]);
            }


            sync(request[0]);
            sync(request[1]);
            sync(request[2]);

      clock_t end = clock();
      double hw_time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
      printf("\n Hardware time spent = %f seconds\n",hw_time_spent);



       }




 if((ncompute_unit == 0) || (both==1)) {
      printf("\nRunning Software version\n");
        uint8_t *y_ref = (uint8_t*) malloc(sizeof(uint8_t)*height*width);
        uint8_t *u_ref; 
        uint8_t *v_ref;
     
        if(format == AV_PIX_FMT_YUV420P) {
            u_ref = (uint8_t*) malloc(sizeof(uint8_t)*(height/2)*(width/2));
            v_ref = (uint8_t*) malloc(sizeof(uint8_t)*(height/2)*(width/2));
        }
        if(format == AV_PIX_FMT_YUV444P) {
            u_ref = (uint8_t*) malloc(sizeof(uint8_t)*height*width);
            v_ref = (uint8_t*) malloc(sizeof(uint8_t)*height*width);
        }
      clock_t begin = clock();
        // Compute reference results
        if(both==0) {
            xlnxfilter_software(pic->data[0], width, height, stride, coeff_array,dst->data[0]);
            if(format == AV_PIX_FMT_YUV444P) {
            xlnxfilter_software(pic->data[1], width, height, stride, coeff_array, dst->data[1]);
            xlnxfilter_software(pic->data[2], width, height, stride, coeff_array,dst->data[2]);
            }
            if(format == AV_PIX_FMT_YUV420P) {
                xlnxfilter_software(pic->data[1], width/2, height/2, stride/2, coeff_array, dst->data[1]);
                xlnxfilter_software(pic->data[2], width/2, height/2, stride/2, coeff_array,dst->data[2]);
            }

        } else {
            xlnxfilter_software(pic->data[0], width, height, stride, coeff_array,y_ref);
            if(format == AV_PIX_FMT_YUV444P) {
            xlnxfilter_software(pic->data[1], width, height, stride, coeff_array, u_ref);
            xlnxfilter_software(pic->data[2], width, height, stride, coeff_array, v_ref);
            }
            if(format == AV_PIX_FMT_YUV420P) {
                xlnxfilter_software(pic->data[1], width/2, height/2, stride/2, coeff_array, u_ref);
                xlnxfilter_software(pic->data[2], width/2, height/2, stride/2, coeff_array, v_ref);
            }

            int diff = 0;
            for (int y = 0; y < height; y++) {
                for (int x = 0; x < width; x++) {
                        if ( dst->data[0][y*stride+x] != y_ref[y*stride+x] ) diff = 1;
                  //      if ( dst->data[1][y*stride+x] != u_ref[y*stride+x] ) diff = 1;
                  //      if ( dst->data[2][y*stride+x] != v_ref[y*stride+x] ) diff = 1;

                }
            }

            if(format == AV_PIX_FMT_YUV444P) {
                for (int y = 0; y < height; y++) {
                    for (int x = 0; x < width; x++) {
                            if ( dst->data[1][y*stride+x] != u_ref[y*stride+x] ) diff = 1;
                            if ( dst->data[2][y*stride+x] != v_ref[y*stride+x] ) diff = 1;
                    }
                }
            }

            if(format == AV_PIX_FMT_YUV420P) {
                for (int y = 0; y < height/2; y++) {
                    for (int x = 0; x < width/2; x++) {
                            if ( dst->data[1][y*stride/2+x] != u_ref[y*stride/2+x] ) diff = 1;
                            if ( dst->data[2][y*stride/2+x] != v_ref[y*stride/2+x] ) diff = 1;
                    }
                }
            }


            if(diff) {
                printf("MATCH FAILED: Output has mismatches with reference\n");
            } else {
                printf("MATCH PASS: Output matches reference\n");
            }
        }
  
      clock_t end = clock();
      double sw_time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
      printf("\n Software time spent = %f seconds\n",sw_time_spent);
        free(y_ref);
        free(u_ref);
        free(v_ref);

        }

  

	return 0;
}

