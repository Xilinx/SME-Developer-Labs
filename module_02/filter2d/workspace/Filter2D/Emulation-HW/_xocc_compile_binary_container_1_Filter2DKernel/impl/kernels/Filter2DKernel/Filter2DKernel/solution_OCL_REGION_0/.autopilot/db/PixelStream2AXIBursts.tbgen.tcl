set moduleName PixelStream2AXIBursts
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 1
set C_modelName {PixelStream2AXIBursts}
set C_modelType { void 0 }
set C_modelArgList {
	{ stream_V int 8 regular {fifo 0 volatile }  }
	{ width int 32 regular {fifo 0}  }
	{ height int 32 regular {fifo 0}  }
	{ stride int 32 regular {fifo 0}  }
	{ aximm_V int 256 regular {axi_master 1}  }
	{ aximm_V_offset int 64 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "stream_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "width", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "height", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "stride", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "aximm_V", "interface" : "axi_master", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "aximm_V_offset", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 70
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ stream_V_dout sc_in sc_lv 8 signal 0 } 
	{ stream_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ stream_V_read sc_out sc_logic 1 signal 0 } 
	{ width_dout sc_in sc_lv 32 signal 1 } 
	{ width_empty_n sc_in sc_logic 1 signal 1 } 
	{ width_read sc_out sc_logic 1 signal 1 } 
	{ height_dout sc_in sc_lv 32 signal 2 } 
	{ height_empty_n sc_in sc_logic 1 signal 2 } 
	{ height_read sc_out sc_logic 1 signal 2 } 
	{ stride_dout sc_in sc_lv 32 signal 3 } 
	{ stride_empty_n sc_in sc_logic 1 signal 3 } 
	{ stride_read sc_out sc_logic 1 signal 3 } 
	{ m_axi_aximm_V_AWVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_aximm_V_AWREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_aximm_V_AWADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_aximm_V_AWID sc_out sc_lv 1 signal 4 } 
	{ m_axi_aximm_V_AWLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_aximm_V_AWSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_aximm_V_AWBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_aximm_V_AWLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_aximm_V_AWCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_aximm_V_AWPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_aximm_V_AWQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_aximm_V_AWREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_aximm_V_AWUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_aximm_V_WVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_aximm_V_WREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_aximm_V_WDATA sc_out sc_lv 256 signal 4 } 
	{ m_axi_aximm_V_WSTRB sc_out sc_lv 32 signal 4 } 
	{ m_axi_aximm_V_WLAST sc_out sc_logic 1 signal 4 } 
	{ m_axi_aximm_V_WID sc_out sc_lv 1 signal 4 } 
	{ m_axi_aximm_V_WUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_aximm_V_ARVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_aximm_V_ARREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_aximm_V_ARADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_aximm_V_ARID sc_out sc_lv 1 signal 4 } 
	{ m_axi_aximm_V_ARLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_aximm_V_ARSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_aximm_V_ARBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_aximm_V_ARLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_aximm_V_ARCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_aximm_V_ARPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_aximm_V_ARQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_aximm_V_ARREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_aximm_V_ARUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_aximm_V_RVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_aximm_V_RREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_aximm_V_RDATA sc_in sc_lv 256 signal 4 } 
	{ m_axi_aximm_V_RLAST sc_in sc_logic 1 signal 4 } 
	{ m_axi_aximm_V_RID sc_in sc_lv 1 signal 4 } 
	{ m_axi_aximm_V_RUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_aximm_V_RRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_aximm_V_BVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_aximm_V_BREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_aximm_V_BRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_aximm_V_BID sc_in sc_lv 1 signal 4 } 
	{ m_axi_aximm_V_BUSER sc_in sc_lv 1 signal 4 } 
	{ aximm_V_offset_dout sc_in sc_lv 64 signal 5 } 
	{ aximm_V_offset_empty_n sc_in sc_logic 1 signal 5 } 
	{ aximm_V_offset_read sc_out sc_logic 1 signal 5 } 
	{ ap_ext_blocking_n sc_out sc_logic 1 signal -1 } 
	{ ap_str_blocking_n sc_out sc_logic 1 signal -1 } 
	{ ap_int_blocking_n sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "stream_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "stream_V", "role": "dout" }} , 
 	{ "name": "stream_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_V", "role": "empty_n" }} , 
 	{ "name": "stream_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_V", "role": "read" }} , 
 	{ "name": "width_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "width", "role": "dout" }} , 
 	{ "name": "width_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "width", "role": "empty_n" }} , 
 	{ "name": "width_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "width", "role": "read" }} , 
 	{ "name": "height_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "height", "role": "dout" }} , 
 	{ "name": "height_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "height", "role": "empty_n" }} , 
 	{ "name": "height_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "height", "role": "read" }} , 
 	{ "name": "stride_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "stride", "role": "dout" }} , 
 	{ "name": "stride_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stride", "role": "empty_n" }} , 
 	{ "name": "stride_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stride", "role": "read" }} , 
 	{ "name": "m_axi_aximm_V_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aximm_V", "role": "AWVALID" }} , 
 	{ "name": "m_axi_aximm_V_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aximm_V", "role": "AWREADY" }} , 
 	{ "name": "m_axi_aximm_V_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "aximm_V", "role": "AWADDR" }} , 
 	{ "name": "m_axi_aximm_V_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aximm_V", "role": "AWID" }} , 
 	{ "name": "m_axi_aximm_V_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aximm_V", "role": "AWLEN" }} , 
 	{ "name": "m_axi_aximm_V_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "aximm_V", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_aximm_V_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "aximm_V", "role": "AWBURST" }} , 
 	{ "name": "m_axi_aximm_V_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "aximm_V", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_aximm_V_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "aximm_V", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_aximm_V_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "aximm_V", "role": "AWPROT" }} , 
 	{ "name": "m_axi_aximm_V_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "aximm_V", "role": "AWQOS" }} , 
 	{ "name": "m_axi_aximm_V_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "aximm_V", "role": "AWREGION" }} , 
 	{ "name": "m_axi_aximm_V_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aximm_V", "role": "AWUSER" }} , 
 	{ "name": "m_axi_aximm_V_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aximm_V", "role": "WVALID" }} , 
 	{ "name": "m_axi_aximm_V_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aximm_V", "role": "WREADY" }} , 
 	{ "name": "m_axi_aximm_V_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "aximm_V", "role": "WDATA" }} , 
 	{ "name": "m_axi_aximm_V_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aximm_V", "role": "WSTRB" }} , 
 	{ "name": "m_axi_aximm_V_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aximm_V", "role": "WLAST" }} , 
 	{ "name": "m_axi_aximm_V_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aximm_V", "role": "WID" }} , 
 	{ "name": "m_axi_aximm_V_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aximm_V", "role": "WUSER" }} , 
 	{ "name": "m_axi_aximm_V_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aximm_V", "role": "ARVALID" }} , 
 	{ "name": "m_axi_aximm_V_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aximm_V", "role": "ARREADY" }} , 
 	{ "name": "m_axi_aximm_V_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "aximm_V", "role": "ARADDR" }} , 
 	{ "name": "m_axi_aximm_V_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aximm_V", "role": "ARID" }} , 
 	{ "name": "m_axi_aximm_V_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aximm_V", "role": "ARLEN" }} , 
 	{ "name": "m_axi_aximm_V_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "aximm_V", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_aximm_V_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "aximm_V", "role": "ARBURST" }} , 
 	{ "name": "m_axi_aximm_V_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "aximm_V", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_aximm_V_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "aximm_V", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_aximm_V_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "aximm_V", "role": "ARPROT" }} , 
 	{ "name": "m_axi_aximm_V_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "aximm_V", "role": "ARQOS" }} , 
 	{ "name": "m_axi_aximm_V_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "aximm_V", "role": "ARREGION" }} , 
 	{ "name": "m_axi_aximm_V_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aximm_V", "role": "ARUSER" }} , 
 	{ "name": "m_axi_aximm_V_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aximm_V", "role": "RVALID" }} , 
 	{ "name": "m_axi_aximm_V_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aximm_V", "role": "RREADY" }} , 
 	{ "name": "m_axi_aximm_V_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "aximm_V", "role": "RDATA" }} , 
 	{ "name": "m_axi_aximm_V_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aximm_V", "role": "RLAST" }} , 
 	{ "name": "m_axi_aximm_V_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aximm_V", "role": "RID" }} , 
 	{ "name": "m_axi_aximm_V_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aximm_V", "role": "RUSER" }} , 
 	{ "name": "m_axi_aximm_V_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "aximm_V", "role": "RRESP" }} , 
 	{ "name": "m_axi_aximm_V_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aximm_V", "role": "BVALID" }} , 
 	{ "name": "m_axi_aximm_V_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aximm_V", "role": "BREADY" }} , 
 	{ "name": "m_axi_aximm_V_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "aximm_V", "role": "BRESP" }} , 
 	{ "name": "m_axi_aximm_V_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aximm_V", "role": "BID" }} , 
 	{ "name": "m_axi_aximm_V_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "aximm_V", "role": "BUSER" }} , 
 	{ "name": "aximm_V_offset_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "aximm_V_offset", "role": "dout" }} , 
 	{ "name": "aximm_V_offset_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aximm_V_offset", "role": "empty_n" }} , 
 	{ "name": "aximm_V_offset_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aximm_V_offset", "role": "read" }} , 
 	{ "name": "ap_ext_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_ext_blocking_n", "role": "default" }} , 
 	{ "name": "ap_str_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_str_blocking_n", "role": "default" }} , 
 	{ "name": "ap_int_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_int_blocking_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "PixelStream2AXIBursts",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "stream_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "width", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "width_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "height", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "height_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stride", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "stride_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aximm_V", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "aximm_V_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "aximm_V_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "aximm_V_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "aximm_V_offset", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "aximm_V_offset_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PixelStream2AXIBursts {
		stream_V {Type I LastRead 34 FirstWrite -1}
		width {Type I LastRead 0 FirstWrite -1}
		height {Type I LastRead 0 FirstWrite -1}
		stride {Type I LastRead 0 FirstWrite -1}
		aximm_V {Type O LastRead 7 FirstWrite 8}
		aximm_V_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "73003681"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "73003681"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	stream_V { ap_fifo {  { stream_V_dout fifo_data 0 8 }  { stream_V_empty_n fifo_status 0 1 }  { stream_V_read fifo_update 1 1 } } }
	width { ap_fifo {  { width_dout fifo_data 0 32 }  { width_empty_n fifo_status 0 1 }  { width_read fifo_update 1 1 } } }
	height { ap_fifo {  { height_dout fifo_data 0 32 }  { height_empty_n fifo_status 0 1 }  { height_read fifo_update 1 1 } } }
	stride { ap_fifo {  { stride_dout fifo_data 0 32 }  { stride_empty_n fifo_status 0 1 }  { stride_read fifo_update 1 1 } } }
	aximm_V { m_axi {  { m_axi_aximm_V_AWVALID VALID 1 1 }  { m_axi_aximm_V_AWREADY READY 0 1 }  { m_axi_aximm_V_AWADDR ADDR 1 64 }  { m_axi_aximm_V_AWID ID 1 1 }  { m_axi_aximm_V_AWLEN LEN 1 32 }  { m_axi_aximm_V_AWSIZE SIZE 1 3 }  { m_axi_aximm_V_AWBURST BURST 1 2 }  { m_axi_aximm_V_AWLOCK LOCK 1 2 }  { m_axi_aximm_V_AWCACHE CACHE 1 4 }  { m_axi_aximm_V_AWPROT PROT 1 3 }  { m_axi_aximm_V_AWQOS QOS 1 4 }  { m_axi_aximm_V_AWREGION REGION 1 4 }  { m_axi_aximm_V_AWUSER USER 1 1 }  { m_axi_aximm_V_WVALID VALID 1 1 }  { m_axi_aximm_V_WREADY READY 0 1 }  { m_axi_aximm_V_WDATA DATA 1 256 }  { m_axi_aximm_V_WSTRB STRB 1 32 }  { m_axi_aximm_V_WLAST LAST 1 1 }  { m_axi_aximm_V_WID ID 1 1 }  { m_axi_aximm_V_WUSER USER 1 1 }  { m_axi_aximm_V_ARVALID VALID 1 1 }  { m_axi_aximm_V_ARREADY READY 0 1 }  { m_axi_aximm_V_ARADDR ADDR 1 64 }  { m_axi_aximm_V_ARID ID 1 1 }  { m_axi_aximm_V_ARLEN LEN 1 32 }  { m_axi_aximm_V_ARSIZE SIZE 1 3 }  { m_axi_aximm_V_ARBURST BURST 1 2 }  { m_axi_aximm_V_ARLOCK LOCK 1 2 }  { m_axi_aximm_V_ARCACHE CACHE 1 4 }  { m_axi_aximm_V_ARPROT PROT 1 3 }  { m_axi_aximm_V_ARQOS QOS 1 4 }  { m_axi_aximm_V_ARREGION REGION 1 4 }  { m_axi_aximm_V_ARUSER USER 1 1 }  { m_axi_aximm_V_RVALID VALID 0 1 }  { m_axi_aximm_V_RREADY READY 1 1 }  { m_axi_aximm_V_RDATA DATA 0 256 }  { m_axi_aximm_V_RLAST LAST 0 1 }  { m_axi_aximm_V_RID ID 0 1 }  { m_axi_aximm_V_RUSER USER 0 1 }  { m_axi_aximm_V_RRESP RESP 0 2 }  { m_axi_aximm_V_BVALID VALID 0 1 }  { m_axi_aximm_V_BREADY READY 1 1 }  { m_axi_aximm_V_BRESP RESP 0 2 }  { m_axi_aximm_V_BID ID 0 1 }  { m_axi_aximm_V_BUSER USER 0 1 } } }
	aximm_V_offset { ap_fifo {  { aximm_V_offset_dout fifo_data 0 64 }  { aximm_V_offset_empty_n fifo_status 0 1 }  { aximm_V_offset_read fifo_update 1 1 } } }
}
