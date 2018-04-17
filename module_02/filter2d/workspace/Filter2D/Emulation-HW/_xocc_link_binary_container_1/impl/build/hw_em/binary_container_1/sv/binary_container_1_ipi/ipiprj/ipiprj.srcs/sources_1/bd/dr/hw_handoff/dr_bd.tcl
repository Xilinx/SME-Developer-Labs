
################################################################
# This is a generated script based on design: dr
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2017.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source dr_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xcvu9p-flgb2104-2-i
}


# CHANGE DESIGN NAME HERE
set design_name dr

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design -bdsource SDACCEL $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: OCL_Region_0
proc create_hier_cell_OCL_Region_0 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_OCL_Region_0() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 m_axi
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 m_axi1
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 m_axi2
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 m_axi3
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi

  # Create pins
  create_bd_pin -dir I -type clk CONTROL_CLK
  create_bd_pin -dir I -type rst CONTROL_RESET
  create_bd_pin -dir I -type clk DATA_CLK
  create_bd_pin -dir I -type rst DATA_RESET
  create_bd_pin -dir I -type clk KERNEL_CLK2
  create_bd_pin -dir I -type rst KERNEL_RESET2

  # Create instance: Filter2DKernel_1, and set properties
  set Filter2DKernel_1 [ create_bd_cell -type ip -vlnv xilinx.com:hls:Filter2DKernel:1.0 Filter2DKernel_1 ]

  set_property -dict [ list \
CONFIG.NUM_READ_OUTSTANDING {1} \
CONFIG.NUM_WRITE_OUTSTANDING {1} \
 ] [get_bd_intf_pins /OCL_Region_0/Filter2DKernel_1/s_axi_control]

  # Create instance: m_axi_interconnect_M00_AXI, and set properties
  set m_axi_interconnect_M00_AXI [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 m_axi_interconnect_M00_AXI ]
  set_property -dict [ list \
CONFIG.NUM_MI {1} \
CONFIG.NUM_SI {2} \
CONFIG.S00_HAS_REGSLICE {4} \
CONFIG.S01_HAS_REGSLICE {4} \
CONFIG.XBAR_DATA_WIDTH {512} \
 ] $m_axi_interconnect_M00_AXI

  # Create instance: master_bridge_0, and set properties
  set master_bridge_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ocl_axifull_bridge:1.0 master_bridge_0 ]
  set_property -dict [ list \
CONFIG.ADDR_WIDTH {36} \
CONFIG.DATA_WIDTH {512} \
CONFIG.HAS_BURST {0} \
CONFIG.HAS_SLAVE_ID {true} \
CONFIG.M_ID_WIDTH {5} \
CONFIG.S_ID_WIDTH {2} \
 ] $master_bridge_0

  # Create instance: master_bridge_1, and set properties
  set master_bridge_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ocl_axifull_bridge:1.0 master_bridge_1 ]
  set_property -dict [ list \
CONFIG.ADDR_WIDTH {36} \
CONFIG.DATA_WIDTH {512} \
CONFIG.HAS_BURST {0} \
CONFIG.HAS_SLAVE_ID {true} \
CONFIG.M_ID_WIDTH {4} \
CONFIG.S_ID_WIDTH {1} \
 ] $master_bridge_1

  # Create instance: master_bridge_2, and set properties
  set master_bridge_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ocl_axifull_bridge:1.0 master_bridge_2 ]
  set_property -dict [ list \
CONFIG.ADDR_WIDTH {36} \
CONFIG.DATA_WIDTH {512} \
CONFIG.HAS_BURST {0} \
CONFIG.HAS_SLAVE_ID {true} \
CONFIG.M_ID_WIDTH {4} \
CONFIG.S_ID_WIDTH {1} \
 ] $master_bridge_2

  # Create instance: master_bridge_3, and set properties
  set master_bridge_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ocl_axifull_bridge:1.0 master_bridge_3 ]
  set_property -dict [ list \
CONFIG.ADDR_WIDTH {36} \
CONFIG.DATA_WIDTH {512} \
CONFIG.HAS_BURST {0} \
CONFIG.HAS_SLAVE_ID {true} \
CONFIG.M_ID_WIDTH {4} \
CONFIG.S_ID_WIDTH {1} \
 ] $master_bridge_3

  # Create instance: s_axi_interconnect_0, and set properties
  set s_axi_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 s_axi_interconnect_0 ]
  set_property -dict [ list \
CONFIG.M00_HAS_REGSLICE {4} \
CONFIG.NUM_MI {1} \
CONFIG.NUM_SI {1} \
CONFIG.XBAR_DATA_WIDTH {32} \
 ] $s_axi_interconnect_0

  # Create instance: slave_bridge, and set properties
  set slave_bridge [ create_bd_cell -type ip -vlnv xilinx.com:ip:ocl_axilite_bridge:1.0 slave_bridge ]
  set_property -dict [ list \
CONFIG.ADDR_WIDTH {17} \
CONFIG.DATA_WIDTH {32} \
CONFIG.HAS_BURST {0} \
 ] $slave_bridge

  set_property -dict [ list \
CONFIG.MAX_BURST_LENGTH {1} \
 ] [get_bd_intf_pins /OCL_Region_0/slave_bridge/m_axi]

  set_property -dict [ list \
CONFIG.NUM_READ_OUTSTANDING {1} \
CONFIG.NUM_WRITE_OUTSTANDING {1} \
 ] [get_bd_intf_pins /OCL_Region_0/slave_bridge/s_axi]

  # Create instance: xilmonitor_Filter2DKernel_1_m_axi_gmem0, and set properties
  set xilmonitor_Filter2DKernel_1_m_axi_gmem0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:sdx_aximm_wv:1.0 xilmonitor_Filter2DKernel_1_m_axi_gmem0 ]

  # Create instance: xilmonitor_Filter2DKernel_1_m_axi_gmem1, and set properties
  set xilmonitor_Filter2DKernel_1_m_axi_gmem1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:sdx_aximm_wv:1.0 xilmonitor_Filter2DKernel_1_m_axi_gmem1 ]

  # Create instance: xilmonitor_m_axi_interconnect_M00_AXI_M00_AXI, and set properties
  set xilmonitor_m_axi_interconnect_M00_AXI_M00_AXI [ create_bd_cell -type ip -vlnv xilinx.com:ip:sdx_aximm_wv:1.0 xilmonitor_m_axi_interconnect_M00_AXI_M00_AXI ]

  # Create instance: xlconstant_zero_1, and set properties
  set xlconstant_zero_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_zero_1 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
CONFIG.CONST_WIDTH {1} \
 ] $xlconstant_zero_1

  # Create instance: xlconstant_zero_2, and set properties
  set xlconstant_zero_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_zero_2 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
CONFIG.CONST_WIDTH {2} \
 ] $xlconstant_zero_2

  # Create instance: xlconstant_zero_3, and set properties
  set xlconstant_zero_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_zero_3 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
CONFIG.CONST_WIDTH {3} \
 ] $xlconstant_zero_3

  # Create instance: xlconstant_zero_4, and set properties
  set xlconstant_zero_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_zero_4 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
CONFIG.CONST_WIDTH {4} \
 ] $xlconstant_zero_4

  # Create instance: xlconstant_zero_8, and set properties
  set xlconstant_zero_8 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_zero_8 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
CONFIG.CONST_WIDTH {8} \
 ] $xlconstant_zero_8

  # Create instance: xlconstant_zero_36, and set properties
  set xlconstant_zero_36 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_zero_36 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
CONFIG.CONST_WIDTH {36} \
 ] $xlconstant_zero_36

  # Create instance: xlconstant_zero_64, and set properties
  set xlconstant_zero_64 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_zero_64 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
CONFIG.CONST_WIDTH {64} \
 ] $xlconstant_zero_64

  # Create instance: xlconstant_zero_512, and set properties
  set xlconstant_zero_512 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_zero_512 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
CONFIG.CONST_WIDTH {512} \
 ] $xlconstant_zero_512

  # Create interface connections
  connect_bd_intf_net -intf_net Filter2DKernel_1_m_axi_gmem0 [get_bd_intf_pins Filter2DKernel_1/m_axi_gmem0] [get_bd_intf_pins m_axi_interconnect_M00_AXI/S00_AXI]
  connect_bd_intf_net -intf_net [get_bd_intf_nets Filter2DKernel_1_m_axi_gmem0] [get_bd_intf_pins m_axi_interconnect_M00_AXI/S00_AXI] [get_bd_intf_pins xilmonitor_Filter2DKernel_1_m_axi_gmem0/mon_axi]
  connect_bd_intf_net -intf_net Filter2DKernel_1_m_axi_gmem1 [get_bd_intf_pins Filter2DKernel_1/m_axi_gmem1] [get_bd_intf_pins m_axi_interconnect_M00_AXI/S01_AXI]
  connect_bd_intf_net -intf_net [get_bd_intf_nets Filter2DKernel_1_m_axi_gmem1] [get_bd_intf_pins m_axi_interconnect_M00_AXI/S01_AXI] [get_bd_intf_pins xilmonitor_Filter2DKernel_1_m_axi_gmem1/mon_axi]
  connect_bd_intf_net -intf_net M00_AXI [get_bd_intf_pins m_axi] [get_bd_intf_pins master_bridge_0/m_axi]
  connect_bd_intf_net -intf_net M01_AXI [get_bd_intf_pins m_axi1] [get_bd_intf_pins master_bridge_1/m_axi]
  connect_bd_intf_net -intf_net M02_AXI [get_bd_intf_pins m_axi2] [get_bd_intf_pins master_bridge_2/m_axi]
  connect_bd_intf_net -intf_net M03_AXI [get_bd_intf_pins m_axi3] [get_bd_intf_pins master_bridge_3/m_axi]
  connect_bd_intf_net -intf_net S_AXI [get_bd_intf_pins s_axi] [get_bd_intf_pins slave_bridge/s_axi]
  connect_bd_intf_net -intf_net m_axi_interconnect_M00_AXI_M00_AXI [get_bd_intf_pins m_axi_interconnect_M00_AXI/M00_AXI] [get_bd_intf_pins master_bridge_0/s_axi]
  connect_bd_intf_net -intf_net [get_bd_intf_nets m_axi_interconnect_M00_AXI_M00_AXI] [get_bd_intf_pins m_axi_interconnect_M00_AXI/M00_AXI] [get_bd_intf_pins xilmonitor_m_axi_interconnect_M00_AXI_M00_AXI/mon_axi]
  connect_bd_intf_net -intf_net s_axi_interconnect_0_M00_AXI [get_bd_intf_pins Filter2DKernel_1/s_axi_control] [get_bd_intf_pins s_axi_interconnect_0/M00_AXI]
  connect_bd_intf_net -intf_net slave_bridge_m_axi [get_bd_intf_pins s_axi_interconnect_0/S00_AXI] [get_bd_intf_pins slave_bridge/m_axi]

  # Create port connections
  connect_bd_net -net CONTROL_CLK [get_bd_pins CONTROL_CLK] [get_bd_pins s_axi_interconnect_0/ACLK] [get_bd_pins s_axi_interconnect_0/S00_ACLK] [get_bd_pins slave_bridge/aclk]
  connect_bd_net -net CONTROL_RESET [get_bd_pins CONTROL_RESET] [get_bd_pins s_axi_interconnect_0/ARESETN] [get_bd_pins s_axi_interconnect_0/S00_ARESETN] [get_bd_pins slave_bridge/aresetn]
  connect_bd_net -net DATA_CLK [get_bd_pins DATA_CLK] [get_bd_pins Filter2DKernel_1/ap_clk] [get_bd_pins m_axi_interconnect_M00_AXI/ACLK] [get_bd_pins m_axi_interconnect_M00_AXI/M00_ACLK] [get_bd_pins m_axi_interconnect_M00_AXI/S00_ACLK] [get_bd_pins m_axi_interconnect_M00_AXI/S01_ACLK] [get_bd_pins master_bridge_0/aclk] [get_bd_pins master_bridge_1/aclk] [get_bd_pins master_bridge_2/aclk] [get_bd_pins master_bridge_3/aclk] [get_bd_pins s_axi_interconnect_0/M00_ACLK] [get_bd_pins xilmonitor_Filter2DKernel_1_m_axi_gmem0/mon_axi_aclk] [get_bd_pins xilmonitor_Filter2DKernel_1_m_axi_gmem1/mon_axi_aclk] [get_bd_pins xilmonitor_m_axi_interconnect_M00_AXI_M00_AXI/mon_axi_aclk]
  connect_bd_net -net DATA_RESET [get_bd_pins DATA_RESET] [get_bd_pins Filter2DKernel_1/ap_rst_n] [get_bd_pins m_axi_interconnect_M00_AXI/ARESETN] [get_bd_pins m_axi_interconnect_M00_AXI/M00_ARESETN] [get_bd_pins m_axi_interconnect_M00_AXI/S00_ARESETN] [get_bd_pins m_axi_interconnect_M00_AXI/S01_ARESETN] [get_bd_pins master_bridge_0/aresetn] [get_bd_pins master_bridge_1/aresetn] [get_bd_pins master_bridge_2/aresetn] [get_bd_pins master_bridge_3/aresetn] [get_bd_pins s_axi_interconnect_0/M00_ARESETN] [get_bd_pins xilmonitor_Filter2DKernel_1_m_axi_gmem0/mon_axi_aresetn] [get_bd_pins xilmonitor_Filter2DKernel_1_m_axi_gmem1/mon_axi_aresetn] [get_bd_pins xilmonitor_m_axi_interconnect_M00_AXI_M00_AXI/mon_axi_aresetn]
  connect_bd_net -net xlconstant_zero_1_dout [get_bd_pins master_bridge_1/s_axi_arid] [get_bd_pins master_bridge_1/s_axi_arlock] [get_bd_pins master_bridge_1/s_axi_arvalid] [get_bd_pins master_bridge_1/s_axi_awid] [get_bd_pins master_bridge_1/s_axi_awlock] [get_bd_pins master_bridge_1/s_axi_awvalid] [get_bd_pins master_bridge_1/s_axi_bready] [get_bd_pins master_bridge_1/s_axi_rready] [get_bd_pins master_bridge_1/s_axi_wlast] [get_bd_pins master_bridge_1/s_axi_wvalid] [get_bd_pins master_bridge_2/s_axi_arid] [get_bd_pins master_bridge_2/s_axi_arlock] [get_bd_pins master_bridge_2/s_axi_arvalid] [get_bd_pins master_bridge_2/s_axi_awid] [get_bd_pins master_bridge_2/s_axi_awlock] [get_bd_pins master_bridge_2/s_axi_awvalid] [get_bd_pins master_bridge_2/s_axi_bready] [get_bd_pins master_bridge_2/s_axi_rready] [get_bd_pins master_bridge_2/s_axi_wlast] [get_bd_pins master_bridge_2/s_axi_wvalid] [get_bd_pins master_bridge_3/s_axi_arid] [get_bd_pins master_bridge_3/s_axi_arlock] [get_bd_pins master_bridge_3/s_axi_arvalid] [get_bd_pins master_bridge_3/s_axi_awid] [get_bd_pins master_bridge_3/s_axi_awlock] [get_bd_pins master_bridge_3/s_axi_awvalid] [get_bd_pins master_bridge_3/s_axi_bready] [get_bd_pins master_bridge_3/s_axi_rready] [get_bd_pins master_bridge_3/s_axi_wlast] [get_bd_pins master_bridge_3/s_axi_wvalid] [get_bd_pins xlconstant_zero_1/dout]
  connect_bd_net -net xlconstant_zero_2_dout [get_bd_pins master_bridge_1/s_axi_arburst] [get_bd_pins master_bridge_1/s_axi_awburst] [get_bd_pins master_bridge_2/s_axi_arburst] [get_bd_pins master_bridge_2/s_axi_awburst] [get_bd_pins master_bridge_3/s_axi_arburst] [get_bd_pins master_bridge_3/s_axi_awburst] [get_bd_pins xlconstant_zero_2/dout]
  connect_bd_net -net xlconstant_zero_36_dout [get_bd_pins master_bridge_1/s_axi_araddr] [get_bd_pins master_bridge_1/s_axi_awaddr] [get_bd_pins master_bridge_2/s_axi_araddr] [get_bd_pins master_bridge_2/s_axi_awaddr] [get_bd_pins master_bridge_3/s_axi_araddr] [get_bd_pins master_bridge_3/s_axi_awaddr] [get_bd_pins xlconstant_zero_36/dout]
  connect_bd_net -net xlconstant_zero_3_dout [get_bd_pins master_bridge_1/s_axi_arprot] [get_bd_pins master_bridge_1/s_axi_arsize] [get_bd_pins master_bridge_1/s_axi_awprot] [get_bd_pins master_bridge_1/s_axi_awsize] [get_bd_pins master_bridge_2/s_axi_arprot] [get_bd_pins master_bridge_2/s_axi_arsize] [get_bd_pins master_bridge_2/s_axi_awprot] [get_bd_pins master_bridge_2/s_axi_awsize] [get_bd_pins master_bridge_3/s_axi_arprot] [get_bd_pins master_bridge_3/s_axi_arsize] [get_bd_pins master_bridge_3/s_axi_awprot] [get_bd_pins master_bridge_3/s_axi_awsize] [get_bd_pins xlconstant_zero_3/dout]
  connect_bd_net -net xlconstant_zero_4_dout [get_bd_pins master_bridge_1/s_axi_arcache] [get_bd_pins master_bridge_1/s_axi_arqos] [get_bd_pins master_bridge_1/s_axi_awcache] [get_bd_pins master_bridge_1/s_axi_awqos] [get_bd_pins master_bridge_2/s_axi_arcache] [get_bd_pins master_bridge_2/s_axi_arqos] [get_bd_pins master_bridge_2/s_axi_awcache] [get_bd_pins master_bridge_2/s_axi_awqos] [get_bd_pins master_bridge_3/s_axi_arcache] [get_bd_pins master_bridge_3/s_axi_arqos] [get_bd_pins master_bridge_3/s_axi_awcache] [get_bd_pins master_bridge_3/s_axi_awqos] [get_bd_pins xlconstant_zero_4/dout]
  connect_bd_net -net xlconstant_zero_512_dout [get_bd_pins master_bridge_1/s_axi_wdata] [get_bd_pins master_bridge_2/s_axi_wdata] [get_bd_pins master_bridge_3/s_axi_wdata] [get_bd_pins xlconstant_zero_512/dout]
  connect_bd_net -net xlconstant_zero_64_dout [get_bd_pins master_bridge_1/s_axi_wstrb] [get_bd_pins master_bridge_2/s_axi_wstrb] [get_bd_pins master_bridge_3/s_axi_wstrb] [get_bd_pins xlconstant_zero_64/dout]
  connect_bd_net -net xlconstant_zero_8_dout [get_bd_pins master_bridge_1/s_axi_arlen] [get_bd_pins master_bridge_1/s_axi_awlen] [get_bd_pins master_bridge_2/s_axi_arlen] [get_bd_pins master_bridge_2/s_axi_awlen] [get_bd_pins master_bridge_3/s_axi_arlen] [get_bd_pins master_bridge_3/s_axi_awlen] [get_bd_pins xlconstant_zero_8/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports

  # Create instance: OCL_Region_0
  create_hier_cell_OCL_Region_0 [current_bd_instance .] OCL_Region_0

  # Create instance: axi_interconnect_0, and set properties
  set axi_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0 ]
  set_property -dict [ list \
CONFIG.NUM_MI {1} \
 ] $axi_interconnect_0

  # Create instance: c0_ui_clk, and set properties
  set c0_ui_clk [ create_bd_cell -type ip -vlnv xilinx.com:ip:sim_clk_gen:1.0 c0_ui_clk ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {250000000} \
CONFIG.INITIAL_RESET_CLOCK_CYCLES {5} \
 ] $c0_ui_clk

  # Create instance: interconnect_control_clk, and set properties
  set interconnect_control_clk [ create_bd_cell -type ip -vlnv xilinx.com:ip:sim_clk_gen:1.0 interconnect_control_clk ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {125000000} \
CONFIG.INITIAL_RESET_CLOCK_CYCLES {5} \
 ] $interconnect_control_clk

  # Create instance: kernel_clk2, and set properties
  set kernel_clk2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:sim_clk_gen:1.0 kernel_clk2 ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {500000000} \
CONFIG.INITIAL_RESET_CLOCK_CYCLES {5} \
 ] $kernel_clk2

  # Create instance: sdaccel_generic_pcie_0, and set properties
  set sdaccel_generic_pcie_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:sdaccel_generic_pcie:2.0 sdaccel_generic_pcie_0 ]
  set_property -dict [ list \
CONFIG.ADDR_RANGES {1} \
CONFIG.C0.A00_BASE_ADDR {0x0000000000000000} \
CONFIG.C0.A00_HIGH_ADDR {0x0000000400000000} \
CONFIG.C0.NAME {mem0} \
CONFIG.C0.SIZE {16GB} \
CONFIG.C0.TYPE {ddr4} \
CONFIG.C1.A00_BASE_ADDR {0x0000000400000000} \
CONFIG.C1.A00_HIGH_ADDR {0x0000000400000000} \
CONFIG.C1.NAME {mem1} \
CONFIG.C1.SIZE {16GB} \
CONFIG.C1.TYPE {ddr4} \
CONFIG.C2.A00_BASE_ADDR {0x0000000800000000} \
CONFIG.C2.A00_HIGH_ADDR {0x0000000400000000} \
CONFIG.C2.NAME {mem2} \
CONFIG.C2.SIZE {16GB} \
CONFIG.C2.TYPE {ddr4} \
CONFIG.C3.A00_BASE_ADDR {0x0000000C00000000} \
CONFIG.C3.A00_HIGH_ADDR {0x0000000400000000} \
CONFIG.C3.NAME {mem3} \
CONFIG.C3.SIZE {16GB} \
CONFIG.C3.TYPE {ddr4} \
CONFIG.NUMBER_OF_GLOBAL_MEMORIES {4} \
CONFIG.NUM_SLAVE_SLOTS {4} \
CONFIG.S0_ADDR_WIDTH {36} \
CONFIG.S0_DATA_WIDTH {512} \
CONFIG.S1_ADDR_WIDTH {36} \
CONFIG.S1_DATA_WIDTH {512} \
CONFIG.S2_ADDR_WIDTH {36} \
CONFIG.S2_DATA_WIDTH {512} \
CONFIG.S3_ADDR_WIDTH {36} \
CONFIG.S3_DATA_WIDTH {512} \
 ] $sdaccel_generic_pcie_0

  # Create instance: systemc_synchronizer_0, and set properties
  set systemc_synchronizer_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:systemc_synchronizer:1.0 systemc_synchronizer_0 ]
  set_property -dict [ list \
CONFIG.NUM_OF_CLOCKS {1} \
 ] $systemc_synchronizer_0

  # Create interface connections
  connect_bd_intf_net -intf_net OCL_REGION_0_M00_AXI [get_bd_intf_pins OCL_Region_0/m_axi] [get_bd_intf_pins sdaccel_generic_pcie_0/C0_DDR_SAXI]
  connect_bd_intf_net -intf_net OCL_REGION_0_M01_AXI [get_bd_intf_pins OCL_Region_0/m_axi1] [get_bd_intf_pins sdaccel_generic_pcie_0/C1_DDR_SAXI]
  connect_bd_intf_net -intf_net OCL_REGION_0_M02_AXI [get_bd_intf_pins OCL_Region_0/m_axi2] [get_bd_intf_pins sdaccel_generic_pcie_0/C2_DDR_SAXI]
  connect_bd_intf_net -intf_net OCL_REGION_0_M03_AXI [get_bd_intf_pins OCL_Region_0/m_axi3] [get_bd_intf_pins sdaccel_generic_pcie_0/C3_DDR_SAXI]
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins axi_interconnect_0/S00_AXI] [get_bd_intf_pins sdaccel_generic_pcie_0/M_AXI_CTRL]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins OCL_Region_0/s_axi] [get_bd_intf_pins axi_interconnect_0/M00_AXI]

  # Create port connections
  connect_bd_net -net c0_ui_clk_clk [get_bd_pins OCL_Region_0/DATA_CLK] [get_bd_pins axi_interconnect_0/ACLK] [get_bd_pins axi_interconnect_0/S00_ACLK] [get_bd_pins c0_ui_clk/clk] [get_bd_pins sdaccel_generic_pcie_0/c0_ui_clk] [get_bd_pins sdaccel_generic_pcie_0/m_axi_ctrl_clk] [get_bd_pins systemc_synchronizer_0/clk0]
  connect_bd_net -net c0_ui_clk_sync_rst [get_bd_pins OCL_Region_0/DATA_RESET] [get_bd_pins axi_interconnect_0/ARESETN] [get_bd_pins axi_interconnect_0/S00_ARESETN] [get_bd_pins c0_ui_clk/sync_rst]
  connect_bd_net -net interconnect_control_clk_clk [get_bd_pins OCL_Region_0/CONTROL_CLK] [get_bd_pins axi_interconnect_0/M00_ACLK] [get_bd_pins interconnect_control_clk/clk]
  connect_bd_net -net interconnect_control_clk_rst [get_bd_pins OCL_Region_0/CONTROL_RESET] [get_bd_pins axi_interconnect_0/M00_ARESETN] [get_bd_pins interconnect_control_clk/sync_rst]
  connect_bd_net -net kernel_clk2_clk [get_bd_pins OCL_Region_0/KERNEL_CLK2] [get_bd_pins kernel_clk2/clk]
  connect_bd_net -net kernel_clk2_sync_rst [get_bd_pins OCL_Region_0/KERNEL_RESET2] [get_bd_pins kernel_clk2/sync_rst]

  # Create address segments
  create_bd_addr_seg -range 0x00001000 -offset 0x00000000 [get_bd_addr_spaces sdaccel_generic_pcie_0/m_axi_ctrl] [get_bd_addr_segs OCL_Region_0/Filter2DKernel_1/s_axi_control/Reg] SEG_OCL_REGION_0_reg0
  create_bd_addr_seg -range 0x000400000000 -offset 0x00000000 [get_bd_addr_spaces OCL_Region_0/Filter2DKernel_1/Data_m_axi_gmem1] [get_bd_addr_segs sdaccel_generic_pcie_0/C0_DDR_SAXI/Mem0] SEG_sdaccel_generic_pcie_0_0_0
  create_bd_addr_seg -range 0x000400000000 -offset 0x00000000 [get_bd_addr_spaces OCL_Region_0/Filter2DKernel_1/Data_m_axi_gmem0] [get_bd_addr_segs sdaccel_generic_pcie_0/C0_DDR_SAXI/Mem0] SEG_sdaccel_generic_pcie_0_0_1


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


