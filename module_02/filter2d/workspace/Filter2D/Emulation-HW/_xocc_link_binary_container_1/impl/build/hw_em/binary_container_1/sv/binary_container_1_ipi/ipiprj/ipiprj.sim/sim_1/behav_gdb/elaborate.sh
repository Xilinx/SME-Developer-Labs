#!/bin/bash -f
xv_path="/opt/Xilinx/SDx/2017.1.op/Vivado"
xv_lib_path="/opt/Xilinx/SDx/2017.1.op/Vivado/lib/lnx64.o"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xelab -wto 6b6841b24c594a4983cf92ef13ef4cab -m64 --debug off --relax --mt 8 -sv_root "." -sv_lib libsdaccel_generic_pcie_v2_0.so -sv_root "." -sv_lib libperformance_monitor_v2_0.so -sv_root "." -sv_lib libsystemc_synchronizer.so -sv_root "." -sv_lib libxsc_main_main.so -L xil_defaultlib -L xlconstant_v1_1_3 -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_12 -L fifo_generator_v13_1_4 -L axi_data_fifo_v2_1_11 -L axi_crossbar_v2_1_13 -L axi_clock_converter_v2_1_11 -L axi_mmu_v2_1_10 -L axi_protocol_converter_v2_1_12 -L blk_mem_gen_v8_3_6 -L axi_dwidth_converter_v2_1_12 -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot dr_wrapper_behav xil_defaultlib.dr_wrapper xil_defaultlib.glbl -log elaborate.log -dump_file_mapping true -standalone 
