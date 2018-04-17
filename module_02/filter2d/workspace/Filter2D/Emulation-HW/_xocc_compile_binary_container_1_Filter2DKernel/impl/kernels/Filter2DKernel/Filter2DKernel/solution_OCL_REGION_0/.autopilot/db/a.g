#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/centos/SME-Developer-Labs/module_02/filter2d/workspace/Filter2D/Emulation-HW/_xocc_compile_binary_container_1_Filter2DKernel/impl/kernels/Filter2DKernel/Filter2DKernel/solution_OCL_REGION_0/.autopilot/db/a.g.bc ${1+"$@"}
