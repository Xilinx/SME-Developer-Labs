#pragma once


#define MAX_WIDTH			  3000
#define FILTER_KERNEL_V_SIZE		15
#define FILTER_KERNEL_H_SIZE		15

#include "axi2stream.h"

extern "C" {

void HardwareFilterKernel(
		const ap_uint<AXIMM_DATA_WIDTH>* src,
		unsigned int width,
		unsigned int height,
		unsigned int stride,
                const COEFFTYPE *inpCoeff,
		ap_uint<AXIMM_DATA_WIDTH>* dst);

}
