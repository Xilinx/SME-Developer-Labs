#!/bin/sh

# 
# xocc(TM)
# runme.sh: a xocc-generated Runs Script for UNIX
# Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/opt/Xilinx/SDx/2017.1.op/SDK/bin:/opt/Xilinx/SDx/2017.1.op/SDK/bin:/opt/Xilinx/SDx/2017.1.op/bin
else
  PATH=/opt/Xilinx/SDx/2017.1.op/SDK/bin:/opt/Xilinx/SDx/2017.1.op/SDK/bin:/opt/Xilinx/SDx/2017.1.op/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/centos/SME-Developer-Labs/module_02/filter2d/workspace/Filter2D/Emulation-HW/_xocc_compile_binary_container_1_Filter2DKernel/impl/kernels/Filter2DKernel'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado_hls -f Filter2DKernel.tcl -messageDb vivado_hls.pb
