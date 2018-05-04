#include <stdio.h>
#include <malloc.h>
#include <stdlib.h>
#include <time.h>

#include "xlnxfilter_core.h" 
#include "coefficients.h"

int load_file_to_memory_copy(const char *filename, unsigned char **result);
static	   AVOpenCLExternalEnv *cl_env;
static void *coeff_array; // = (int*) malloc(225*sizeof(int));

FilterDispatcher* FilterDispatcher_init(cl_device_id Device, cl_context Context, cl_program Program )	{
        FilterDispatcher* B  = (FilterDispatcher*) malloc(sizeof(FilterDispatcher));
	B->mKernel[0]  = clCreateKernel(Program, "HardwareFilterKernel", NULL);
	B->mKernel[1]  = clCreateKernel(Program, "HardwareFilterKernel", NULL);
	B->mKernel[2]  = clCreateKernel(Program, "HardwareFilterKernel", NULL);
	B->mQueue   = clCreateCommandQueue(Context, Device, CL_QUEUE_PROFILING_ENABLE | CL_QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE, &(B->mErr));
	B->mContext = Context;
	B->mCounter = 0;
        B->mProgram = Program;
        return B;
}
int init_xlnxfilter_core(XlnxFilterContext *ctx) 
{
           int ncompute_unit = ctx->ncompute_unit; 
           cl_int err;

           cl_platform_id platforms[16] = { 0 };
           cl_device_id devices[16];
           char platformName[256];
           char deviceName[256];
           cl_uint platformCount = 0;
	   FilterDispatcher *Filter ; //(device, context, program);
           unsigned const char* xlnx_xclbin ; //  = getenv("XLNX_XCLBIN");

        unsigned int half_width;
	unsigned int half_height; 

        half_height = ctx->height>>1;
        half_width = ctx->width>>1;
	   cl_env = av_opencl_alloc_external_env();
           err = clGetPlatformIDs(0, 0, &platformCount);
           err = clGetPlatformIDs(16, platforms, &platformCount);
           if (err != CL_SUCCESS) {
               return -1;
           }
           cl_env->device_type = CL_DEVICE_TYPE_ACCELERATOR;

           for (cl_uint i = 0; i < platformCount; i++) {
                cl_uint deviceCount = 0; 
                cl_command_queue queue; 
                cl_context context;
                cl_context_properties contextData[3] = {CL_CONTEXT_PLATFORM, (cl_context_properties)platforms[i], 0}; 

                err = clGetPlatformInfo(platforms[i], CL_PLATFORM_NAME, 256, platformName, 0);
                if (err != CL_SUCCESS) {
                     return -1;
                }
                err = clGetDeviceIDs(platforms[i], cl_env->device_type, 16, devices, &deviceCount);
                if ((err != CL_SUCCESS) || (deviceCount == 0)) {
                    continue;
                }

                err = clGetDeviceInfo(devices[0], CL_DEVICE_NAME, 256, deviceName, 0);
                if (err != CL_SUCCESS) {
                    return -1;
                }

                context = clCreateContextFromType(contextData, cl_env->device_type, 0, 0, &err);
                if (err != CL_SUCCESS) {
                    continue;
                }
                queue = clCreateCommandQueue(context, devices[0], 0, &err); 
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



           if(ncompute_unit ==0) {
                av_log(NULL, AV_LOG_INFO, "INFO: No Compute Unit Specified, Running Software version \n");
           } else if(ncompute_unit==1) {
                av_log(NULL, AV_LOG_INFO, "INFO: ncompute_unit 1, Running Hardware version  \n");
                xlnx_xclbin = "xclbin/fpga.1k.hw.xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0.awsxclbin";
           } else if(ncompute_unit==3) {
                av_log(NULL, AV_LOG_INFO, "INFO: ncompute_unit 3, Running Hardware version  \n");
                xlnx_xclbin = "xclbin/fpga.3k.hw.xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0.awsxclbin";
           } else {
                av_log(NULL, AV_LOG_ERROR, "ERROR: ncompute_unit %d not supported, please specify 0,1 or 3 \n",ncompute_unit);
           }

        posix_memalign(&coeff_array,4096,COEFF_ARRAY_SIZE);

        switch(ctx->coeff) {
             case 0:
                memcpy(coeff_array,blur_array,COEFF_ARRAY_SIZE);
                break;
             case 1:
                memcpy(coeff_array,identity_array,COEFF_ARRAY_SIZE);
                break;
             case 2:
                memcpy(coeff_array,motionblur_array,COEFF_ARRAY_SIZE);
                break;
             case 3:
                memcpy(coeff_array,emboss_array,COEFF_ARRAY_SIZE);
                break;
             default:
                break;
         }

          if((ncompute_unit == 3)||(ncompute_unit ==1)) {
           cl_int status; // FF
           unsigned char *kernelbinary = 0;
           size_t kernel_len = 0;
           int mlen = 0;
           cl_program program;
           mlen = load_file_to_memory_copy(xlnx_xclbin, &kernelbinary);

             if (mlen < 0) {
                 av_log(NULL, AV_LOG_ERROR, "ERROR: Loading file to memory failed %s \n", xlnx_xclbin);
                 return EXIT_FAILURE;
             } else {
	         av_log(NULL, AV_LOG_INFO, "INFO: Loaded file to memory: %s\n", xlnx_xclbin);
	     }

           kernel_len = mlen;


           program = clCreateProgramWithBinary(cl_env->context, 1, &(cl_env->device_id), &kernel_len, (const unsigned char**)&kernelbinary, &status, NULL);
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


        Filter = FilterDispatcher_init(cl_env->device_id,cl_env->context, program);


        Filter->mCoeffExt.flags = XCL_MEM_DDR_BANK0;
        Filter->mCoeffExt.param = 0;
        Filter->mCoeffExt.obj   = coeff_array;
        Filter->mCoeffBuf[0] = clCreateBuffer(Filter->mContext, CL_MEM_EXT_PTR_XILINX | CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY,  COEFF_ARRAY_SIZE, &(Filter->mCoeffExt), &(Filter->mErr));
        clEnqueueMigrateMemObjects(Filter->mQueue, 1, Filter->mCoeffBuf, 0, 0, NULL,  NULL);

  	Filter->mSrcBufY[0] = clCreateBuffer(Filter->mContext, CL_MEM_READ_ONLY,  ctx->height*ctx->width, NULL, &(Filter->mErr));
	Filter->mDstBufY[0] = clCreateBuffer(Filter->mContext, CL_MEM_WRITE_ONLY, ctx->height*ctx->width, NULL, &(Filter->mErr));
  	Filter->mSrcBufU[0] = clCreateBuffer(Filter->mContext, CL_MEM_READ_ONLY,  ctx->height*ctx->width/4, NULL, &(Filter->mErr));
	Filter->mDstBufU[0] = clCreateBuffer(Filter->mContext, CL_MEM_WRITE_ONLY, ctx->height*ctx->width/4, NULL, &(Filter->mErr));
  	Filter->mSrcBufV[0] = clCreateBuffer(Filter->mContext, CL_MEM_READ_ONLY,  ctx->height*ctx->width/4, NULL, &(Filter->mErr));
	Filter->mDstBufV[0] = clCreateBuffer(Filter->mContext, CL_MEM_WRITE_ONLY, ctx->height*ctx->width/4, NULL, &(Filter->mErr));

        clEnqueueMigrateMemObjects(Filter->mQueue, 1, Filter->mSrcBufY, 0, 0, NULL,  NULL);
        clEnqueueMigrateMemObjects(Filter->mQueue, 1, Filter->mSrcBufU, 0, 0, NULL,  NULL);
        clEnqueueMigrateMemObjects(Filter->mQueue, 1, Filter->mSrcBufV, 0, 0, NULL,  NULL);

  	clSetKernelArg(Filter->mKernel[0], 1, sizeof(unsigned int), &(ctx->width));
  	clSetKernelArg(Filter->mKernel[0], 2, sizeof(unsigned int), &(ctx->height));
  	clSetKernelArg(Filter->mKernel[0], 3, sizeof(unsigned int), &(ctx->width));
        clSetKernelArg(Filter->mKernel[0], 4, sizeof(cl_mem),       &Filter->mCoeffBuf[0]);
  	clSetKernelArg(Filter->mKernel[0], 0, sizeof(cl_mem),       &Filter->mSrcBufY[0]);
        clSetKernelArg(Filter->mKernel[0], 5, sizeof(cl_mem),       &Filter->mDstBufY[0]);

  	clSetKernelArg(Filter->mKernel[1], 1, sizeof(unsigned int), &(half_width));
  	clSetKernelArg(Filter->mKernel[1], 2, sizeof(unsigned int), &(half_height));
  	clSetKernelArg(Filter->mKernel[1], 3, sizeof(unsigned int), &(half_width));
        clSetKernelArg(Filter->mKernel[1], 4, sizeof(cl_mem),       &Filter->mCoeffBuf[0]);
  	clSetKernelArg(Filter->mKernel[1], 0, sizeof(cl_mem),       &Filter->mSrcBufU[0]);
        clSetKernelArg(Filter->mKernel[1], 5, sizeof(cl_mem),       &Filter->mDstBufU[0]);

  	clSetKernelArg(Filter->mKernel[2], 1, sizeof(unsigned int), &(half_width));
  	clSetKernelArg(Filter->mKernel[2], 2, sizeof(unsigned int), &(half_height));
  	clSetKernelArg(Filter->mKernel[2], 3, sizeof(unsigned int), &(half_width));
        clSetKernelArg(Filter->mKernel[2], 4, sizeof(cl_mem),       &Filter->mCoeffBuf[0]);
  	clSetKernelArg(Filter->mKernel[2], 0, sizeof(cl_mem),       &Filter->mSrcBufV[0]);
        clSetKernelArg(Filter->mKernel[2], 5, sizeof(cl_mem),       &Filter->mDstBufV[0]);

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
                unsigned char *dstImg ) {

        Window2D* win= initialize_Window2D(width, height, stride);

    for(int y=0; y<height; ++y) {
        for(int x=0; x<width; ++x) {
              unsigned char outpix;
            // Determine whether to get a new pixel and update the 2D window
                        int is_valid = window_next(win,srcImg, x, y);

                        //Apply 2D filter
                        int sum = 0;
                        for(int row=0; row<KERNEL_V_SIZE; row++) {
                                for(int col=0; col<KERNEL_H_SIZE; col++) {
                                        sum += get_window(win,row,col)*(*(coeff+row*KERNEL_H_SIZE+col));
                                }
                        }

                        //Clamp the normalized mean value to s7.4 bits
                        outpix = sum/(KERNEL_V_SIZE*KERNEL_H_SIZE);

                        // Take care of run-in effect, write output only when the window is valid
                        // i.e. if kernel is VxH need at least V/2 rows and H/2 pixels before generating output
            if ( is_valid ) {
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
   	//clReleaseEvent(p->mEventF[0]);	
   	//clReleaseEvent(p->mEventF[1]);	
}



oclRequest* Execute (
        FilterDispatcher* B,
	unsigned char    *src,
	unsigned int      width,
	unsigned int      height,
	unsigned int      stride,
        COEFFTYPE* coeff,
	unsigned char    *dst , int num) 
  { 
	unsigned int nbytes; 
  
  	oclRequest* req = (oclRequest*) malloc(sizeof(oclRequest));
        req->mId=B->mCounter;
        B->mCounter++;
        

        nbytes = (stride*height);

        

        if(num==0) {
   	clEnqueueWriteBuffer(B->mQueue, B->mSrcBufY[0], CL_FALSE, 0, nbytes, src, 0, NULL, &req->mEvent[0]);
	clEnqueueTask(B->mQueue, B->mKernel[num], 1,  &req->mEvent[0], &req->mEvent[1]);	
        clEnqueueReadBuffer(B->mQueue,B->mDstBufY[0],CL_FALSE,0,nbytes,dst,1,&req->mEvent[1],&req->mEvent[2]);
        } else if (num ==1 ) {
   	clEnqueueWriteBuffer(B->mQueue, B->mSrcBufU[0], CL_FALSE, 0, nbytes, src, 0, NULL, &req->mEvent[0]);
	clEnqueueTask(B->mQueue, B->mKernel[num], 1,  &req->mEvent[0], &req->mEvent[1]);	
        clEnqueueReadBuffer(B->mQueue,B->mDstBufU[0],CL_FALSE,0,nbytes,dst,1,&req->mEvent[1],&req->mEvent[2]);
        } else if(num==2) {
        #if 0
   	clEnqueueWriteBuffer(B->mQueue, B->mSrcBufV, CL_FALSE, 0, nbytes, src, 0, NULL, &req->mEvent[1]);
	clEnqueueTask(B->mQueue, B->mKernel[num], 2,  req->mEvent, &req->mEventF[0]);	
        clEnqueueReadBuffer(B->mQueue,B->mDstBufV,CL_FALSE,0,nbytes,dst,1,&req->mEventF[0],&req->mEventF[1]);
        #else
   	clEnqueueWriteBuffer(B->mQueue, B->mSrcBufV[0], CL_FALSE, 0, nbytes, src, 0, NULL, &req->mEvent[0]);
	clEnqueueTask(B->mQueue, B->mKernel[num], 1,  &req->mEvent[0], &req->mEvent[1]);	
        clEnqueueReadBuffer(B->mQueue,B->mDstBufV[0],CL_FALSE,0,nbytes,dst,1,&req->mEvent[1],&req->mEvent[2]);
        #endif
        }

	
	return req;
  } 
void FilterDispatcher_destroy(FilterDispatcher* B)
{  
	clReleaseCommandQueue(B->mQueue);
	clReleaseKernel(B->mKernel[0]);
	clReleaseKernel(B->mKernel[1]);
	clReleaseKernel(B->mKernel[2]);
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


int xlnxfilter_core(XlnxFilterContext *ctx, const AVFrame *pic, const AVFrame *dst, int format)
{

	oclRequest* request[3];

	unsigned width  = ctx->width;
        unsigned int half_width;
	unsigned height = ctx->height;
	unsigned int half_height; 
	unsigned stride = width;


        half_height = height>>1;
        half_width = width>>1;


          if((ctx->ncompute_unit == 3)||(ctx->ncompute_unit ==1)) {

               FilterDispatcher* Filter = ctx->filter;
               request[0] = Execute(Filter,pic->data[0], width, height, stride, coeff_array, dst->data[0],0);
               if(format == AV_PIX_FMT_YUV444P) {
                   request[1] = Execute(Filter,pic->data[1], width, height, stride, coeff_array, dst->data[1],1);
                   request[2] = Execute(Filter,pic->data[2], width, height, stride, coeff_array, dst->data[2],2);
               }
               if(format == AV_PIX_FMT_YUV420P) {
                   request[1] = Execute(Filter,pic->data[1], half_width, half_height, half_width, coeff_array, dst->data[1],1);
                   request[2] = Execute(Filter,pic->data[2], half_width , half_height, half_width, coeff_array, dst->data[2],2);
               }


               sync(request[0]);
               sync(request[1]);
               sync(request[2]);

       }




 if((ctx->ncompute_unit == 0) || (ctx->both==1)) {
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
      //clock_t begin = clock();
        // Compute reference results
        if(ctx->both==0) {
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
            int diff=0;
            xlnxfilter_software(pic->data[0], width, height, stride, coeff_array,y_ref);
            if(format == AV_PIX_FMT_YUV444P) {
            xlnxfilter_software(pic->data[1], width, height, stride, coeff_array, u_ref);
            xlnxfilter_software(pic->data[2], width, height, stride, coeff_array, v_ref);
            }
            if(format == AV_PIX_FMT_YUV420P) {
                xlnxfilter_software(pic->data[1], width/2, height/2, stride/2, coeff_array, u_ref);
                xlnxfilter_software(pic->data[2], width/2, height/2, stride/2, coeff_array, v_ref);
            }

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
  
        free(y_ref);
        free(u_ref);
        free(v_ref);

        }

  

	return 0;
}

