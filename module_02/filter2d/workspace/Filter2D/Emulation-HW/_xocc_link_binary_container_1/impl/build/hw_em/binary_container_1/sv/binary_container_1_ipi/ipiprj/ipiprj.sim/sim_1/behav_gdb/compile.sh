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
echo "xvlog -m64 --relax -L xil_defaultlib -prj dr_wrapper_vlog.prj"
ExecStep $xv_path/bin/xvlog -m64 --relax -L xil_defaultlib -prj dr_wrapper_vlog.prj 2>&1 | tee compile.log
echo "xvhdl -m64 --relax -prj dr_wrapper_vhdl.prj"
ExecStep $xv_path/bin/xvhdl -m64 --relax -prj dr_wrapper_vhdl.prj 2>&1 | tee -a compile.log
