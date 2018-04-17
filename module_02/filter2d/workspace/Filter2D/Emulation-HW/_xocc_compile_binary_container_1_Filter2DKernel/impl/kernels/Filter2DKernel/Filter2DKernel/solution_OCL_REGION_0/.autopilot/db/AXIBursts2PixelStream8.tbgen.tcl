set moduleName AXIBursts2PixelStream8
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 1
set C_modelName {AXIBursts2PixelStream8}
set C_modelType { void 0 }
set C_modelArgList {
	{ axi_V int 256 regular {axi_master 0}  }
	{ axi_V_offset int 64 regular  }
	{ width int 32 regular  }
	{ height int 32 regular  }
	{ stride int 32 regular  }
	{ stream_V int 8 regular {fifo 1 volatile }  }
	{ width_out int 32 regular {fifo 1}  }
	{ height_out int 32 regular {fifo 1}  }
	{ stride_out int 32 regular {fifo 1}  }
	{ coeffs int 64 regular  }
	{ dst_V int 64 regular  }
	{ coeffs_out int 64 regular {fifo 1}  }
	{ dst_V_out int 64 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "axi_V", "interface" : "axi_master", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "axi_V_offset", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "width", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "height", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "stride", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "stream_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "width_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "height_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "stride_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "coeffs", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "dst_V", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "coeffs_out", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dst_V_out", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 79
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_axi_V_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_axi_V_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_axi_V_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_axi_V_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_axi_V_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_axi_V_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_axi_V_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_axi_V_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_axi_V_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_axi_V_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_axi_V_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_axi_V_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_axi_V_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_axi_V_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_axi_V_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_axi_V_WDATA sc_out sc_lv 256 signal 0 } 
	{ m_axi_axi_V_WSTRB sc_out sc_lv 32 signal 0 } 
	{ m_axi_axi_V_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_axi_V_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_axi_V_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_axi_V_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_axi_V_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_axi_V_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_axi_V_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_axi_V_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_axi_V_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_axi_V_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_axi_V_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_axi_V_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_axi_V_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_axi_V_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_axi_V_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_axi_V_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_axi_V_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_axi_V_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_axi_V_RDATA sc_in sc_lv 256 signal 0 } 
	{ m_axi_axi_V_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_axi_V_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_axi_V_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_axi_V_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_axi_V_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_axi_V_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_axi_V_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_axi_V_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_axi_V_BUSER sc_in sc_lv 1 signal 0 } 
	{ axi_V_offset sc_in sc_lv 64 signal 1 } 
	{ width sc_in sc_lv 32 signal 2 } 
	{ height sc_in sc_lv 32 signal 3 } 
	{ stride sc_in sc_lv 32 signal 4 } 
	{ stream_V_din sc_out sc_lv 8 signal 5 } 
	{ stream_V_full_n sc_in sc_logic 1 signal 5 } 
	{ stream_V_write sc_out sc_logic 1 signal 5 } 
	{ width_out_din sc_out sc_lv 32 signal 6 } 
	{ width_out_full_n sc_in sc_logic 1 signal 6 } 
	{ width_out_write sc_out sc_logic 1 signal 6 } 
	{ height_out_din sc_out sc_lv 32 signal 7 } 
	{ height_out_full_n sc_in sc_logic 1 signal 7 } 
	{ height_out_write sc_out sc_logic 1 signal 7 } 
	{ stride_out_din sc_out sc_lv 32 signal 8 } 
	{ stride_out_full_n sc_in sc_logic 1 signal 8 } 
	{ stride_out_write sc_out sc_logic 1 signal 8 } 
	{ coeffs sc_in sc_lv 64 signal 9 } 
	{ dst_V sc_in sc_lv 64 signal 10 } 
	{ coeffs_out_din sc_out sc_lv 64 signal 11 } 
	{ coeffs_out_full_n sc_in sc_logic 1 signal 11 } 
	{ coeffs_out_write sc_out sc_logic 1 signal 11 } 
	{ dst_V_out_din sc_out sc_lv 64 signal 12 } 
	{ dst_V_out_full_n sc_in sc_logic 1 signal 12 } 
	{ dst_V_out_write sc_out sc_logic 1 signal 12 } 
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
 	{ "name": "m_axi_axi_V_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "axi_V", "role": "AWVALID" }} , 
 	{ "name": "m_axi_axi_V_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "axi_V", "role": "AWREADY" }} , 
 	{ "name": "m_axi_axi_V_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "axi_V", "role": "AWADDR" }} , 
 	{ "name": "m_axi_axi_V_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "axi_V", "role": "AWID" }} , 
 	{ "name": "m_axi_axi_V_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "axi_V", "role": "AWLEN" }} , 
 	{ "name": "m_axi_axi_V_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "axi_V", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_axi_V_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "axi_V", "role": "AWBURST" }} , 
 	{ "name": "m_axi_axi_V_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "axi_V", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_axi_V_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "axi_V", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_axi_V_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "axi_V", "role": "AWPROT" }} , 
 	{ "name": "m_axi_axi_V_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "axi_V", "role": "AWQOS" }} , 
 	{ "name": "m_axi_axi_V_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "axi_V", "role": "AWREGION" }} , 
 	{ "name": "m_axi_axi_V_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "axi_V", "role": "AWUSER" }} , 
 	{ "name": "m_axi_axi_V_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "axi_V", "role": "WVALID" }} , 
 	{ "name": "m_axi_axi_V_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "axi_V", "role": "WREADY" }} , 
 	{ "name": "m_axi_axi_V_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "axi_V", "role": "WDATA" }} , 
 	{ "name": "m_axi_axi_V_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "axi_V", "role": "WSTRB" }} , 
 	{ "name": "m_axi_axi_V_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "axi_V", "role": "WLAST" }} , 
 	{ "name": "m_axi_axi_V_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "axi_V", "role": "WID" }} , 
 	{ "name": "m_axi_axi_V_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "axi_V", "role": "WUSER" }} , 
 	{ "name": "m_axi_axi_V_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "axi_V", "role": "ARVALID" }} , 
 	{ "name": "m_axi_axi_V_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "axi_V", "role": "ARREADY" }} , 
 	{ "name": "m_axi_axi_V_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "axi_V", "role": "ARADDR" }} , 
 	{ "name": "m_axi_axi_V_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "axi_V", "role": "ARID" }} , 
 	{ "name": "m_axi_axi_V_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "axi_V", "role": "ARLEN" }} , 
 	{ "name": "m_axi_axi_V_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "axi_V", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_axi_V_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "axi_V", "role": "ARBURST" }} , 
 	{ "name": "m_axi_axi_V_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "axi_V", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_axi_V_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "axi_V", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_axi_V_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "axi_V", "role": "ARPROT" }} , 
 	{ "name": "m_axi_axi_V_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "axi_V", "role": "ARQOS" }} , 
 	{ "name": "m_axi_axi_V_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "axi_V", "role": "ARREGION" }} , 
 	{ "name": "m_axi_axi_V_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "axi_V", "role": "ARUSER" }} , 
 	{ "name": "m_axi_axi_V_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "axi_V", "role": "RVALID" }} , 
 	{ "name": "m_axi_axi_V_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "axi_V", "role": "RREADY" }} , 
 	{ "name": "m_axi_axi_V_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "axi_V", "role": "RDATA" }} , 
 	{ "name": "m_axi_axi_V_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "axi_V", "role": "RLAST" }} , 
 	{ "name": "m_axi_axi_V_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "axi_V", "role": "RID" }} , 
 	{ "name": "m_axi_axi_V_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "axi_V", "role": "RUSER" }} , 
 	{ "name": "m_axi_axi_V_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "axi_V", "role": "RRESP" }} , 
 	{ "name": "m_axi_axi_V_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "axi_V", "role": "BVALID" }} , 
 	{ "name": "m_axi_axi_V_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "axi_V", "role": "BREADY" }} , 
 	{ "name": "m_axi_axi_V_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "axi_V", "role": "BRESP" }} , 
 	{ "name": "m_axi_axi_V_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "axi_V", "role": "BID" }} , 
 	{ "name": "m_axi_axi_V_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "axi_V", "role": "BUSER" }} , 
 	{ "name": "axi_V_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "axi_V_offset", "role": "default" }} , 
 	{ "name": "width", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "width", "role": "default" }} , 
 	{ "name": "height", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "height", "role": "default" }} , 
 	{ "name": "stride", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "stride", "role": "default" }} , 
 	{ "name": "stream_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "stream_V", "role": "din" }} , 
 	{ "name": "stream_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_V", "role": "full_n" }} , 
 	{ "name": "stream_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_V", "role": "write" }} , 
 	{ "name": "width_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "width_out", "role": "din" }} , 
 	{ "name": "width_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "width_out", "role": "full_n" }} , 
 	{ "name": "width_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "width_out", "role": "write" }} , 
 	{ "name": "height_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "height_out", "role": "din" }} , 
 	{ "name": "height_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "height_out", "role": "full_n" }} , 
 	{ "name": "height_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "height_out", "role": "write" }} , 
 	{ "name": "stride_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "stride_out", "role": "din" }} , 
 	{ "name": "stride_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stride_out", "role": "full_n" }} , 
 	{ "name": "stride_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stride_out", "role": "write" }} , 
 	{ "name": "coeffs", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "coeffs", "role": "default" }} , 
 	{ "name": "dst_V", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dst_V", "role": "default" }} , 
 	{ "name": "coeffs_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "coeffs_out", "role": "din" }} , 
 	{ "name": "coeffs_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coeffs_out", "role": "full_n" }} , 
 	{ "name": "coeffs_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coeffs_out", "role": "write" }} , 
 	{ "name": "dst_V_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dst_V_out", "role": "din" }} , 
 	{ "name": "dst_V_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_V_out", "role": "full_n" }} , 
 	{ "name": "dst_V_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_V_out", "role": "write" }} , 
 	{ "name": "ap_ext_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_ext_blocking_n", "role": "default" }} , 
 	{ "name": "ap_str_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_str_blocking_n", "role": "default" }} , 
 	{ "name": "ap_int_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_int_blocking_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "AXIBursts2PixelStream8",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "axi_V", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "axi_V_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "axi_V_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "axi_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "width", "Type" : "None", "Direction" : "I"},
			{"Name" : "height", "Type" : "None", "Direction" : "I"},
			{"Name" : "stride", "Type" : "None", "Direction" : "I"},
			{"Name" : "stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "width_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "width_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "height_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "height_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stride_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "stride_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "coeffs", "Type" : "None", "Direction" : "I"},
			{"Name" : "dst_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "coeffs_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "coeffs_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "dst_V_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	AXIBursts2PixelStream8 {
		axi_V {Type I LastRead 10 FirstWrite -1}
		axi_V_offset {Type I LastRead 0 FirstWrite -1}
		width {Type I LastRead 0 FirstWrite -1}
		height {Type I LastRead 0 FirstWrite -1}
		stride {Type I LastRead 0 FirstWrite -1}
		stream_V {Type O LastRead -1 FirstWrite 12}
		width_out {Type O LastRead -1 FirstWrite 0}
		height_out {Type O LastRead -1 FirstWrite 0}
		stride_out {Type O LastRead -1 FirstWrite 0}
		coeffs {Type I LastRead 0 FirstWrite -1}
		dst_V {Type I LastRead 0 FirstWrite -1}
		coeffs_out {Type O LastRead -1 FirstWrite 0}
		dst_V_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "73004761"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "73004761"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	axi_V { m_axi {  { m_axi_axi_V_AWVALID VALID 1 1 }  { m_axi_axi_V_AWREADY READY 0 1 }  { m_axi_axi_V_AWADDR ADDR 1 64 }  { m_axi_axi_V_AWID ID 1 1 }  { m_axi_axi_V_AWLEN LEN 1 32 }  { m_axi_axi_V_AWSIZE SIZE 1 3 }  { m_axi_axi_V_AWBURST BURST 1 2 }  { m_axi_axi_V_AWLOCK LOCK 1 2 }  { m_axi_axi_V_AWCACHE CACHE 1 4 }  { m_axi_axi_V_AWPROT PROT 1 3 }  { m_axi_axi_V_AWQOS QOS 1 4 }  { m_axi_axi_V_AWREGION REGION 1 4 }  { m_axi_axi_V_AWUSER USER 1 1 }  { m_axi_axi_V_WVALID VALID 1 1 }  { m_axi_axi_V_WREADY READY 0 1 }  { m_axi_axi_V_WDATA DATA 1 256 }  { m_axi_axi_V_WSTRB STRB 1 32 }  { m_axi_axi_V_WLAST LAST 1 1 }  { m_axi_axi_V_WID ID 1 1 }  { m_axi_axi_V_WUSER USER 1 1 }  { m_axi_axi_V_ARVALID VALID 1 1 }  { m_axi_axi_V_ARREADY READY 0 1 }  { m_axi_axi_V_ARADDR ADDR 1 64 }  { m_axi_axi_V_ARID ID 1 1 }  { m_axi_axi_V_ARLEN LEN 1 32 }  { m_axi_axi_V_ARSIZE SIZE 1 3 }  { m_axi_axi_V_ARBURST BURST 1 2 }  { m_axi_axi_V_ARLOCK LOCK 1 2 }  { m_axi_axi_V_ARCACHE CACHE 1 4 }  { m_axi_axi_V_ARPROT PROT 1 3 }  { m_axi_axi_V_ARQOS QOS 1 4 }  { m_axi_axi_V_ARREGION REGION 1 4 }  { m_axi_axi_V_ARUSER USER 1 1 }  { m_axi_axi_V_RVALID VALID 0 1 }  { m_axi_axi_V_RREADY READY 1 1 }  { m_axi_axi_V_RDATA DATA 0 256 }  { m_axi_axi_V_RLAST LAST 0 1 }  { m_axi_axi_V_RID ID 0 1 }  { m_axi_axi_V_RUSER USER 0 1 }  { m_axi_axi_V_RRESP RESP 0 2 }  { m_axi_axi_V_BVALID VALID 0 1 }  { m_axi_axi_V_BREADY READY 1 1 }  { m_axi_axi_V_BRESP RESP 0 2 }  { m_axi_axi_V_BID ID 0 1 }  { m_axi_axi_V_BUSER USER 0 1 } } }
	axi_V_offset { ap_none {  { axi_V_offset in_data 0 64 } } }
	width { ap_none {  { width in_data 0 32 } } }
	height { ap_none {  { height in_data 0 32 } } }
	stride { ap_none {  { stride in_data 0 32 } } }
	stream_V { ap_fifo {  { stream_V_din fifo_data 1 8 }  { stream_V_full_n fifo_status 0 1 }  { stream_V_write fifo_update 1 1 } } }
	width_out { ap_fifo {  { width_out_din fifo_data 1 32 }  { width_out_full_n fifo_status 0 1 }  { width_out_write fifo_update 1 1 } } }
	height_out { ap_fifo {  { height_out_din fifo_data 1 32 }  { height_out_full_n fifo_status 0 1 }  { height_out_write fifo_update 1 1 } } }
	stride_out { ap_fifo {  { stride_out_din fifo_data 1 32 }  { stride_out_full_n fifo_status 0 1 }  { stride_out_write fifo_update 1 1 } } }
	coeffs { ap_none {  { coeffs in_data 0 64 } } }
	dst_V { ap_none {  { dst_V in_data 0 64 } } }
	coeffs_out { ap_fifo {  { coeffs_out_din fifo_data 1 64 }  { coeffs_out_full_n fifo_status 0 1 }  { coeffs_out_write fifo_update 1 1 } } }
	dst_V_out { ap_fifo {  { dst_V_out_din fifo_data 1 64 }  { dst_V_out_full_n fifo_status 0 1 }  { dst_V_out_write fifo_update 1 1 } } }
}
