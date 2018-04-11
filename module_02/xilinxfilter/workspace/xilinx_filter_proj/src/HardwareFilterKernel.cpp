#include "filter_Config.h"
#include "window_2d.h"
#include "axi2stream.h"

void AXIBursts2PixelStream(
		AXIMM axi,
		U16 WidthInBytes,
		U16 Height,
		U16 StrideInBytes,
		STREAM_PIXELS& stream)
{
#ifndef __SYNTHESIS__
	assert(WidthInBytes<=1920);
#endif

	const int AXIMM_DATA_BUFF_SZ = (1920+(AXIMM_DATA_WIDTH/8)-1)/(AXIMM_DATA_WIDTH/8);
	const int PIXELS_PER_AXIMM = (AXIMM_DATA_WIDTH/8);

	ap_uint<AXIMM_DATA_WIDTH> buff[AXIMM_DATA_BUFF_SZ];

    int yoffset = 0;
	int loopWidth = (WidthInBytes+(AXIMM_DATA_WIDTH/8)-1)/(AXIMM_DATA_WIDTH/8);
	int widthInPix = WidthInBytes;
	int remainPix = widthInPix%(4*(AXIMM_DATA_WIDTH/32));
	remainPix = (remainPix==0) ? (4*(AXIMM_DATA_WIDTH/32)) : remainPix;

	U8 pixel;
	ap_uint<AXIMM_DATA_WIDTH> bytes;

    forEachRow: for (int y = 0; y < Height; y++)
    {
#pragma HLS loop_tripcount max=1080
#pragma HLS loop_flatten off

        aximm2bytes: for (int x = 0; x < loopWidth; x++)
        {
#pragma HLS pipeline II=1
			buff[x] = axi[yoffset+x];
        }
        yoffset += StrideInBytes/(AXIMM_DATA_WIDTH/8);
		
 		bytes2pixels: for (int x = 0; x < loopWidth; x++)
		{
#pragma HLS pipeline II=PIXELS_PER_AXIMM
			bytes = buff[x];
			for (int i=0; i<(AXIMM_DATA_WIDTH/8); i++)
			{
				U8 pixel = bytes(i*8+7, i*8);
				if (x<loopWidth-1 || i<remainPix/1) stream << pixel;
			}
		}
	}
}	


void PixelStream2AXIBursts(
		STREAM_PIXELS& stream,
        U16 WidthInBytes,
        U16 Height,
        U16 StrideInBytes,
        AXIMM aximm)
{

#ifndef __SYNTHESIS__
	assert(WidthInBytes<=1920);
#endif

	const int AXIMM_DATA_BUFF_SZ = (1920+(AXIMM_DATA_WIDTH/8)-1)/(AXIMM_DATA_WIDTH/8);
	const int PIXELS_PER_AXIMM = (AXIMM_DATA_WIDTH/8);

	ap_uint<AXIMM_DATA_WIDTH> buff[AXIMM_DATA_BUFF_SZ];
	
    int yoffset = 0;
	int loopWidth = (WidthInBytes+(AXIMM_DATA_WIDTH/8)-1)/(AXIMM_DATA_WIDTH/8);
	int widthInPix = WidthInBytes;
	int remainPix = widthInPix%(AXIMM_DATA_WIDTH/8);
	remainPix = (remainPix==0) ? (AXIMM_DATA_WIDTH/(8*1)) : (remainPix/1);

    U8 pixel = 0;
	ap_uint<AXIMM_DATA_WIDTH> bytes;

	
	forEachRow: for (int y = 0; y < Height; y++)
	{
#pragma HLS loop_tripcount max=1080
#pragma HLS loop_flatten off

		pixels2bytes: for (int x = 0; x < loopWidth; x++)
		{
#pragma HLS pipeline II=PIXELS_PER_AXIMM
			for (int i=0; i<(AXIMM_DATA_WIDTH/8); i++)
			{
				if (x<loopWidth-1 || i<remainPix) stream >> pixel;
				bytes((8*(i+1))-1, 8*i) = pixel;
			}
			buff[x] = bytes;
		}

        bytes2aximm: for (int x = 0; x < loopWidth; x++)
        {
#pragma HLS pipeline II=1
            aximm[yoffset+x] = buff[x];
        }
        yoffset += StrideInBytes/(AXIMM_DATA_WIDTH/8);
    }	
}




static void ProcessPixels(
		STREAM_PIXELS& srcImg,
		U16            width,
		U16            height,
                const COEFFTYPE *inpCoeff, 
		STREAM_PIXELS& outImg)
{
    I16 loopHeight = height+(FILTER_KERNEL_V_SIZE/2);
    I16 loopWidth  = width+(FILTER_KERNEL_H_SIZE/2);

	Window2D<MAX_WIDTH, FILTER_KERNEL_V_SIZE, FILTER_KERNEL_H_SIZE, U8> pixelWindow(width, height);

    COEFFTYPE inpCoeff_local[15][15];
    #pragma HLS ARRAY_PARTITION variable=inpCoeff_local   complete dim=0

    for(int i=0; i<FILTER_KERNEL_V_SIZE;i++)
       for(int j=0;j<FILTER_KERNEL_H_SIZE;j++) {
       #pragma HLS pipeline
         inpCoeff_local[i][j] = *(inpCoeff + i*15 +j);
       }

    for(int y=0; y<loopHeight; ++y)
    {
        for(int x=0; x<loopWidth; ++x)
        {
#pragma HLS LOOP_FLATTEN OFF
#pragma HLS PIPELINE II=1

            // Determine whether to get a new pixel and update the 2D window
			bool is_valid = pixelWindow.next(srcImg, x, y);

			//Apply 2D filter
			int sum = 0;
			for(int row=0; row<FILTER_KERNEL_V_SIZE; row++) {
				for(int col=0; col<FILTER_KERNEL_H_SIZE; col++) {
					sum += pixelWindow(row,col)*inpCoeff_local[row][col];
				}
			}

			//Clamp the normalized mean value to s7.4 bits
			U8 outpix = sum/(FILTER_KERNEL_V_SIZE*FILTER_KERNEL_H_SIZE);

            // Take care of run-in effect, write output only when the window is valid
			// i.e. if kernel is VxH need at least V/2 rows and H/2 pixels before generating output
            if ( is_valid )
            {
            	outImg << outpix;
            }
        }
    }
}


extern "C" {

void HardwareFilterKernel(
		const ap_uint<AXIMM_DATA_WIDTH>* src,
		unsigned int width,
		unsigned int height,
		unsigned int stride,
                const COEFFTYPE *inpCoeff,
		ap_uint<AXIMM_DATA_WIDTH>* dst)
  {
    #pragma HLS INTERFACE m_axi     port=src   offset=slave bundle=gmem0  
    #pragma HLS INTERFACE s_axilite port=src                bundle=control
    #pragma HLS INTERFACE s_axilite port=width              bundle=control
    #pragma HLS INTERFACE s_axilite port=height             bundle=control
    #pragma HLS INTERFACE s_axilite port=stride             bundle=control
    #pragma HLS INTERFACE m_axi     port=inpCoeff offset=slave         bundle=gmem1
    #pragma HLS INTERFACE s_axilite port=inpCoeff          bundle=control
    #pragma HLS INTERFACE m_axi     port=dst   offset=slave bundle=gmem1
    #pragma HLS INTERFACE s_axilite port=dst                bundle=control
    #pragma HLS INTERFACE s_axilite port=return             bundle=control

#ifndef __SYNTHESIS__
	assert(width <= 1920);
	assert(height<= 1080);
#endif
            
	STREAM_PIXELS src_pixels;
	STREAM_PIXELS dst_pixels;
	#pragma HLS stream variable=src_pixels depth=64
	#pragma HLS stream variable=dst_pixels depth=64

	#pragma HLS DATAFLOW

	// Read image data from global memory over AXI4 MM, and stream pixels out
	AXIBursts2PixelStream((AXIMM)src, width, height, stride, src_pixels);

	// Process incoming stream of pixels, and stream pixels out
        ProcessPixels(src_pixels, width, height, inpCoeff, dst_pixels);

	// Write incoming stream of pixels and write them to global memory over AXI4 MM
    PixelStream2AXIBursts(dst_pixels, width, height, stride, (AXIMM)dst);

  }

}
