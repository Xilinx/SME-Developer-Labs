#!/bin/bash -f
xv_path="/opt/Xilinx/SDx/2017.1.op/Vivado"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
xv_lib_path="/opt/Xilinx/SDx/2017.1.op/Vivado/lib/lnx64.o"

export LD_LIBRARY_PATH=$PWD:$xv_lib_path:$LD_LIBRARY_PATH

ExecStep $xv_path/bin/xsim dr_wrapper_behav -key {Behavioral:sim_1:Functional:dr_wrapper} -tclbatch dr_wrapper.tcl -log simulate.log $*
