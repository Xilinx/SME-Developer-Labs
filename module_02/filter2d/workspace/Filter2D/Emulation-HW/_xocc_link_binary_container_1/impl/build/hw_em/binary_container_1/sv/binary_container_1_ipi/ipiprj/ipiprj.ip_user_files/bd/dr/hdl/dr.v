//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.1_sdxop (lin64) Build 1933108 Fri Jul 14 11:54:19 MDT 2017
//Date        : Tue Apr 17 05:38:43 2018
//Host        : ip-172-31-31-101.ec2.internal running 64-bit CentOS Linux release 7.4.1708 (Core)
//Command     : generate_target dr.bd
//Design      : dr
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module OCL_Region_0_imp_Y41SA3
   (CONTROL_CLK,
    CONTROL_RESET,
    DATA_CLK,
    DATA_RESET,
    KERNEL_CLK2,
    KERNEL_RESET2,
    m_axi1_araddr,
    m_axi1_arburst,
    m_axi1_arcache,
    m_axi1_arid,
    m_axi1_arlen,
    m_axi1_arlock,
    m_axi1_arprot,
    m_axi1_arqos,
    m_axi1_arready,
    m_axi1_arsize,
    m_axi1_arvalid,
    m_axi1_awaddr,
    m_axi1_awburst,
    m_axi1_awcache,
    m_axi1_awid,
    m_axi1_awlen,
    m_axi1_awlock,
    m_axi1_awprot,
    m_axi1_awqos,
    m_axi1_awready,
    m_axi1_awsize,
    m_axi1_awvalid,
    m_axi1_bid,
    m_axi1_bready,
    m_axi1_bresp,
    m_axi1_bvalid,
    m_axi1_rdata,
    m_axi1_rid,
    m_axi1_rlast,
    m_axi1_rready,
    m_axi1_rresp,
    m_axi1_rvalid,
    m_axi1_wdata,
    m_axi1_wlast,
    m_axi1_wready,
    m_axi1_wstrb,
    m_axi1_wvalid,
    m_axi2_araddr,
    m_axi2_arburst,
    m_axi2_arcache,
    m_axi2_arid,
    m_axi2_arlen,
    m_axi2_arlock,
    m_axi2_arprot,
    m_axi2_arqos,
    m_axi2_arready,
    m_axi2_arsize,
    m_axi2_arvalid,
    m_axi2_awaddr,
    m_axi2_awburst,
    m_axi2_awcache,
    m_axi2_awid,
    m_axi2_awlen,
    m_axi2_awlock,
    m_axi2_awprot,
    m_axi2_awqos,
    m_axi2_awready,
    m_axi2_awsize,
    m_axi2_awvalid,
    m_axi2_bid,
    m_axi2_bready,
    m_axi2_bresp,
    m_axi2_bvalid,
    m_axi2_rdata,
    m_axi2_rid,
    m_axi2_rlast,
    m_axi2_rready,
    m_axi2_rresp,
    m_axi2_rvalid,
    m_axi2_wdata,
    m_axi2_wlast,
    m_axi2_wready,
    m_axi2_wstrb,
    m_axi2_wvalid,
    m_axi3_araddr,
    m_axi3_arburst,
    m_axi3_arcache,
    m_axi3_arid,
    m_axi3_arlen,
    m_axi3_arlock,
    m_axi3_arprot,
    m_axi3_arqos,
    m_axi3_arready,
    m_axi3_arsize,
    m_axi3_arvalid,
    m_axi3_awaddr,
    m_axi3_awburst,
    m_axi3_awcache,
    m_axi3_awid,
    m_axi3_awlen,
    m_axi3_awlock,
    m_axi3_awprot,
    m_axi3_awqos,
    m_axi3_awready,
    m_axi3_awsize,
    m_axi3_awvalid,
    m_axi3_bid,
    m_axi3_bready,
    m_axi3_bresp,
    m_axi3_bvalid,
    m_axi3_rdata,
    m_axi3_rid,
    m_axi3_rlast,
    m_axi3_rready,
    m_axi3_rresp,
    m_axi3_rvalid,
    m_axi3_wdata,
    m_axi3_wlast,
    m_axi3_wready,
    m_axi3_wstrb,
    m_axi3_wvalid,
    m_axi_araddr,
    m_axi_arburst,
    m_axi_arcache,
    m_axi_arid,
    m_axi_arlen,
    m_axi_arlock,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arready,
    m_axi_arsize,
    m_axi_arvalid,
    m_axi_awaddr,
    m_axi_awburst,
    m_axi_awcache,
    m_axi_awid,
    m_axi_awlen,
    m_axi_awlock,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awready,
    m_axi_awsize,
    m_axi_awvalid,
    m_axi_bid,
    m_axi_bready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_rdata,
    m_axi_rid,
    m_axi_rlast,
    m_axi_rready,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_wdata,
    m_axi_wlast,
    m_axi_wready,
    m_axi_wstrb,
    m_axi_wvalid,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arready,
    s_axi_arvalid,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awready,
    s_axi_awvalid,
    s_axi_bready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_rdata,
    s_axi_rready,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_wdata,
    s_axi_wready,
    s_axi_wstrb,
    s_axi_wvalid);
  input CONTROL_CLK;
  input CONTROL_RESET;
  input DATA_CLK;
  input DATA_RESET;
  input KERNEL_CLK2;
  input KERNEL_RESET2;
  output [35:0]m_axi1_araddr;
  output [1:0]m_axi1_arburst;
  output [3:0]m_axi1_arcache;
  output [3:0]m_axi1_arid;
  output [7:0]m_axi1_arlen;
  output m_axi1_arlock;
  output [2:0]m_axi1_arprot;
  output [3:0]m_axi1_arqos;
  input m_axi1_arready;
  output [2:0]m_axi1_arsize;
  output m_axi1_arvalid;
  output [35:0]m_axi1_awaddr;
  output [1:0]m_axi1_awburst;
  output [3:0]m_axi1_awcache;
  output [3:0]m_axi1_awid;
  output [7:0]m_axi1_awlen;
  output m_axi1_awlock;
  output [2:0]m_axi1_awprot;
  output [3:0]m_axi1_awqos;
  input m_axi1_awready;
  output [2:0]m_axi1_awsize;
  output m_axi1_awvalid;
  input [4:0]m_axi1_bid;
  output m_axi1_bready;
  input [1:0]m_axi1_bresp;
  input m_axi1_bvalid;
  input [511:0]m_axi1_rdata;
  input [4:0]m_axi1_rid;
  input m_axi1_rlast;
  output m_axi1_rready;
  input [1:0]m_axi1_rresp;
  input m_axi1_rvalid;
  output [511:0]m_axi1_wdata;
  output m_axi1_wlast;
  input m_axi1_wready;
  output [63:0]m_axi1_wstrb;
  output m_axi1_wvalid;
  output [35:0]m_axi2_araddr;
  output [1:0]m_axi2_arburst;
  output [3:0]m_axi2_arcache;
  output [3:0]m_axi2_arid;
  output [7:0]m_axi2_arlen;
  output m_axi2_arlock;
  output [2:0]m_axi2_arprot;
  output [3:0]m_axi2_arqos;
  input m_axi2_arready;
  output [2:0]m_axi2_arsize;
  output m_axi2_arvalid;
  output [35:0]m_axi2_awaddr;
  output [1:0]m_axi2_awburst;
  output [3:0]m_axi2_awcache;
  output [3:0]m_axi2_awid;
  output [7:0]m_axi2_awlen;
  output m_axi2_awlock;
  output [2:0]m_axi2_awprot;
  output [3:0]m_axi2_awqos;
  input m_axi2_awready;
  output [2:0]m_axi2_awsize;
  output m_axi2_awvalid;
  input [4:0]m_axi2_bid;
  output m_axi2_bready;
  input [1:0]m_axi2_bresp;
  input m_axi2_bvalid;
  input [511:0]m_axi2_rdata;
  input [4:0]m_axi2_rid;
  input m_axi2_rlast;
  output m_axi2_rready;
  input [1:0]m_axi2_rresp;
  input m_axi2_rvalid;
  output [511:0]m_axi2_wdata;
  output m_axi2_wlast;
  input m_axi2_wready;
  output [63:0]m_axi2_wstrb;
  output m_axi2_wvalid;
  output [35:0]m_axi3_araddr;
  output [1:0]m_axi3_arburst;
  output [3:0]m_axi3_arcache;
  output [3:0]m_axi3_arid;
  output [7:0]m_axi3_arlen;
  output m_axi3_arlock;
  output [2:0]m_axi3_arprot;
  output [3:0]m_axi3_arqos;
  input m_axi3_arready;
  output [2:0]m_axi3_arsize;
  output m_axi3_arvalid;
  output [35:0]m_axi3_awaddr;
  output [1:0]m_axi3_awburst;
  output [3:0]m_axi3_awcache;
  output [3:0]m_axi3_awid;
  output [7:0]m_axi3_awlen;
  output m_axi3_awlock;
  output [2:0]m_axi3_awprot;
  output [3:0]m_axi3_awqos;
  input m_axi3_awready;
  output [2:0]m_axi3_awsize;
  output m_axi3_awvalid;
  input [4:0]m_axi3_bid;
  output m_axi3_bready;
  input [1:0]m_axi3_bresp;
  input m_axi3_bvalid;
  input [511:0]m_axi3_rdata;
  input [4:0]m_axi3_rid;
  input m_axi3_rlast;
  output m_axi3_rready;
  input [1:0]m_axi3_rresp;
  input m_axi3_rvalid;
  output [511:0]m_axi3_wdata;
  output m_axi3_wlast;
  input m_axi3_wready;
  output [63:0]m_axi3_wstrb;
  output m_axi3_wvalid;
  output [35:0]m_axi_araddr;
  output [1:0]m_axi_arburst;
  output [3:0]m_axi_arcache;
  output [4:0]m_axi_arid;
  output [7:0]m_axi_arlen;
  output m_axi_arlock;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  input m_axi_arready;
  output [2:0]m_axi_arsize;
  output m_axi_arvalid;
  output [35:0]m_axi_awaddr;
  output [1:0]m_axi_awburst;
  output [3:0]m_axi_awcache;
  output [4:0]m_axi_awid;
  output [7:0]m_axi_awlen;
  output m_axi_awlock;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  input m_axi_awready;
  output [2:0]m_axi_awsize;
  output m_axi_awvalid;
  input [4:0]m_axi_bid;
  output m_axi_bready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  input [511:0]m_axi_rdata;
  input [4:0]m_axi_rid;
  input m_axi_rlast;
  output m_axi_rready;
  input [1:0]m_axi_rresp;
  input m_axi_rvalid;
  output [511:0]m_axi_wdata;
  output m_axi_wlast;
  input m_axi_wready;
  output [63:0]m_axi_wstrb;
  output m_axi_wvalid;
  input [63:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  output s_axi_arready;
  input s_axi_arvalid;
  input [63:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  output s_axi_awready;
  input s_axi_awvalid;
  input s_axi_bready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  output [31:0]s_axi_rdata;
  input s_axi_rready;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input [31:0]s_axi_wdata;
  output s_axi_wready;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;

  wire CONTROL_CLK;
  wire CONTROL_RESET;
  wire DATA_CLK;
  wire DATA_RESET;
  wire [63:0]Filter2DKernel_1_m_axi_gmem0_ARADDR;
  wire [1:0]Filter2DKernel_1_m_axi_gmem0_ARBURST;
  wire [3:0]Filter2DKernel_1_m_axi_gmem0_ARCACHE;
  wire [7:0]Filter2DKernel_1_m_axi_gmem0_ARLEN;
  wire [1:0]Filter2DKernel_1_m_axi_gmem0_ARLOCK;
  wire [2:0]Filter2DKernel_1_m_axi_gmem0_ARPROT;
  wire [3:0]Filter2DKernel_1_m_axi_gmem0_ARQOS;
  wire Filter2DKernel_1_m_axi_gmem0_ARREADY;
  wire [2:0]Filter2DKernel_1_m_axi_gmem0_ARSIZE;
  wire Filter2DKernel_1_m_axi_gmem0_ARVALID;
  wire [63:0]Filter2DKernel_1_m_axi_gmem0_AWADDR;
  wire [1:0]Filter2DKernel_1_m_axi_gmem0_AWBURST;
  wire [3:0]Filter2DKernel_1_m_axi_gmem0_AWCACHE;
  wire [7:0]Filter2DKernel_1_m_axi_gmem0_AWLEN;
  wire [1:0]Filter2DKernel_1_m_axi_gmem0_AWLOCK;
  wire [2:0]Filter2DKernel_1_m_axi_gmem0_AWPROT;
  wire [3:0]Filter2DKernel_1_m_axi_gmem0_AWQOS;
  wire Filter2DKernel_1_m_axi_gmem0_AWREADY;
  wire [2:0]Filter2DKernel_1_m_axi_gmem0_AWSIZE;
  wire Filter2DKernel_1_m_axi_gmem0_AWVALID;
  wire Filter2DKernel_1_m_axi_gmem0_BREADY;
  wire [1:0]Filter2DKernel_1_m_axi_gmem0_BRESP;
  wire Filter2DKernel_1_m_axi_gmem0_BVALID;
  wire [255:0]Filter2DKernel_1_m_axi_gmem0_RDATA;
  wire Filter2DKernel_1_m_axi_gmem0_RLAST;
  wire Filter2DKernel_1_m_axi_gmem0_RREADY;
  wire [1:0]Filter2DKernel_1_m_axi_gmem0_RRESP;
  wire Filter2DKernel_1_m_axi_gmem0_RVALID;
  wire [255:0]Filter2DKernel_1_m_axi_gmem0_WDATA;
  wire Filter2DKernel_1_m_axi_gmem0_WLAST;
  wire Filter2DKernel_1_m_axi_gmem0_WREADY;
  wire [31:0]Filter2DKernel_1_m_axi_gmem0_WSTRB;
  wire Filter2DKernel_1_m_axi_gmem0_WVALID;
  wire [63:0]Filter2DKernel_1_m_axi_gmem1_ARADDR;
  wire [1:0]Filter2DKernel_1_m_axi_gmem1_ARBURST;
  wire [3:0]Filter2DKernel_1_m_axi_gmem1_ARCACHE;
  wire [7:0]Filter2DKernel_1_m_axi_gmem1_ARLEN;
  wire [1:0]Filter2DKernel_1_m_axi_gmem1_ARLOCK;
  wire [2:0]Filter2DKernel_1_m_axi_gmem1_ARPROT;
  wire [3:0]Filter2DKernel_1_m_axi_gmem1_ARQOS;
  wire Filter2DKernel_1_m_axi_gmem1_ARREADY;
  wire [2:0]Filter2DKernel_1_m_axi_gmem1_ARSIZE;
  wire Filter2DKernel_1_m_axi_gmem1_ARVALID;
  wire [63:0]Filter2DKernel_1_m_axi_gmem1_AWADDR;
  wire [1:0]Filter2DKernel_1_m_axi_gmem1_AWBURST;
  wire [3:0]Filter2DKernel_1_m_axi_gmem1_AWCACHE;
  wire [7:0]Filter2DKernel_1_m_axi_gmem1_AWLEN;
  wire [1:0]Filter2DKernel_1_m_axi_gmem1_AWLOCK;
  wire [2:0]Filter2DKernel_1_m_axi_gmem1_AWPROT;
  wire [3:0]Filter2DKernel_1_m_axi_gmem1_AWQOS;
  wire Filter2DKernel_1_m_axi_gmem1_AWREADY;
  wire [2:0]Filter2DKernel_1_m_axi_gmem1_AWSIZE;
  wire Filter2DKernel_1_m_axi_gmem1_AWVALID;
  wire Filter2DKernel_1_m_axi_gmem1_BREADY;
  wire [1:0]Filter2DKernel_1_m_axi_gmem1_BRESP;
  wire Filter2DKernel_1_m_axi_gmem1_BVALID;
  wire [255:0]Filter2DKernel_1_m_axi_gmem1_RDATA;
  wire Filter2DKernel_1_m_axi_gmem1_RLAST;
  wire Filter2DKernel_1_m_axi_gmem1_RREADY;
  wire [1:0]Filter2DKernel_1_m_axi_gmem1_RRESP;
  wire Filter2DKernel_1_m_axi_gmem1_RVALID;
  wire [255:0]Filter2DKernel_1_m_axi_gmem1_WDATA;
  wire Filter2DKernel_1_m_axi_gmem1_WLAST;
  wire Filter2DKernel_1_m_axi_gmem1_WREADY;
  wire [31:0]Filter2DKernel_1_m_axi_gmem1_WSTRB;
  wire Filter2DKernel_1_m_axi_gmem1_WVALID;
  wire [35:0]M00_AXI_ARADDR;
  wire [1:0]M00_AXI_ARBURST;
  wire [3:0]M00_AXI_ARCACHE;
  wire [4:0]M00_AXI_ARID;
  wire [7:0]M00_AXI_ARLEN;
  wire [0:0]M00_AXI_ARLOCK;
  wire [2:0]M00_AXI_ARPROT;
  wire [3:0]M00_AXI_ARQOS;
  wire M00_AXI_ARREADY;
  wire [2:0]M00_AXI_ARSIZE;
  wire M00_AXI_ARVALID;
  wire [35:0]M00_AXI_AWADDR;
  wire [1:0]M00_AXI_AWBURST;
  wire [3:0]M00_AXI_AWCACHE;
  wire [4:0]M00_AXI_AWID;
  wire [7:0]M00_AXI_AWLEN;
  wire [0:0]M00_AXI_AWLOCK;
  wire [2:0]M00_AXI_AWPROT;
  wire [3:0]M00_AXI_AWQOS;
  wire M00_AXI_AWREADY;
  wire [2:0]M00_AXI_AWSIZE;
  wire M00_AXI_AWVALID;
  wire [4:0]M00_AXI_BID;
  wire M00_AXI_BREADY;
  wire [1:0]M00_AXI_BRESP;
  wire M00_AXI_BVALID;
  wire [511:0]M00_AXI_RDATA;
  wire [4:0]M00_AXI_RID;
  wire M00_AXI_RLAST;
  wire M00_AXI_RREADY;
  wire [1:0]M00_AXI_RRESP;
  wire M00_AXI_RVALID;
  wire [511:0]M00_AXI_WDATA;
  wire M00_AXI_WLAST;
  wire M00_AXI_WREADY;
  wire [63:0]M00_AXI_WSTRB;
  wire M00_AXI_WVALID;
  wire [35:0]M01_AXI_ARADDR;
  wire [1:0]M01_AXI_ARBURST;
  wire [3:0]M01_AXI_ARCACHE;
  wire [3:0]M01_AXI_ARID;
  wire [7:0]M01_AXI_ARLEN;
  wire [0:0]M01_AXI_ARLOCK;
  wire [2:0]M01_AXI_ARPROT;
  wire [3:0]M01_AXI_ARQOS;
  wire M01_AXI_ARREADY;
  wire [2:0]M01_AXI_ARSIZE;
  wire M01_AXI_ARVALID;
  wire [35:0]M01_AXI_AWADDR;
  wire [1:0]M01_AXI_AWBURST;
  wire [3:0]M01_AXI_AWCACHE;
  wire [3:0]M01_AXI_AWID;
  wire [7:0]M01_AXI_AWLEN;
  wire [0:0]M01_AXI_AWLOCK;
  wire [2:0]M01_AXI_AWPROT;
  wire [3:0]M01_AXI_AWQOS;
  wire M01_AXI_AWREADY;
  wire [2:0]M01_AXI_AWSIZE;
  wire M01_AXI_AWVALID;
  wire [4:0]M01_AXI_BID;
  wire M01_AXI_BREADY;
  wire [1:0]M01_AXI_BRESP;
  wire M01_AXI_BVALID;
  wire [511:0]M01_AXI_RDATA;
  wire [4:0]M01_AXI_RID;
  wire M01_AXI_RLAST;
  wire M01_AXI_RREADY;
  wire [1:0]M01_AXI_RRESP;
  wire M01_AXI_RVALID;
  wire [511:0]M01_AXI_WDATA;
  wire M01_AXI_WLAST;
  wire M01_AXI_WREADY;
  wire [63:0]M01_AXI_WSTRB;
  wire M01_AXI_WVALID;
  wire [35:0]M02_AXI_ARADDR;
  wire [1:0]M02_AXI_ARBURST;
  wire [3:0]M02_AXI_ARCACHE;
  wire [3:0]M02_AXI_ARID;
  wire [7:0]M02_AXI_ARLEN;
  wire [0:0]M02_AXI_ARLOCK;
  wire [2:0]M02_AXI_ARPROT;
  wire [3:0]M02_AXI_ARQOS;
  wire M02_AXI_ARREADY;
  wire [2:0]M02_AXI_ARSIZE;
  wire M02_AXI_ARVALID;
  wire [35:0]M02_AXI_AWADDR;
  wire [1:0]M02_AXI_AWBURST;
  wire [3:0]M02_AXI_AWCACHE;
  wire [3:0]M02_AXI_AWID;
  wire [7:0]M02_AXI_AWLEN;
  wire [0:0]M02_AXI_AWLOCK;
  wire [2:0]M02_AXI_AWPROT;
  wire [3:0]M02_AXI_AWQOS;
  wire M02_AXI_AWREADY;
  wire [2:0]M02_AXI_AWSIZE;
  wire M02_AXI_AWVALID;
  wire [4:0]M02_AXI_BID;
  wire M02_AXI_BREADY;
  wire [1:0]M02_AXI_BRESP;
  wire M02_AXI_BVALID;
  wire [511:0]M02_AXI_RDATA;
  wire [4:0]M02_AXI_RID;
  wire M02_AXI_RLAST;
  wire M02_AXI_RREADY;
  wire [1:0]M02_AXI_RRESP;
  wire M02_AXI_RVALID;
  wire [511:0]M02_AXI_WDATA;
  wire M02_AXI_WLAST;
  wire M02_AXI_WREADY;
  wire [63:0]M02_AXI_WSTRB;
  wire M02_AXI_WVALID;
  wire [35:0]M03_AXI_ARADDR;
  wire [1:0]M03_AXI_ARBURST;
  wire [3:0]M03_AXI_ARCACHE;
  wire [3:0]M03_AXI_ARID;
  wire [7:0]M03_AXI_ARLEN;
  wire [0:0]M03_AXI_ARLOCK;
  wire [2:0]M03_AXI_ARPROT;
  wire [3:0]M03_AXI_ARQOS;
  wire M03_AXI_ARREADY;
  wire [2:0]M03_AXI_ARSIZE;
  wire M03_AXI_ARVALID;
  wire [35:0]M03_AXI_AWADDR;
  wire [1:0]M03_AXI_AWBURST;
  wire [3:0]M03_AXI_AWCACHE;
  wire [3:0]M03_AXI_AWID;
  wire [7:0]M03_AXI_AWLEN;
  wire [0:0]M03_AXI_AWLOCK;
  wire [2:0]M03_AXI_AWPROT;
  wire [3:0]M03_AXI_AWQOS;
  wire M03_AXI_AWREADY;
  wire [2:0]M03_AXI_AWSIZE;
  wire M03_AXI_AWVALID;
  wire [4:0]M03_AXI_BID;
  wire M03_AXI_BREADY;
  wire [1:0]M03_AXI_BRESP;
  wire M03_AXI_BVALID;
  wire [511:0]M03_AXI_RDATA;
  wire [4:0]M03_AXI_RID;
  wire M03_AXI_RLAST;
  wire M03_AXI_RREADY;
  wire [1:0]M03_AXI_RRESP;
  wire M03_AXI_RVALID;
  wire [511:0]M03_AXI_WDATA;
  wire M03_AXI_WLAST;
  wire M03_AXI_WREADY;
  wire [63:0]M03_AXI_WSTRB;
  wire M03_AXI_WVALID;
  wire [63:0]S_AXI_ARADDR;
  wire [2:0]S_AXI_ARPROT;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [63:0]S_AXI_AWADDR;
  wire [2:0]S_AXI_AWPROT;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire [1:0]S_AXI_BRESP;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire [1:0]S_AXI_RRESP;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire [3:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire [63:0]m_axi_interconnect_M00_AXI_M00_AXI_ARADDR;
  wire [1:0]m_axi_interconnect_M00_AXI_M00_AXI_ARBURST;
  wire [3:0]m_axi_interconnect_M00_AXI_M00_AXI_ARCACHE;
  wire [0:0]m_axi_interconnect_M00_AXI_M00_AXI_ARID;
  wire [7:0]m_axi_interconnect_M00_AXI_M00_AXI_ARLEN;
  wire [0:0]m_axi_interconnect_M00_AXI_M00_AXI_ARLOCK;
  wire [2:0]m_axi_interconnect_M00_AXI_M00_AXI_ARPROT;
  wire [3:0]m_axi_interconnect_M00_AXI_M00_AXI_ARQOS;
  wire m_axi_interconnect_M00_AXI_M00_AXI_ARREADY;
  wire [2:0]m_axi_interconnect_M00_AXI_M00_AXI_ARSIZE;
  wire m_axi_interconnect_M00_AXI_M00_AXI_ARVALID;
  wire [63:0]m_axi_interconnect_M00_AXI_M00_AXI_AWADDR;
  wire [1:0]m_axi_interconnect_M00_AXI_M00_AXI_AWBURST;
  wire [3:0]m_axi_interconnect_M00_AXI_M00_AXI_AWCACHE;
  wire [0:0]m_axi_interconnect_M00_AXI_M00_AXI_AWID;
  wire [7:0]m_axi_interconnect_M00_AXI_M00_AXI_AWLEN;
  wire [0:0]m_axi_interconnect_M00_AXI_M00_AXI_AWLOCK;
  wire [2:0]m_axi_interconnect_M00_AXI_M00_AXI_AWPROT;
  wire [3:0]m_axi_interconnect_M00_AXI_M00_AXI_AWQOS;
  wire m_axi_interconnect_M00_AXI_M00_AXI_AWREADY;
  wire [2:0]m_axi_interconnect_M00_AXI_M00_AXI_AWSIZE;
  wire m_axi_interconnect_M00_AXI_M00_AXI_AWVALID;
  wire [1:0]m_axi_interconnect_M00_AXI_M00_AXI_BID;
  wire m_axi_interconnect_M00_AXI_M00_AXI_BREADY;
  wire [1:0]m_axi_interconnect_M00_AXI_M00_AXI_BRESP;
  wire m_axi_interconnect_M00_AXI_M00_AXI_BVALID;
  wire [511:0]m_axi_interconnect_M00_AXI_M00_AXI_RDATA;
  wire [1:0]m_axi_interconnect_M00_AXI_M00_AXI_RID;
  wire m_axi_interconnect_M00_AXI_M00_AXI_RLAST;
  wire m_axi_interconnect_M00_AXI_M00_AXI_RREADY;
  wire [1:0]m_axi_interconnect_M00_AXI_M00_AXI_RRESP;
  wire m_axi_interconnect_M00_AXI_M00_AXI_RVALID;
  wire [511:0]m_axi_interconnect_M00_AXI_M00_AXI_WDATA;
  wire m_axi_interconnect_M00_AXI_M00_AXI_WLAST;
  wire m_axi_interconnect_M00_AXI_M00_AXI_WREADY;
  wire [63:0]m_axi_interconnect_M00_AXI_M00_AXI_WSTRB;
  wire m_axi_interconnect_M00_AXI_M00_AXI_WVALID;
  wire [16:0]s_axi_interconnect_0_M00_AXI_ARADDR;
  wire s_axi_interconnect_0_M00_AXI_ARREADY;
  wire s_axi_interconnect_0_M00_AXI_ARVALID;
  wire [16:0]s_axi_interconnect_0_M00_AXI_AWADDR;
  wire s_axi_interconnect_0_M00_AXI_AWREADY;
  wire s_axi_interconnect_0_M00_AXI_AWVALID;
  wire s_axi_interconnect_0_M00_AXI_BREADY;
  wire [1:0]s_axi_interconnect_0_M00_AXI_BRESP;
  wire s_axi_interconnect_0_M00_AXI_BVALID;
  wire [31:0]s_axi_interconnect_0_M00_AXI_RDATA;
  wire s_axi_interconnect_0_M00_AXI_RREADY;
  wire [1:0]s_axi_interconnect_0_M00_AXI_RRESP;
  wire s_axi_interconnect_0_M00_AXI_RVALID;
  wire [31:0]s_axi_interconnect_0_M00_AXI_WDATA;
  wire s_axi_interconnect_0_M00_AXI_WREADY;
  wire [3:0]s_axi_interconnect_0_M00_AXI_WSTRB;
  wire s_axi_interconnect_0_M00_AXI_WVALID;
  wire [16:0]slave_bridge_m_axi_ARADDR;
  wire [2:0]slave_bridge_m_axi_ARPROT;
  wire slave_bridge_m_axi_ARREADY;
  wire slave_bridge_m_axi_ARVALID;
  wire [16:0]slave_bridge_m_axi_AWADDR;
  wire [2:0]slave_bridge_m_axi_AWPROT;
  wire slave_bridge_m_axi_AWREADY;
  wire slave_bridge_m_axi_AWVALID;
  wire slave_bridge_m_axi_BREADY;
  wire [1:0]slave_bridge_m_axi_BRESP;
  wire slave_bridge_m_axi_BVALID;
  wire [31:0]slave_bridge_m_axi_RDATA;
  wire slave_bridge_m_axi_RREADY;
  wire [1:0]slave_bridge_m_axi_RRESP;
  wire slave_bridge_m_axi_RVALID;
  wire [31:0]slave_bridge_m_axi_WDATA;
  wire slave_bridge_m_axi_WREADY;
  wire [3:0]slave_bridge_m_axi_WSTRB;
  wire slave_bridge_m_axi_WVALID;
  wire [0:0]xlconstant_zero_1_dout;
  wire [1:0]xlconstant_zero_2_dout;
  wire [35:0]xlconstant_zero_36_dout;
  wire [2:0]xlconstant_zero_3_dout;
  wire [3:0]xlconstant_zero_4_dout;
  wire [511:0]xlconstant_zero_512_dout;
  wire [63:0]xlconstant_zero_64_dout;
  wire [7:0]xlconstant_zero_8_dout;

  assign M00_AXI_ARREADY = m_axi_arready;
  assign M00_AXI_AWREADY = m_axi_awready;
  assign M00_AXI_BID = m_axi_bid[4:0];
  assign M00_AXI_BRESP = m_axi_bresp[1:0];
  assign M00_AXI_BVALID = m_axi_bvalid;
  assign M00_AXI_RDATA = m_axi_rdata[511:0];
  assign M00_AXI_RID = m_axi_rid[4:0];
  assign M00_AXI_RLAST = m_axi_rlast;
  assign M00_AXI_RRESP = m_axi_rresp[1:0];
  assign M00_AXI_RVALID = m_axi_rvalid;
  assign M00_AXI_WREADY = m_axi_wready;
  assign M01_AXI_ARREADY = m_axi1_arready;
  assign M01_AXI_AWREADY = m_axi1_awready;
  assign M01_AXI_BID = m_axi1_bid[4:0];
  assign M01_AXI_BRESP = m_axi1_bresp[1:0];
  assign M01_AXI_BVALID = m_axi1_bvalid;
  assign M01_AXI_RDATA = m_axi1_rdata[511:0];
  assign M01_AXI_RID = m_axi1_rid[4:0];
  assign M01_AXI_RLAST = m_axi1_rlast;
  assign M01_AXI_RRESP = m_axi1_rresp[1:0];
  assign M01_AXI_RVALID = m_axi1_rvalid;
  assign M01_AXI_WREADY = m_axi1_wready;
  assign M02_AXI_ARREADY = m_axi2_arready;
  assign M02_AXI_AWREADY = m_axi2_awready;
  assign M02_AXI_BID = m_axi2_bid[4:0];
  assign M02_AXI_BRESP = m_axi2_bresp[1:0];
  assign M02_AXI_BVALID = m_axi2_bvalid;
  assign M02_AXI_RDATA = m_axi2_rdata[511:0];
  assign M02_AXI_RID = m_axi2_rid[4:0];
  assign M02_AXI_RLAST = m_axi2_rlast;
  assign M02_AXI_RRESP = m_axi2_rresp[1:0];
  assign M02_AXI_RVALID = m_axi2_rvalid;
  assign M02_AXI_WREADY = m_axi2_wready;
  assign M03_AXI_ARREADY = m_axi3_arready;
  assign M03_AXI_AWREADY = m_axi3_awready;
  assign M03_AXI_BID = m_axi3_bid[4:0];
  assign M03_AXI_BRESP = m_axi3_bresp[1:0];
  assign M03_AXI_BVALID = m_axi3_bvalid;
  assign M03_AXI_RDATA = m_axi3_rdata[511:0];
  assign M03_AXI_RID = m_axi3_rid[4:0];
  assign M03_AXI_RLAST = m_axi3_rlast;
  assign M03_AXI_RRESP = m_axi3_rresp[1:0];
  assign M03_AXI_RVALID = m_axi3_rvalid;
  assign M03_AXI_WREADY = m_axi3_wready;
  assign S_AXI_ARADDR = s_axi_araddr[63:0];
  assign S_AXI_ARPROT = s_axi_arprot[2:0];
  assign S_AXI_ARVALID = s_axi_arvalid;
  assign S_AXI_AWADDR = s_axi_awaddr[63:0];
  assign S_AXI_AWPROT = s_axi_awprot[2:0];
  assign S_AXI_AWVALID = s_axi_awvalid;
  assign S_AXI_BREADY = s_axi_bready;
  assign S_AXI_RREADY = s_axi_rready;
  assign S_AXI_WDATA = s_axi_wdata[31:0];
  assign S_AXI_WSTRB = s_axi_wstrb[3:0];
  assign S_AXI_WVALID = s_axi_wvalid;
  assign m_axi1_araddr[35:0] = M01_AXI_ARADDR;
  assign m_axi1_arburst[1:0] = M01_AXI_ARBURST;
  assign m_axi1_arcache[3:0] = M01_AXI_ARCACHE;
  assign m_axi1_arid[3:0] = M01_AXI_ARID;
  assign m_axi1_arlen[7:0] = M01_AXI_ARLEN;
  assign m_axi1_arlock = M01_AXI_ARLOCK;
  assign m_axi1_arprot[2:0] = M01_AXI_ARPROT;
  assign m_axi1_arqos[3:0] = M01_AXI_ARQOS;
  assign m_axi1_arsize[2:0] = M01_AXI_ARSIZE;
  assign m_axi1_arvalid = M01_AXI_ARVALID;
  assign m_axi1_awaddr[35:0] = M01_AXI_AWADDR;
  assign m_axi1_awburst[1:0] = M01_AXI_AWBURST;
  assign m_axi1_awcache[3:0] = M01_AXI_AWCACHE;
  assign m_axi1_awid[3:0] = M01_AXI_AWID;
  assign m_axi1_awlen[7:0] = M01_AXI_AWLEN;
  assign m_axi1_awlock = M01_AXI_AWLOCK;
  assign m_axi1_awprot[2:0] = M01_AXI_AWPROT;
  assign m_axi1_awqos[3:0] = M01_AXI_AWQOS;
  assign m_axi1_awsize[2:0] = M01_AXI_AWSIZE;
  assign m_axi1_awvalid = M01_AXI_AWVALID;
  assign m_axi1_bready = M01_AXI_BREADY;
  assign m_axi1_rready = M01_AXI_RREADY;
  assign m_axi1_wdata[511:0] = M01_AXI_WDATA;
  assign m_axi1_wlast = M01_AXI_WLAST;
  assign m_axi1_wstrb[63:0] = M01_AXI_WSTRB;
  assign m_axi1_wvalid = M01_AXI_WVALID;
  assign m_axi2_araddr[35:0] = M02_AXI_ARADDR;
  assign m_axi2_arburst[1:0] = M02_AXI_ARBURST;
  assign m_axi2_arcache[3:0] = M02_AXI_ARCACHE;
  assign m_axi2_arid[3:0] = M02_AXI_ARID;
  assign m_axi2_arlen[7:0] = M02_AXI_ARLEN;
  assign m_axi2_arlock = M02_AXI_ARLOCK;
  assign m_axi2_arprot[2:0] = M02_AXI_ARPROT;
  assign m_axi2_arqos[3:0] = M02_AXI_ARQOS;
  assign m_axi2_arsize[2:0] = M02_AXI_ARSIZE;
  assign m_axi2_arvalid = M02_AXI_ARVALID;
  assign m_axi2_awaddr[35:0] = M02_AXI_AWADDR;
  assign m_axi2_awburst[1:0] = M02_AXI_AWBURST;
  assign m_axi2_awcache[3:0] = M02_AXI_AWCACHE;
  assign m_axi2_awid[3:0] = M02_AXI_AWID;
  assign m_axi2_awlen[7:0] = M02_AXI_AWLEN;
  assign m_axi2_awlock = M02_AXI_AWLOCK;
  assign m_axi2_awprot[2:0] = M02_AXI_AWPROT;
  assign m_axi2_awqos[3:0] = M02_AXI_AWQOS;
  assign m_axi2_awsize[2:0] = M02_AXI_AWSIZE;
  assign m_axi2_awvalid = M02_AXI_AWVALID;
  assign m_axi2_bready = M02_AXI_BREADY;
  assign m_axi2_rready = M02_AXI_RREADY;
  assign m_axi2_wdata[511:0] = M02_AXI_WDATA;
  assign m_axi2_wlast = M02_AXI_WLAST;
  assign m_axi2_wstrb[63:0] = M02_AXI_WSTRB;
  assign m_axi2_wvalid = M02_AXI_WVALID;
  assign m_axi3_araddr[35:0] = M03_AXI_ARADDR;
  assign m_axi3_arburst[1:0] = M03_AXI_ARBURST;
  assign m_axi3_arcache[3:0] = M03_AXI_ARCACHE;
  assign m_axi3_arid[3:0] = M03_AXI_ARID;
  assign m_axi3_arlen[7:0] = M03_AXI_ARLEN;
  assign m_axi3_arlock = M03_AXI_ARLOCK;
  assign m_axi3_arprot[2:0] = M03_AXI_ARPROT;
  assign m_axi3_arqos[3:0] = M03_AXI_ARQOS;
  assign m_axi3_arsize[2:0] = M03_AXI_ARSIZE;
  assign m_axi3_arvalid = M03_AXI_ARVALID;
  assign m_axi3_awaddr[35:0] = M03_AXI_AWADDR;
  assign m_axi3_awburst[1:0] = M03_AXI_AWBURST;
  assign m_axi3_awcache[3:0] = M03_AXI_AWCACHE;
  assign m_axi3_awid[3:0] = M03_AXI_AWID;
  assign m_axi3_awlen[7:0] = M03_AXI_AWLEN;
  assign m_axi3_awlock = M03_AXI_AWLOCK;
  assign m_axi3_awprot[2:0] = M03_AXI_AWPROT;
  assign m_axi3_awqos[3:0] = M03_AXI_AWQOS;
  assign m_axi3_awsize[2:0] = M03_AXI_AWSIZE;
  assign m_axi3_awvalid = M03_AXI_AWVALID;
  assign m_axi3_bready = M03_AXI_BREADY;
  assign m_axi3_rready = M03_AXI_RREADY;
  assign m_axi3_wdata[511:0] = M03_AXI_WDATA;
  assign m_axi3_wlast = M03_AXI_WLAST;
  assign m_axi3_wstrb[63:0] = M03_AXI_WSTRB;
  assign m_axi3_wvalid = M03_AXI_WVALID;
  assign m_axi_araddr[35:0] = M00_AXI_ARADDR;
  assign m_axi_arburst[1:0] = M00_AXI_ARBURST;
  assign m_axi_arcache[3:0] = M00_AXI_ARCACHE;
  assign m_axi_arid[4:0] = M00_AXI_ARID;
  assign m_axi_arlen[7:0] = M00_AXI_ARLEN;
  assign m_axi_arlock = M00_AXI_ARLOCK;
  assign m_axi_arprot[2:0] = M00_AXI_ARPROT;
  assign m_axi_arqos[3:0] = M00_AXI_ARQOS;
  assign m_axi_arsize[2:0] = M00_AXI_ARSIZE;
  assign m_axi_arvalid = M00_AXI_ARVALID;
  assign m_axi_awaddr[35:0] = M00_AXI_AWADDR;
  assign m_axi_awburst[1:0] = M00_AXI_AWBURST;
  assign m_axi_awcache[3:0] = M00_AXI_AWCACHE;
  assign m_axi_awid[4:0] = M00_AXI_AWID;
  assign m_axi_awlen[7:0] = M00_AXI_AWLEN;
  assign m_axi_awlock = M00_AXI_AWLOCK;
  assign m_axi_awprot[2:0] = M00_AXI_AWPROT;
  assign m_axi_awqos[3:0] = M00_AXI_AWQOS;
  assign m_axi_awsize[2:0] = M00_AXI_AWSIZE;
  assign m_axi_awvalid = M00_AXI_AWVALID;
  assign m_axi_bready = M00_AXI_BREADY;
  assign m_axi_rready = M00_AXI_RREADY;
  assign m_axi_wdata[511:0] = M00_AXI_WDATA;
  assign m_axi_wlast = M00_AXI_WLAST;
  assign m_axi_wstrb[63:0] = M00_AXI_WSTRB;
  assign m_axi_wvalid = M00_AXI_WVALID;
  assign s_axi_arready = S_AXI_ARREADY;
  assign s_axi_awready = S_AXI_AWREADY;
  assign s_axi_bresp[1:0] = S_AXI_BRESP;
  assign s_axi_bvalid = S_AXI_BVALID;
  assign s_axi_rdata[31:0] = S_AXI_RDATA;
  assign s_axi_rresp[1:0] = S_AXI_RRESP;
  assign s_axi_rvalid = S_AXI_RVALID;
  assign s_axi_wready = S_AXI_WREADY;
  dr_Filter2DKernel_1_0 Filter2DKernel_1
       (.ap_clk(DATA_CLK),
        .ap_rst_n(DATA_RESET),
        .m_axi_gmem0_ARADDR(Filter2DKernel_1_m_axi_gmem0_ARADDR),
        .m_axi_gmem0_ARBURST(Filter2DKernel_1_m_axi_gmem0_ARBURST),
        .m_axi_gmem0_ARCACHE(Filter2DKernel_1_m_axi_gmem0_ARCACHE),
        .m_axi_gmem0_ARLEN(Filter2DKernel_1_m_axi_gmem0_ARLEN),
        .m_axi_gmem0_ARLOCK(Filter2DKernel_1_m_axi_gmem0_ARLOCK),
        .m_axi_gmem0_ARPROT(Filter2DKernel_1_m_axi_gmem0_ARPROT),
        .m_axi_gmem0_ARQOS(Filter2DKernel_1_m_axi_gmem0_ARQOS),
        .m_axi_gmem0_ARREADY(Filter2DKernel_1_m_axi_gmem0_ARREADY),
        .m_axi_gmem0_ARSIZE(Filter2DKernel_1_m_axi_gmem0_ARSIZE),
        .m_axi_gmem0_ARVALID(Filter2DKernel_1_m_axi_gmem0_ARVALID),
        .m_axi_gmem0_AWADDR(Filter2DKernel_1_m_axi_gmem0_AWADDR),
        .m_axi_gmem0_AWBURST(Filter2DKernel_1_m_axi_gmem0_AWBURST),
        .m_axi_gmem0_AWCACHE(Filter2DKernel_1_m_axi_gmem0_AWCACHE),
        .m_axi_gmem0_AWLEN(Filter2DKernel_1_m_axi_gmem0_AWLEN),
        .m_axi_gmem0_AWLOCK(Filter2DKernel_1_m_axi_gmem0_AWLOCK),
        .m_axi_gmem0_AWPROT(Filter2DKernel_1_m_axi_gmem0_AWPROT),
        .m_axi_gmem0_AWQOS(Filter2DKernel_1_m_axi_gmem0_AWQOS),
        .m_axi_gmem0_AWREADY(Filter2DKernel_1_m_axi_gmem0_AWREADY),
        .m_axi_gmem0_AWSIZE(Filter2DKernel_1_m_axi_gmem0_AWSIZE),
        .m_axi_gmem0_AWVALID(Filter2DKernel_1_m_axi_gmem0_AWVALID),
        .m_axi_gmem0_BREADY(Filter2DKernel_1_m_axi_gmem0_BREADY),
        .m_axi_gmem0_BRESP(Filter2DKernel_1_m_axi_gmem0_BRESP),
        .m_axi_gmem0_BVALID(Filter2DKernel_1_m_axi_gmem0_BVALID),
        .m_axi_gmem0_RDATA(Filter2DKernel_1_m_axi_gmem0_RDATA),
        .m_axi_gmem0_RLAST(Filter2DKernel_1_m_axi_gmem0_RLAST),
        .m_axi_gmem0_RREADY(Filter2DKernel_1_m_axi_gmem0_RREADY),
        .m_axi_gmem0_RRESP(Filter2DKernel_1_m_axi_gmem0_RRESP),
        .m_axi_gmem0_RVALID(Filter2DKernel_1_m_axi_gmem0_RVALID),
        .m_axi_gmem0_WDATA(Filter2DKernel_1_m_axi_gmem0_WDATA),
        .m_axi_gmem0_WLAST(Filter2DKernel_1_m_axi_gmem0_WLAST),
        .m_axi_gmem0_WREADY(Filter2DKernel_1_m_axi_gmem0_WREADY),
        .m_axi_gmem0_WSTRB(Filter2DKernel_1_m_axi_gmem0_WSTRB),
        .m_axi_gmem0_WVALID(Filter2DKernel_1_m_axi_gmem0_WVALID),
        .m_axi_gmem1_ARADDR(Filter2DKernel_1_m_axi_gmem1_ARADDR),
        .m_axi_gmem1_ARBURST(Filter2DKernel_1_m_axi_gmem1_ARBURST),
        .m_axi_gmem1_ARCACHE(Filter2DKernel_1_m_axi_gmem1_ARCACHE),
        .m_axi_gmem1_ARLEN(Filter2DKernel_1_m_axi_gmem1_ARLEN),
        .m_axi_gmem1_ARLOCK(Filter2DKernel_1_m_axi_gmem1_ARLOCK),
        .m_axi_gmem1_ARPROT(Filter2DKernel_1_m_axi_gmem1_ARPROT),
        .m_axi_gmem1_ARQOS(Filter2DKernel_1_m_axi_gmem1_ARQOS),
        .m_axi_gmem1_ARREADY(Filter2DKernel_1_m_axi_gmem1_ARREADY),
        .m_axi_gmem1_ARSIZE(Filter2DKernel_1_m_axi_gmem1_ARSIZE),
        .m_axi_gmem1_ARVALID(Filter2DKernel_1_m_axi_gmem1_ARVALID),
        .m_axi_gmem1_AWADDR(Filter2DKernel_1_m_axi_gmem1_AWADDR),
        .m_axi_gmem1_AWBURST(Filter2DKernel_1_m_axi_gmem1_AWBURST),
        .m_axi_gmem1_AWCACHE(Filter2DKernel_1_m_axi_gmem1_AWCACHE),
        .m_axi_gmem1_AWLEN(Filter2DKernel_1_m_axi_gmem1_AWLEN),
        .m_axi_gmem1_AWLOCK(Filter2DKernel_1_m_axi_gmem1_AWLOCK),
        .m_axi_gmem1_AWPROT(Filter2DKernel_1_m_axi_gmem1_AWPROT),
        .m_axi_gmem1_AWQOS(Filter2DKernel_1_m_axi_gmem1_AWQOS),
        .m_axi_gmem1_AWREADY(Filter2DKernel_1_m_axi_gmem1_AWREADY),
        .m_axi_gmem1_AWSIZE(Filter2DKernel_1_m_axi_gmem1_AWSIZE),
        .m_axi_gmem1_AWVALID(Filter2DKernel_1_m_axi_gmem1_AWVALID),
        .m_axi_gmem1_BREADY(Filter2DKernel_1_m_axi_gmem1_BREADY),
        .m_axi_gmem1_BRESP(Filter2DKernel_1_m_axi_gmem1_BRESP),
        .m_axi_gmem1_BVALID(Filter2DKernel_1_m_axi_gmem1_BVALID),
        .m_axi_gmem1_RDATA(Filter2DKernel_1_m_axi_gmem1_RDATA),
        .m_axi_gmem1_RLAST(Filter2DKernel_1_m_axi_gmem1_RLAST),
        .m_axi_gmem1_RREADY(Filter2DKernel_1_m_axi_gmem1_RREADY),
        .m_axi_gmem1_RRESP(Filter2DKernel_1_m_axi_gmem1_RRESP),
        .m_axi_gmem1_RVALID(Filter2DKernel_1_m_axi_gmem1_RVALID),
        .m_axi_gmem1_WDATA(Filter2DKernel_1_m_axi_gmem1_WDATA),
        .m_axi_gmem1_WLAST(Filter2DKernel_1_m_axi_gmem1_WLAST),
        .m_axi_gmem1_WREADY(Filter2DKernel_1_m_axi_gmem1_WREADY),
        .m_axi_gmem1_WSTRB(Filter2DKernel_1_m_axi_gmem1_WSTRB),
        .m_axi_gmem1_WVALID(Filter2DKernel_1_m_axi_gmem1_WVALID),
        .s_axi_control_ARADDR(s_axi_interconnect_0_M00_AXI_ARADDR[6:0]),
        .s_axi_control_ARREADY(s_axi_interconnect_0_M00_AXI_ARREADY),
        .s_axi_control_ARVALID(s_axi_interconnect_0_M00_AXI_ARVALID),
        .s_axi_control_AWADDR(s_axi_interconnect_0_M00_AXI_AWADDR[6:0]),
        .s_axi_control_AWREADY(s_axi_interconnect_0_M00_AXI_AWREADY),
        .s_axi_control_AWVALID(s_axi_interconnect_0_M00_AXI_AWVALID),
        .s_axi_control_BREADY(s_axi_interconnect_0_M00_AXI_BREADY),
        .s_axi_control_BRESP(s_axi_interconnect_0_M00_AXI_BRESP),
        .s_axi_control_BVALID(s_axi_interconnect_0_M00_AXI_BVALID),
        .s_axi_control_RDATA(s_axi_interconnect_0_M00_AXI_RDATA),
        .s_axi_control_RREADY(s_axi_interconnect_0_M00_AXI_RREADY),
        .s_axi_control_RRESP(s_axi_interconnect_0_M00_AXI_RRESP),
        .s_axi_control_RVALID(s_axi_interconnect_0_M00_AXI_RVALID),
        .s_axi_control_WDATA(s_axi_interconnect_0_M00_AXI_WDATA),
        .s_axi_control_WREADY(s_axi_interconnect_0_M00_AXI_WREADY),
        .s_axi_control_WSTRB(s_axi_interconnect_0_M00_AXI_WSTRB),
        .s_axi_control_WVALID(s_axi_interconnect_0_M00_AXI_WVALID));
  dr_m_axi_interconnect_M00_AXI_0 m_axi_interconnect_M00_AXI
       (.ACLK(DATA_CLK),
        .ARESETN(DATA_RESET),
        .M00_ACLK(DATA_CLK),
        .M00_ARESETN(DATA_RESET),
        .M00_AXI_araddr(m_axi_interconnect_M00_AXI_M00_AXI_ARADDR),
        .M00_AXI_arburst(m_axi_interconnect_M00_AXI_M00_AXI_ARBURST),
        .M00_AXI_arcache(m_axi_interconnect_M00_AXI_M00_AXI_ARCACHE),
        .M00_AXI_arid(m_axi_interconnect_M00_AXI_M00_AXI_ARID),
        .M00_AXI_arlen(m_axi_interconnect_M00_AXI_M00_AXI_ARLEN),
        .M00_AXI_arlock(m_axi_interconnect_M00_AXI_M00_AXI_ARLOCK),
        .M00_AXI_arprot(m_axi_interconnect_M00_AXI_M00_AXI_ARPROT),
        .M00_AXI_arqos(m_axi_interconnect_M00_AXI_M00_AXI_ARQOS),
        .M00_AXI_arready(m_axi_interconnect_M00_AXI_M00_AXI_ARREADY),
        .M00_AXI_arsize(m_axi_interconnect_M00_AXI_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(m_axi_interconnect_M00_AXI_M00_AXI_ARVALID),
        .M00_AXI_awaddr(m_axi_interconnect_M00_AXI_M00_AXI_AWADDR),
        .M00_AXI_awburst(m_axi_interconnect_M00_AXI_M00_AXI_AWBURST),
        .M00_AXI_awcache(m_axi_interconnect_M00_AXI_M00_AXI_AWCACHE),
        .M00_AXI_awid(m_axi_interconnect_M00_AXI_M00_AXI_AWID),
        .M00_AXI_awlen(m_axi_interconnect_M00_AXI_M00_AXI_AWLEN),
        .M00_AXI_awlock(m_axi_interconnect_M00_AXI_M00_AXI_AWLOCK),
        .M00_AXI_awprot(m_axi_interconnect_M00_AXI_M00_AXI_AWPROT),
        .M00_AXI_awqos(m_axi_interconnect_M00_AXI_M00_AXI_AWQOS),
        .M00_AXI_awready(m_axi_interconnect_M00_AXI_M00_AXI_AWREADY),
        .M00_AXI_awsize(m_axi_interconnect_M00_AXI_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(m_axi_interconnect_M00_AXI_M00_AXI_AWVALID),
        .M00_AXI_bid(m_axi_interconnect_M00_AXI_M00_AXI_BID),
        .M00_AXI_bready(m_axi_interconnect_M00_AXI_M00_AXI_BREADY),
        .M00_AXI_bresp(m_axi_interconnect_M00_AXI_M00_AXI_BRESP),
        .M00_AXI_bvalid(m_axi_interconnect_M00_AXI_M00_AXI_BVALID),
        .M00_AXI_rdata(m_axi_interconnect_M00_AXI_M00_AXI_RDATA),
        .M00_AXI_rid(m_axi_interconnect_M00_AXI_M00_AXI_RID),
        .M00_AXI_rlast(m_axi_interconnect_M00_AXI_M00_AXI_RLAST),
        .M00_AXI_rready(m_axi_interconnect_M00_AXI_M00_AXI_RREADY),
        .M00_AXI_rresp(m_axi_interconnect_M00_AXI_M00_AXI_RRESP),
        .M00_AXI_rvalid(m_axi_interconnect_M00_AXI_M00_AXI_RVALID),
        .M00_AXI_wdata(m_axi_interconnect_M00_AXI_M00_AXI_WDATA),
        .M00_AXI_wlast(m_axi_interconnect_M00_AXI_M00_AXI_WLAST),
        .M00_AXI_wready(m_axi_interconnect_M00_AXI_M00_AXI_WREADY),
        .M00_AXI_wstrb(m_axi_interconnect_M00_AXI_M00_AXI_WSTRB),
        .M00_AXI_wvalid(m_axi_interconnect_M00_AXI_M00_AXI_WVALID),
        .S00_ACLK(DATA_CLK),
        .S00_ARESETN(DATA_RESET),
        .S00_AXI_araddr(Filter2DKernel_1_m_axi_gmem0_ARADDR),
        .S00_AXI_arburst(Filter2DKernel_1_m_axi_gmem0_ARBURST),
        .S00_AXI_arcache(Filter2DKernel_1_m_axi_gmem0_ARCACHE),
        .S00_AXI_arlen(Filter2DKernel_1_m_axi_gmem0_ARLEN),
        .S00_AXI_arlock(Filter2DKernel_1_m_axi_gmem0_ARLOCK),
        .S00_AXI_arprot(Filter2DKernel_1_m_axi_gmem0_ARPROT),
        .S00_AXI_arqos(Filter2DKernel_1_m_axi_gmem0_ARQOS),
        .S00_AXI_arready(Filter2DKernel_1_m_axi_gmem0_ARREADY),
        .S00_AXI_arsize(Filter2DKernel_1_m_axi_gmem0_ARSIZE),
        .S00_AXI_arvalid(Filter2DKernel_1_m_axi_gmem0_ARVALID),
        .S00_AXI_awaddr(Filter2DKernel_1_m_axi_gmem0_AWADDR),
        .S00_AXI_awburst(Filter2DKernel_1_m_axi_gmem0_AWBURST),
        .S00_AXI_awcache(Filter2DKernel_1_m_axi_gmem0_AWCACHE),
        .S00_AXI_awlen(Filter2DKernel_1_m_axi_gmem0_AWLEN),
        .S00_AXI_awlock(Filter2DKernel_1_m_axi_gmem0_AWLOCK),
        .S00_AXI_awprot(Filter2DKernel_1_m_axi_gmem0_AWPROT),
        .S00_AXI_awqos(Filter2DKernel_1_m_axi_gmem0_AWQOS),
        .S00_AXI_awready(Filter2DKernel_1_m_axi_gmem0_AWREADY),
        .S00_AXI_awsize(Filter2DKernel_1_m_axi_gmem0_AWSIZE),
        .S00_AXI_awvalid(Filter2DKernel_1_m_axi_gmem0_AWVALID),
        .S00_AXI_bready(Filter2DKernel_1_m_axi_gmem0_BREADY),
        .S00_AXI_bresp(Filter2DKernel_1_m_axi_gmem0_BRESP),
        .S00_AXI_bvalid(Filter2DKernel_1_m_axi_gmem0_BVALID),
        .S00_AXI_rdata(Filter2DKernel_1_m_axi_gmem0_RDATA),
        .S00_AXI_rlast(Filter2DKernel_1_m_axi_gmem0_RLAST),
        .S00_AXI_rready(Filter2DKernel_1_m_axi_gmem0_RREADY),
        .S00_AXI_rresp(Filter2DKernel_1_m_axi_gmem0_RRESP),
        .S00_AXI_rvalid(Filter2DKernel_1_m_axi_gmem0_RVALID),
        .S00_AXI_wdata(Filter2DKernel_1_m_axi_gmem0_WDATA),
        .S00_AXI_wlast(Filter2DKernel_1_m_axi_gmem0_WLAST),
        .S00_AXI_wready(Filter2DKernel_1_m_axi_gmem0_WREADY),
        .S00_AXI_wstrb(Filter2DKernel_1_m_axi_gmem0_WSTRB),
        .S00_AXI_wvalid(Filter2DKernel_1_m_axi_gmem0_WVALID),
        .S01_ACLK(DATA_CLK),
        .S01_ARESETN(DATA_RESET),
        .S01_AXI_araddr(Filter2DKernel_1_m_axi_gmem1_ARADDR),
        .S01_AXI_arburst(Filter2DKernel_1_m_axi_gmem1_ARBURST),
        .S01_AXI_arcache(Filter2DKernel_1_m_axi_gmem1_ARCACHE),
        .S01_AXI_arlen(Filter2DKernel_1_m_axi_gmem1_ARLEN),
        .S01_AXI_arlock(Filter2DKernel_1_m_axi_gmem1_ARLOCK),
        .S01_AXI_arprot(Filter2DKernel_1_m_axi_gmem1_ARPROT),
        .S01_AXI_arqos(Filter2DKernel_1_m_axi_gmem1_ARQOS),
        .S01_AXI_arready(Filter2DKernel_1_m_axi_gmem1_ARREADY),
        .S01_AXI_arsize(Filter2DKernel_1_m_axi_gmem1_ARSIZE),
        .S01_AXI_arvalid(Filter2DKernel_1_m_axi_gmem1_ARVALID),
        .S01_AXI_awaddr(Filter2DKernel_1_m_axi_gmem1_AWADDR),
        .S01_AXI_awburst(Filter2DKernel_1_m_axi_gmem1_AWBURST),
        .S01_AXI_awcache(Filter2DKernel_1_m_axi_gmem1_AWCACHE),
        .S01_AXI_awlen(Filter2DKernel_1_m_axi_gmem1_AWLEN),
        .S01_AXI_awlock(Filter2DKernel_1_m_axi_gmem1_AWLOCK),
        .S01_AXI_awprot(Filter2DKernel_1_m_axi_gmem1_AWPROT),
        .S01_AXI_awqos(Filter2DKernel_1_m_axi_gmem1_AWQOS),
        .S01_AXI_awready(Filter2DKernel_1_m_axi_gmem1_AWREADY),
        .S01_AXI_awsize(Filter2DKernel_1_m_axi_gmem1_AWSIZE),
        .S01_AXI_awvalid(Filter2DKernel_1_m_axi_gmem1_AWVALID),
        .S01_AXI_bready(Filter2DKernel_1_m_axi_gmem1_BREADY),
        .S01_AXI_bresp(Filter2DKernel_1_m_axi_gmem1_BRESP),
        .S01_AXI_bvalid(Filter2DKernel_1_m_axi_gmem1_BVALID),
        .S01_AXI_rdata(Filter2DKernel_1_m_axi_gmem1_RDATA),
        .S01_AXI_rlast(Filter2DKernel_1_m_axi_gmem1_RLAST),
        .S01_AXI_rready(Filter2DKernel_1_m_axi_gmem1_RREADY),
        .S01_AXI_rresp(Filter2DKernel_1_m_axi_gmem1_RRESP),
        .S01_AXI_rvalid(Filter2DKernel_1_m_axi_gmem1_RVALID),
        .S01_AXI_wdata(Filter2DKernel_1_m_axi_gmem1_WDATA),
        .S01_AXI_wlast(Filter2DKernel_1_m_axi_gmem1_WLAST),
        .S01_AXI_wready(Filter2DKernel_1_m_axi_gmem1_WREADY),
        .S01_AXI_wstrb(Filter2DKernel_1_m_axi_gmem1_WSTRB),
        .S01_AXI_wvalid(Filter2DKernel_1_m_axi_gmem1_WVALID));
  (* DONT_TOUCH *) 
  dr_master_bridge_0_0 master_bridge_0
       (.aclk(DATA_CLK),
        .aresetn(DATA_RESET),
        .m_axi_araddr(M00_AXI_ARADDR),
        .m_axi_arburst(M00_AXI_ARBURST),
        .m_axi_arcache(M00_AXI_ARCACHE),
        .m_axi_arid(M00_AXI_ARID),
        .m_axi_arlen(M00_AXI_ARLEN),
        .m_axi_arlock(M00_AXI_ARLOCK),
        .m_axi_arprot(M00_AXI_ARPROT),
        .m_axi_arqos(M00_AXI_ARQOS),
        .m_axi_arready(M00_AXI_ARREADY),
        .m_axi_arsize(M00_AXI_ARSIZE),
        .m_axi_arvalid(M00_AXI_ARVALID),
        .m_axi_awaddr(M00_AXI_AWADDR),
        .m_axi_awburst(M00_AXI_AWBURST),
        .m_axi_awcache(M00_AXI_AWCACHE),
        .m_axi_awid(M00_AXI_AWID),
        .m_axi_awlen(M00_AXI_AWLEN),
        .m_axi_awlock(M00_AXI_AWLOCK),
        .m_axi_awprot(M00_AXI_AWPROT),
        .m_axi_awqos(M00_AXI_AWQOS),
        .m_axi_awready(M00_AXI_AWREADY),
        .m_axi_awsize(M00_AXI_AWSIZE),
        .m_axi_awvalid(M00_AXI_AWVALID),
        .m_axi_bid(M00_AXI_BID),
        .m_axi_bready(M00_AXI_BREADY),
        .m_axi_bresp(M00_AXI_BRESP),
        .m_axi_bvalid(M00_AXI_BVALID),
        .m_axi_rdata(M00_AXI_RDATA),
        .m_axi_rid(M00_AXI_RID),
        .m_axi_rlast(M00_AXI_RLAST),
        .m_axi_rready(M00_AXI_RREADY),
        .m_axi_rresp(M00_AXI_RRESP),
        .m_axi_rvalid(M00_AXI_RVALID),
        .m_axi_wdata(M00_AXI_WDATA),
        .m_axi_wlast(M00_AXI_WLAST),
        .m_axi_wready(M00_AXI_WREADY),
        .m_axi_wstrb(M00_AXI_WSTRB),
        .m_axi_wvalid(M00_AXI_WVALID),
        .s_axi_araddr(m_axi_interconnect_M00_AXI_M00_AXI_ARADDR[35:0]),
        .s_axi_arburst(m_axi_interconnect_M00_AXI_M00_AXI_ARBURST),
        .s_axi_arcache(m_axi_interconnect_M00_AXI_M00_AXI_ARCACHE),
        .s_axi_arid({1'b0,m_axi_interconnect_M00_AXI_M00_AXI_ARID}),
        .s_axi_arlen(m_axi_interconnect_M00_AXI_M00_AXI_ARLEN),
        .s_axi_arlock(m_axi_interconnect_M00_AXI_M00_AXI_ARLOCK),
        .s_axi_arprot(m_axi_interconnect_M00_AXI_M00_AXI_ARPROT),
        .s_axi_arqos(m_axi_interconnect_M00_AXI_M00_AXI_ARQOS),
        .s_axi_arready(m_axi_interconnect_M00_AXI_M00_AXI_ARREADY),
        .s_axi_arsize(m_axi_interconnect_M00_AXI_M00_AXI_ARSIZE),
        .s_axi_arvalid(m_axi_interconnect_M00_AXI_M00_AXI_ARVALID),
        .s_axi_awaddr(m_axi_interconnect_M00_AXI_M00_AXI_AWADDR[35:0]),
        .s_axi_awburst(m_axi_interconnect_M00_AXI_M00_AXI_AWBURST),
        .s_axi_awcache(m_axi_interconnect_M00_AXI_M00_AXI_AWCACHE),
        .s_axi_awid({1'b0,m_axi_interconnect_M00_AXI_M00_AXI_AWID}),
        .s_axi_awlen(m_axi_interconnect_M00_AXI_M00_AXI_AWLEN),
        .s_axi_awlock(m_axi_interconnect_M00_AXI_M00_AXI_AWLOCK),
        .s_axi_awprot(m_axi_interconnect_M00_AXI_M00_AXI_AWPROT),
        .s_axi_awqos(m_axi_interconnect_M00_AXI_M00_AXI_AWQOS),
        .s_axi_awready(m_axi_interconnect_M00_AXI_M00_AXI_AWREADY),
        .s_axi_awsize(m_axi_interconnect_M00_AXI_M00_AXI_AWSIZE),
        .s_axi_awvalid(m_axi_interconnect_M00_AXI_M00_AXI_AWVALID),
        .s_axi_bid(m_axi_interconnect_M00_AXI_M00_AXI_BID),
        .s_axi_bready(m_axi_interconnect_M00_AXI_M00_AXI_BREADY),
        .s_axi_bresp(m_axi_interconnect_M00_AXI_M00_AXI_BRESP),
        .s_axi_bvalid(m_axi_interconnect_M00_AXI_M00_AXI_BVALID),
        .s_axi_rdata(m_axi_interconnect_M00_AXI_M00_AXI_RDATA),
        .s_axi_rid(m_axi_interconnect_M00_AXI_M00_AXI_RID),
        .s_axi_rlast(m_axi_interconnect_M00_AXI_M00_AXI_RLAST),
        .s_axi_rready(m_axi_interconnect_M00_AXI_M00_AXI_RREADY),
        .s_axi_rresp(m_axi_interconnect_M00_AXI_M00_AXI_RRESP),
        .s_axi_rvalid(m_axi_interconnect_M00_AXI_M00_AXI_RVALID),
        .s_axi_wdata(m_axi_interconnect_M00_AXI_M00_AXI_WDATA),
        .s_axi_wlast(m_axi_interconnect_M00_AXI_M00_AXI_WLAST),
        .s_axi_wready(m_axi_interconnect_M00_AXI_M00_AXI_WREADY),
        .s_axi_wstrb(m_axi_interconnect_M00_AXI_M00_AXI_WSTRB),
        .s_axi_wvalid(m_axi_interconnect_M00_AXI_M00_AXI_WVALID));
  (* DONT_TOUCH *) 
  dr_master_bridge_1_0 master_bridge_1
       (.aclk(DATA_CLK),
        .aresetn(DATA_RESET),
        .m_axi_araddr(M01_AXI_ARADDR),
        .m_axi_arburst(M01_AXI_ARBURST),
        .m_axi_arcache(M01_AXI_ARCACHE),
        .m_axi_arid(M01_AXI_ARID),
        .m_axi_arlen(M01_AXI_ARLEN),
        .m_axi_arlock(M01_AXI_ARLOCK),
        .m_axi_arprot(M01_AXI_ARPROT),
        .m_axi_arqos(M01_AXI_ARQOS),
        .m_axi_arready(M01_AXI_ARREADY),
        .m_axi_arsize(M01_AXI_ARSIZE),
        .m_axi_arvalid(M01_AXI_ARVALID),
        .m_axi_awaddr(M01_AXI_AWADDR),
        .m_axi_awburst(M01_AXI_AWBURST),
        .m_axi_awcache(M01_AXI_AWCACHE),
        .m_axi_awid(M01_AXI_AWID),
        .m_axi_awlen(M01_AXI_AWLEN),
        .m_axi_awlock(M01_AXI_AWLOCK),
        .m_axi_awprot(M01_AXI_AWPROT),
        .m_axi_awqos(M01_AXI_AWQOS),
        .m_axi_awready(M01_AXI_AWREADY),
        .m_axi_awsize(M01_AXI_AWSIZE),
        .m_axi_awvalid(M01_AXI_AWVALID),
        .m_axi_bid(M01_AXI_BID[3:0]),
        .m_axi_bready(M01_AXI_BREADY),
        .m_axi_bresp(M01_AXI_BRESP),
        .m_axi_bvalid(M01_AXI_BVALID),
        .m_axi_rdata(M01_AXI_RDATA),
        .m_axi_rid(M01_AXI_RID[3:0]),
        .m_axi_rlast(M01_AXI_RLAST),
        .m_axi_rready(M01_AXI_RREADY),
        .m_axi_rresp(M01_AXI_RRESP),
        .m_axi_rvalid(M01_AXI_RVALID),
        .m_axi_wdata(M01_AXI_WDATA),
        .m_axi_wlast(M01_AXI_WLAST),
        .m_axi_wready(M01_AXI_WREADY),
        .m_axi_wstrb(M01_AXI_WSTRB),
        .m_axi_wvalid(M01_AXI_WVALID),
        .s_axi_araddr(xlconstant_zero_36_dout),
        .s_axi_arburst(xlconstant_zero_2_dout),
        .s_axi_arcache(xlconstant_zero_4_dout),
        .s_axi_arid(xlconstant_zero_1_dout),
        .s_axi_arlen(xlconstant_zero_8_dout),
        .s_axi_arlock(xlconstant_zero_1_dout),
        .s_axi_arprot(xlconstant_zero_3_dout),
        .s_axi_arqos(xlconstant_zero_4_dout),
        .s_axi_arsize(xlconstant_zero_3_dout),
        .s_axi_arvalid(xlconstant_zero_1_dout),
        .s_axi_awaddr(xlconstant_zero_36_dout),
        .s_axi_awburst(xlconstant_zero_2_dout),
        .s_axi_awcache(xlconstant_zero_4_dout),
        .s_axi_awid(xlconstant_zero_1_dout),
        .s_axi_awlen(xlconstant_zero_8_dout),
        .s_axi_awlock(xlconstant_zero_1_dout),
        .s_axi_awprot(xlconstant_zero_3_dout),
        .s_axi_awqos(xlconstant_zero_4_dout),
        .s_axi_awsize(xlconstant_zero_3_dout),
        .s_axi_awvalid(xlconstant_zero_1_dout),
        .s_axi_bready(xlconstant_zero_1_dout),
        .s_axi_rready(xlconstant_zero_1_dout),
        .s_axi_wdata(xlconstant_zero_512_dout),
        .s_axi_wlast(xlconstant_zero_1_dout),
        .s_axi_wstrb(xlconstant_zero_64_dout),
        .s_axi_wvalid(xlconstant_zero_1_dout));
  (* DONT_TOUCH *) 
  dr_master_bridge_2_0 master_bridge_2
       (.aclk(DATA_CLK),
        .aresetn(DATA_RESET),
        .m_axi_araddr(M02_AXI_ARADDR),
        .m_axi_arburst(M02_AXI_ARBURST),
        .m_axi_arcache(M02_AXI_ARCACHE),
        .m_axi_arid(M02_AXI_ARID),
        .m_axi_arlen(M02_AXI_ARLEN),
        .m_axi_arlock(M02_AXI_ARLOCK),
        .m_axi_arprot(M02_AXI_ARPROT),
        .m_axi_arqos(M02_AXI_ARQOS),
        .m_axi_arready(M02_AXI_ARREADY),
        .m_axi_arsize(M02_AXI_ARSIZE),
        .m_axi_arvalid(M02_AXI_ARVALID),
        .m_axi_awaddr(M02_AXI_AWADDR),
        .m_axi_awburst(M02_AXI_AWBURST),
        .m_axi_awcache(M02_AXI_AWCACHE),
        .m_axi_awid(M02_AXI_AWID),
        .m_axi_awlen(M02_AXI_AWLEN),
        .m_axi_awlock(M02_AXI_AWLOCK),
        .m_axi_awprot(M02_AXI_AWPROT),
        .m_axi_awqos(M02_AXI_AWQOS),
        .m_axi_awready(M02_AXI_AWREADY),
        .m_axi_awsize(M02_AXI_AWSIZE),
        .m_axi_awvalid(M02_AXI_AWVALID),
        .m_axi_bid(M02_AXI_BID[3:0]),
        .m_axi_bready(M02_AXI_BREADY),
        .m_axi_bresp(M02_AXI_BRESP),
        .m_axi_bvalid(M02_AXI_BVALID),
        .m_axi_rdata(M02_AXI_RDATA),
        .m_axi_rid(M02_AXI_RID[3:0]),
        .m_axi_rlast(M02_AXI_RLAST),
        .m_axi_rready(M02_AXI_RREADY),
        .m_axi_rresp(M02_AXI_RRESP),
        .m_axi_rvalid(M02_AXI_RVALID),
        .m_axi_wdata(M02_AXI_WDATA),
        .m_axi_wlast(M02_AXI_WLAST),
        .m_axi_wready(M02_AXI_WREADY),
        .m_axi_wstrb(M02_AXI_WSTRB),
        .m_axi_wvalid(M02_AXI_WVALID),
        .s_axi_araddr(xlconstant_zero_36_dout),
        .s_axi_arburst(xlconstant_zero_2_dout),
        .s_axi_arcache(xlconstant_zero_4_dout),
        .s_axi_arid(xlconstant_zero_1_dout),
        .s_axi_arlen(xlconstant_zero_8_dout),
        .s_axi_arlock(xlconstant_zero_1_dout),
        .s_axi_arprot(xlconstant_zero_3_dout),
        .s_axi_arqos(xlconstant_zero_4_dout),
        .s_axi_arsize(xlconstant_zero_3_dout),
        .s_axi_arvalid(xlconstant_zero_1_dout),
        .s_axi_awaddr(xlconstant_zero_36_dout),
        .s_axi_awburst(xlconstant_zero_2_dout),
        .s_axi_awcache(xlconstant_zero_4_dout),
        .s_axi_awid(xlconstant_zero_1_dout),
        .s_axi_awlen(xlconstant_zero_8_dout),
        .s_axi_awlock(xlconstant_zero_1_dout),
        .s_axi_awprot(xlconstant_zero_3_dout),
        .s_axi_awqos(xlconstant_zero_4_dout),
        .s_axi_awsize(xlconstant_zero_3_dout),
        .s_axi_awvalid(xlconstant_zero_1_dout),
        .s_axi_bready(xlconstant_zero_1_dout),
        .s_axi_rready(xlconstant_zero_1_dout),
        .s_axi_wdata(xlconstant_zero_512_dout),
        .s_axi_wlast(xlconstant_zero_1_dout),
        .s_axi_wstrb(xlconstant_zero_64_dout),
        .s_axi_wvalid(xlconstant_zero_1_dout));
  (* DONT_TOUCH *) 
  dr_master_bridge_3_0 master_bridge_3
       (.aclk(DATA_CLK),
        .aresetn(DATA_RESET),
        .m_axi_araddr(M03_AXI_ARADDR),
        .m_axi_arburst(M03_AXI_ARBURST),
        .m_axi_arcache(M03_AXI_ARCACHE),
        .m_axi_arid(M03_AXI_ARID),
        .m_axi_arlen(M03_AXI_ARLEN),
        .m_axi_arlock(M03_AXI_ARLOCK),
        .m_axi_arprot(M03_AXI_ARPROT),
        .m_axi_arqos(M03_AXI_ARQOS),
        .m_axi_arready(M03_AXI_ARREADY),
        .m_axi_arsize(M03_AXI_ARSIZE),
        .m_axi_arvalid(M03_AXI_ARVALID),
        .m_axi_awaddr(M03_AXI_AWADDR),
        .m_axi_awburst(M03_AXI_AWBURST),
        .m_axi_awcache(M03_AXI_AWCACHE),
        .m_axi_awid(M03_AXI_AWID),
        .m_axi_awlen(M03_AXI_AWLEN),
        .m_axi_awlock(M03_AXI_AWLOCK),
        .m_axi_awprot(M03_AXI_AWPROT),
        .m_axi_awqos(M03_AXI_AWQOS),
        .m_axi_awready(M03_AXI_AWREADY),
        .m_axi_awsize(M03_AXI_AWSIZE),
        .m_axi_awvalid(M03_AXI_AWVALID),
        .m_axi_bid(M03_AXI_BID[3:0]),
        .m_axi_bready(M03_AXI_BREADY),
        .m_axi_bresp(M03_AXI_BRESP),
        .m_axi_bvalid(M03_AXI_BVALID),
        .m_axi_rdata(M03_AXI_RDATA),
        .m_axi_rid(M03_AXI_RID[3:0]),
        .m_axi_rlast(M03_AXI_RLAST),
        .m_axi_rready(M03_AXI_RREADY),
        .m_axi_rresp(M03_AXI_RRESP),
        .m_axi_rvalid(M03_AXI_RVALID),
        .m_axi_wdata(M03_AXI_WDATA),
        .m_axi_wlast(M03_AXI_WLAST),
        .m_axi_wready(M03_AXI_WREADY),
        .m_axi_wstrb(M03_AXI_WSTRB),
        .m_axi_wvalid(M03_AXI_WVALID),
        .s_axi_araddr(xlconstant_zero_36_dout),
        .s_axi_arburst(xlconstant_zero_2_dout),
        .s_axi_arcache(xlconstant_zero_4_dout),
        .s_axi_arid(xlconstant_zero_1_dout),
        .s_axi_arlen(xlconstant_zero_8_dout),
        .s_axi_arlock(xlconstant_zero_1_dout),
        .s_axi_arprot(xlconstant_zero_3_dout),
        .s_axi_arqos(xlconstant_zero_4_dout),
        .s_axi_arsize(xlconstant_zero_3_dout),
        .s_axi_arvalid(xlconstant_zero_1_dout),
        .s_axi_awaddr(xlconstant_zero_36_dout),
        .s_axi_awburst(xlconstant_zero_2_dout),
        .s_axi_awcache(xlconstant_zero_4_dout),
        .s_axi_awid(xlconstant_zero_1_dout),
        .s_axi_awlen(xlconstant_zero_8_dout),
        .s_axi_awlock(xlconstant_zero_1_dout),
        .s_axi_awprot(xlconstant_zero_3_dout),
        .s_axi_awqos(xlconstant_zero_4_dout),
        .s_axi_awsize(xlconstant_zero_3_dout),
        .s_axi_awvalid(xlconstant_zero_1_dout),
        .s_axi_bready(xlconstant_zero_1_dout),
        .s_axi_rready(xlconstant_zero_1_dout),
        .s_axi_wdata(xlconstant_zero_512_dout),
        .s_axi_wlast(xlconstant_zero_1_dout),
        .s_axi_wstrb(xlconstant_zero_64_dout),
        .s_axi_wvalid(xlconstant_zero_1_dout));
  dr_s_axi_interconnect_0_0 s_axi_interconnect_0
       (.ACLK(CONTROL_CLK),
        .ARESETN(CONTROL_RESET),
        .M00_ACLK(DATA_CLK),
        .M00_ARESETN(DATA_RESET),
        .M00_AXI_araddr(s_axi_interconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arready(s_axi_interconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arvalid(s_axi_interconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(s_axi_interconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awready(s_axi_interconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awvalid(s_axi_interconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(s_axi_interconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(s_axi_interconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(s_axi_interconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(s_axi_interconnect_0_M00_AXI_RDATA),
        .M00_AXI_rready(s_axi_interconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(s_axi_interconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(s_axi_interconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(s_axi_interconnect_0_M00_AXI_WDATA),
        .M00_AXI_wready(s_axi_interconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(s_axi_interconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(s_axi_interconnect_0_M00_AXI_WVALID),
        .S00_ACLK(CONTROL_CLK),
        .S00_ARESETN(CONTROL_RESET),
        .S00_AXI_araddr(slave_bridge_m_axi_ARADDR),
        .S00_AXI_arprot(slave_bridge_m_axi_ARPROT),
        .S00_AXI_arready(slave_bridge_m_axi_ARREADY),
        .S00_AXI_arvalid(slave_bridge_m_axi_ARVALID),
        .S00_AXI_awaddr(slave_bridge_m_axi_AWADDR),
        .S00_AXI_awprot(slave_bridge_m_axi_AWPROT),
        .S00_AXI_awready(slave_bridge_m_axi_AWREADY),
        .S00_AXI_awvalid(slave_bridge_m_axi_AWVALID),
        .S00_AXI_bready(slave_bridge_m_axi_BREADY),
        .S00_AXI_bresp(slave_bridge_m_axi_BRESP),
        .S00_AXI_bvalid(slave_bridge_m_axi_BVALID),
        .S00_AXI_rdata(slave_bridge_m_axi_RDATA),
        .S00_AXI_rready(slave_bridge_m_axi_RREADY),
        .S00_AXI_rresp(slave_bridge_m_axi_RRESP),
        .S00_AXI_rvalid(slave_bridge_m_axi_RVALID),
        .S00_AXI_wdata(slave_bridge_m_axi_WDATA),
        .S00_AXI_wready(slave_bridge_m_axi_WREADY),
        .S00_AXI_wstrb(slave_bridge_m_axi_WSTRB),
        .S00_AXI_wvalid(slave_bridge_m_axi_WVALID));
  (* DONT_TOUCH *) 
  dr_slave_bridge_0 slave_bridge
       (.aclk(CONTROL_CLK),
        .aresetn(CONTROL_RESET),
        .m_axi_araddr(slave_bridge_m_axi_ARADDR),
        .m_axi_arprot(slave_bridge_m_axi_ARPROT),
        .m_axi_arready(slave_bridge_m_axi_ARREADY),
        .m_axi_arvalid(slave_bridge_m_axi_ARVALID),
        .m_axi_awaddr(slave_bridge_m_axi_AWADDR),
        .m_axi_awprot(slave_bridge_m_axi_AWPROT),
        .m_axi_awready(slave_bridge_m_axi_AWREADY),
        .m_axi_awvalid(slave_bridge_m_axi_AWVALID),
        .m_axi_bready(slave_bridge_m_axi_BREADY),
        .m_axi_bresp(slave_bridge_m_axi_BRESP),
        .m_axi_bvalid(slave_bridge_m_axi_BVALID),
        .m_axi_rdata(slave_bridge_m_axi_RDATA),
        .m_axi_rready(slave_bridge_m_axi_RREADY),
        .m_axi_rresp(slave_bridge_m_axi_RRESP),
        .m_axi_rvalid(slave_bridge_m_axi_RVALID),
        .m_axi_wdata(slave_bridge_m_axi_WDATA),
        .m_axi_wready(slave_bridge_m_axi_WREADY),
        .m_axi_wstrb(slave_bridge_m_axi_WSTRB),
        .m_axi_wvalid(slave_bridge_m_axi_WVALID),
        .s_axi_araddr(S_AXI_ARADDR[16:0]),
        .s_axi_arprot(S_AXI_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(S_AXI_ARREADY),
        .s_axi_arvalid(S_AXI_ARVALID),
        .s_axi_awaddr(S_AXI_AWADDR[16:0]),
        .s_axi_awprot(S_AXI_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(S_AXI_AWREADY),
        .s_axi_awvalid(S_AXI_AWVALID),
        .s_axi_bready(S_AXI_BREADY),
        .s_axi_bresp(S_AXI_BRESP),
        .s_axi_bvalid(S_AXI_BVALID),
        .s_axi_rdata(S_AXI_RDATA),
        .s_axi_rready(S_AXI_RREADY),
        .s_axi_rresp(S_AXI_RRESP),
        .s_axi_rvalid(S_AXI_RVALID),
        .s_axi_wdata(S_AXI_WDATA),
        .s_axi_wready(S_AXI_WREADY),
        .s_axi_wstrb(S_AXI_WSTRB),
        .s_axi_wvalid(S_AXI_WVALID));
  dr_xilmonitor_Filter2DKernel_1_m_axi_gmem0_0 xilmonitor_Filter2DKernel_1_m_axi_gmem0
       (.mon_axi_aclk(DATA_CLK),
        .mon_axi_araddr(Filter2DKernel_1_m_axi_gmem0_ARADDR),
        .mon_axi_arburst(Filter2DKernel_1_m_axi_gmem0_ARBURST),
        .mon_axi_arcache(Filter2DKernel_1_m_axi_gmem0_ARCACHE),
        .mon_axi_aresetn(DATA_RESET),
        .mon_axi_arid(1'b0),
        .mon_axi_arlen(Filter2DKernel_1_m_axi_gmem0_ARLEN),
        .mon_axi_arlock(Filter2DKernel_1_m_axi_gmem0_ARLOCK[0]),
        .mon_axi_arprot(Filter2DKernel_1_m_axi_gmem0_ARPROT),
        .mon_axi_arready(Filter2DKernel_1_m_axi_gmem0_ARREADY),
        .mon_axi_arsize(Filter2DKernel_1_m_axi_gmem0_ARSIZE),
        .mon_axi_arvalid(Filter2DKernel_1_m_axi_gmem0_ARVALID),
        .mon_axi_awaddr(Filter2DKernel_1_m_axi_gmem0_AWADDR),
        .mon_axi_awburst(Filter2DKernel_1_m_axi_gmem0_AWBURST),
        .mon_axi_awcache(Filter2DKernel_1_m_axi_gmem0_AWCACHE),
        .mon_axi_awid(1'b0),
        .mon_axi_awlen(Filter2DKernel_1_m_axi_gmem0_AWLEN),
        .mon_axi_awlock(Filter2DKernel_1_m_axi_gmem0_AWLOCK[0]),
        .mon_axi_awprot(Filter2DKernel_1_m_axi_gmem0_AWPROT),
        .mon_axi_awready(Filter2DKernel_1_m_axi_gmem0_AWREADY),
        .mon_axi_awsize(Filter2DKernel_1_m_axi_gmem0_AWSIZE),
        .mon_axi_awvalid(Filter2DKernel_1_m_axi_gmem0_AWVALID),
        .mon_axi_bid(1'b0),
        .mon_axi_bready(Filter2DKernel_1_m_axi_gmem0_BREADY),
        .mon_axi_bresp(Filter2DKernel_1_m_axi_gmem0_BRESP),
        .mon_axi_bvalid(Filter2DKernel_1_m_axi_gmem0_BVALID),
        .mon_axi_rdata(Filter2DKernel_1_m_axi_gmem0_RDATA),
        .mon_axi_rid(1'b0),
        .mon_axi_rlast(Filter2DKernel_1_m_axi_gmem0_RLAST),
        .mon_axi_rready(Filter2DKernel_1_m_axi_gmem0_RREADY),
        .mon_axi_rresp(Filter2DKernel_1_m_axi_gmem0_RRESP),
        .mon_axi_rvalid(Filter2DKernel_1_m_axi_gmem0_RVALID),
        .mon_axi_wdata(Filter2DKernel_1_m_axi_gmem0_WDATA),
        .mon_axi_wlast(Filter2DKernel_1_m_axi_gmem0_WLAST),
        .mon_axi_wready(Filter2DKernel_1_m_axi_gmem0_WREADY),
        .mon_axi_wstrb(Filter2DKernel_1_m_axi_gmem0_WSTRB),
        .mon_axi_wvalid(Filter2DKernel_1_m_axi_gmem0_WVALID));
  dr_xilmonitor_Filter2DKernel_1_m_axi_gmem1_0 xilmonitor_Filter2DKernel_1_m_axi_gmem1
       (.mon_axi_aclk(DATA_CLK),
        .mon_axi_araddr(Filter2DKernel_1_m_axi_gmem1_ARADDR),
        .mon_axi_arburst(Filter2DKernel_1_m_axi_gmem1_ARBURST),
        .mon_axi_arcache(Filter2DKernel_1_m_axi_gmem1_ARCACHE),
        .mon_axi_aresetn(DATA_RESET),
        .mon_axi_arid(1'b0),
        .mon_axi_arlen(Filter2DKernel_1_m_axi_gmem1_ARLEN),
        .mon_axi_arlock(Filter2DKernel_1_m_axi_gmem1_ARLOCK[0]),
        .mon_axi_arprot(Filter2DKernel_1_m_axi_gmem1_ARPROT),
        .mon_axi_arready(Filter2DKernel_1_m_axi_gmem1_ARREADY),
        .mon_axi_arsize(Filter2DKernel_1_m_axi_gmem1_ARSIZE),
        .mon_axi_arvalid(Filter2DKernel_1_m_axi_gmem1_ARVALID),
        .mon_axi_awaddr(Filter2DKernel_1_m_axi_gmem1_AWADDR),
        .mon_axi_awburst(Filter2DKernel_1_m_axi_gmem1_AWBURST),
        .mon_axi_awcache(Filter2DKernel_1_m_axi_gmem1_AWCACHE),
        .mon_axi_awid(1'b0),
        .mon_axi_awlen(Filter2DKernel_1_m_axi_gmem1_AWLEN),
        .mon_axi_awlock(Filter2DKernel_1_m_axi_gmem1_AWLOCK[0]),
        .mon_axi_awprot(Filter2DKernel_1_m_axi_gmem1_AWPROT),
        .mon_axi_awready(Filter2DKernel_1_m_axi_gmem1_AWREADY),
        .mon_axi_awsize(Filter2DKernel_1_m_axi_gmem1_AWSIZE),
        .mon_axi_awvalid(Filter2DKernel_1_m_axi_gmem1_AWVALID),
        .mon_axi_bid(1'b0),
        .mon_axi_bready(Filter2DKernel_1_m_axi_gmem1_BREADY),
        .mon_axi_bresp(Filter2DKernel_1_m_axi_gmem1_BRESP),
        .mon_axi_bvalid(Filter2DKernel_1_m_axi_gmem1_BVALID),
        .mon_axi_rdata(Filter2DKernel_1_m_axi_gmem1_RDATA),
        .mon_axi_rid(1'b0),
        .mon_axi_rlast(Filter2DKernel_1_m_axi_gmem1_RLAST),
        .mon_axi_rready(Filter2DKernel_1_m_axi_gmem1_RREADY),
        .mon_axi_rresp(Filter2DKernel_1_m_axi_gmem1_RRESP),
        .mon_axi_rvalid(Filter2DKernel_1_m_axi_gmem1_RVALID),
        .mon_axi_wdata(Filter2DKernel_1_m_axi_gmem1_WDATA),
        .mon_axi_wlast(Filter2DKernel_1_m_axi_gmem1_WLAST),
        .mon_axi_wready(Filter2DKernel_1_m_axi_gmem1_WREADY),
        .mon_axi_wstrb(Filter2DKernel_1_m_axi_gmem1_WSTRB),
        .mon_axi_wvalid(Filter2DKernel_1_m_axi_gmem1_WVALID));
  dr_xilmonitor_m_axi_interconnect_M00_AXI_M00_AXI_0 xilmonitor_m_axi_interconnect_M00_AXI_M00_AXI
       (.mon_axi_aclk(DATA_CLK),
        .mon_axi_araddr(m_axi_interconnect_M00_AXI_M00_AXI_ARADDR),
        .mon_axi_arburst(m_axi_interconnect_M00_AXI_M00_AXI_ARBURST),
        .mon_axi_arcache(m_axi_interconnect_M00_AXI_M00_AXI_ARCACHE),
        .mon_axi_aresetn(DATA_RESET),
        .mon_axi_arid(m_axi_interconnect_M00_AXI_M00_AXI_ARID),
        .mon_axi_arlen(m_axi_interconnect_M00_AXI_M00_AXI_ARLEN),
        .mon_axi_arlock(m_axi_interconnect_M00_AXI_M00_AXI_ARLOCK),
        .mon_axi_arprot(m_axi_interconnect_M00_AXI_M00_AXI_ARPROT),
        .mon_axi_arready(m_axi_interconnect_M00_AXI_M00_AXI_ARREADY),
        .mon_axi_arsize(m_axi_interconnect_M00_AXI_M00_AXI_ARSIZE),
        .mon_axi_arvalid(m_axi_interconnect_M00_AXI_M00_AXI_ARVALID),
        .mon_axi_awaddr(m_axi_interconnect_M00_AXI_M00_AXI_AWADDR),
        .mon_axi_awburst(m_axi_interconnect_M00_AXI_M00_AXI_AWBURST),
        .mon_axi_awcache(m_axi_interconnect_M00_AXI_M00_AXI_AWCACHE),
        .mon_axi_awid(m_axi_interconnect_M00_AXI_M00_AXI_AWID),
        .mon_axi_awlen(m_axi_interconnect_M00_AXI_M00_AXI_AWLEN),
        .mon_axi_awlock(m_axi_interconnect_M00_AXI_M00_AXI_AWLOCK),
        .mon_axi_awprot(m_axi_interconnect_M00_AXI_M00_AXI_AWPROT),
        .mon_axi_awready(m_axi_interconnect_M00_AXI_M00_AXI_AWREADY),
        .mon_axi_awsize(m_axi_interconnect_M00_AXI_M00_AXI_AWSIZE),
        .mon_axi_awvalid(m_axi_interconnect_M00_AXI_M00_AXI_AWVALID),
        .mon_axi_bid(m_axi_interconnect_M00_AXI_M00_AXI_BID[0]),
        .mon_axi_bready(m_axi_interconnect_M00_AXI_M00_AXI_BREADY),
        .mon_axi_bresp(m_axi_interconnect_M00_AXI_M00_AXI_BRESP),
        .mon_axi_bvalid(m_axi_interconnect_M00_AXI_M00_AXI_BVALID),
        .mon_axi_rdata(m_axi_interconnect_M00_AXI_M00_AXI_RDATA),
        .mon_axi_rid(m_axi_interconnect_M00_AXI_M00_AXI_RID[0]),
        .mon_axi_rlast(m_axi_interconnect_M00_AXI_M00_AXI_RLAST),
        .mon_axi_rready(m_axi_interconnect_M00_AXI_M00_AXI_RREADY),
        .mon_axi_rresp(m_axi_interconnect_M00_AXI_M00_AXI_RRESP),
        .mon_axi_rvalid(m_axi_interconnect_M00_AXI_M00_AXI_RVALID),
        .mon_axi_wdata(m_axi_interconnect_M00_AXI_M00_AXI_WDATA),
        .mon_axi_wlast(m_axi_interconnect_M00_AXI_M00_AXI_WLAST),
        .mon_axi_wready(m_axi_interconnect_M00_AXI_M00_AXI_WREADY),
        .mon_axi_wstrb(m_axi_interconnect_M00_AXI_M00_AXI_WSTRB),
        .mon_axi_wvalid(m_axi_interconnect_M00_AXI_M00_AXI_WVALID));
  dr_xlconstant_zero_1_0 xlconstant_zero_1
       (.dout(xlconstant_zero_1_dout));
  dr_xlconstant_zero_2_0 xlconstant_zero_2
       (.dout(xlconstant_zero_2_dout));
  dr_xlconstant_zero_3_0 xlconstant_zero_3
       (.dout(xlconstant_zero_3_dout));
  dr_xlconstant_zero_36_0 xlconstant_zero_36
       (.dout(xlconstant_zero_36_dout));
  dr_xlconstant_zero_4_0 xlconstant_zero_4
       (.dout(xlconstant_zero_4_dout));
  dr_xlconstant_zero_512_0 xlconstant_zero_512
       (.dout(xlconstant_zero_512_dout));
  dr_xlconstant_zero_64_0 xlconstant_zero_64
       (.dout(xlconstant_zero_64_dout));
  dr_xlconstant_zero_8_0 xlconstant_zero_8
       (.dout(xlconstant_zero_8_dout));
endmodule

(* CORE_GENERATION_INFO = "dr,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=dr,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=42,numReposBlks=33,numNonXlnxBlks=0,numHierBlks=9,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SDACCEL,synth_mode=Global}" *) (* HW_HANDOFF = "dr.hwdef" *) 
module dr
   ();

  wire [35:0]OCL_REGION_0_M00_AXI_ARADDR;
  wire [1:0]OCL_REGION_0_M00_AXI_ARBURST;
  wire [3:0]OCL_REGION_0_M00_AXI_ARCACHE;
  wire [4:0]OCL_REGION_0_M00_AXI_ARID;
  wire [7:0]OCL_REGION_0_M00_AXI_ARLEN;
  wire OCL_REGION_0_M00_AXI_ARLOCK;
  wire [2:0]OCL_REGION_0_M00_AXI_ARPROT;
  wire [3:0]OCL_REGION_0_M00_AXI_ARQOS;
  wire OCL_REGION_0_M00_AXI_ARREADY;
  wire [2:0]OCL_REGION_0_M00_AXI_ARSIZE;
  wire OCL_REGION_0_M00_AXI_ARVALID;
  wire [35:0]OCL_REGION_0_M00_AXI_AWADDR;
  wire [1:0]OCL_REGION_0_M00_AXI_AWBURST;
  wire [3:0]OCL_REGION_0_M00_AXI_AWCACHE;
  wire [4:0]OCL_REGION_0_M00_AXI_AWID;
  wire [7:0]OCL_REGION_0_M00_AXI_AWLEN;
  wire OCL_REGION_0_M00_AXI_AWLOCK;
  wire [2:0]OCL_REGION_0_M00_AXI_AWPROT;
  wire [3:0]OCL_REGION_0_M00_AXI_AWQOS;
  wire OCL_REGION_0_M00_AXI_AWREADY;
  wire [2:0]OCL_REGION_0_M00_AXI_AWSIZE;
  wire OCL_REGION_0_M00_AXI_AWVALID;
  wire [4:0]OCL_REGION_0_M00_AXI_BID;
  wire OCL_REGION_0_M00_AXI_BREADY;
  wire [1:0]OCL_REGION_0_M00_AXI_BRESP;
  wire OCL_REGION_0_M00_AXI_BVALID;
  wire [511:0]OCL_REGION_0_M00_AXI_RDATA;
  wire [4:0]OCL_REGION_0_M00_AXI_RID;
  wire OCL_REGION_0_M00_AXI_RLAST;
  wire OCL_REGION_0_M00_AXI_RREADY;
  wire [1:0]OCL_REGION_0_M00_AXI_RRESP;
  wire OCL_REGION_0_M00_AXI_RVALID;
  wire [511:0]OCL_REGION_0_M00_AXI_WDATA;
  wire OCL_REGION_0_M00_AXI_WLAST;
  wire OCL_REGION_0_M00_AXI_WREADY;
  wire [63:0]OCL_REGION_0_M00_AXI_WSTRB;
  wire OCL_REGION_0_M00_AXI_WVALID;
  wire [35:0]OCL_REGION_0_M01_AXI_ARADDR;
  wire [1:0]OCL_REGION_0_M01_AXI_ARBURST;
  wire [3:0]OCL_REGION_0_M01_AXI_ARCACHE;
  wire [3:0]OCL_REGION_0_M01_AXI_ARID;
  wire [7:0]OCL_REGION_0_M01_AXI_ARLEN;
  wire OCL_REGION_0_M01_AXI_ARLOCK;
  wire [2:0]OCL_REGION_0_M01_AXI_ARPROT;
  wire [3:0]OCL_REGION_0_M01_AXI_ARQOS;
  wire OCL_REGION_0_M01_AXI_ARREADY;
  wire [2:0]OCL_REGION_0_M01_AXI_ARSIZE;
  wire OCL_REGION_0_M01_AXI_ARVALID;
  wire [35:0]OCL_REGION_0_M01_AXI_AWADDR;
  wire [1:0]OCL_REGION_0_M01_AXI_AWBURST;
  wire [3:0]OCL_REGION_0_M01_AXI_AWCACHE;
  wire [3:0]OCL_REGION_0_M01_AXI_AWID;
  wire [7:0]OCL_REGION_0_M01_AXI_AWLEN;
  wire OCL_REGION_0_M01_AXI_AWLOCK;
  wire [2:0]OCL_REGION_0_M01_AXI_AWPROT;
  wire [3:0]OCL_REGION_0_M01_AXI_AWQOS;
  wire OCL_REGION_0_M01_AXI_AWREADY;
  wire [2:0]OCL_REGION_0_M01_AXI_AWSIZE;
  wire OCL_REGION_0_M01_AXI_AWVALID;
  wire [4:0]OCL_REGION_0_M01_AXI_BID;
  wire OCL_REGION_0_M01_AXI_BREADY;
  wire [1:0]OCL_REGION_0_M01_AXI_BRESP;
  wire OCL_REGION_0_M01_AXI_BVALID;
  wire [511:0]OCL_REGION_0_M01_AXI_RDATA;
  wire [4:0]OCL_REGION_0_M01_AXI_RID;
  wire OCL_REGION_0_M01_AXI_RLAST;
  wire OCL_REGION_0_M01_AXI_RREADY;
  wire [1:0]OCL_REGION_0_M01_AXI_RRESP;
  wire OCL_REGION_0_M01_AXI_RVALID;
  wire [511:0]OCL_REGION_0_M01_AXI_WDATA;
  wire OCL_REGION_0_M01_AXI_WLAST;
  wire OCL_REGION_0_M01_AXI_WREADY;
  wire [63:0]OCL_REGION_0_M01_AXI_WSTRB;
  wire OCL_REGION_0_M01_AXI_WVALID;
  wire [35:0]OCL_REGION_0_M02_AXI_ARADDR;
  wire [1:0]OCL_REGION_0_M02_AXI_ARBURST;
  wire [3:0]OCL_REGION_0_M02_AXI_ARCACHE;
  wire [3:0]OCL_REGION_0_M02_AXI_ARID;
  wire [7:0]OCL_REGION_0_M02_AXI_ARLEN;
  wire OCL_REGION_0_M02_AXI_ARLOCK;
  wire [2:0]OCL_REGION_0_M02_AXI_ARPROT;
  wire [3:0]OCL_REGION_0_M02_AXI_ARQOS;
  wire OCL_REGION_0_M02_AXI_ARREADY;
  wire [2:0]OCL_REGION_0_M02_AXI_ARSIZE;
  wire OCL_REGION_0_M02_AXI_ARVALID;
  wire [35:0]OCL_REGION_0_M02_AXI_AWADDR;
  wire [1:0]OCL_REGION_0_M02_AXI_AWBURST;
  wire [3:0]OCL_REGION_0_M02_AXI_AWCACHE;
  wire [3:0]OCL_REGION_0_M02_AXI_AWID;
  wire [7:0]OCL_REGION_0_M02_AXI_AWLEN;
  wire OCL_REGION_0_M02_AXI_AWLOCK;
  wire [2:0]OCL_REGION_0_M02_AXI_AWPROT;
  wire [3:0]OCL_REGION_0_M02_AXI_AWQOS;
  wire OCL_REGION_0_M02_AXI_AWREADY;
  wire [2:0]OCL_REGION_0_M02_AXI_AWSIZE;
  wire OCL_REGION_0_M02_AXI_AWVALID;
  wire [4:0]OCL_REGION_0_M02_AXI_BID;
  wire OCL_REGION_0_M02_AXI_BREADY;
  wire [1:0]OCL_REGION_0_M02_AXI_BRESP;
  wire OCL_REGION_0_M02_AXI_BVALID;
  wire [511:0]OCL_REGION_0_M02_AXI_RDATA;
  wire [4:0]OCL_REGION_0_M02_AXI_RID;
  wire OCL_REGION_0_M02_AXI_RLAST;
  wire OCL_REGION_0_M02_AXI_RREADY;
  wire [1:0]OCL_REGION_0_M02_AXI_RRESP;
  wire OCL_REGION_0_M02_AXI_RVALID;
  wire [511:0]OCL_REGION_0_M02_AXI_WDATA;
  wire OCL_REGION_0_M02_AXI_WLAST;
  wire OCL_REGION_0_M02_AXI_WREADY;
  wire [63:0]OCL_REGION_0_M02_AXI_WSTRB;
  wire OCL_REGION_0_M02_AXI_WVALID;
  wire [35:0]OCL_REGION_0_M03_AXI_ARADDR;
  wire [1:0]OCL_REGION_0_M03_AXI_ARBURST;
  wire [3:0]OCL_REGION_0_M03_AXI_ARCACHE;
  wire [3:0]OCL_REGION_0_M03_AXI_ARID;
  wire [7:0]OCL_REGION_0_M03_AXI_ARLEN;
  wire OCL_REGION_0_M03_AXI_ARLOCK;
  wire [2:0]OCL_REGION_0_M03_AXI_ARPROT;
  wire [3:0]OCL_REGION_0_M03_AXI_ARQOS;
  wire OCL_REGION_0_M03_AXI_ARREADY;
  wire [2:0]OCL_REGION_0_M03_AXI_ARSIZE;
  wire OCL_REGION_0_M03_AXI_ARVALID;
  wire [35:0]OCL_REGION_0_M03_AXI_AWADDR;
  wire [1:0]OCL_REGION_0_M03_AXI_AWBURST;
  wire [3:0]OCL_REGION_0_M03_AXI_AWCACHE;
  wire [3:0]OCL_REGION_0_M03_AXI_AWID;
  wire [7:0]OCL_REGION_0_M03_AXI_AWLEN;
  wire OCL_REGION_0_M03_AXI_AWLOCK;
  wire [2:0]OCL_REGION_0_M03_AXI_AWPROT;
  wire [3:0]OCL_REGION_0_M03_AXI_AWQOS;
  wire OCL_REGION_0_M03_AXI_AWREADY;
  wire [2:0]OCL_REGION_0_M03_AXI_AWSIZE;
  wire OCL_REGION_0_M03_AXI_AWVALID;
  wire [4:0]OCL_REGION_0_M03_AXI_BID;
  wire OCL_REGION_0_M03_AXI_BREADY;
  wire [1:0]OCL_REGION_0_M03_AXI_BRESP;
  wire OCL_REGION_0_M03_AXI_BVALID;
  wire [511:0]OCL_REGION_0_M03_AXI_RDATA;
  wire [4:0]OCL_REGION_0_M03_AXI_RID;
  wire OCL_REGION_0_M03_AXI_RLAST;
  wire OCL_REGION_0_M03_AXI_RREADY;
  wire [1:0]OCL_REGION_0_M03_AXI_RRESP;
  wire OCL_REGION_0_M03_AXI_RVALID;
  wire [511:0]OCL_REGION_0_M03_AXI_WDATA;
  wire OCL_REGION_0_M03_AXI_WLAST;
  wire OCL_REGION_0_M03_AXI_WREADY;
  wire [63:0]OCL_REGION_0_M03_AXI_WSTRB;
  wire OCL_REGION_0_M03_AXI_WVALID;
  wire [63:0]S00_AXI_1_ARADDR;
  wire S00_AXI_1_ARREADY;
  wire S00_AXI_1_ARVALID;
  wire [63:0]S00_AXI_1_AWADDR;
  wire S00_AXI_1_AWREADY;
  wire S00_AXI_1_AWVALID;
  wire S00_AXI_1_BREADY;
  wire [1:0]S00_AXI_1_BRESP;
  wire S00_AXI_1_BVALID;
  wire [31:0]S00_AXI_1_RDATA;
  wire S00_AXI_1_RREADY;
  wire [1:0]S00_AXI_1_RRESP;
  wire S00_AXI_1_RVALID;
  wire [31:0]S00_AXI_1_WDATA;
  wire S00_AXI_1_WREADY;
  wire [3:0]S00_AXI_1_WSTRB;
  wire S00_AXI_1_WVALID;
  wire [63:0]axi_interconnect_0_M00_AXI_ARADDR;
  wire [2:0]axi_interconnect_0_M00_AXI_ARPROT;
  wire axi_interconnect_0_M00_AXI_ARREADY;
  wire axi_interconnect_0_M00_AXI_ARVALID;
  wire [63:0]axi_interconnect_0_M00_AXI_AWADDR;
  wire [2:0]axi_interconnect_0_M00_AXI_AWPROT;
  wire axi_interconnect_0_M00_AXI_AWREADY;
  wire axi_interconnect_0_M00_AXI_AWVALID;
  wire axi_interconnect_0_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_BRESP;
  wire axi_interconnect_0_M00_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_RDATA;
  wire axi_interconnect_0_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_RRESP;
  wire axi_interconnect_0_M00_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_WDATA;
  wire axi_interconnect_0_M00_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M00_AXI_WSTRB;
  wire axi_interconnect_0_M00_AXI_WVALID;
  wire c0_ui_clk_clk;
  wire c0_ui_clk_sync_rst;
  wire interconnect_control_clk_clk;
  wire interconnect_control_clk_rst;
  wire kernel_clk2_clk;
  wire kernel_clk2_sync_rst;

  OCL_Region_0_imp_Y41SA3 OCL_Region_0
       (.CONTROL_CLK(interconnect_control_clk_clk),
        .CONTROL_RESET(interconnect_control_clk_rst),
        .DATA_CLK(c0_ui_clk_clk),
        .DATA_RESET(c0_ui_clk_sync_rst),
        .KERNEL_CLK2(kernel_clk2_clk),
        .KERNEL_RESET2(kernel_clk2_sync_rst),
        .m_axi1_araddr(OCL_REGION_0_M01_AXI_ARADDR),
        .m_axi1_arburst(OCL_REGION_0_M01_AXI_ARBURST),
        .m_axi1_arcache(OCL_REGION_0_M01_AXI_ARCACHE),
        .m_axi1_arid(OCL_REGION_0_M01_AXI_ARID),
        .m_axi1_arlen(OCL_REGION_0_M01_AXI_ARLEN),
        .m_axi1_arlock(OCL_REGION_0_M01_AXI_ARLOCK),
        .m_axi1_arprot(OCL_REGION_0_M01_AXI_ARPROT),
        .m_axi1_arqos(OCL_REGION_0_M01_AXI_ARQOS),
        .m_axi1_arready(OCL_REGION_0_M01_AXI_ARREADY),
        .m_axi1_arsize(OCL_REGION_0_M01_AXI_ARSIZE),
        .m_axi1_arvalid(OCL_REGION_0_M01_AXI_ARVALID),
        .m_axi1_awaddr(OCL_REGION_0_M01_AXI_AWADDR),
        .m_axi1_awburst(OCL_REGION_0_M01_AXI_AWBURST),
        .m_axi1_awcache(OCL_REGION_0_M01_AXI_AWCACHE),
        .m_axi1_awid(OCL_REGION_0_M01_AXI_AWID),
        .m_axi1_awlen(OCL_REGION_0_M01_AXI_AWLEN),
        .m_axi1_awlock(OCL_REGION_0_M01_AXI_AWLOCK),
        .m_axi1_awprot(OCL_REGION_0_M01_AXI_AWPROT),
        .m_axi1_awqos(OCL_REGION_0_M01_AXI_AWQOS),
        .m_axi1_awready(OCL_REGION_0_M01_AXI_AWREADY),
        .m_axi1_awsize(OCL_REGION_0_M01_AXI_AWSIZE),
        .m_axi1_awvalid(OCL_REGION_0_M01_AXI_AWVALID),
        .m_axi1_bid(OCL_REGION_0_M01_AXI_BID),
        .m_axi1_bready(OCL_REGION_0_M01_AXI_BREADY),
        .m_axi1_bresp(OCL_REGION_0_M01_AXI_BRESP),
        .m_axi1_bvalid(OCL_REGION_0_M01_AXI_BVALID),
        .m_axi1_rdata(OCL_REGION_0_M01_AXI_RDATA),
        .m_axi1_rid(OCL_REGION_0_M01_AXI_RID),
        .m_axi1_rlast(OCL_REGION_0_M01_AXI_RLAST),
        .m_axi1_rready(OCL_REGION_0_M01_AXI_RREADY),
        .m_axi1_rresp(OCL_REGION_0_M01_AXI_RRESP),
        .m_axi1_rvalid(OCL_REGION_0_M01_AXI_RVALID),
        .m_axi1_wdata(OCL_REGION_0_M01_AXI_WDATA),
        .m_axi1_wlast(OCL_REGION_0_M01_AXI_WLAST),
        .m_axi1_wready(OCL_REGION_0_M01_AXI_WREADY),
        .m_axi1_wstrb(OCL_REGION_0_M01_AXI_WSTRB),
        .m_axi1_wvalid(OCL_REGION_0_M01_AXI_WVALID),
        .m_axi2_araddr(OCL_REGION_0_M02_AXI_ARADDR),
        .m_axi2_arburst(OCL_REGION_0_M02_AXI_ARBURST),
        .m_axi2_arcache(OCL_REGION_0_M02_AXI_ARCACHE),
        .m_axi2_arid(OCL_REGION_0_M02_AXI_ARID),
        .m_axi2_arlen(OCL_REGION_0_M02_AXI_ARLEN),
        .m_axi2_arlock(OCL_REGION_0_M02_AXI_ARLOCK),
        .m_axi2_arprot(OCL_REGION_0_M02_AXI_ARPROT),
        .m_axi2_arqos(OCL_REGION_0_M02_AXI_ARQOS),
        .m_axi2_arready(OCL_REGION_0_M02_AXI_ARREADY),
        .m_axi2_arsize(OCL_REGION_0_M02_AXI_ARSIZE),
        .m_axi2_arvalid(OCL_REGION_0_M02_AXI_ARVALID),
        .m_axi2_awaddr(OCL_REGION_0_M02_AXI_AWADDR),
        .m_axi2_awburst(OCL_REGION_0_M02_AXI_AWBURST),
        .m_axi2_awcache(OCL_REGION_0_M02_AXI_AWCACHE),
        .m_axi2_awid(OCL_REGION_0_M02_AXI_AWID),
        .m_axi2_awlen(OCL_REGION_0_M02_AXI_AWLEN),
        .m_axi2_awlock(OCL_REGION_0_M02_AXI_AWLOCK),
        .m_axi2_awprot(OCL_REGION_0_M02_AXI_AWPROT),
        .m_axi2_awqos(OCL_REGION_0_M02_AXI_AWQOS),
        .m_axi2_awready(OCL_REGION_0_M02_AXI_AWREADY),
        .m_axi2_awsize(OCL_REGION_0_M02_AXI_AWSIZE),
        .m_axi2_awvalid(OCL_REGION_0_M02_AXI_AWVALID),
        .m_axi2_bid(OCL_REGION_0_M02_AXI_BID),
        .m_axi2_bready(OCL_REGION_0_M02_AXI_BREADY),
        .m_axi2_bresp(OCL_REGION_0_M02_AXI_BRESP),
        .m_axi2_bvalid(OCL_REGION_0_M02_AXI_BVALID),
        .m_axi2_rdata(OCL_REGION_0_M02_AXI_RDATA),
        .m_axi2_rid(OCL_REGION_0_M02_AXI_RID),
        .m_axi2_rlast(OCL_REGION_0_M02_AXI_RLAST),
        .m_axi2_rready(OCL_REGION_0_M02_AXI_RREADY),
        .m_axi2_rresp(OCL_REGION_0_M02_AXI_RRESP),
        .m_axi2_rvalid(OCL_REGION_0_M02_AXI_RVALID),
        .m_axi2_wdata(OCL_REGION_0_M02_AXI_WDATA),
        .m_axi2_wlast(OCL_REGION_0_M02_AXI_WLAST),
        .m_axi2_wready(OCL_REGION_0_M02_AXI_WREADY),
        .m_axi2_wstrb(OCL_REGION_0_M02_AXI_WSTRB),
        .m_axi2_wvalid(OCL_REGION_0_M02_AXI_WVALID),
        .m_axi3_araddr(OCL_REGION_0_M03_AXI_ARADDR),
        .m_axi3_arburst(OCL_REGION_0_M03_AXI_ARBURST),
        .m_axi3_arcache(OCL_REGION_0_M03_AXI_ARCACHE),
        .m_axi3_arid(OCL_REGION_0_M03_AXI_ARID),
        .m_axi3_arlen(OCL_REGION_0_M03_AXI_ARLEN),
        .m_axi3_arlock(OCL_REGION_0_M03_AXI_ARLOCK),
        .m_axi3_arprot(OCL_REGION_0_M03_AXI_ARPROT),
        .m_axi3_arqos(OCL_REGION_0_M03_AXI_ARQOS),
        .m_axi3_arready(OCL_REGION_0_M03_AXI_ARREADY),
        .m_axi3_arsize(OCL_REGION_0_M03_AXI_ARSIZE),
        .m_axi3_arvalid(OCL_REGION_0_M03_AXI_ARVALID),
        .m_axi3_awaddr(OCL_REGION_0_M03_AXI_AWADDR),
        .m_axi3_awburst(OCL_REGION_0_M03_AXI_AWBURST),
        .m_axi3_awcache(OCL_REGION_0_M03_AXI_AWCACHE),
        .m_axi3_awid(OCL_REGION_0_M03_AXI_AWID),
        .m_axi3_awlen(OCL_REGION_0_M03_AXI_AWLEN),
        .m_axi3_awlock(OCL_REGION_0_M03_AXI_AWLOCK),
        .m_axi3_awprot(OCL_REGION_0_M03_AXI_AWPROT),
        .m_axi3_awqos(OCL_REGION_0_M03_AXI_AWQOS),
        .m_axi3_awready(OCL_REGION_0_M03_AXI_AWREADY),
        .m_axi3_awsize(OCL_REGION_0_M03_AXI_AWSIZE),
        .m_axi3_awvalid(OCL_REGION_0_M03_AXI_AWVALID),
        .m_axi3_bid(OCL_REGION_0_M03_AXI_BID),
        .m_axi3_bready(OCL_REGION_0_M03_AXI_BREADY),
        .m_axi3_bresp(OCL_REGION_0_M03_AXI_BRESP),
        .m_axi3_bvalid(OCL_REGION_0_M03_AXI_BVALID),
        .m_axi3_rdata(OCL_REGION_0_M03_AXI_RDATA),
        .m_axi3_rid(OCL_REGION_0_M03_AXI_RID),
        .m_axi3_rlast(OCL_REGION_0_M03_AXI_RLAST),
        .m_axi3_rready(OCL_REGION_0_M03_AXI_RREADY),
        .m_axi3_rresp(OCL_REGION_0_M03_AXI_RRESP),
        .m_axi3_rvalid(OCL_REGION_0_M03_AXI_RVALID),
        .m_axi3_wdata(OCL_REGION_0_M03_AXI_WDATA),
        .m_axi3_wlast(OCL_REGION_0_M03_AXI_WLAST),
        .m_axi3_wready(OCL_REGION_0_M03_AXI_WREADY),
        .m_axi3_wstrb(OCL_REGION_0_M03_AXI_WSTRB),
        .m_axi3_wvalid(OCL_REGION_0_M03_AXI_WVALID),
        .m_axi_araddr(OCL_REGION_0_M00_AXI_ARADDR),
        .m_axi_arburst(OCL_REGION_0_M00_AXI_ARBURST),
        .m_axi_arcache(OCL_REGION_0_M00_AXI_ARCACHE),
        .m_axi_arid(OCL_REGION_0_M00_AXI_ARID),
        .m_axi_arlen(OCL_REGION_0_M00_AXI_ARLEN),
        .m_axi_arlock(OCL_REGION_0_M00_AXI_ARLOCK),
        .m_axi_arprot(OCL_REGION_0_M00_AXI_ARPROT),
        .m_axi_arqos(OCL_REGION_0_M00_AXI_ARQOS),
        .m_axi_arready(OCL_REGION_0_M00_AXI_ARREADY),
        .m_axi_arsize(OCL_REGION_0_M00_AXI_ARSIZE),
        .m_axi_arvalid(OCL_REGION_0_M00_AXI_ARVALID),
        .m_axi_awaddr(OCL_REGION_0_M00_AXI_AWADDR),
        .m_axi_awburst(OCL_REGION_0_M00_AXI_AWBURST),
        .m_axi_awcache(OCL_REGION_0_M00_AXI_AWCACHE),
        .m_axi_awid(OCL_REGION_0_M00_AXI_AWID),
        .m_axi_awlen(OCL_REGION_0_M00_AXI_AWLEN),
        .m_axi_awlock(OCL_REGION_0_M00_AXI_AWLOCK),
        .m_axi_awprot(OCL_REGION_0_M00_AXI_AWPROT),
        .m_axi_awqos(OCL_REGION_0_M00_AXI_AWQOS),
        .m_axi_awready(OCL_REGION_0_M00_AXI_AWREADY),
        .m_axi_awsize(OCL_REGION_0_M00_AXI_AWSIZE),
        .m_axi_awvalid(OCL_REGION_0_M00_AXI_AWVALID),
        .m_axi_bid(OCL_REGION_0_M00_AXI_BID),
        .m_axi_bready(OCL_REGION_0_M00_AXI_BREADY),
        .m_axi_bresp(OCL_REGION_0_M00_AXI_BRESP),
        .m_axi_bvalid(OCL_REGION_0_M00_AXI_BVALID),
        .m_axi_rdata(OCL_REGION_0_M00_AXI_RDATA),
        .m_axi_rid(OCL_REGION_0_M00_AXI_RID),
        .m_axi_rlast(OCL_REGION_0_M00_AXI_RLAST),
        .m_axi_rready(OCL_REGION_0_M00_AXI_RREADY),
        .m_axi_rresp(OCL_REGION_0_M00_AXI_RRESP),
        .m_axi_rvalid(OCL_REGION_0_M00_AXI_RVALID),
        .m_axi_wdata(OCL_REGION_0_M00_AXI_WDATA),
        .m_axi_wlast(OCL_REGION_0_M00_AXI_WLAST),
        .m_axi_wready(OCL_REGION_0_M00_AXI_WREADY),
        .m_axi_wstrb(OCL_REGION_0_M00_AXI_WSTRB),
        .m_axi_wvalid(OCL_REGION_0_M00_AXI_WVALID),
        .s_axi_araddr(axi_interconnect_0_M00_AXI_ARADDR),
        .s_axi_arprot(axi_interconnect_0_M00_AXI_ARPROT),
        .s_axi_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_0_M00_AXI_AWADDR),
        .s_axi_awprot(axi_interconnect_0_M00_AXI_AWPROT),
        .s_axi_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_0_M00_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .s_axi_rready(axi_interconnect_0_M00_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .s_axi_wready(axi_interconnect_0_M00_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_0_M00_AXI_WVALID));
  dr_axi_interconnect_0_0 axi_interconnect_0
       (.ACLK(c0_ui_clk_clk),
        .ARESETN(c0_ui_clk_sync_rst),
        .M00_ACLK(interconnect_control_clk_clk),
        .M00_ARESETN(interconnect_control_clk_rst),
        .M00_AXI_araddr(axi_interconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arprot(axi_interconnect_0_M00_AXI_ARPROT),
        .M00_AXI_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awprot(axi_interconnect_0_M00_AXI_AWPROT),
        .M00_AXI_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_interconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .M00_AXI_rready(axi_interconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .M00_AXI_wready(axi_interconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .S00_ACLK(c0_ui_clk_clk),
        .S00_ARESETN(c0_ui_clk_sync_rst),
        .S00_AXI_araddr(S00_AXI_1_ARADDR),
        .S00_AXI_arready(S00_AXI_1_ARREADY),
        .S00_AXI_arvalid(S00_AXI_1_ARVALID),
        .S00_AXI_awaddr(S00_AXI_1_AWADDR),
        .S00_AXI_awready(S00_AXI_1_AWREADY),
        .S00_AXI_awvalid(S00_AXI_1_AWVALID),
        .S00_AXI_bready(S00_AXI_1_BREADY),
        .S00_AXI_bresp(S00_AXI_1_BRESP),
        .S00_AXI_bvalid(S00_AXI_1_BVALID),
        .S00_AXI_rdata(S00_AXI_1_RDATA),
        .S00_AXI_rready(S00_AXI_1_RREADY),
        .S00_AXI_rresp(S00_AXI_1_RRESP),
        .S00_AXI_rvalid(S00_AXI_1_RVALID),
        .S00_AXI_wdata(S00_AXI_1_WDATA),
        .S00_AXI_wready(S00_AXI_1_WREADY),
        .S00_AXI_wstrb(S00_AXI_1_WSTRB),
        .S00_AXI_wvalid(S00_AXI_1_WVALID));
  dr_c0_ui_clk_0 c0_ui_clk
       (.clk(c0_ui_clk_clk),
        .sync_rst(c0_ui_clk_sync_rst));
  dr_interconnect_control_clk_0 interconnect_control_clk
       (.clk(interconnect_control_clk_clk),
        .sync_rst(interconnect_control_clk_rst));
  dr_kernel_clk2_0 kernel_clk2
       (.clk(kernel_clk2_clk),
        .sync_rst(kernel_clk2_sync_rst));
  dr_sdaccel_generic_pcie_0_0 sdaccel_generic_pcie_0
       (.c0_ddr_saxi_araddr(OCL_REGION_0_M00_AXI_ARADDR),
        .c0_ddr_saxi_arburst(OCL_REGION_0_M00_AXI_ARBURST),
        .c0_ddr_saxi_arcache(OCL_REGION_0_M00_AXI_ARCACHE),
        .c0_ddr_saxi_arid(OCL_REGION_0_M00_AXI_ARID),
        .c0_ddr_saxi_arlen(OCL_REGION_0_M00_AXI_ARLEN),
        .c0_ddr_saxi_arlock(OCL_REGION_0_M00_AXI_ARLOCK),
        .c0_ddr_saxi_arprot(OCL_REGION_0_M00_AXI_ARPROT),
        .c0_ddr_saxi_arqos(OCL_REGION_0_M00_AXI_ARQOS),
        .c0_ddr_saxi_arready(OCL_REGION_0_M00_AXI_ARREADY),
        .c0_ddr_saxi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .c0_ddr_saxi_arsize(OCL_REGION_0_M00_AXI_ARSIZE),
        .c0_ddr_saxi_aruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .c0_ddr_saxi_arvalid(OCL_REGION_0_M00_AXI_ARVALID),
        .c0_ddr_saxi_awaddr(OCL_REGION_0_M00_AXI_AWADDR),
        .c0_ddr_saxi_awburst(OCL_REGION_0_M00_AXI_AWBURST),
        .c0_ddr_saxi_awcache(OCL_REGION_0_M00_AXI_AWCACHE),
        .c0_ddr_saxi_awid(OCL_REGION_0_M00_AXI_AWID),
        .c0_ddr_saxi_awlen(OCL_REGION_0_M00_AXI_AWLEN),
        .c0_ddr_saxi_awlock(OCL_REGION_0_M00_AXI_AWLOCK),
        .c0_ddr_saxi_awprot(OCL_REGION_0_M00_AXI_AWPROT),
        .c0_ddr_saxi_awqos(OCL_REGION_0_M00_AXI_AWQOS),
        .c0_ddr_saxi_awready(OCL_REGION_0_M00_AXI_AWREADY),
        .c0_ddr_saxi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .c0_ddr_saxi_awsize(OCL_REGION_0_M00_AXI_AWSIZE),
        .c0_ddr_saxi_awuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .c0_ddr_saxi_awvalid(OCL_REGION_0_M00_AXI_AWVALID),
        .c0_ddr_saxi_bid(OCL_REGION_0_M00_AXI_BID),
        .c0_ddr_saxi_bready(OCL_REGION_0_M00_AXI_BREADY),
        .c0_ddr_saxi_bresp(OCL_REGION_0_M00_AXI_BRESP),
        .c0_ddr_saxi_bvalid(OCL_REGION_0_M00_AXI_BVALID),
        .c0_ddr_saxi_rdata(OCL_REGION_0_M00_AXI_RDATA),
        .c0_ddr_saxi_rid(OCL_REGION_0_M00_AXI_RID),
        .c0_ddr_saxi_rlast(OCL_REGION_0_M00_AXI_RLAST),
        .c0_ddr_saxi_rready(OCL_REGION_0_M00_AXI_RREADY),
        .c0_ddr_saxi_rresp(OCL_REGION_0_M00_AXI_RRESP),
        .c0_ddr_saxi_rvalid(OCL_REGION_0_M00_AXI_RVALID),
        .c0_ddr_saxi_wdata(OCL_REGION_0_M00_AXI_WDATA),
        .c0_ddr_saxi_wlast(OCL_REGION_0_M00_AXI_WLAST),
        .c0_ddr_saxi_wready(OCL_REGION_0_M00_AXI_WREADY),
        .c0_ddr_saxi_wstrb(OCL_REGION_0_M00_AXI_WSTRB),
        .c0_ddr_saxi_wvalid(OCL_REGION_0_M00_AXI_WVALID),
        .c0_ui_clk(c0_ui_clk_clk),
        .c1_ddr_saxi_araddr(OCL_REGION_0_M01_AXI_ARADDR),
        .c1_ddr_saxi_arburst(OCL_REGION_0_M01_AXI_ARBURST),
        .c1_ddr_saxi_arcache(OCL_REGION_0_M01_AXI_ARCACHE),
        .c1_ddr_saxi_arid({1'b0,OCL_REGION_0_M01_AXI_ARID}),
        .c1_ddr_saxi_arlen(OCL_REGION_0_M01_AXI_ARLEN),
        .c1_ddr_saxi_arlock(OCL_REGION_0_M01_AXI_ARLOCK),
        .c1_ddr_saxi_arprot(OCL_REGION_0_M01_AXI_ARPROT),
        .c1_ddr_saxi_arqos(OCL_REGION_0_M01_AXI_ARQOS),
        .c1_ddr_saxi_arready(OCL_REGION_0_M01_AXI_ARREADY),
        .c1_ddr_saxi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .c1_ddr_saxi_arsize(OCL_REGION_0_M01_AXI_ARSIZE),
        .c1_ddr_saxi_aruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .c1_ddr_saxi_arvalid(OCL_REGION_0_M01_AXI_ARVALID),
        .c1_ddr_saxi_awaddr(OCL_REGION_0_M01_AXI_AWADDR),
        .c1_ddr_saxi_awburst(OCL_REGION_0_M01_AXI_AWBURST),
        .c1_ddr_saxi_awcache(OCL_REGION_0_M01_AXI_AWCACHE),
        .c1_ddr_saxi_awid({1'b0,OCL_REGION_0_M01_AXI_AWID}),
        .c1_ddr_saxi_awlen(OCL_REGION_0_M01_AXI_AWLEN),
        .c1_ddr_saxi_awlock(OCL_REGION_0_M01_AXI_AWLOCK),
        .c1_ddr_saxi_awprot(OCL_REGION_0_M01_AXI_AWPROT),
        .c1_ddr_saxi_awqos(OCL_REGION_0_M01_AXI_AWQOS),
        .c1_ddr_saxi_awready(OCL_REGION_0_M01_AXI_AWREADY),
        .c1_ddr_saxi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .c1_ddr_saxi_awsize(OCL_REGION_0_M01_AXI_AWSIZE),
        .c1_ddr_saxi_awuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .c1_ddr_saxi_awvalid(OCL_REGION_0_M01_AXI_AWVALID),
        .c1_ddr_saxi_bid(OCL_REGION_0_M01_AXI_BID),
        .c1_ddr_saxi_bready(OCL_REGION_0_M01_AXI_BREADY),
        .c1_ddr_saxi_bresp(OCL_REGION_0_M01_AXI_BRESP),
        .c1_ddr_saxi_bvalid(OCL_REGION_0_M01_AXI_BVALID),
        .c1_ddr_saxi_rdata(OCL_REGION_0_M01_AXI_RDATA),
        .c1_ddr_saxi_rid(OCL_REGION_0_M01_AXI_RID),
        .c1_ddr_saxi_rlast(OCL_REGION_0_M01_AXI_RLAST),
        .c1_ddr_saxi_rready(OCL_REGION_0_M01_AXI_RREADY),
        .c1_ddr_saxi_rresp(OCL_REGION_0_M01_AXI_RRESP),
        .c1_ddr_saxi_rvalid(OCL_REGION_0_M01_AXI_RVALID),
        .c1_ddr_saxi_wdata(OCL_REGION_0_M01_AXI_WDATA),
        .c1_ddr_saxi_wlast(OCL_REGION_0_M01_AXI_WLAST),
        .c1_ddr_saxi_wready(OCL_REGION_0_M01_AXI_WREADY),
        .c1_ddr_saxi_wstrb(OCL_REGION_0_M01_AXI_WSTRB),
        .c1_ddr_saxi_wvalid(OCL_REGION_0_M01_AXI_WVALID),
        .c2_ddr_saxi_araddr(OCL_REGION_0_M02_AXI_ARADDR),
        .c2_ddr_saxi_arburst(OCL_REGION_0_M02_AXI_ARBURST),
        .c2_ddr_saxi_arcache(OCL_REGION_0_M02_AXI_ARCACHE),
        .c2_ddr_saxi_arid({1'b0,OCL_REGION_0_M02_AXI_ARID}),
        .c2_ddr_saxi_arlen(OCL_REGION_0_M02_AXI_ARLEN),
        .c2_ddr_saxi_arlock(OCL_REGION_0_M02_AXI_ARLOCK),
        .c2_ddr_saxi_arprot(OCL_REGION_0_M02_AXI_ARPROT),
        .c2_ddr_saxi_arqos(OCL_REGION_0_M02_AXI_ARQOS),
        .c2_ddr_saxi_arready(OCL_REGION_0_M02_AXI_ARREADY),
        .c2_ddr_saxi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .c2_ddr_saxi_arsize(OCL_REGION_0_M02_AXI_ARSIZE),
        .c2_ddr_saxi_aruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .c2_ddr_saxi_arvalid(OCL_REGION_0_M02_AXI_ARVALID),
        .c2_ddr_saxi_awaddr(OCL_REGION_0_M02_AXI_AWADDR),
        .c2_ddr_saxi_awburst(OCL_REGION_0_M02_AXI_AWBURST),
        .c2_ddr_saxi_awcache(OCL_REGION_0_M02_AXI_AWCACHE),
        .c2_ddr_saxi_awid({1'b0,OCL_REGION_0_M02_AXI_AWID}),
        .c2_ddr_saxi_awlen(OCL_REGION_0_M02_AXI_AWLEN),
        .c2_ddr_saxi_awlock(OCL_REGION_0_M02_AXI_AWLOCK),
        .c2_ddr_saxi_awprot(OCL_REGION_0_M02_AXI_AWPROT),
        .c2_ddr_saxi_awqos(OCL_REGION_0_M02_AXI_AWQOS),
        .c2_ddr_saxi_awready(OCL_REGION_0_M02_AXI_AWREADY),
        .c2_ddr_saxi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .c2_ddr_saxi_awsize(OCL_REGION_0_M02_AXI_AWSIZE),
        .c2_ddr_saxi_awuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .c2_ddr_saxi_awvalid(OCL_REGION_0_M02_AXI_AWVALID),
        .c2_ddr_saxi_bid(OCL_REGION_0_M02_AXI_BID),
        .c2_ddr_saxi_bready(OCL_REGION_0_M02_AXI_BREADY),
        .c2_ddr_saxi_bresp(OCL_REGION_0_M02_AXI_BRESP),
        .c2_ddr_saxi_bvalid(OCL_REGION_0_M02_AXI_BVALID),
        .c2_ddr_saxi_rdata(OCL_REGION_0_M02_AXI_RDATA),
        .c2_ddr_saxi_rid(OCL_REGION_0_M02_AXI_RID),
        .c2_ddr_saxi_rlast(OCL_REGION_0_M02_AXI_RLAST),
        .c2_ddr_saxi_rready(OCL_REGION_0_M02_AXI_RREADY),
        .c2_ddr_saxi_rresp(OCL_REGION_0_M02_AXI_RRESP),
        .c2_ddr_saxi_rvalid(OCL_REGION_0_M02_AXI_RVALID),
        .c2_ddr_saxi_wdata(OCL_REGION_0_M02_AXI_WDATA),
        .c2_ddr_saxi_wlast(OCL_REGION_0_M02_AXI_WLAST),
        .c2_ddr_saxi_wready(OCL_REGION_0_M02_AXI_WREADY),
        .c2_ddr_saxi_wstrb(OCL_REGION_0_M02_AXI_WSTRB),
        .c2_ddr_saxi_wvalid(OCL_REGION_0_M02_AXI_WVALID),
        .c3_ddr_saxi_araddr(OCL_REGION_0_M03_AXI_ARADDR),
        .c3_ddr_saxi_arburst(OCL_REGION_0_M03_AXI_ARBURST),
        .c3_ddr_saxi_arcache(OCL_REGION_0_M03_AXI_ARCACHE),
        .c3_ddr_saxi_arid({1'b0,OCL_REGION_0_M03_AXI_ARID}),
        .c3_ddr_saxi_arlen(OCL_REGION_0_M03_AXI_ARLEN),
        .c3_ddr_saxi_arlock(OCL_REGION_0_M03_AXI_ARLOCK),
        .c3_ddr_saxi_arprot(OCL_REGION_0_M03_AXI_ARPROT),
        .c3_ddr_saxi_arqos(OCL_REGION_0_M03_AXI_ARQOS),
        .c3_ddr_saxi_arready(OCL_REGION_0_M03_AXI_ARREADY),
        .c3_ddr_saxi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .c3_ddr_saxi_arsize(OCL_REGION_0_M03_AXI_ARSIZE),
        .c3_ddr_saxi_aruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .c3_ddr_saxi_arvalid(OCL_REGION_0_M03_AXI_ARVALID),
        .c3_ddr_saxi_awaddr(OCL_REGION_0_M03_AXI_AWADDR),
        .c3_ddr_saxi_awburst(OCL_REGION_0_M03_AXI_AWBURST),
        .c3_ddr_saxi_awcache(OCL_REGION_0_M03_AXI_AWCACHE),
        .c3_ddr_saxi_awid({1'b0,OCL_REGION_0_M03_AXI_AWID}),
        .c3_ddr_saxi_awlen(OCL_REGION_0_M03_AXI_AWLEN),
        .c3_ddr_saxi_awlock(OCL_REGION_0_M03_AXI_AWLOCK),
        .c3_ddr_saxi_awprot(OCL_REGION_0_M03_AXI_AWPROT),
        .c3_ddr_saxi_awqos(OCL_REGION_0_M03_AXI_AWQOS),
        .c3_ddr_saxi_awready(OCL_REGION_0_M03_AXI_AWREADY),
        .c3_ddr_saxi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .c3_ddr_saxi_awsize(OCL_REGION_0_M03_AXI_AWSIZE),
        .c3_ddr_saxi_awuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .c3_ddr_saxi_awvalid(OCL_REGION_0_M03_AXI_AWVALID),
        .c3_ddr_saxi_bid(OCL_REGION_0_M03_AXI_BID),
        .c3_ddr_saxi_bready(OCL_REGION_0_M03_AXI_BREADY),
        .c3_ddr_saxi_bresp(OCL_REGION_0_M03_AXI_BRESP),
        .c3_ddr_saxi_bvalid(OCL_REGION_0_M03_AXI_BVALID),
        .c3_ddr_saxi_rdata(OCL_REGION_0_M03_AXI_RDATA),
        .c3_ddr_saxi_rid(OCL_REGION_0_M03_AXI_RID),
        .c3_ddr_saxi_rlast(OCL_REGION_0_M03_AXI_RLAST),
        .c3_ddr_saxi_rready(OCL_REGION_0_M03_AXI_RREADY),
        .c3_ddr_saxi_rresp(OCL_REGION_0_M03_AXI_RRESP),
        .c3_ddr_saxi_rvalid(OCL_REGION_0_M03_AXI_RVALID),
        .c3_ddr_saxi_wdata(OCL_REGION_0_M03_AXI_WDATA),
        .c3_ddr_saxi_wlast(OCL_REGION_0_M03_AXI_WLAST),
        .c3_ddr_saxi_wready(OCL_REGION_0_M03_AXI_WREADY),
        .c3_ddr_saxi_wstrb(OCL_REGION_0_M03_AXI_WSTRB),
        .c3_ddr_saxi_wvalid(OCL_REGION_0_M03_AXI_WVALID),
        .m_axi_ctrl_araddr(S00_AXI_1_ARADDR),
        .m_axi_ctrl_arready(S00_AXI_1_ARREADY),
        .m_axi_ctrl_arvalid(S00_AXI_1_ARVALID),
        .m_axi_ctrl_awaddr(S00_AXI_1_AWADDR),
        .m_axi_ctrl_awready(S00_AXI_1_AWREADY),
        .m_axi_ctrl_awvalid(S00_AXI_1_AWVALID),
        .m_axi_ctrl_bready(S00_AXI_1_BREADY),
        .m_axi_ctrl_bresp(S00_AXI_1_BRESP),
        .m_axi_ctrl_bvalid(S00_AXI_1_BVALID),
        .m_axi_ctrl_clk(c0_ui_clk_clk),
        .m_axi_ctrl_rdata(S00_AXI_1_RDATA),
        .m_axi_ctrl_rready(S00_AXI_1_RREADY),
        .m_axi_ctrl_rresp(S00_AXI_1_RRESP),
        .m_axi_ctrl_rvalid(S00_AXI_1_RVALID),
        .m_axi_ctrl_wdata(S00_AXI_1_WDATA),
        .m_axi_ctrl_wready(S00_AXI_1_WREADY),
        .m_axi_ctrl_wstrb(S00_AXI_1_WSTRB),
        .m_axi_ctrl_wvalid(S00_AXI_1_WVALID));
  dr_systemc_synchronizer_0_0 systemc_synchronizer_0
       (.clk0(c0_ui_clk_clk));
endmodule

module dr_axi_interconnect_0_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arprot,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awprot,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [63:0]M00_AXI_araddr;
  output [2:0]M00_AXI_arprot;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [63:0]M00_AXI_awaddr;
  output [2:0]M00_AXI_awprot;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [63:0]S00_AXI_araddr;
  output S00_AXI_arready;
  input S00_AXI_arvalid;
  input [63:0]S00_AXI_awaddr;
  output S00_AXI_awready;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire axi_interconnect_0_ACLK_net;
  wire axi_interconnect_0_ARESETN_net;
  wire [63:0]axi_interconnect_0_to_s00_couplers_ARADDR;
  wire axi_interconnect_0_to_s00_couplers_ARREADY;
  wire axi_interconnect_0_to_s00_couplers_ARVALID;
  wire [63:0]axi_interconnect_0_to_s00_couplers_AWADDR;
  wire axi_interconnect_0_to_s00_couplers_AWREADY;
  wire axi_interconnect_0_to_s00_couplers_AWVALID;
  wire axi_interconnect_0_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_0_to_s00_couplers_BRESP;
  wire axi_interconnect_0_to_s00_couplers_BVALID;
  wire [31:0]axi_interconnect_0_to_s00_couplers_RDATA;
  wire axi_interconnect_0_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_0_to_s00_couplers_RRESP;
  wire axi_interconnect_0_to_s00_couplers_RVALID;
  wire [31:0]axi_interconnect_0_to_s00_couplers_WDATA;
  wire axi_interconnect_0_to_s00_couplers_WREADY;
  wire [3:0]axi_interconnect_0_to_s00_couplers_WSTRB;
  wire axi_interconnect_0_to_s00_couplers_WVALID;
  wire [63:0]s00_couplers_to_axi_interconnect_0_ARADDR;
  wire [2:0]s00_couplers_to_axi_interconnect_0_ARPROT;
  wire s00_couplers_to_axi_interconnect_0_ARREADY;
  wire s00_couplers_to_axi_interconnect_0_ARVALID;
  wire [63:0]s00_couplers_to_axi_interconnect_0_AWADDR;
  wire [2:0]s00_couplers_to_axi_interconnect_0_AWPROT;
  wire s00_couplers_to_axi_interconnect_0_AWREADY;
  wire s00_couplers_to_axi_interconnect_0_AWVALID;
  wire s00_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]s00_couplers_to_axi_interconnect_0_BRESP;
  wire s00_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]s00_couplers_to_axi_interconnect_0_RDATA;
  wire s00_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]s00_couplers_to_axi_interconnect_0_RRESP;
  wire s00_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]s00_couplers_to_axi_interconnect_0_WDATA;
  wire s00_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]s00_couplers_to_axi_interconnect_0_WSTRB;
  wire s00_couplers_to_axi_interconnect_0_WVALID;

  assign M00_AXI_araddr[63:0] = s00_couplers_to_axi_interconnect_0_ARADDR;
  assign M00_AXI_arprot[2:0] = s00_couplers_to_axi_interconnect_0_ARPROT;
  assign M00_AXI_arvalid = s00_couplers_to_axi_interconnect_0_ARVALID;
  assign M00_AXI_awaddr[63:0] = s00_couplers_to_axi_interconnect_0_AWADDR;
  assign M00_AXI_awprot[2:0] = s00_couplers_to_axi_interconnect_0_AWPROT;
  assign M00_AXI_awvalid = s00_couplers_to_axi_interconnect_0_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_axi_interconnect_0_BREADY;
  assign M00_AXI_rready = s00_couplers_to_axi_interconnect_0_RREADY;
  assign M00_AXI_wdata[31:0] = s00_couplers_to_axi_interconnect_0_WDATA;
  assign M00_AXI_wstrb[3:0] = s00_couplers_to_axi_interconnect_0_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_axi_interconnect_0_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = axi_interconnect_0_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_interconnect_0_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_interconnect_0_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_interconnect_0_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_interconnect_0_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = axi_interconnect_0_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_interconnect_0_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_interconnect_0_to_s00_couplers_WREADY;
  assign axi_interconnect_0_ACLK_net = M00_ACLK;
  assign axi_interconnect_0_ARESETN_net = M00_ARESETN;
  assign axi_interconnect_0_to_s00_couplers_ARADDR = S00_AXI_araddr[63:0];
  assign axi_interconnect_0_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_interconnect_0_to_s00_couplers_AWADDR = S00_AXI_awaddr[63:0];
  assign axi_interconnect_0_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_interconnect_0_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_interconnect_0_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_interconnect_0_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_interconnect_0_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_interconnect_0_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_axi_interconnect_0_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_axi_interconnect_0_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_axi_interconnect_0_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_axi_interconnect_0_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_axi_interconnect_0_RDATA = M00_AXI_rdata[31:0];
  assign s00_couplers_to_axi_interconnect_0_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_axi_interconnect_0_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_axi_interconnect_0_WREADY = M00_AXI_wready;
  s00_couplers_imp_J0JM2M s00_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arprot(s00_couplers_to_axi_interconnect_0_ARPROT),
        .M_AXI_arready(s00_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awprot(s00_couplers_to_axi_interconnect_0_AWPROT),
        .M_AXI_awready(s00_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(s00_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(s00_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(s00_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(s00_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(s00_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(s00_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(s00_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(s00_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(s00_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(s00_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_interconnect_0_to_s00_couplers_ARADDR),
        .S_AXI_arready(axi_interconnect_0_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(axi_interconnect_0_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_0_to_s00_couplers_AWADDR),
        .S_AXI_awready(axi_interconnect_0_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(axi_interconnect_0_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi_interconnect_0_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_0_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_0_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_0_to_s00_couplers_RDATA),
        .S_AXI_rready(axi_interconnect_0_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_0_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_0_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_0_to_s00_couplers_WDATA),
        .S_AXI_wready(axi_interconnect_0_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_0_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_0_to_s00_couplers_WVALID));
endmodule

module dr_m_axi_interconnect_M00_AXI_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_araddr,
    S01_AXI_arburst,
    S01_AXI_arcache,
    S01_AXI_arlen,
    S01_AXI_arlock,
    S01_AXI_arprot,
    S01_AXI_arqos,
    S01_AXI_arready,
    S01_AXI_arsize,
    S01_AXI_arvalid,
    S01_AXI_awaddr,
    S01_AXI_awburst,
    S01_AXI_awcache,
    S01_AXI_awlen,
    S01_AXI_awlock,
    S01_AXI_awprot,
    S01_AXI_awqos,
    S01_AXI_awready,
    S01_AXI_awsize,
    S01_AXI_awvalid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_rdata,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid,
    S01_AXI_wdata,
    S01_AXI_wlast,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [63:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [0:0]M00_AXI_arid;
  output [7:0]M00_AXI_arlen;
  output [0:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [63:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [0:0]M00_AXI_awid;
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  input [1:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [511:0]M00_AXI_rdata;
  input [1:0]M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [511:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [63:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [63:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [7:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [63:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [7:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [255:0]S00_AXI_rdata;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [255:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [31:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  input S01_ACLK;
  input S01_ARESETN;
  input [63:0]S01_AXI_araddr;
  input [1:0]S01_AXI_arburst;
  input [3:0]S01_AXI_arcache;
  input [7:0]S01_AXI_arlen;
  input [1:0]S01_AXI_arlock;
  input [2:0]S01_AXI_arprot;
  input [3:0]S01_AXI_arqos;
  output S01_AXI_arready;
  input [2:0]S01_AXI_arsize;
  input S01_AXI_arvalid;
  input [63:0]S01_AXI_awaddr;
  input [1:0]S01_AXI_awburst;
  input [3:0]S01_AXI_awcache;
  input [7:0]S01_AXI_awlen;
  input [1:0]S01_AXI_awlock;
  input [2:0]S01_AXI_awprot;
  input [3:0]S01_AXI_awqos;
  output S01_AXI_awready;
  input [2:0]S01_AXI_awsize;
  input S01_AXI_awvalid;
  input S01_AXI_bready;
  output [1:0]S01_AXI_bresp;
  output S01_AXI_bvalid;
  output [255:0]S01_AXI_rdata;
  output S01_AXI_rlast;
  input S01_AXI_rready;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rvalid;
  input [255:0]S01_AXI_wdata;
  input S01_AXI_wlast;
  output S01_AXI_wready;
  input [31:0]S01_AXI_wstrb;
  input S01_AXI_wvalid;

  wire [63:0]S00_AXI_1_ARADDR;
  wire [1:0]S00_AXI_1_ARBURST;
  wire [3:0]S00_AXI_1_ARCACHE;
  wire [7:0]S00_AXI_1_ARLEN;
  wire [1:0]S00_AXI_1_ARLOCK;
  wire [2:0]S00_AXI_1_ARPROT;
  wire [3:0]S00_AXI_1_ARQOS;
  wire S00_AXI_1_ARREADY;
  wire [2:0]S00_AXI_1_ARSIZE;
  wire S00_AXI_1_ARVALID;
  wire [63:0]S00_AXI_1_AWADDR;
  wire [1:0]S00_AXI_1_AWBURST;
  wire [3:0]S00_AXI_1_AWCACHE;
  wire [7:0]S00_AXI_1_AWLEN;
  wire [1:0]S00_AXI_1_AWLOCK;
  wire [2:0]S00_AXI_1_AWPROT;
  wire [3:0]S00_AXI_1_AWQOS;
  wire S00_AXI_1_AWREADY;
  wire [2:0]S00_AXI_1_AWSIZE;
  wire S00_AXI_1_AWVALID;
  wire S00_AXI_1_BREADY;
  wire [1:0]S00_AXI_1_BRESP;
  wire S00_AXI_1_BVALID;
  wire [255:0]S00_AXI_1_RDATA;
  wire S00_AXI_1_RLAST;
  wire S00_AXI_1_RREADY;
  wire [1:0]S00_AXI_1_RRESP;
  wire S00_AXI_1_RVALID;
  wire [255:0]S00_AXI_1_WDATA;
  wire S00_AXI_1_WLAST;
  wire S00_AXI_1_WREADY;
  wire [31:0]S00_AXI_1_WSTRB;
  wire S00_AXI_1_WVALID;
  wire [63:0]S01_AXI_1_ARADDR;
  wire [1:0]S01_AXI_1_ARBURST;
  wire [3:0]S01_AXI_1_ARCACHE;
  wire [7:0]S01_AXI_1_ARLEN;
  wire [1:0]S01_AXI_1_ARLOCK;
  wire [2:0]S01_AXI_1_ARPROT;
  wire [3:0]S01_AXI_1_ARQOS;
  wire S01_AXI_1_ARREADY;
  wire [2:0]S01_AXI_1_ARSIZE;
  wire S01_AXI_1_ARVALID;
  wire [63:0]S01_AXI_1_AWADDR;
  wire [1:0]S01_AXI_1_AWBURST;
  wire [3:0]S01_AXI_1_AWCACHE;
  wire [7:0]S01_AXI_1_AWLEN;
  wire [1:0]S01_AXI_1_AWLOCK;
  wire [2:0]S01_AXI_1_AWPROT;
  wire [3:0]S01_AXI_1_AWQOS;
  wire S01_AXI_1_AWREADY;
  wire [2:0]S01_AXI_1_AWSIZE;
  wire S01_AXI_1_AWVALID;
  wire S01_AXI_1_BREADY;
  wire [1:0]S01_AXI_1_BRESP;
  wire S01_AXI_1_BVALID;
  wire [255:0]S01_AXI_1_RDATA;
  wire S01_AXI_1_RLAST;
  wire S01_AXI_1_RREADY;
  wire [1:0]S01_AXI_1_RRESP;
  wire S01_AXI_1_RVALID;
  wire [255:0]S01_AXI_1_WDATA;
  wire S01_AXI_1_WLAST;
  wire S01_AXI_1_WREADY;
  wire [31:0]S01_AXI_1_WSTRB;
  wire S01_AXI_1_WVALID;
  wire [63:0]m00_couplers_to_m_axi_interconnect_M00_AXI_ARADDR;
  wire [1:0]m00_couplers_to_m_axi_interconnect_M00_AXI_ARBURST;
  wire [3:0]m00_couplers_to_m_axi_interconnect_M00_AXI_ARCACHE;
  wire [0:0]m00_couplers_to_m_axi_interconnect_M00_AXI_ARID;
  wire [7:0]m00_couplers_to_m_axi_interconnect_M00_AXI_ARLEN;
  wire [0:0]m00_couplers_to_m_axi_interconnect_M00_AXI_ARLOCK;
  wire [2:0]m00_couplers_to_m_axi_interconnect_M00_AXI_ARPROT;
  wire [3:0]m00_couplers_to_m_axi_interconnect_M00_AXI_ARQOS;
  wire m00_couplers_to_m_axi_interconnect_M00_AXI_ARREADY;
  wire [2:0]m00_couplers_to_m_axi_interconnect_M00_AXI_ARSIZE;
  wire m00_couplers_to_m_axi_interconnect_M00_AXI_ARVALID;
  wire [63:0]m00_couplers_to_m_axi_interconnect_M00_AXI_AWADDR;
  wire [1:0]m00_couplers_to_m_axi_interconnect_M00_AXI_AWBURST;
  wire [3:0]m00_couplers_to_m_axi_interconnect_M00_AXI_AWCACHE;
  wire [0:0]m00_couplers_to_m_axi_interconnect_M00_AXI_AWID;
  wire [7:0]m00_couplers_to_m_axi_interconnect_M00_AXI_AWLEN;
  wire [0:0]m00_couplers_to_m_axi_interconnect_M00_AXI_AWLOCK;
  wire [2:0]m00_couplers_to_m_axi_interconnect_M00_AXI_AWPROT;
  wire [3:0]m00_couplers_to_m_axi_interconnect_M00_AXI_AWQOS;
  wire m00_couplers_to_m_axi_interconnect_M00_AXI_AWREADY;
  wire [2:0]m00_couplers_to_m_axi_interconnect_M00_AXI_AWSIZE;
  wire m00_couplers_to_m_axi_interconnect_M00_AXI_AWVALID;
  wire [1:0]m00_couplers_to_m_axi_interconnect_M00_AXI_BID;
  wire m00_couplers_to_m_axi_interconnect_M00_AXI_BREADY;
  wire [1:0]m00_couplers_to_m_axi_interconnect_M00_AXI_BRESP;
  wire m00_couplers_to_m_axi_interconnect_M00_AXI_BVALID;
  wire [511:0]m00_couplers_to_m_axi_interconnect_M00_AXI_RDATA;
  wire [1:0]m00_couplers_to_m_axi_interconnect_M00_AXI_RID;
  wire m00_couplers_to_m_axi_interconnect_M00_AXI_RLAST;
  wire m00_couplers_to_m_axi_interconnect_M00_AXI_RREADY;
  wire [1:0]m00_couplers_to_m_axi_interconnect_M00_AXI_RRESP;
  wire m00_couplers_to_m_axi_interconnect_M00_AXI_RVALID;
  wire [511:0]m00_couplers_to_m_axi_interconnect_M00_AXI_WDATA;
  wire m00_couplers_to_m_axi_interconnect_M00_AXI_WLAST;
  wire m00_couplers_to_m_axi_interconnect_M00_AXI_WREADY;
  wire [63:0]m00_couplers_to_m_axi_interconnect_M00_AXI_WSTRB;
  wire m00_couplers_to_m_axi_interconnect_M00_AXI_WVALID;
  wire m_axi_interconnect_M00_AXI_ACLK_net;
  wire m_axi_interconnect_M00_AXI_ARESETN_net;
  wire [63:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [0:0]s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire s00_couplers_to_xbar_ARVALID;
  wire [63:0]s00_couplers_to_xbar_AWADDR;
  wire [1:0]s00_couplers_to_xbar_AWBURST;
  wire [3:0]s00_couplers_to_xbar_AWCACHE;
  wire [7:0]s00_couplers_to_xbar_AWLEN;
  wire [0:0]s00_couplers_to_xbar_AWLOCK;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [3:0]s00_couplers_to_xbar_AWQOS;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [2:0]s00_couplers_to_xbar_AWSIZE;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [511:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [511:0]s00_couplers_to_xbar_WDATA;
  wire s00_couplers_to_xbar_WLAST;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [63:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [63:0]s00_mmu_M_AXI_ARADDR;
  wire [1:0]s00_mmu_M_AXI_ARBURST;
  wire [3:0]s00_mmu_M_AXI_ARCACHE;
  wire [7:0]s00_mmu_M_AXI_ARLEN;
  wire [0:0]s00_mmu_M_AXI_ARLOCK;
  wire [2:0]s00_mmu_M_AXI_ARPROT;
  wire [3:0]s00_mmu_M_AXI_ARQOS;
  wire s00_mmu_M_AXI_ARREADY;
  wire [2:0]s00_mmu_M_AXI_ARSIZE;
  wire s00_mmu_M_AXI_ARVALID;
  wire [63:0]s00_mmu_M_AXI_AWADDR;
  wire [1:0]s00_mmu_M_AXI_AWBURST;
  wire [3:0]s00_mmu_M_AXI_AWCACHE;
  wire [7:0]s00_mmu_M_AXI_AWLEN;
  wire [0:0]s00_mmu_M_AXI_AWLOCK;
  wire [2:0]s00_mmu_M_AXI_AWPROT;
  wire [3:0]s00_mmu_M_AXI_AWQOS;
  wire s00_mmu_M_AXI_AWREADY;
  wire [2:0]s00_mmu_M_AXI_AWSIZE;
  wire s00_mmu_M_AXI_AWVALID;
  wire s00_mmu_M_AXI_BREADY;
  wire [1:0]s00_mmu_M_AXI_BRESP;
  wire s00_mmu_M_AXI_BVALID;
  wire [255:0]s00_mmu_M_AXI_RDATA;
  wire s00_mmu_M_AXI_RLAST;
  wire s00_mmu_M_AXI_RREADY;
  wire [1:0]s00_mmu_M_AXI_RRESP;
  wire s00_mmu_M_AXI_RVALID;
  wire [255:0]s00_mmu_M_AXI_WDATA;
  wire s00_mmu_M_AXI_WLAST;
  wire s00_mmu_M_AXI_WREADY;
  wire [31:0]s00_mmu_M_AXI_WSTRB;
  wire s00_mmu_M_AXI_WVALID;
  wire [63:0]s01_couplers_to_xbar_ARADDR;
  wire [1:0]s01_couplers_to_xbar_ARBURST;
  wire [3:0]s01_couplers_to_xbar_ARCACHE;
  wire [7:0]s01_couplers_to_xbar_ARLEN;
  wire [0:0]s01_couplers_to_xbar_ARLOCK;
  wire [2:0]s01_couplers_to_xbar_ARPROT;
  wire [3:0]s01_couplers_to_xbar_ARQOS;
  wire [1:1]s01_couplers_to_xbar_ARREADY;
  wire [2:0]s01_couplers_to_xbar_ARSIZE;
  wire s01_couplers_to_xbar_ARVALID;
  wire [63:0]s01_couplers_to_xbar_AWADDR;
  wire [1:0]s01_couplers_to_xbar_AWBURST;
  wire [3:0]s01_couplers_to_xbar_AWCACHE;
  wire [7:0]s01_couplers_to_xbar_AWLEN;
  wire [0:0]s01_couplers_to_xbar_AWLOCK;
  wire [2:0]s01_couplers_to_xbar_AWPROT;
  wire [3:0]s01_couplers_to_xbar_AWQOS;
  wire [1:1]s01_couplers_to_xbar_AWREADY;
  wire [2:0]s01_couplers_to_xbar_AWSIZE;
  wire s01_couplers_to_xbar_AWVALID;
  wire s01_couplers_to_xbar_BREADY;
  wire [3:2]s01_couplers_to_xbar_BRESP;
  wire [1:1]s01_couplers_to_xbar_BVALID;
  wire [1023:512]s01_couplers_to_xbar_RDATA;
  wire [1:1]s01_couplers_to_xbar_RLAST;
  wire s01_couplers_to_xbar_RREADY;
  wire [3:2]s01_couplers_to_xbar_RRESP;
  wire [1:1]s01_couplers_to_xbar_RVALID;
  wire [511:0]s01_couplers_to_xbar_WDATA;
  wire s01_couplers_to_xbar_WLAST;
  wire [1:1]s01_couplers_to_xbar_WREADY;
  wire [63:0]s01_couplers_to_xbar_WSTRB;
  wire s01_couplers_to_xbar_WVALID;
  wire [63:0]s01_mmu_M_AXI_ARADDR;
  wire [1:0]s01_mmu_M_AXI_ARBURST;
  wire [3:0]s01_mmu_M_AXI_ARCACHE;
  wire [7:0]s01_mmu_M_AXI_ARLEN;
  wire [0:0]s01_mmu_M_AXI_ARLOCK;
  wire [2:0]s01_mmu_M_AXI_ARPROT;
  wire [3:0]s01_mmu_M_AXI_ARQOS;
  wire s01_mmu_M_AXI_ARREADY;
  wire [2:0]s01_mmu_M_AXI_ARSIZE;
  wire s01_mmu_M_AXI_ARVALID;
  wire [63:0]s01_mmu_M_AXI_AWADDR;
  wire [1:0]s01_mmu_M_AXI_AWBURST;
  wire [3:0]s01_mmu_M_AXI_AWCACHE;
  wire [7:0]s01_mmu_M_AXI_AWLEN;
  wire [0:0]s01_mmu_M_AXI_AWLOCK;
  wire [2:0]s01_mmu_M_AXI_AWPROT;
  wire [3:0]s01_mmu_M_AXI_AWQOS;
  wire s01_mmu_M_AXI_AWREADY;
  wire [2:0]s01_mmu_M_AXI_AWSIZE;
  wire s01_mmu_M_AXI_AWVALID;
  wire s01_mmu_M_AXI_BREADY;
  wire [1:0]s01_mmu_M_AXI_BRESP;
  wire s01_mmu_M_AXI_BVALID;
  wire [255:0]s01_mmu_M_AXI_RDATA;
  wire s01_mmu_M_AXI_RLAST;
  wire s01_mmu_M_AXI_RREADY;
  wire [1:0]s01_mmu_M_AXI_RRESP;
  wire s01_mmu_M_AXI_RVALID;
  wire [255:0]s01_mmu_M_AXI_WDATA;
  wire s01_mmu_M_AXI_WLAST;
  wire s01_mmu_M_AXI_WREADY;
  wire [31:0]s01_mmu_M_AXI_WSTRB;
  wire s01_mmu_M_AXI_WVALID;
  wire [63:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [0:0]xbar_to_m00_couplers_ARID;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire xbar_to_m00_couplers_ARREADY;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [63:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [0:0]xbar_to_m00_couplers_AWID;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire xbar_to_m00_couplers_AWREADY;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [1:0]xbar_to_m00_couplers_BID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [511:0]xbar_to_m00_couplers_RDATA;
  wire [1:0]xbar_to_m00_couplers_RID;
  wire xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [511:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire xbar_to_m00_couplers_WREADY;
  wire [63:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;

  assign M00_AXI_araddr[63:0] = m00_couplers_to_m_axi_interconnect_M00_AXI_ARADDR;
  assign M00_AXI_arburst[1:0] = m00_couplers_to_m_axi_interconnect_M00_AXI_ARBURST;
  assign M00_AXI_arcache[3:0] = m00_couplers_to_m_axi_interconnect_M00_AXI_ARCACHE;
  assign M00_AXI_arid[0] = m00_couplers_to_m_axi_interconnect_M00_AXI_ARID;
  assign M00_AXI_arlen[7:0] = m00_couplers_to_m_axi_interconnect_M00_AXI_ARLEN;
  assign M00_AXI_arlock[0] = m00_couplers_to_m_axi_interconnect_M00_AXI_ARLOCK;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_m_axi_interconnect_M00_AXI_ARPROT;
  assign M00_AXI_arqos[3:0] = m00_couplers_to_m_axi_interconnect_M00_AXI_ARQOS;
  assign M00_AXI_arsize[2:0] = m00_couplers_to_m_axi_interconnect_M00_AXI_ARSIZE;
  assign M00_AXI_arvalid = m00_couplers_to_m_axi_interconnect_M00_AXI_ARVALID;
  assign M00_AXI_awaddr[63:0] = m00_couplers_to_m_axi_interconnect_M00_AXI_AWADDR;
  assign M00_AXI_awburst[1:0] = m00_couplers_to_m_axi_interconnect_M00_AXI_AWBURST;
  assign M00_AXI_awcache[3:0] = m00_couplers_to_m_axi_interconnect_M00_AXI_AWCACHE;
  assign M00_AXI_awid[0] = m00_couplers_to_m_axi_interconnect_M00_AXI_AWID;
  assign M00_AXI_awlen[7:0] = m00_couplers_to_m_axi_interconnect_M00_AXI_AWLEN;
  assign M00_AXI_awlock[0] = m00_couplers_to_m_axi_interconnect_M00_AXI_AWLOCK;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_m_axi_interconnect_M00_AXI_AWPROT;
  assign M00_AXI_awqos[3:0] = m00_couplers_to_m_axi_interconnect_M00_AXI_AWQOS;
  assign M00_AXI_awsize[2:0] = m00_couplers_to_m_axi_interconnect_M00_AXI_AWSIZE;
  assign M00_AXI_awvalid = m00_couplers_to_m_axi_interconnect_M00_AXI_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_m_axi_interconnect_M00_AXI_BREADY;
  assign M00_AXI_rready = m00_couplers_to_m_axi_interconnect_M00_AXI_RREADY;
  assign M00_AXI_wdata[511:0] = m00_couplers_to_m_axi_interconnect_M00_AXI_WDATA;
  assign M00_AXI_wlast = m00_couplers_to_m_axi_interconnect_M00_AXI_WLAST;
  assign M00_AXI_wstrb[63:0] = m00_couplers_to_m_axi_interconnect_M00_AXI_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_m_axi_interconnect_M00_AXI_WVALID;
  assign S00_AXI_1_ARADDR = S00_AXI_araddr[63:0];
  assign S00_AXI_1_ARBURST = S00_AXI_arburst[1:0];
  assign S00_AXI_1_ARCACHE = S00_AXI_arcache[3:0];
  assign S00_AXI_1_ARLEN = S00_AXI_arlen[7:0];
  assign S00_AXI_1_ARLOCK = S00_AXI_arlock[1:0];
  assign S00_AXI_1_ARPROT = S00_AXI_arprot[2:0];
  assign S00_AXI_1_ARQOS = S00_AXI_arqos[3:0];
  assign S00_AXI_1_ARSIZE = S00_AXI_arsize[2:0];
  assign S00_AXI_1_ARVALID = S00_AXI_arvalid;
  assign S00_AXI_1_AWADDR = S00_AXI_awaddr[63:0];
  assign S00_AXI_1_AWBURST = S00_AXI_awburst[1:0];
  assign S00_AXI_1_AWCACHE = S00_AXI_awcache[3:0];
  assign S00_AXI_1_AWLEN = S00_AXI_awlen[7:0];
  assign S00_AXI_1_AWLOCK = S00_AXI_awlock[1:0];
  assign S00_AXI_1_AWPROT = S00_AXI_awprot[2:0];
  assign S00_AXI_1_AWQOS = S00_AXI_awqos[3:0];
  assign S00_AXI_1_AWSIZE = S00_AXI_awsize[2:0];
  assign S00_AXI_1_AWVALID = S00_AXI_awvalid;
  assign S00_AXI_1_BREADY = S00_AXI_bready;
  assign S00_AXI_1_RREADY = S00_AXI_rready;
  assign S00_AXI_1_WDATA = S00_AXI_wdata[255:0];
  assign S00_AXI_1_WLAST = S00_AXI_wlast;
  assign S00_AXI_1_WSTRB = S00_AXI_wstrb[31:0];
  assign S00_AXI_1_WVALID = S00_AXI_wvalid;
  assign S00_AXI_arready = S00_AXI_1_ARREADY;
  assign S00_AXI_awready = S00_AXI_1_AWREADY;
  assign S00_AXI_bresp[1:0] = S00_AXI_1_BRESP;
  assign S00_AXI_bvalid = S00_AXI_1_BVALID;
  assign S00_AXI_rdata[255:0] = S00_AXI_1_RDATA;
  assign S00_AXI_rlast = S00_AXI_1_RLAST;
  assign S00_AXI_rresp[1:0] = S00_AXI_1_RRESP;
  assign S00_AXI_rvalid = S00_AXI_1_RVALID;
  assign S00_AXI_wready = S00_AXI_1_WREADY;
  assign S01_AXI_1_ARADDR = S01_AXI_araddr[63:0];
  assign S01_AXI_1_ARBURST = S01_AXI_arburst[1:0];
  assign S01_AXI_1_ARCACHE = S01_AXI_arcache[3:0];
  assign S01_AXI_1_ARLEN = S01_AXI_arlen[7:0];
  assign S01_AXI_1_ARLOCK = S01_AXI_arlock[1:0];
  assign S01_AXI_1_ARPROT = S01_AXI_arprot[2:0];
  assign S01_AXI_1_ARQOS = S01_AXI_arqos[3:0];
  assign S01_AXI_1_ARSIZE = S01_AXI_arsize[2:0];
  assign S01_AXI_1_ARVALID = S01_AXI_arvalid;
  assign S01_AXI_1_AWADDR = S01_AXI_awaddr[63:0];
  assign S01_AXI_1_AWBURST = S01_AXI_awburst[1:0];
  assign S01_AXI_1_AWCACHE = S01_AXI_awcache[3:0];
  assign S01_AXI_1_AWLEN = S01_AXI_awlen[7:0];
  assign S01_AXI_1_AWLOCK = S01_AXI_awlock[1:0];
  assign S01_AXI_1_AWPROT = S01_AXI_awprot[2:0];
  assign S01_AXI_1_AWQOS = S01_AXI_awqos[3:0];
  assign S01_AXI_1_AWSIZE = S01_AXI_awsize[2:0];
  assign S01_AXI_1_AWVALID = S01_AXI_awvalid;
  assign S01_AXI_1_BREADY = S01_AXI_bready;
  assign S01_AXI_1_RREADY = S01_AXI_rready;
  assign S01_AXI_1_WDATA = S01_AXI_wdata[255:0];
  assign S01_AXI_1_WLAST = S01_AXI_wlast;
  assign S01_AXI_1_WSTRB = S01_AXI_wstrb[31:0];
  assign S01_AXI_1_WVALID = S01_AXI_wvalid;
  assign S01_AXI_arready = S01_AXI_1_ARREADY;
  assign S01_AXI_awready = S01_AXI_1_AWREADY;
  assign S01_AXI_bresp[1:0] = S01_AXI_1_BRESP;
  assign S01_AXI_bvalid = S01_AXI_1_BVALID;
  assign S01_AXI_rdata[255:0] = S01_AXI_1_RDATA;
  assign S01_AXI_rlast = S01_AXI_1_RLAST;
  assign S01_AXI_rresp[1:0] = S01_AXI_1_RRESP;
  assign S01_AXI_rvalid = S01_AXI_1_RVALID;
  assign S01_AXI_wready = S01_AXI_1_WREADY;
  assign m00_couplers_to_m_axi_interconnect_M00_AXI_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_m_axi_interconnect_M00_AXI_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_m_axi_interconnect_M00_AXI_BID = M00_AXI_bid[1:0];
  assign m00_couplers_to_m_axi_interconnect_M00_AXI_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_m_axi_interconnect_M00_AXI_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_m_axi_interconnect_M00_AXI_RDATA = M00_AXI_rdata[511:0];
  assign m00_couplers_to_m_axi_interconnect_M00_AXI_RID = M00_AXI_rid[1:0];
  assign m00_couplers_to_m_axi_interconnect_M00_AXI_RLAST = M00_AXI_rlast;
  assign m00_couplers_to_m_axi_interconnect_M00_AXI_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_m_axi_interconnect_M00_AXI_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_m_axi_interconnect_M00_AXI_WREADY = M00_AXI_wready;
  assign m_axi_interconnect_M00_AXI_ACLK_net = ACLK;
  assign m_axi_interconnect_M00_AXI_ARESETN_net = ARESETN;
  m00_couplers_imp_MYGOGN m00_couplers
       (.M_ACLK(m_axi_interconnect_M00_AXI_ACLK_net),
        .M_ARESETN(m_axi_interconnect_M00_AXI_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_m_axi_interconnect_M00_AXI_ARADDR),
        .M_AXI_arburst(m00_couplers_to_m_axi_interconnect_M00_AXI_ARBURST),
        .M_AXI_arcache(m00_couplers_to_m_axi_interconnect_M00_AXI_ARCACHE),
        .M_AXI_arid(m00_couplers_to_m_axi_interconnect_M00_AXI_ARID),
        .M_AXI_arlen(m00_couplers_to_m_axi_interconnect_M00_AXI_ARLEN),
        .M_AXI_arlock(m00_couplers_to_m_axi_interconnect_M00_AXI_ARLOCK),
        .M_AXI_arprot(m00_couplers_to_m_axi_interconnect_M00_AXI_ARPROT),
        .M_AXI_arqos(m00_couplers_to_m_axi_interconnect_M00_AXI_ARQOS),
        .M_AXI_arready(m00_couplers_to_m_axi_interconnect_M00_AXI_ARREADY),
        .M_AXI_arsize(m00_couplers_to_m_axi_interconnect_M00_AXI_ARSIZE),
        .M_AXI_arvalid(m00_couplers_to_m_axi_interconnect_M00_AXI_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_m_axi_interconnect_M00_AXI_AWADDR),
        .M_AXI_awburst(m00_couplers_to_m_axi_interconnect_M00_AXI_AWBURST),
        .M_AXI_awcache(m00_couplers_to_m_axi_interconnect_M00_AXI_AWCACHE),
        .M_AXI_awid(m00_couplers_to_m_axi_interconnect_M00_AXI_AWID),
        .M_AXI_awlen(m00_couplers_to_m_axi_interconnect_M00_AXI_AWLEN),
        .M_AXI_awlock(m00_couplers_to_m_axi_interconnect_M00_AXI_AWLOCK),
        .M_AXI_awprot(m00_couplers_to_m_axi_interconnect_M00_AXI_AWPROT),
        .M_AXI_awqos(m00_couplers_to_m_axi_interconnect_M00_AXI_AWQOS),
        .M_AXI_awready(m00_couplers_to_m_axi_interconnect_M00_AXI_AWREADY),
        .M_AXI_awsize(m00_couplers_to_m_axi_interconnect_M00_AXI_AWSIZE),
        .M_AXI_awvalid(m00_couplers_to_m_axi_interconnect_M00_AXI_AWVALID),
        .M_AXI_bid(m00_couplers_to_m_axi_interconnect_M00_AXI_BID),
        .M_AXI_bready(m00_couplers_to_m_axi_interconnect_M00_AXI_BREADY),
        .M_AXI_bresp(m00_couplers_to_m_axi_interconnect_M00_AXI_BRESP),
        .M_AXI_bvalid(m00_couplers_to_m_axi_interconnect_M00_AXI_BVALID),
        .M_AXI_rdata(m00_couplers_to_m_axi_interconnect_M00_AXI_RDATA),
        .M_AXI_rid(m00_couplers_to_m_axi_interconnect_M00_AXI_RID),
        .M_AXI_rlast(m00_couplers_to_m_axi_interconnect_M00_AXI_RLAST),
        .M_AXI_rready(m00_couplers_to_m_axi_interconnect_M00_AXI_RREADY),
        .M_AXI_rresp(m00_couplers_to_m_axi_interconnect_M00_AXI_RRESP),
        .M_AXI_rvalid(m00_couplers_to_m_axi_interconnect_M00_AXI_RVALID),
        .M_AXI_wdata(m00_couplers_to_m_axi_interconnect_M00_AXI_WDATA),
        .M_AXI_wlast(m00_couplers_to_m_axi_interconnect_M00_AXI_WLAST),
        .M_AXI_wready(m00_couplers_to_m_axi_interconnect_M00_AXI_WREADY),
        .M_AXI_wstrb(m00_couplers_to_m_axi_interconnect_M00_AXI_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_m_axi_interconnect_M00_AXI_WVALID),
        .S_ACLK(m_axi_interconnect_M00_AXI_ACLK_net),
        .S_ARESETN(m_axi_interconnect_M00_AXI_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m00_couplers_ARID),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m00_couplers_AWID),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m00_couplers_BID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rid(xbar_to_m00_couplers_RID),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  s00_couplers_imp_1YWWM63 s00_couplers
       (.M_ACLK(m_axi_interconnect_M00_AXI_ACLK_net),
        .M_ARESETN(m_axi_interconnect_M00_AXI_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s00_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s00_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s00_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s00_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s00_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s00_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s00_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s00_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s00_couplers_to_xbar_WLAST),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(m_axi_interconnect_M00_AXI_ACLK_net),
        .S_ARESETN(m_axi_interconnect_M00_AXI_ARESETN_net),
        .S_AXI_araddr(s00_mmu_M_AXI_ARADDR),
        .S_AXI_arburst(s00_mmu_M_AXI_ARBURST),
        .S_AXI_arcache(s00_mmu_M_AXI_ARCACHE),
        .S_AXI_arlen(s00_mmu_M_AXI_ARLEN),
        .S_AXI_arlock(s00_mmu_M_AXI_ARLOCK),
        .S_AXI_arprot(s00_mmu_M_AXI_ARPROT),
        .S_AXI_arqos(s00_mmu_M_AXI_ARQOS),
        .S_AXI_arready(s00_mmu_M_AXI_ARREADY),
        .S_AXI_arsize(s00_mmu_M_AXI_ARSIZE),
        .S_AXI_arvalid(s00_mmu_M_AXI_ARVALID),
        .S_AXI_awaddr(s00_mmu_M_AXI_AWADDR),
        .S_AXI_awburst(s00_mmu_M_AXI_AWBURST),
        .S_AXI_awcache(s00_mmu_M_AXI_AWCACHE),
        .S_AXI_awlen(s00_mmu_M_AXI_AWLEN),
        .S_AXI_awlock(s00_mmu_M_AXI_AWLOCK),
        .S_AXI_awprot(s00_mmu_M_AXI_AWPROT),
        .S_AXI_awqos(s00_mmu_M_AXI_AWQOS),
        .S_AXI_awready(s00_mmu_M_AXI_AWREADY),
        .S_AXI_awsize(s00_mmu_M_AXI_AWSIZE),
        .S_AXI_awvalid(s00_mmu_M_AXI_AWVALID),
        .S_AXI_bready(s00_mmu_M_AXI_BREADY),
        .S_AXI_bresp(s00_mmu_M_AXI_BRESP),
        .S_AXI_bvalid(s00_mmu_M_AXI_BVALID),
        .S_AXI_rdata(s00_mmu_M_AXI_RDATA),
        .S_AXI_rlast(s00_mmu_M_AXI_RLAST),
        .S_AXI_rready(s00_mmu_M_AXI_RREADY),
        .S_AXI_rresp(s00_mmu_M_AXI_RRESP),
        .S_AXI_rvalid(s00_mmu_M_AXI_RVALID),
        .S_AXI_wdata(s00_mmu_M_AXI_WDATA),
        .S_AXI_wlast(s00_mmu_M_AXI_WLAST),
        .S_AXI_wready(s00_mmu_M_AXI_WREADY),
        .S_AXI_wstrb(s00_mmu_M_AXI_WSTRB),
        .S_AXI_wvalid(s00_mmu_M_AXI_WVALID));
  dr_s00_mmu_0 s00_mmu
       (.aclk(m_axi_interconnect_M00_AXI_ACLK_net),
        .aresetn(m_axi_interconnect_M00_AXI_ARESETN_net),
        .m_axi_araddr(s00_mmu_M_AXI_ARADDR),
        .m_axi_arburst(s00_mmu_M_AXI_ARBURST),
        .m_axi_arcache(s00_mmu_M_AXI_ARCACHE),
        .m_axi_arlen(s00_mmu_M_AXI_ARLEN),
        .m_axi_arlock(s00_mmu_M_AXI_ARLOCK),
        .m_axi_arprot(s00_mmu_M_AXI_ARPROT),
        .m_axi_arqos(s00_mmu_M_AXI_ARQOS),
        .m_axi_arready(s00_mmu_M_AXI_ARREADY),
        .m_axi_arsize(s00_mmu_M_AXI_ARSIZE),
        .m_axi_arvalid(s00_mmu_M_AXI_ARVALID),
        .m_axi_awaddr(s00_mmu_M_AXI_AWADDR),
        .m_axi_awburst(s00_mmu_M_AXI_AWBURST),
        .m_axi_awcache(s00_mmu_M_AXI_AWCACHE),
        .m_axi_awlen(s00_mmu_M_AXI_AWLEN),
        .m_axi_awlock(s00_mmu_M_AXI_AWLOCK),
        .m_axi_awprot(s00_mmu_M_AXI_AWPROT),
        .m_axi_awqos(s00_mmu_M_AXI_AWQOS),
        .m_axi_awready(s00_mmu_M_AXI_AWREADY),
        .m_axi_awsize(s00_mmu_M_AXI_AWSIZE),
        .m_axi_awvalid(s00_mmu_M_AXI_AWVALID),
        .m_axi_bready(s00_mmu_M_AXI_BREADY),
        .m_axi_bresp(s00_mmu_M_AXI_BRESP),
        .m_axi_bvalid(s00_mmu_M_AXI_BVALID),
        .m_axi_rdata(s00_mmu_M_AXI_RDATA),
        .m_axi_rlast(s00_mmu_M_AXI_RLAST),
        .m_axi_rready(s00_mmu_M_AXI_RREADY),
        .m_axi_rresp(s00_mmu_M_AXI_RRESP),
        .m_axi_rvalid(s00_mmu_M_AXI_RVALID),
        .m_axi_wdata(s00_mmu_M_AXI_WDATA),
        .m_axi_wlast(s00_mmu_M_AXI_WLAST),
        .m_axi_wready(s00_mmu_M_AXI_WREADY),
        .m_axi_wstrb(s00_mmu_M_AXI_WSTRB),
        .m_axi_wvalid(s00_mmu_M_AXI_WVALID),
        .s_axi_araddr(S00_AXI_1_ARADDR),
        .s_axi_arburst(S00_AXI_1_ARBURST),
        .s_axi_arcache(S00_AXI_1_ARCACHE),
        .s_axi_arlen(S00_AXI_1_ARLEN),
        .s_axi_arlock(S00_AXI_1_ARLOCK[0]),
        .s_axi_arprot(S00_AXI_1_ARPROT),
        .s_axi_arqos(S00_AXI_1_ARQOS),
        .s_axi_arready(S00_AXI_1_ARREADY),
        .s_axi_arsize(S00_AXI_1_ARSIZE),
        .s_axi_arvalid(S00_AXI_1_ARVALID),
        .s_axi_awaddr(S00_AXI_1_AWADDR),
        .s_axi_awburst(S00_AXI_1_AWBURST),
        .s_axi_awcache(S00_AXI_1_AWCACHE),
        .s_axi_awlen(S00_AXI_1_AWLEN),
        .s_axi_awlock(S00_AXI_1_AWLOCK[0]),
        .s_axi_awprot(S00_AXI_1_AWPROT),
        .s_axi_awqos(S00_AXI_1_AWQOS),
        .s_axi_awready(S00_AXI_1_AWREADY),
        .s_axi_awsize(S00_AXI_1_AWSIZE),
        .s_axi_awvalid(S00_AXI_1_AWVALID),
        .s_axi_bready(S00_AXI_1_BREADY),
        .s_axi_bresp(S00_AXI_1_BRESP),
        .s_axi_bvalid(S00_AXI_1_BVALID),
        .s_axi_rdata(S00_AXI_1_RDATA),
        .s_axi_rlast(S00_AXI_1_RLAST),
        .s_axi_rready(S00_AXI_1_RREADY),
        .s_axi_rresp(S00_AXI_1_RRESP),
        .s_axi_rvalid(S00_AXI_1_RVALID),
        .s_axi_wdata(S00_AXI_1_WDATA),
        .s_axi_wlast(S00_AXI_1_WLAST),
        .s_axi_wready(S00_AXI_1_WREADY),
        .s_axi_wstrb(S00_AXI_1_WSTRB),
        .s_axi_wvalid(S00_AXI_1_WVALID));
  s01_couplers_imp_RSSWNO s01_couplers
       (.M_ACLK(m_axi_interconnect_M00_AXI_ACLK_net),
        .M_ARESETN(m_axi_interconnect_M00_AXI_ARESETN_net),
        .M_AXI_araddr(s01_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s01_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s01_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s01_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s01_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s01_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s01_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s01_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s01_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s01_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s01_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s01_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s01_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s01_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s01_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s01_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s01_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s01_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s01_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s01_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s01_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s01_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s01_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s01_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s01_couplers_to_xbar_RLAST),
        .M_AXI_rready(s01_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s01_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s01_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s01_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s01_couplers_to_xbar_WLAST),
        .M_AXI_wready(s01_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s01_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s01_couplers_to_xbar_WVALID),
        .S_ACLK(m_axi_interconnect_M00_AXI_ACLK_net),
        .S_ARESETN(m_axi_interconnect_M00_AXI_ARESETN_net),
        .S_AXI_araddr(s01_mmu_M_AXI_ARADDR),
        .S_AXI_arburst(s01_mmu_M_AXI_ARBURST),
        .S_AXI_arcache(s01_mmu_M_AXI_ARCACHE),
        .S_AXI_arlen(s01_mmu_M_AXI_ARLEN),
        .S_AXI_arlock(s01_mmu_M_AXI_ARLOCK),
        .S_AXI_arprot(s01_mmu_M_AXI_ARPROT),
        .S_AXI_arqos(s01_mmu_M_AXI_ARQOS),
        .S_AXI_arready(s01_mmu_M_AXI_ARREADY),
        .S_AXI_arsize(s01_mmu_M_AXI_ARSIZE),
        .S_AXI_arvalid(s01_mmu_M_AXI_ARVALID),
        .S_AXI_awaddr(s01_mmu_M_AXI_AWADDR),
        .S_AXI_awburst(s01_mmu_M_AXI_AWBURST),
        .S_AXI_awcache(s01_mmu_M_AXI_AWCACHE),
        .S_AXI_awlen(s01_mmu_M_AXI_AWLEN),
        .S_AXI_awlock(s01_mmu_M_AXI_AWLOCK),
        .S_AXI_awprot(s01_mmu_M_AXI_AWPROT),
        .S_AXI_awqos(s01_mmu_M_AXI_AWQOS),
        .S_AXI_awready(s01_mmu_M_AXI_AWREADY),
        .S_AXI_awsize(s01_mmu_M_AXI_AWSIZE),
        .S_AXI_awvalid(s01_mmu_M_AXI_AWVALID),
        .S_AXI_bready(s01_mmu_M_AXI_BREADY),
        .S_AXI_bresp(s01_mmu_M_AXI_BRESP),
        .S_AXI_bvalid(s01_mmu_M_AXI_BVALID),
        .S_AXI_rdata(s01_mmu_M_AXI_RDATA),
        .S_AXI_rlast(s01_mmu_M_AXI_RLAST),
        .S_AXI_rready(s01_mmu_M_AXI_RREADY),
        .S_AXI_rresp(s01_mmu_M_AXI_RRESP),
        .S_AXI_rvalid(s01_mmu_M_AXI_RVALID),
        .S_AXI_wdata(s01_mmu_M_AXI_WDATA),
        .S_AXI_wlast(s01_mmu_M_AXI_WLAST),
        .S_AXI_wready(s01_mmu_M_AXI_WREADY),
        .S_AXI_wstrb(s01_mmu_M_AXI_WSTRB),
        .S_AXI_wvalid(s01_mmu_M_AXI_WVALID));
  dr_s01_mmu_0 s01_mmu
       (.aclk(m_axi_interconnect_M00_AXI_ACLK_net),
        .aresetn(m_axi_interconnect_M00_AXI_ARESETN_net),
        .m_axi_araddr(s01_mmu_M_AXI_ARADDR),
        .m_axi_arburst(s01_mmu_M_AXI_ARBURST),
        .m_axi_arcache(s01_mmu_M_AXI_ARCACHE),
        .m_axi_arlen(s01_mmu_M_AXI_ARLEN),
        .m_axi_arlock(s01_mmu_M_AXI_ARLOCK),
        .m_axi_arprot(s01_mmu_M_AXI_ARPROT),
        .m_axi_arqos(s01_mmu_M_AXI_ARQOS),
        .m_axi_arready(s01_mmu_M_AXI_ARREADY),
        .m_axi_arsize(s01_mmu_M_AXI_ARSIZE),
        .m_axi_arvalid(s01_mmu_M_AXI_ARVALID),
        .m_axi_awaddr(s01_mmu_M_AXI_AWADDR),
        .m_axi_awburst(s01_mmu_M_AXI_AWBURST),
        .m_axi_awcache(s01_mmu_M_AXI_AWCACHE),
        .m_axi_awlen(s01_mmu_M_AXI_AWLEN),
        .m_axi_awlock(s01_mmu_M_AXI_AWLOCK),
        .m_axi_awprot(s01_mmu_M_AXI_AWPROT),
        .m_axi_awqos(s01_mmu_M_AXI_AWQOS),
        .m_axi_awready(s01_mmu_M_AXI_AWREADY),
        .m_axi_awsize(s01_mmu_M_AXI_AWSIZE),
        .m_axi_awvalid(s01_mmu_M_AXI_AWVALID),
        .m_axi_bready(s01_mmu_M_AXI_BREADY),
        .m_axi_bresp(s01_mmu_M_AXI_BRESP),
        .m_axi_bvalid(s01_mmu_M_AXI_BVALID),
        .m_axi_rdata(s01_mmu_M_AXI_RDATA),
        .m_axi_rlast(s01_mmu_M_AXI_RLAST),
        .m_axi_rready(s01_mmu_M_AXI_RREADY),
        .m_axi_rresp(s01_mmu_M_AXI_RRESP),
        .m_axi_rvalid(s01_mmu_M_AXI_RVALID),
        .m_axi_wdata(s01_mmu_M_AXI_WDATA),
        .m_axi_wlast(s01_mmu_M_AXI_WLAST),
        .m_axi_wready(s01_mmu_M_AXI_WREADY),
        .m_axi_wstrb(s01_mmu_M_AXI_WSTRB),
        .m_axi_wvalid(s01_mmu_M_AXI_WVALID),
        .s_axi_araddr(S01_AXI_1_ARADDR),
        .s_axi_arburst(S01_AXI_1_ARBURST),
        .s_axi_arcache(S01_AXI_1_ARCACHE),
        .s_axi_arlen(S01_AXI_1_ARLEN),
        .s_axi_arlock(S01_AXI_1_ARLOCK[0]),
        .s_axi_arprot(S01_AXI_1_ARPROT),
        .s_axi_arqos(S01_AXI_1_ARQOS),
        .s_axi_arready(S01_AXI_1_ARREADY),
        .s_axi_arsize(S01_AXI_1_ARSIZE),
        .s_axi_arvalid(S01_AXI_1_ARVALID),
        .s_axi_awaddr(S01_AXI_1_AWADDR),
        .s_axi_awburst(S01_AXI_1_AWBURST),
        .s_axi_awcache(S01_AXI_1_AWCACHE),
        .s_axi_awlen(S01_AXI_1_AWLEN),
        .s_axi_awlock(S01_AXI_1_AWLOCK[0]),
        .s_axi_awprot(S01_AXI_1_AWPROT),
        .s_axi_awqos(S01_AXI_1_AWQOS),
        .s_axi_awready(S01_AXI_1_AWREADY),
        .s_axi_awsize(S01_AXI_1_AWSIZE),
        .s_axi_awvalid(S01_AXI_1_AWVALID),
        .s_axi_bready(S01_AXI_1_BREADY),
        .s_axi_bresp(S01_AXI_1_BRESP),
        .s_axi_bvalid(S01_AXI_1_BVALID),
        .s_axi_rdata(S01_AXI_1_RDATA),
        .s_axi_rlast(S01_AXI_1_RLAST),
        .s_axi_rready(S01_AXI_1_RREADY),
        .s_axi_rresp(S01_AXI_1_RRESP),
        .s_axi_rvalid(S01_AXI_1_RVALID),
        .s_axi_wdata(S01_AXI_1_WDATA),
        .s_axi_wlast(S01_AXI_1_WLAST),
        .s_axi_wready(S01_AXI_1_WREADY),
        .s_axi_wstrb(S01_AXI_1_WSTRB),
        .s_axi_wvalid(S01_AXI_1_WVALID));
  dr_xbar_0 xbar
       (.aclk(m_axi_interconnect_M00_AXI_ACLK_net),
        .aresetn(m_axi_interconnect_M00_AXI_ARESETN_net),
        .m_axi_araddr(xbar_to_m00_couplers_ARADDR),
        .m_axi_arburst(xbar_to_m00_couplers_ARBURST),
        .m_axi_arcache(xbar_to_m00_couplers_ARCACHE),
        .m_axi_arid(xbar_to_m00_couplers_ARID),
        .m_axi_arlen(xbar_to_m00_couplers_ARLEN),
        .m_axi_arlock(xbar_to_m00_couplers_ARLOCK),
        .m_axi_arprot(xbar_to_m00_couplers_ARPROT),
        .m_axi_arqos(xbar_to_m00_couplers_ARQOS),
        .m_axi_arready(xbar_to_m00_couplers_ARREADY),
        .m_axi_arsize(xbar_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(xbar_to_m00_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m00_couplers_AWADDR),
        .m_axi_awburst(xbar_to_m00_couplers_AWBURST),
        .m_axi_awcache(xbar_to_m00_couplers_AWCACHE),
        .m_axi_awid(xbar_to_m00_couplers_AWID),
        .m_axi_awlen(xbar_to_m00_couplers_AWLEN),
        .m_axi_awlock(xbar_to_m00_couplers_AWLOCK),
        .m_axi_awprot(xbar_to_m00_couplers_AWPROT),
        .m_axi_awqos(xbar_to_m00_couplers_AWQOS),
        .m_axi_awready(xbar_to_m00_couplers_AWREADY),
        .m_axi_awsize(xbar_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(xbar_to_m00_couplers_AWVALID),
        .m_axi_bid(xbar_to_m00_couplers_BID[0]),
        .m_axi_bready(xbar_to_m00_couplers_BREADY),
        .m_axi_bresp(xbar_to_m00_couplers_BRESP),
        .m_axi_bvalid(xbar_to_m00_couplers_BVALID),
        .m_axi_rdata(xbar_to_m00_couplers_RDATA),
        .m_axi_rid(xbar_to_m00_couplers_RID[0]),
        .m_axi_rlast(xbar_to_m00_couplers_RLAST),
        .m_axi_rready(xbar_to_m00_couplers_RREADY),
        .m_axi_rresp(xbar_to_m00_couplers_RRESP),
        .m_axi_rvalid(xbar_to_m00_couplers_RVALID),
        .m_axi_wdata(xbar_to_m00_couplers_WDATA),
        .m_axi_wlast(xbar_to_m00_couplers_WLAST),
        .m_axi_wready(xbar_to_m00_couplers_WREADY),
        .m_axi_wstrb(xbar_to_m00_couplers_WSTRB),
        .m_axi_wvalid(xbar_to_m00_couplers_WVALID),
        .s_axi_araddr({s01_couplers_to_xbar_ARADDR,s00_couplers_to_xbar_ARADDR}),
        .s_axi_arburst({s01_couplers_to_xbar_ARBURST,s00_couplers_to_xbar_ARBURST}),
        .s_axi_arcache({s01_couplers_to_xbar_ARCACHE,s00_couplers_to_xbar_ARCACHE}),
        .s_axi_arid({1'b0,1'b0}),
        .s_axi_arlen({s01_couplers_to_xbar_ARLEN,s00_couplers_to_xbar_ARLEN}),
        .s_axi_arlock({s01_couplers_to_xbar_ARLOCK,s00_couplers_to_xbar_ARLOCK}),
        .s_axi_arprot({s01_couplers_to_xbar_ARPROT,s00_couplers_to_xbar_ARPROT}),
        .s_axi_arqos({s01_couplers_to_xbar_ARQOS,s00_couplers_to_xbar_ARQOS}),
        .s_axi_arready({s01_couplers_to_xbar_ARREADY,s00_couplers_to_xbar_ARREADY}),
        .s_axi_arsize({s01_couplers_to_xbar_ARSIZE,s00_couplers_to_xbar_ARSIZE}),
        .s_axi_arvalid({s01_couplers_to_xbar_ARVALID,s00_couplers_to_xbar_ARVALID}),
        .s_axi_awaddr({s01_couplers_to_xbar_AWADDR,s00_couplers_to_xbar_AWADDR}),
        .s_axi_awburst({s01_couplers_to_xbar_AWBURST,s00_couplers_to_xbar_AWBURST}),
        .s_axi_awcache({s01_couplers_to_xbar_AWCACHE,s00_couplers_to_xbar_AWCACHE}),
        .s_axi_awid({1'b0,1'b0}),
        .s_axi_awlen({s01_couplers_to_xbar_AWLEN,s00_couplers_to_xbar_AWLEN}),
        .s_axi_awlock({s01_couplers_to_xbar_AWLOCK,s00_couplers_to_xbar_AWLOCK}),
        .s_axi_awprot({s01_couplers_to_xbar_AWPROT,s00_couplers_to_xbar_AWPROT}),
        .s_axi_awqos({s01_couplers_to_xbar_AWQOS,s00_couplers_to_xbar_AWQOS}),
        .s_axi_awready({s01_couplers_to_xbar_AWREADY,s00_couplers_to_xbar_AWREADY}),
        .s_axi_awsize({s01_couplers_to_xbar_AWSIZE,s00_couplers_to_xbar_AWSIZE}),
        .s_axi_awvalid({s01_couplers_to_xbar_AWVALID,s00_couplers_to_xbar_AWVALID}),
        .s_axi_bready({s01_couplers_to_xbar_BREADY,s00_couplers_to_xbar_BREADY}),
        .s_axi_bresp({s01_couplers_to_xbar_BRESP,s00_couplers_to_xbar_BRESP}),
        .s_axi_bvalid({s01_couplers_to_xbar_BVALID,s00_couplers_to_xbar_BVALID}),
        .s_axi_rdata({s01_couplers_to_xbar_RDATA,s00_couplers_to_xbar_RDATA}),
        .s_axi_rlast({s01_couplers_to_xbar_RLAST,s00_couplers_to_xbar_RLAST}),
        .s_axi_rready({s01_couplers_to_xbar_RREADY,s00_couplers_to_xbar_RREADY}),
        .s_axi_rresp({s01_couplers_to_xbar_RRESP,s00_couplers_to_xbar_RRESP}),
        .s_axi_rvalid({s01_couplers_to_xbar_RVALID,s00_couplers_to_xbar_RVALID}),
        .s_axi_wdata({s01_couplers_to_xbar_WDATA,s00_couplers_to_xbar_WDATA}),
        .s_axi_wlast({s01_couplers_to_xbar_WLAST,s00_couplers_to_xbar_WLAST}),
        .s_axi_wready({s01_couplers_to_xbar_WREADY,s00_couplers_to_xbar_WREADY}),
        .s_axi_wstrb({s01_couplers_to_xbar_WSTRB,s00_couplers_to_xbar_WSTRB}),
        .s_axi_wvalid({s01_couplers_to_xbar_WVALID,s00_couplers_to_xbar_WVALID}));
endmodule

module dr_s_axi_interconnect_0_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [16:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [16:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [16:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input S00_AXI_arvalid;
  input [16:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire [16:0]s00_couplers_to_s_axi_interconnect_0_ARADDR;
  wire s00_couplers_to_s_axi_interconnect_0_ARREADY;
  wire s00_couplers_to_s_axi_interconnect_0_ARVALID;
  wire [16:0]s00_couplers_to_s_axi_interconnect_0_AWADDR;
  wire s00_couplers_to_s_axi_interconnect_0_AWREADY;
  wire s00_couplers_to_s_axi_interconnect_0_AWVALID;
  wire s00_couplers_to_s_axi_interconnect_0_BREADY;
  wire [1:0]s00_couplers_to_s_axi_interconnect_0_BRESP;
  wire s00_couplers_to_s_axi_interconnect_0_BVALID;
  wire [31:0]s00_couplers_to_s_axi_interconnect_0_RDATA;
  wire s00_couplers_to_s_axi_interconnect_0_RREADY;
  wire [1:0]s00_couplers_to_s_axi_interconnect_0_RRESP;
  wire s00_couplers_to_s_axi_interconnect_0_RVALID;
  wire [31:0]s00_couplers_to_s_axi_interconnect_0_WDATA;
  wire s00_couplers_to_s_axi_interconnect_0_WREADY;
  wire [3:0]s00_couplers_to_s_axi_interconnect_0_WSTRB;
  wire s00_couplers_to_s_axi_interconnect_0_WVALID;
  wire s_axi_interconnect_0_ACLK_net;
  wire s_axi_interconnect_0_ARESETN_net;
  wire [16:0]s_axi_interconnect_0_to_s00_couplers_ARADDR;
  wire [2:0]s_axi_interconnect_0_to_s00_couplers_ARPROT;
  wire s_axi_interconnect_0_to_s00_couplers_ARREADY;
  wire s_axi_interconnect_0_to_s00_couplers_ARVALID;
  wire [16:0]s_axi_interconnect_0_to_s00_couplers_AWADDR;
  wire [2:0]s_axi_interconnect_0_to_s00_couplers_AWPROT;
  wire s_axi_interconnect_0_to_s00_couplers_AWREADY;
  wire s_axi_interconnect_0_to_s00_couplers_AWVALID;
  wire s_axi_interconnect_0_to_s00_couplers_BREADY;
  wire [1:0]s_axi_interconnect_0_to_s00_couplers_BRESP;
  wire s_axi_interconnect_0_to_s00_couplers_BVALID;
  wire [31:0]s_axi_interconnect_0_to_s00_couplers_RDATA;
  wire s_axi_interconnect_0_to_s00_couplers_RREADY;
  wire [1:0]s_axi_interconnect_0_to_s00_couplers_RRESP;
  wire s_axi_interconnect_0_to_s00_couplers_RVALID;
  wire [31:0]s_axi_interconnect_0_to_s00_couplers_WDATA;
  wire s_axi_interconnect_0_to_s00_couplers_WREADY;
  wire [3:0]s_axi_interconnect_0_to_s00_couplers_WSTRB;
  wire s_axi_interconnect_0_to_s00_couplers_WVALID;

  assign M00_AXI_araddr[16:0] = s00_couplers_to_s_axi_interconnect_0_ARADDR;
  assign M00_AXI_arvalid = s00_couplers_to_s_axi_interconnect_0_ARVALID;
  assign M00_AXI_awaddr[16:0] = s00_couplers_to_s_axi_interconnect_0_AWADDR;
  assign M00_AXI_awvalid = s00_couplers_to_s_axi_interconnect_0_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_s_axi_interconnect_0_BREADY;
  assign M00_AXI_rready = s00_couplers_to_s_axi_interconnect_0_RREADY;
  assign M00_AXI_wdata[31:0] = s00_couplers_to_s_axi_interconnect_0_WDATA;
  assign M00_AXI_wstrb[3:0] = s00_couplers_to_s_axi_interconnect_0_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_s_axi_interconnect_0_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = s_axi_interconnect_0_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = s_axi_interconnect_0_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = s_axi_interconnect_0_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = s_axi_interconnect_0_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = s_axi_interconnect_0_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = s_axi_interconnect_0_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = s_axi_interconnect_0_to_s00_couplers_RVALID;
  assign S00_AXI_wready = s_axi_interconnect_0_to_s00_couplers_WREADY;
  assign s00_couplers_to_s_axi_interconnect_0_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_s_axi_interconnect_0_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_s_axi_interconnect_0_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_s_axi_interconnect_0_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_s_axi_interconnect_0_RDATA = M00_AXI_rdata[31:0];
  assign s00_couplers_to_s_axi_interconnect_0_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_s_axi_interconnect_0_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_s_axi_interconnect_0_WREADY = M00_AXI_wready;
  assign s_axi_interconnect_0_ACLK_net = M00_ACLK;
  assign s_axi_interconnect_0_ARESETN_net = M00_ARESETN;
  assign s_axi_interconnect_0_to_s00_couplers_ARADDR = S00_AXI_araddr[16:0];
  assign s_axi_interconnect_0_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign s_axi_interconnect_0_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign s_axi_interconnect_0_to_s00_couplers_AWADDR = S00_AXI_awaddr[16:0];
  assign s_axi_interconnect_0_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign s_axi_interconnect_0_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign s_axi_interconnect_0_to_s00_couplers_BREADY = S00_AXI_bready;
  assign s_axi_interconnect_0_to_s00_couplers_RREADY = S00_AXI_rready;
  assign s_axi_interconnect_0_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign s_axi_interconnect_0_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign s_axi_interconnect_0_to_s00_couplers_WVALID = S00_AXI_wvalid;
  s00_couplers_imp_KG6WOC s00_couplers
       (.M_ACLK(s_axi_interconnect_0_ACLK_net),
        .M_ARESETN(s_axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_s_axi_interconnect_0_ARADDR),
        .M_AXI_arready(s00_couplers_to_s_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_s_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_s_axi_interconnect_0_AWADDR),
        .M_AXI_awready(s00_couplers_to_s_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_s_axi_interconnect_0_AWVALID),
        .M_AXI_bready(s00_couplers_to_s_axi_interconnect_0_BREADY),
        .M_AXI_bresp(s00_couplers_to_s_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(s00_couplers_to_s_axi_interconnect_0_BVALID),
        .M_AXI_rdata(s00_couplers_to_s_axi_interconnect_0_RDATA),
        .M_AXI_rready(s00_couplers_to_s_axi_interconnect_0_RREADY),
        .M_AXI_rresp(s00_couplers_to_s_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(s00_couplers_to_s_axi_interconnect_0_RVALID),
        .M_AXI_wdata(s00_couplers_to_s_axi_interconnect_0_WDATA),
        .M_AXI_wready(s00_couplers_to_s_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(s00_couplers_to_s_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_s_axi_interconnect_0_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(s_axi_interconnect_0_to_s00_couplers_ARADDR),
        .S_AXI_arprot(s_axi_interconnect_0_to_s00_couplers_ARPROT),
        .S_AXI_arready(s_axi_interconnect_0_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(s_axi_interconnect_0_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(s_axi_interconnect_0_to_s00_couplers_AWADDR),
        .S_AXI_awprot(s_axi_interconnect_0_to_s00_couplers_AWPROT),
        .S_AXI_awready(s_axi_interconnect_0_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(s_axi_interconnect_0_to_s00_couplers_AWVALID),
        .S_AXI_bready(s_axi_interconnect_0_to_s00_couplers_BREADY),
        .S_AXI_bresp(s_axi_interconnect_0_to_s00_couplers_BRESP),
        .S_AXI_bvalid(s_axi_interconnect_0_to_s00_couplers_BVALID),
        .S_AXI_rdata(s_axi_interconnect_0_to_s00_couplers_RDATA),
        .S_AXI_rready(s_axi_interconnect_0_to_s00_couplers_RREADY),
        .S_AXI_rresp(s_axi_interconnect_0_to_s00_couplers_RRESP),
        .S_AXI_rvalid(s_axi_interconnect_0_to_s00_couplers_RVALID),
        .S_AXI_wdata(s_axi_interconnect_0_to_s00_couplers_WDATA),
        .S_AXI_wready(s_axi_interconnect_0_to_s00_couplers_WREADY),
        .S_AXI_wstrb(s_axi_interconnect_0_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(s_axi_interconnect_0_to_s00_couplers_WVALID));
endmodule

module m00_couplers_imp_MYGOGN
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [0:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [0:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [1:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input [1:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [0:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [0:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [1:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [511:0]S_AXI_rdata;
  output [1:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [511:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [63:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [63:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [1:0]m00_couplers_to_m00_couplers_ARBURST;
  wire [3:0]m00_couplers_to_m00_couplers_ARCACHE;
  wire [0:0]m00_couplers_to_m00_couplers_ARID;
  wire [7:0]m00_couplers_to_m00_couplers_ARLEN;
  wire [0:0]m00_couplers_to_m00_couplers_ARLOCK;
  wire [2:0]m00_couplers_to_m00_couplers_ARPROT;
  wire [3:0]m00_couplers_to_m00_couplers_ARQOS;
  wire m00_couplers_to_m00_couplers_ARREADY;
  wire [2:0]m00_couplers_to_m00_couplers_ARSIZE;
  wire m00_couplers_to_m00_couplers_ARVALID;
  wire [63:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [1:0]m00_couplers_to_m00_couplers_AWBURST;
  wire [3:0]m00_couplers_to_m00_couplers_AWCACHE;
  wire [0:0]m00_couplers_to_m00_couplers_AWID;
  wire [7:0]m00_couplers_to_m00_couplers_AWLEN;
  wire [0:0]m00_couplers_to_m00_couplers_AWLOCK;
  wire [2:0]m00_couplers_to_m00_couplers_AWPROT;
  wire [3:0]m00_couplers_to_m00_couplers_AWQOS;
  wire m00_couplers_to_m00_couplers_AWREADY;
  wire [2:0]m00_couplers_to_m00_couplers_AWSIZE;
  wire m00_couplers_to_m00_couplers_AWVALID;
  wire [1:0]m00_couplers_to_m00_couplers_BID;
  wire m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire m00_couplers_to_m00_couplers_BVALID;
  wire [511:0]m00_couplers_to_m00_couplers_RDATA;
  wire [1:0]m00_couplers_to_m00_couplers_RID;
  wire m00_couplers_to_m00_couplers_RLAST;
  wire m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire m00_couplers_to_m00_couplers_RVALID;
  wire [511:0]m00_couplers_to_m00_couplers_WDATA;
  wire m00_couplers_to_m00_couplers_WLAST;
  wire m00_couplers_to_m00_couplers_WREADY;
  wire [63:0]m00_couplers_to_m00_couplers_WSTRB;
  wire m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[63:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m00_couplers_to_m00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m00_couplers_to_m00_couplers_ARCACHE;
  assign M_AXI_arid[0] = m00_couplers_to_m00_couplers_ARID;
  assign M_AXI_arlen[7:0] = m00_couplers_to_m00_couplers_ARLEN;
  assign M_AXI_arlock[0] = m00_couplers_to_m00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m00_couplers_to_m00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = m00_couplers_to_m00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = m00_couplers_to_m00_couplers_ARSIZE;
  assign M_AXI_arvalid = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m00_couplers_to_m00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m00_couplers_to_m00_couplers_AWCACHE;
  assign M_AXI_awid[0] = m00_couplers_to_m00_couplers_AWID;
  assign M_AXI_awlen[7:0] = m00_couplers_to_m00_couplers_AWLEN;
  assign M_AXI_awlock[0] = m00_couplers_to_m00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m00_couplers_to_m00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = m00_couplers_to_m00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = m00_couplers_to_m00_couplers_AWSIZE;
  assign M_AXI_awvalid = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[511:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wlast = m00_couplers_to_m00_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bid[1:0] = m00_couplers_to_m00_couplers_BID;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[511:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rid[1:0] = m00_couplers_to_m00_couplers_RID;
  assign S_AXI_rlast = m00_couplers_to_m00_couplers_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[63:0];
  assign m00_couplers_to_m00_couplers_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_m00_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_m00_couplers_ARID = S_AXI_arid[0];
  assign m00_couplers_to_m00_couplers_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_m00_couplers_ARLOCK = S_AXI_arlock[0];
  assign m00_couplers_to_m00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_m00_couplers_ARQOS = S_AXI_arqos[3:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_couplers_to_m00_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[63:0];
  assign m00_couplers_to_m00_couplers_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_m00_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_m00_couplers_AWID = S_AXI_awid[0];
  assign m00_couplers_to_m00_couplers_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_m00_couplers_AWLOCK = S_AXI_awlock[0];
  assign m00_couplers_to_m00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_m00_couplers_AWQOS = S_AXI_awqos[3:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_couplers_to_m00_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_couplers_BID = M_AXI_bid[1:0];
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[511:0];
  assign m00_couplers_to_m00_couplers_RID = M_AXI_rid[1:0];
  assign m00_couplers_to_m00_couplers_RLAST = M_AXI_rlast;
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[511:0];
  assign m00_couplers_to_m00_couplers_WLAST = S_AXI_wlast;
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[63:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid;
endmodule

module s00_couplers_imp_1YWWM63
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [255:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [255:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [31:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [63:0]auto_rs_w_to_s00_couplers_ARADDR;
  wire [1:0]auto_rs_w_to_s00_couplers_ARBURST;
  wire [3:0]auto_rs_w_to_s00_couplers_ARCACHE;
  wire [7:0]auto_rs_w_to_s00_couplers_ARLEN;
  wire [0:0]auto_rs_w_to_s00_couplers_ARLOCK;
  wire [2:0]auto_rs_w_to_s00_couplers_ARPROT;
  wire [3:0]auto_rs_w_to_s00_couplers_ARQOS;
  wire auto_rs_w_to_s00_couplers_ARREADY;
  wire [2:0]auto_rs_w_to_s00_couplers_ARSIZE;
  wire auto_rs_w_to_s00_couplers_ARVALID;
  wire [63:0]auto_rs_w_to_s00_couplers_AWADDR;
  wire [1:0]auto_rs_w_to_s00_couplers_AWBURST;
  wire [3:0]auto_rs_w_to_s00_couplers_AWCACHE;
  wire [7:0]auto_rs_w_to_s00_couplers_AWLEN;
  wire [0:0]auto_rs_w_to_s00_couplers_AWLOCK;
  wire [2:0]auto_rs_w_to_s00_couplers_AWPROT;
  wire [3:0]auto_rs_w_to_s00_couplers_AWQOS;
  wire auto_rs_w_to_s00_couplers_AWREADY;
  wire [2:0]auto_rs_w_to_s00_couplers_AWSIZE;
  wire auto_rs_w_to_s00_couplers_AWVALID;
  wire auto_rs_w_to_s00_couplers_BREADY;
  wire [1:0]auto_rs_w_to_s00_couplers_BRESP;
  wire auto_rs_w_to_s00_couplers_BVALID;
  wire [511:0]auto_rs_w_to_s00_couplers_RDATA;
  wire auto_rs_w_to_s00_couplers_RLAST;
  wire auto_rs_w_to_s00_couplers_RREADY;
  wire [1:0]auto_rs_w_to_s00_couplers_RRESP;
  wire auto_rs_w_to_s00_couplers_RVALID;
  wire [511:0]auto_rs_w_to_s00_couplers_WDATA;
  wire auto_rs_w_to_s00_couplers_WLAST;
  wire auto_rs_w_to_s00_couplers_WREADY;
  wire [63:0]auto_rs_w_to_s00_couplers_WSTRB;
  wire auto_rs_w_to_s00_couplers_WVALID;
  wire [63:0]auto_us_to_auto_rs_w_ARADDR;
  wire [1:0]auto_us_to_auto_rs_w_ARBURST;
  wire [3:0]auto_us_to_auto_rs_w_ARCACHE;
  wire [7:0]auto_us_to_auto_rs_w_ARLEN;
  wire [0:0]auto_us_to_auto_rs_w_ARLOCK;
  wire [2:0]auto_us_to_auto_rs_w_ARPROT;
  wire [3:0]auto_us_to_auto_rs_w_ARQOS;
  wire auto_us_to_auto_rs_w_ARREADY;
  wire [3:0]auto_us_to_auto_rs_w_ARREGION;
  wire [2:0]auto_us_to_auto_rs_w_ARSIZE;
  wire auto_us_to_auto_rs_w_ARVALID;
  wire [63:0]auto_us_to_auto_rs_w_AWADDR;
  wire [1:0]auto_us_to_auto_rs_w_AWBURST;
  wire [3:0]auto_us_to_auto_rs_w_AWCACHE;
  wire [7:0]auto_us_to_auto_rs_w_AWLEN;
  wire [0:0]auto_us_to_auto_rs_w_AWLOCK;
  wire [2:0]auto_us_to_auto_rs_w_AWPROT;
  wire [3:0]auto_us_to_auto_rs_w_AWQOS;
  wire auto_us_to_auto_rs_w_AWREADY;
  wire [3:0]auto_us_to_auto_rs_w_AWREGION;
  wire [2:0]auto_us_to_auto_rs_w_AWSIZE;
  wire auto_us_to_auto_rs_w_AWVALID;
  wire auto_us_to_auto_rs_w_BREADY;
  wire [1:0]auto_us_to_auto_rs_w_BRESP;
  wire auto_us_to_auto_rs_w_BVALID;
  wire [511:0]auto_us_to_auto_rs_w_RDATA;
  wire auto_us_to_auto_rs_w_RLAST;
  wire auto_us_to_auto_rs_w_RREADY;
  wire [1:0]auto_us_to_auto_rs_w_RRESP;
  wire auto_us_to_auto_rs_w_RVALID;
  wire [511:0]auto_us_to_auto_rs_w_WDATA;
  wire auto_us_to_auto_rs_w_WLAST;
  wire auto_us_to_auto_rs_w_WREADY;
  wire [63:0]auto_us_to_auto_rs_w_WSTRB;
  wire auto_us_to_auto_rs_w_WVALID;
  wire [63:0]s00_couplers_to_s00_regslice_ARADDR;
  wire [1:0]s00_couplers_to_s00_regslice_ARBURST;
  wire [3:0]s00_couplers_to_s00_regslice_ARCACHE;
  wire [7:0]s00_couplers_to_s00_regslice_ARLEN;
  wire [0:0]s00_couplers_to_s00_regslice_ARLOCK;
  wire [2:0]s00_couplers_to_s00_regslice_ARPROT;
  wire [3:0]s00_couplers_to_s00_regslice_ARQOS;
  wire s00_couplers_to_s00_regslice_ARREADY;
  wire [2:0]s00_couplers_to_s00_regslice_ARSIZE;
  wire s00_couplers_to_s00_regslice_ARVALID;
  wire [63:0]s00_couplers_to_s00_regslice_AWADDR;
  wire [1:0]s00_couplers_to_s00_regslice_AWBURST;
  wire [3:0]s00_couplers_to_s00_regslice_AWCACHE;
  wire [7:0]s00_couplers_to_s00_regslice_AWLEN;
  wire [0:0]s00_couplers_to_s00_regslice_AWLOCK;
  wire [2:0]s00_couplers_to_s00_regslice_AWPROT;
  wire [3:0]s00_couplers_to_s00_regslice_AWQOS;
  wire s00_couplers_to_s00_regslice_AWREADY;
  wire [2:0]s00_couplers_to_s00_regslice_AWSIZE;
  wire s00_couplers_to_s00_regslice_AWVALID;
  wire s00_couplers_to_s00_regslice_BREADY;
  wire [1:0]s00_couplers_to_s00_regslice_BRESP;
  wire s00_couplers_to_s00_regslice_BVALID;
  wire [255:0]s00_couplers_to_s00_regslice_RDATA;
  wire s00_couplers_to_s00_regslice_RLAST;
  wire s00_couplers_to_s00_regslice_RREADY;
  wire [1:0]s00_couplers_to_s00_regslice_RRESP;
  wire s00_couplers_to_s00_regslice_RVALID;
  wire [255:0]s00_couplers_to_s00_regslice_WDATA;
  wire s00_couplers_to_s00_regslice_WLAST;
  wire s00_couplers_to_s00_regslice_WREADY;
  wire [31:0]s00_couplers_to_s00_regslice_WSTRB;
  wire s00_couplers_to_s00_regslice_WVALID;
  wire [63:0]s00_regslice_to_auto_us_ARADDR;
  wire [1:0]s00_regslice_to_auto_us_ARBURST;
  wire [3:0]s00_regslice_to_auto_us_ARCACHE;
  wire [7:0]s00_regslice_to_auto_us_ARLEN;
  wire [0:0]s00_regslice_to_auto_us_ARLOCK;
  wire [2:0]s00_regslice_to_auto_us_ARPROT;
  wire [3:0]s00_regslice_to_auto_us_ARQOS;
  wire s00_regslice_to_auto_us_ARREADY;
  wire [3:0]s00_regslice_to_auto_us_ARREGION;
  wire [2:0]s00_regslice_to_auto_us_ARSIZE;
  wire s00_regslice_to_auto_us_ARVALID;
  wire [63:0]s00_regslice_to_auto_us_AWADDR;
  wire [1:0]s00_regslice_to_auto_us_AWBURST;
  wire [3:0]s00_regslice_to_auto_us_AWCACHE;
  wire [7:0]s00_regslice_to_auto_us_AWLEN;
  wire [0:0]s00_regslice_to_auto_us_AWLOCK;
  wire [2:0]s00_regslice_to_auto_us_AWPROT;
  wire [3:0]s00_regslice_to_auto_us_AWQOS;
  wire s00_regslice_to_auto_us_AWREADY;
  wire [3:0]s00_regslice_to_auto_us_AWREGION;
  wire [2:0]s00_regslice_to_auto_us_AWSIZE;
  wire s00_regslice_to_auto_us_AWVALID;
  wire s00_regslice_to_auto_us_BREADY;
  wire [1:0]s00_regslice_to_auto_us_BRESP;
  wire s00_regslice_to_auto_us_BVALID;
  wire [255:0]s00_regslice_to_auto_us_RDATA;
  wire s00_regslice_to_auto_us_RLAST;
  wire s00_regslice_to_auto_us_RREADY;
  wire [1:0]s00_regslice_to_auto_us_RRESP;
  wire s00_regslice_to_auto_us_RVALID;
  wire [255:0]s00_regslice_to_auto_us_WDATA;
  wire s00_regslice_to_auto_us_WLAST;
  wire s00_regslice_to_auto_us_WREADY;
  wire [31:0]s00_regslice_to_auto_us_WSTRB;
  wire s00_regslice_to_auto_us_WVALID;

  assign M_AXI_araddr[63:0] = auto_rs_w_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_rs_w_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_rs_w_to_s00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_rs_w_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_rs_w_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_rs_w_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_rs_w_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_rs_w_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_rs_w_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = auto_rs_w_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_rs_w_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_rs_w_to_s00_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_rs_w_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_rs_w_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_rs_w_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_rs_w_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_rs_w_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_rs_w_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_rs_w_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_rs_w_to_s00_couplers_RREADY;
  assign M_AXI_wdata[511:0] = auto_rs_w_to_s00_couplers_WDATA;
  assign M_AXI_wlast = auto_rs_w_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = auto_rs_w_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_rs_w_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_s00_regslice_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_regslice_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_regslice_BVALID;
  assign S_AXI_rdata[255:0] = s00_couplers_to_s00_regslice_RDATA;
  assign S_AXI_rlast = s00_couplers_to_s00_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_regslice_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_regslice_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_regslice_WREADY;
  assign auto_rs_w_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_rs_w_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_rs_w_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_rs_w_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_rs_w_to_s00_couplers_RDATA = M_AXI_rdata[511:0];
  assign auto_rs_w_to_s00_couplers_RLAST = M_AXI_rlast;
  assign auto_rs_w_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_rs_w_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_rs_w_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_s00_regslice_ARADDR = S_AXI_araddr[63:0];
  assign s00_couplers_to_s00_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_regslice_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_s00_regslice_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_s00_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_regslice_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_s00_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_regslice_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_regslice_AWADDR = S_AXI_awaddr[63:0];
  assign s00_couplers_to_s00_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_s00_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_s00_regslice_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_s00_regslice_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_s00_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_regslice_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_s00_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_s00_regslice_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_regslice_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_regslice_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_regslice_WDATA = S_AXI_wdata[255:0];
  assign s00_couplers_to_s00_regslice_WLAST = S_AXI_wlast;
  assign s00_couplers_to_s00_regslice_WSTRB = S_AXI_wstrb[31:0];
  assign s00_couplers_to_s00_regslice_WVALID = S_AXI_wvalid;
  dr_auto_rs_w_0 auto_rs_w
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_rs_w_to_s00_couplers_ARADDR),
        .m_axi_arburst(auto_rs_w_to_s00_couplers_ARBURST),
        .m_axi_arcache(auto_rs_w_to_s00_couplers_ARCACHE),
        .m_axi_arlen(auto_rs_w_to_s00_couplers_ARLEN),
        .m_axi_arlock(auto_rs_w_to_s00_couplers_ARLOCK),
        .m_axi_arprot(auto_rs_w_to_s00_couplers_ARPROT),
        .m_axi_arqos(auto_rs_w_to_s00_couplers_ARQOS),
        .m_axi_arready(auto_rs_w_to_s00_couplers_ARREADY),
        .m_axi_arsize(auto_rs_w_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(auto_rs_w_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_rs_w_to_s00_couplers_AWADDR),
        .m_axi_awburst(auto_rs_w_to_s00_couplers_AWBURST),
        .m_axi_awcache(auto_rs_w_to_s00_couplers_AWCACHE),
        .m_axi_awlen(auto_rs_w_to_s00_couplers_AWLEN),
        .m_axi_awlock(auto_rs_w_to_s00_couplers_AWLOCK),
        .m_axi_awprot(auto_rs_w_to_s00_couplers_AWPROT),
        .m_axi_awqos(auto_rs_w_to_s00_couplers_AWQOS),
        .m_axi_awready(auto_rs_w_to_s00_couplers_AWREADY),
        .m_axi_awsize(auto_rs_w_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(auto_rs_w_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_rs_w_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_rs_w_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_rs_w_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_rs_w_to_s00_couplers_RDATA),
        .m_axi_rlast(auto_rs_w_to_s00_couplers_RLAST),
        .m_axi_rready(auto_rs_w_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_rs_w_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_rs_w_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_rs_w_to_s00_couplers_WDATA),
        .m_axi_wlast(auto_rs_w_to_s00_couplers_WLAST),
        .m_axi_wready(auto_rs_w_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_rs_w_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_rs_w_to_s00_couplers_WVALID),
        .s_axi_araddr(auto_us_to_auto_rs_w_ARADDR),
        .s_axi_arburst(auto_us_to_auto_rs_w_ARBURST),
        .s_axi_arcache(auto_us_to_auto_rs_w_ARCACHE),
        .s_axi_arlen(auto_us_to_auto_rs_w_ARLEN),
        .s_axi_arlock(auto_us_to_auto_rs_w_ARLOCK),
        .s_axi_arprot(auto_us_to_auto_rs_w_ARPROT),
        .s_axi_arqos(auto_us_to_auto_rs_w_ARQOS),
        .s_axi_arready(auto_us_to_auto_rs_w_ARREADY),
        .s_axi_arregion(auto_us_to_auto_rs_w_ARREGION),
        .s_axi_arsize(auto_us_to_auto_rs_w_ARSIZE),
        .s_axi_arvalid(auto_us_to_auto_rs_w_ARVALID),
        .s_axi_awaddr(auto_us_to_auto_rs_w_AWADDR),
        .s_axi_awburst(auto_us_to_auto_rs_w_AWBURST),
        .s_axi_awcache(auto_us_to_auto_rs_w_AWCACHE),
        .s_axi_awlen(auto_us_to_auto_rs_w_AWLEN),
        .s_axi_awlock(auto_us_to_auto_rs_w_AWLOCK),
        .s_axi_awprot(auto_us_to_auto_rs_w_AWPROT),
        .s_axi_awqos(auto_us_to_auto_rs_w_AWQOS),
        .s_axi_awready(auto_us_to_auto_rs_w_AWREADY),
        .s_axi_awregion(auto_us_to_auto_rs_w_AWREGION),
        .s_axi_awsize(auto_us_to_auto_rs_w_AWSIZE),
        .s_axi_awvalid(auto_us_to_auto_rs_w_AWVALID),
        .s_axi_bready(auto_us_to_auto_rs_w_BREADY),
        .s_axi_bresp(auto_us_to_auto_rs_w_BRESP),
        .s_axi_bvalid(auto_us_to_auto_rs_w_BVALID),
        .s_axi_rdata(auto_us_to_auto_rs_w_RDATA),
        .s_axi_rlast(auto_us_to_auto_rs_w_RLAST),
        .s_axi_rready(auto_us_to_auto_rs_w_RREADY),
        .s_axi_rresp(auto_us_to_auto_rs_w_RRESP),
        .s_axi_rvalid(auto_us_to_auto_rs_w_RVALID),
        .s_axi_wdata(auto_us_to_auto_rs_w_WDATA),
        .s_axi_wlast(auto_us_to_auto_rs_w_WLAST),
        .s_axi_wready(auto_us_to_auto_rs_w_WREADY),
        .s_axi_wstrb(auto_us_to_auto_rs_w_WSTRB),
        .s_axi_wvalid(auto_us_to_auto_rs_w_WVALID));
  dr_auto_us_0 auto_us
       (.m_axi_araddr(auto_us_to_auto_rs_w_ARADDR),
        .m_axi_arburst(auto_us_to_auto_rs_w_ARBURST),
        .m_axi_arcache(auto_us_to_auto_rs_w_ARCACHE),
        .m_axi_arlen(auto_us_to_auto_rs_w_ARLEN),
        .m_axi_arlock(auto_us_to_auto_rs_w_ARLOCK),
        .m_axi_arprot(auto_us_to_auto_rs_w_ARPROT),
        .m_axi_arqos(auto_us_to_auto_rs_w_ARQOS),
        .m_axi_arready(auto_us_to_auto_rs_w_ARREADY),
        .m_axi_arregion(auto_us_to_auto_rs_w_ARREGION),
        .m_axi_arsize(auto_us_to_auto_rs_w_ARSIZE),
        .m_axi_arvalid(auto_us_to_auto_rs_w_ARVALID),
        .m_axi_awaddr(auto_us_to_auto_rs_w_AWADDR),
        .m_axi_awburst(auto_us_to_auto_rs_w_AWBURST),
        .m_axi_awcache(auto_us_to_auto_rs_w_AWCACHE),
        .m_axi_awlen(auto_us_to_auto_rs_w_AWLEN),
        .m_axi_awlock(auto_us_to_auto_rs_w_AWLOCK),
        .m_axi_awprot(auto_us_to_auto_rs_w_AWPROT),
        .m_axi_awqos(auto_us_to_auto_rs_w_AWQOS),
        .m_axi_awready(auto_us_to_auto_rs_w_AWREADY),
        .m_axi_awregion(auto_us_to_auto_rs_w_AWREGION),
        .m_axi_awsize(auto_us_to_auto_rs_w_AWSIZE),
        .m_axi_awvalid(auto_us_to_auto_rs_w_AWVALID),
        .m_axi_bready(auto_us_to_auto_rs_w_BREADY),
        .m_axi_bresp(auto_us_to_auto_rs_w_BRESP),
        .m_axi_bvalid(auto_us_to_auto_rs_w_BVALID),
        .m_axi_rdata(auto_us_to_auto_rs_w_RDATA),
        .m_axi_rlast(auto_us_to_auto_rs_w_RLAST),
        .m_axi_rready(auto_us_to_auto_rs_w_RREADY),
        .m_axi_rresp(auto_us_to_auto_rs_w_RRESP),
        .m_axi_rvalid(auto_us_to_auto_rs_w_RVALID),
        .m_axi_wdata(auto_us_to_auto_rs_w_WDATA),
        .m_axi_wlast(auto_us_to_auto_rs_w_WLAST),
        .m_axi_wready(auto_us_to_auto_rs_w_WREADY),
        .m_axi_wstrb(auto_us_to_auto_rs_w_WSTRB),
        .m_axi_wvalid(auto_us_to_auto_rs_w_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s00_regslice_to_auto_us_ARADDR),
        .s_axi_arburst(s00_regslice_to_auto_us_ARBURST),
        .s_axi_arcache(s00_regslice_to_auto_us_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(s00_regslice_to_auto_us_ARLEN),
        .s_axi_arlock(s00_regslice_to_auto_us_ARLOCK),
        .s_axi_arprot(s00_regslice_to_auto_us_ARPROT),
        .s_axi_arqos(s00_regslice_to_auto_us_ARQOS),
        .s_axi_arready(s00_regslice_to_auto_us_ARREADY),
        .s_axi_arregion(s00_regslice_to_auto_us_ARREGION),
        .s_axi_arsize(s00_regslice_to_auto_us_ARSIZE),
        .s_axi_arvalid(s00_regslice_to_auto_us_ARVALID),
        .s_axi_awaddr(s00_regslice_to_auto_us_AWADDR),
        .s_axi_awburst(s00_regslice_to_auto_us_AWBURST),
        .s_axi_awcache(s00_regslice_to_auto_us_AWCACHE),
        .s_axi_awlen(s00_regslice_to_auto_us_AWLEN),
        .s_axi_awlock(s00_regslice_to_auto_us_AWLOCK),
        .s_axi_awprot(s00_regslice_to_auto_us_AWPROT),
        .s_axi_awqos(s00_regslice_to_auto_us_AWQOS),
        .s_axi_awready(s00_regslice_to_auto_us_AWREADY),
        .s_axi_awregion(s00_regslice_to_auto_us_AWREGION),
        .s_axi_awsize(s00_regslice_to_auto_us_AWSIZE),
        .s_axi_awvalid(s00_regslice_to_auto_us_AWVALID),
        .s_axi_bready(s00_regslice_to_auto_us_BREADY),
        .s_axi_bresp(s00_regslice_to_auto_us_BRESP),
        .s_axi_bvalid(s00_regslice_to_auto_us_BVALID),
        .s_axi_rdata(s00_regslice_to_auto_us_RDATA),
        .s_axi_rlast(s00_regslice_to_auto_us_RLAST),
        .s_axi_rready(s00_regslice_to_auto_us_RREADY),
        .s_axi_rresp(s00_regslice_to_auto_us_RRESP),
        .s_axi_rvalid(s00_regslice_to_auto_us_RVALID),
        .s_axi_wdata(s00_regslice_to_auto_us_WDATA),
        .s_axi_wlast(s00_regslice_to_auto_us_WLAST),
        .s_axi_wready(s00_regslice_to_auto_us_WREADY),
        .s_axi_wstrb(s00_regslice_to_auto_us_WSTRB),
        .s_axi_wvalid(s00_regslice_to_auto_us_WVALID));
  dr_s00_regslice_0 s00_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s00_regslice_to_auto_us_ARADDR),
        .m_axi_arburst(s00_regslice_to_auto_us_ARBURST),
        .m_axi_arcache(s00_regslice_to_auto_us_ARCACHE),
        .m_axi_arlen(s00_regslice_to_auto_us_ARLEN),
        .m_axi_arlock(s00_regslice_to_auto_us_ARLOCK),
        .m_axi_arprot(s00_regslice_to_auto_us_ARPROT),
        .m_axi_arqos(s00_regslice_to_auto_us_ARQOS),
        .m_axi_arready(s00_regslice_to_auto_us_ARREADY),
        .m_axi_arregion(s00_regslice_to_auto_us_ARREGION),
        .m_axi_arsize(s00_regslice_to_auto_us_ARSIZE),
        .m_axi_arvalid(s00_regslice_to_auto_us_ARVALID),
        .m_axi_awaddr(s00_regslice_to_auto_us_AWADDR),
        .m_axi_awburst(s00_regslice_to_auto_us_AWBURST),
        .m_axi_awcache(s00_regslice_to_auto_us_AWCACHE),
        .m_axi_awlen(s00_regslice_to_auto_us_AWLEN),
        .m_axi_awlock(s00_regslice_to_auto_us_AWLOCK),
        .m_axi_awprot(s00_regslice_to_auto_us_AWPROT),
        .m_axi_awqos(s00_regslice_to_auto_us_AWQOS),
        .m_axi_awready(s00_regslice_to_auto_us_AWREADY),
        .m_axi_awregion(s00_regslice_to_auto_us_AWREGION),
        .m_axi_awsize(s00_regslice_to_auto_us_AWSIZE),
        .m_axi_awvalid(s00_regslice_to_auto_us_AWVALID),
        .m_axi_bready(s00_regslice_to_auto_us_BREADY),
        .m_axi_bresp(s00_regslice_to_auto_us_BRESP),
        .m_axi_bvalid(s00_regslice_to_auto_us_BVALID),
        .m_axi_rdata(s00_regslice_to_auto_us_RDATA),
        .m_axi_rlast(s00_regslice_to_auto_us_RLAST),
        .m_axi_rready(s00_regslice_to_auto_us_RREADY),
        .m_axi_rresp(s00_regslice_to_auto_us_RRESP),
        .m_axi_rvalid(s00_regslice_to_auto_us_RVALID),
        .m_axi_wdata(s00_regslice_to_auto_us_WDATA),
        .m_axi_wlast(s00_regslice_to_auto_us_WLAST),
        .m_axi_wready(s00_regslice_to_auto_us_WREADY),
        .m_axi_wstrb(s00_regslice_to_auto_us_WSTRB),
        .m_axi_wvalid(s00_regslice_to_auto_us_WVALID),
        .s_axi_araddr(s00_couplers_to_s00_regslice_ARADDR),
        .s_axi_arburst(s00_couplers_to_s00_regslice_ARBURST),
        .s_axi_arcache(s00_couplers_to_s00_regslice_ARCACHE),
        .s_axi_arlen(s00_couplers_to_s00_regslice_ARLEN),
        .s_axi_arlock(s00_couplers_to_s00_regslice_ARLOCK),
        .s_axi_arprot(s00_couplers_to_s00_regslice_ARPROT),
        .s_axi_arqos(s00_couplers_to_s00_regslice_ARQOS),
        .s_axi_arready(s00_couplers_to_s00_regslice_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s00_couplers_to_s00_regslice_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_s00_regslice_ARVALID),
        .s_axi_awaddr(s00_couplers_to_s00_regslice_AWADDR),
        .s_axi_awburst(s00_couplers_to_s00_regslice_AWBURST),
        .s_axi_awcache(s00_couplers_to_s00_regslice_AWCACHE),
        .s_axi_awlen(s00_couplers_to_s00_regslice_AWLEN),
        .s_axi_awlock(s00_couplers_to_s00_regslice_AWLOCK),
        .s_axi_awprot(s00_couplers_to_s00_regslice_AWPROT),
        .s_axi_awqos(s00_couplers_to_s00_regslice_AWQOS),
        .s_axi_awready(s00_couplers_to_s00_regslice_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s00_couplers_to_s00_regslice_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_s00_regslice_AWVALID),
        .s_axi_bready(s00_couplers_to_s00_regslice_BREADY),
        .s_axi_bresp(s00_couplers_to_s00_regslice_BRESP),
        .s_axi_bvalid(s00_couplers_to_s00_regslice_BVALID),
        .s_axi_rdata(s00_couplers_to_s00_regslice_RDATA),
        .s_axi_rlast(s00_couplers_to_s00_regslice_RLAST),
        .s_axi_rready(s00_couplers_to_s00_regslice_RREADY),
        .s_axi_rresp(s00_couplers_to_s00_regslice_RRESP),
        .s_axi_rvalid(s00_couplers_to_s00_regslice_RVALID),
        .s_axi_wdata(s00_couplers_to_s00_regslice_WDATA),
        .s_axi_wlast(s00_couplers_to_s00_regslice_WLAST),
        .s_axi_wready(s00_couplers_to_s00_regslice_WREADY),
        .s_axi_wstrb(s00_couplers_to_s00_regslice_WSTRB),
        .s_axi_wvalid(s00_couplers_to_s00_regslice_WVALID));
endmodule

module s00_couplers_imp_J0JM2M
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [63:0]auto_cc_to_s00_couplers_ARADDR;
  wire [2:0]auto_cc_to_s00_couplers_ARPROT;
  wire auto_cc_to_s00_couplers_ARREADY;
  wire auto_cc_to_s00_couplers_ARVALID;
  wire [63:0]auto_cc_to_s00_couplers_AWADDR;
  wire [2:0]auto_cc_to_s00_couplers_AWPROT;
  wire auto_cc_to_s00_couplers_AWREADY;
  wire auto_cc_to_s00_couplers_AWVALID;
  wire auto_cc_to_s00_couplers_BREADY;
  wire [1:0]auto_cc_to_s00_couplers_BRESP;
  wire auto_cc_to_s00_couplers_BVALID;
  wire [31:0]auto_cc_to_s00_couplers_RDATA;
  wire auto_cc_to_s00_couplers_RREADY;
  wire [1:0]auto_cc_to_s00_couplers_RRESP;
  wire auto_cc_to_s00_couplers_RVALID;
  wire [31:0]auto_cc_to_s00_couplers_WDATA;
  wire auto_cc_to_s00_couplers_WREADY;
  wire [3:0]auto_cc_to_s00_couplers_WSTRB;
  wire auto_cc_to_s00_couplers_WVALID;
  wire [63:0]s00_couplers_to_auto_cc_ARADDR;
  wire s00_couplers_to_auto_cc_ARREADY;
  wire s00_couplers_to_auto_cc_ARVALID;
  wire [63:0]s00_couplers_to_auto_cc_AWADDR;
  wire s00_couplers_to_auto_cc_AWREADY;
  wire s00_couplers_to_auto_cc_AWVALID;
  wire s00_couplers_to_auto_cc_BREADY;
  wire [1:0]s00_couplers_to_auto_cc_BRESP;
  wire s00_couplers_to_auto_cc_BVALID;
  wire [31:0]s00_couplers_to_auto_cc_RDATA;
  wire s00_couplers_to_auto_cc_RREADY;
  wire [1:0]s00_couplers_to_auto_cc_RRESP;
  wire s00_couplers_to_auto_cc_RVALID;
  wire [31:0]s00_couplers_to_auto_cc_WDATA;
  wire s00_couplers_to_auto_cc_WREADY;
  wire [3:0]s00_couplers_to_auto_cc_WSTRB;
  wire s00_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[63:0] = auto_cc_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_cc_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_cc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = auto_cc_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_cc_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = auto_cc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_cc_ARADDR = S_AXI_araddr[63:0];
  assign s00_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[63:0];
  assign s00_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  dr_auto_cc_1 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_s00_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arprot(auto_cc_to_s00_couplers_ARPROT),
        .m_axi_arready(auto_cc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_s00_couplers_AWADDR),
        .m_axi_awprot(auto_cc_to_s00_couplers_AWPROT),
        .m_axi_awready(auto_cc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_cc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_cc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_s00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s00_couplers_to_auto_cc_ARADDR),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arready(s00_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(s00_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_cc_AWADDR),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awready(s00_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(s00_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(s00_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_cc_RDATA),
        .s_axi_rready(s00_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_cc_WDATA),
        .s_axi_wready(s00_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_cc_WVALID));
endmodule

module s00_couplers_imp_KG6WOC
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [16:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [16:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [16:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [16:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [16:0]auto_cc_to_s00_couplers_ARADDR;
  wire auto_cc_to_s00_couplers_ARREADY;
  wire auto_cc_to_s00_couplers_ARVALID;
  wire [16:0]auto_cc_to_s00_couplers_AWADDR;
  wire auto_cc_to_s00_couplers_AWREADY;
  wire auto_cc_to_s00_couplers_AWVALID;
  wire auto_cc_to_s00_couplers_BREADY;
  wire [1:0]auto_cc_to_s00_couplers_BRESP;
  wire auto_cc_to_s00_couplers_BVALID;
  wire [31:0]auto_cc_to_s00_couplers_RDATA;
  wire auto_cc_to_s00_couplers_RREADY;
  wire [1:0]auto_cc_to_s00_couplers_RRESP;
  wire auto_cc_to_s00_couplers_RVALID;
  wire [31:0]auto_cc_to_s00_couplers_WDATA;
  wire auto_cc_to_s00_couplers_WREADY;
  wire [3:0]auto_cc_to_s00_couplers_WSTRB;
  wire auto_cc_to_s00_couplers_WVALID;
  wire [16:0]s00_couplers_to_auto_cc_ARADDR;
  wire [2:0]s00_couplers_to_auto_cc_ARPROT;
  wire s00_couplers_to_auto_cc_ARREADY;
  wire s00_couplers_to_auto_cc_ARVALID;
  wire [16:0]s00_couplers_to_auto_cc_AWADDR;
  wire [2:0]s00_couplers_to_auto_cc_AWPROT;
  wire s00_couplers_to_auto_cc_AWREADY;
  wire s00_couplers_to_auto_cc_AWVALID;
  wire s00_couplers_to_auto_cc_BREADY;
  wire [1:0]s00_couplers_to_auto_cc_BRESP;
  wire s00_couplers_to_auto_cc_BVALID;
  wire [31:0]s00_couplers_to_auto_cc_RDATA;
  wire s00_couplers_to_auto_cc_RREADY;
  wire [1:0]s00_couplers_to_auto_cc_RRESP;
  wire s00_couplers_to_auto_cc_RVALID;
  wire [31:0]s00_couplers_to_auto_cc_WDATA;
  wire s00_couplers_to_auto_cc_WREADY;
  wire [3:0]s00_couplers_to_auto_cc_WSTRB;
  wire s00_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[16:0] = auto_cc_to_s00_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[16:0] = auto_cc_to_s00_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_cc_ARADDR = S_AXI_araddr[16:0];
  assign s00_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[16:0];
  assign s00_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  dr_auto_cc_0 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_s00_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_s00_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_cc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_cc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_s00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s00_couplers_to_auto_cc_ARADDR),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(s00_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(s00_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(s00_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_cc_AWADDR),
        .s_axi_awprot(s00_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(s00_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(s00_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(s00_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_cc_RDATA),
        .s_axi_rready(s00_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_cc_WDATA),
        .s_axi_wready(s00_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_cc_WVALID));
endmodule

module s01_couplers_imp_RSSWNO
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [255:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [255:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [31:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [63:0]auto_rs_w_to_s01_couplers_ARADDR;
  wire [1:0]auto_rs_w_to_s01_couplers_ARBURST;
  wire [3:0]auto_rs_w_to_s01_couplers_ARCACHE;
  wire [7:0]auto_rs_w_to_s01_couplers_ARLEN;
  wire [0:0]auto_rs_w_to_s01_couplers_ARLOCK;
  wire [2:0]auto_rs_w_to_s01_couplers_ARPROT;
  wire [3:0]auto_rs_w_to_s01_couplers_ARQOS;
  wire auto_rs_w_to_s01_couplers_ARREADY;
  wire [2:0]auto_rs_w_to_s01_couplers_ARSIZE;
  wire auto_rs_w_to_s01_couplers_ARVALID;
  wire [63:0]auto_rs_w_to_s01_couplers_AWADDR;
  wire [1:0]auto_rs_w_to_s01_couplers_AWBURST;
  wire [3:0]auto_rs_w_to_s01_couplers_AWCACHE;
  wire [7:0]auto_rs_w_to_s01_couplers_AWLEN;
  wire [0:0]auto_rs_w_to_s01_couplers_AWLOCK;
  wire [2:0]auto_rs_w_to_s01_couplers_AWPROT;
  wire [3:0]auto_rs_w_to_s01_couplers_AWQOS;
  wire auto_rs_w_to_s01_couplers_AWREADY;
  wire [2:0]auto_rs_w_to_s01_couplers_AWSIZE;
  wire auto_rs_w_to_s01_couplers_AWVALID;
  wire auto_rs_w_to_s01_couplers_BREADY;
  wire [1:0]auto_rs_w_to_s01_couplers_BRESP;
  wire auto_rs_w_to_s01_couplers_BVALID;
  wire [511:0]auto_rs_w_to_s01_couplers_RDATA;
  wire auto_rs_w_to_s01_couplers_RLAST;
  wire auto_rs_w_to_s01_couplers_RREADY;
  wire [1:0]auto_rs_w_to_s01_couplers_RRESP;
  wire auto_rs_w_to_s01_couplers_RVALID;
  wire [511:0]auto_rs_w_to_s01_couplers_WDATA;
  wire auto_rs_w_to_s01_couplers_WLAST;
  wire auto_rs_w_to_s01_couplers_WREADY;
  wire [63:0]auto_rs_w_to_s01_couplers_WSTRB;
  wire auto_rs_w_to_s01_couplers_WVALID;
  wire [63:0]auto_us_to_auto_rs_w_ARADDR;
  wire [1:0]auto_us_to_auto_rs_w_ARBURST;
  wire [3:0]auto_us_to_auto_rs_w_ARCACHE;
  wire [7:0]auto_us_to_auto_rs_w_ARLEN;
  wire [0:0]auto_us_to_auto_rs_w_ARLOCK;
  wire [2:0]auto_us_to_auto_rs_w_ARPROT;
  wire [3:0]auto_us_to_auto_rs_w_ARQOS;
  wire auto_us_to_auto_rs_w_ARREADY;
  wire [3:0]auto_us_to_auto_rs_w_ARREGION;
  wire [2:0]auto_us_to_auto_rs_w_ARSIZE;
  wire auto_us_to_auto_rs_w_ARVALID;
  wire [63:0]auto_us_to_auto_rs_w_AWADDR;
  wire [1:0]auto_us_to_auto_rs_w_AWBURST;
  wire [3:0]auto_us_to_auto_rs_w_AWCACHE;
  wire [7:0]auto_us_to_auto_rs_w_AWLEN;
  wire [0:0]auto_us_to_auto_rs_w_AWLOCK;
  wire [2:0]auto_us_to_auto_rs_w_AWPROT;
  wire [3:0]auto_us_to_auto_rs_w_AWQOS;
  wire auto_us_to_auto_rs_w_AWREADY;
  wire [3:0]auto_us_to_auto_rs_w_AWREGION;
  wire [2:0]auto_us_to_auto_rs_w_AWSIZE;
  wire auto_us_to_auto_rs_w_AWVALID;
  wire auto_us_to_auto_rs_w_BREADY;
  wire [1:0]auto_us_to_auto_rs_w_BRESP;
  wire auto_us_to_auto_rs_w_BVALID;
  wire [511:0]auto_us_to_auto_rs_w_RDATA;
  wire auto_us_to_auto_rs_w_RLAST;
  wire auto_us_to_auto_rs_w_RREADY;
  wire [1:0]auto_us_to_auto_rs_w_RRESP;
  wire auto_us_to_auto_rs_w_RVALID;
  wire [511:0]auto_us_to_auto_rs_w_WDATA;
  wire auto_us_to_auto_rs_w_WLAST;
  wire auto_us_to_auto_rs_w_WREADY;
  wire [63:0]auto_us_to_auto_rs_w_WSTRB;
  wire auto_us_to_auto_rs_w_WVALID;
  wire [63:0]s01_couplers_to_s01_regslice_ARADDR;
  wire [1:0]s01_couplers_to_s01_regslice_ARBURST;
  wire [3:0]s01_couplers_to_s01_regslice_ARCACHE;
  wire [7:0]s01_couplers_to_s01_regslice_ARLEN;
  wire [0:0]s01_couplers_to_s01_regslice_ARLOCK;
  wire [2:0]s01_couplers_to_s01_regslice_ARPROT;
  wire [3:0]s01_couplers_to_s01_regslice_ARQOS;
  wire s01_couplers_to_s01_regslice_ARREADY;
  wire [2:0]s01_couplers_to_s01_regslice_ARSIZE;
  wire s01_couplers_to_s01_regslice_ARVALID;
  wire [63:0]s01_couplers_to_s01_regslice_AWADDR;
  wire [1:0]s01_couplers_to_s01_regslice_AWBURST;
  wire [3:0]s01_couplers_to_s01_regslice_AWCACHE;
  wire [7:0]s01_couplers_to_s01_regslice_AWLEN;
  wire [0:0]s01_couplers_to_s01_regslice_AWLOCK;
  wire [2:0]s01_couplers_to_s01_regslice_AWPROT;
  wire [3:0]s01_couplers_to_s01_regslice_AWQOS;
  wire s01_couplers_to_s01_regslice_AWREADY;
  wire [2:0]s01_couplers_to_s01_regslice_AWSIZE;
  wire s01_couplers_to_s01_regslice_AWVALID;
  wire s01_couplers_to_s01_regslice_BREADY;
  wire [1:0]s01_couplers_to_s01_regslice_BRESP;
  wire s01_couplers_to_s01_regslice_BVALID;
  wire [255:0]s01_couplers_to_s01_regslice_RDATA;
  wire s01_couplers_to_s01_regslice_RLAST;
  wire s01_couplers_to_s01_regslice_RREADY;
  wire [1:0]s01_couplers_to_s01_regslice_RRESP;
  wire s01_couplers_to_s01_regslice_RVALID;
  wire [255:0]s01_couplers_to_s01_regslice_WDATA;
  wire s01_couplers_to_s01_regslice_WLAST;
  wire s01_couplers_to_s01_regslice_WREADY;
  wire [31:0]s01_couplers_to_s01_regslice_WSTRB;
  wire s01_couplers_to_s01_regslice_WVALID;
  wire [63:0]s01_regslice_to_auto_us_ARADDR;
  wire [1:0]s01_regslice_to_auto_us_ARBURST;
  wire [3:0]s01_regslice_to_auto_us_ARCACHE;
  wire [7:0]s01_regslice_to_auto_us_ARLEN;
  wire [0:0]s01_regslice_to_auto_us_ARLOCK;
  wire [2:0]s01_regslice_to_auto_us_ARPROT;
  wire [3:0]s01_regslice_to_auto_us_ARQOS;
  wire s01_regslice_to_auto_us_ARREADY;
  wire [3:0]s01_regslice_to_auto_us_ARREGION;
  wire [2:0]s01_regslice_to_auto_us_ARSIZE;
  wire s01_regslice_to_auto_us_ARVALID;
  wire [63:0]s01_regslice_to_auto_us_AWADDR;
  wire [1:0]s01_regslice_to_auto_us_AWBURST;
  wire [3:0]s01_regslice_to_auto_us_AWCACHE;
  wire [7:0]s01_regslice_to_auto_us_AWLEN;
  wire [0:0]s01_regslice_to_auto_us_AWLOCK;
  wire [2:0]s01_regslice_to_auto_us_AWPROT;
  wire [3:0]s01_regslice_to_auto_us_AWQOS;
  wire s01_regslice_to_auto_us_AWREADY;
  wire [3:0]s01_regslice_to_auto_us_AWREGION;
  wire [2:0]s01_regslice_to_auto_us_AWSIZE;
  wire s01_regslice_to_auto_us_AWVALID;
  wire s01_regslice_to_auto_us_BREADY;
  wire [1:0]s01_regslice_to_auto_us_BRESP;
  wire s01_regslice_to_auto_us_BVALID;
  wire [255:0]s01_regslice_to_auto_us_RDATA;
  wire s01_regslice_to_auto_us_RLAST;
  wire s01_regslice_to_auto_us_RREADY;
  wire [1:0]s01_regslice_to_auto_us_RRESP;
  wire s01_regslice_to_auto_us_RVALID;
  wire [255:0]s01_regslice_to_auto_us_WDATA;
  wire s01_regslice_to_auto_us_WLAST;
  wire s01_regslice_to_auto_us_WREADY;
  wire [31:0]s01_regslice_to_auto_us_WSTRB;
  wire s01_regslice_to_auto_us_WVALID;

  assign M_AXI_araddr[63:0] = auto_rs_w_to_s01_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_rs_w_to_s01_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_rs_w_to_s01_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_rs_w_to_s01_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_rs_w_to_s01_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_rs_w_to_s01_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_rs_w_to_s01_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_rs_w_to_s01_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_rs_w_to_s01_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = auto_rs_w_to_s01_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_rs_w_to_s01_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_rs_w_to_s01_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_rs_w_to_s01_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_rs_w_to_s01_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_rs_w_to_s01_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_rs_w_to_s01_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_rs_w_to_s01_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_rs_w_to_s01_couplers_AWVALID;
  assign M_AXI_bready = auto_rs_w_to_s01_couplers_BREADY;
  assign M_AXI_rready = auto_rs_w_to_s01_couplers_RREADY;
  assign M_AXI_wdata[511:0] = auto_rs_w_to_s01_couplers_WDATA;
  assign M_AXI_wlast = auto_rs_w_to_s01_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = auto_rs_w_to_s01_couplers_WSTRB;
  assign M_AXI_wvalid = auto_rs_w_to_s01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s01_couplers_to_s01_regslice_ARREADY;
  assign S_AXI_awready = s01_couplers_to_s01_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = s01_couplers_to_s01_regslice_BRESP;
  assign S_AXI_bvalid = s01_couplers_to_s01_regslice_BVALID;
  assign S_AXI_rdata[255:0] = s01_couplers_to_s01_regslice_RDATA;
  assign S_AXI_rlast = s01_couplers_to_s01_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s01_couplers_to_s01_regslice_RRESP;
  assign S_AXI_rvalid = s01_couplers_to_s01_regslice_RVALID;
  assign S_AXI_wready = s01_couplers_to_s01_regslice_WREADY;
  assign auto_rs_w_to_s01_couplers_ARREADY = M_AXI_arready;
  assign auto_rs_w_to_s01_couplers_AWREADY = M_AXI_awready;
  assign auto_rs_w_to_s01_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_rs_w_to_s01_couplers_BVALID = M_AXI_bvalid;
  assign auto_rs_w_to_s01_couplers_RDATA = M_AXI_rdata[511:0];
  assign auto_rs_w_to_s01_couplers_RLAST = M_AXI_rlast;
  assign auto_rs_w_to_s01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_rs_w_to_s01_couplers_RVALID = M_AXI_rvalid;
  assign auto_rs_w_to_s01_couplers_WREADY = M_AXI_wready;
  assign s01_couplers_to_s01_regslice_ARADDR = S_AXI_araddr[63:0];
  assign s01_couplers_to_s01_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s01_couplers_to_s01_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s01_couplers_to_s01_regslice_ARLEN = S_AXI_arlen[7:0];
  assign s01_couplers_to_s01_regslice_ARLOCK = S_AXI_arlock[0];
  assign s01_couplers_to_s01_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s01_couplers_to_s01_regslice_ARQOS = S_AXI_arqos[3:0];
  assign s01_couplers_to_s01_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s01_couplers_to_s01_regslice_ARVALID = S_AXI_arvalid;
  assign s01_couplers_to_s01_regslice_AWADDR = S_AXI_awaddr[63:0];
  assign s01_couplers_to_s01_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s01_couplers_to_s01_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s01_couplers_to_s01_regslice_AWLEN = S_AXI_awlen[7:0];
  assign s01_couplers_to_s01_regslice_AWLOCK = S_AXI_awlock[0];
  assign s01_couplers_to_s01_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s01_couplers_to_s01_regslice_AWQOS = S_AXI_awqos[3:0];
  assign s01_couplers_to_s01_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s01_couplers_to_s01_regslice_AWVALID = S_AXI_awvalid;
  assign s01_couplers_to_s01_regslice_BREADY = S_AXI_bready;
  assign s01_couplers_to_s01_regslice_RREADY = S_AXI_rready;
  assign s01_couplers_to_s01_regslice_WDATA = S_AXI_wdata[255:0];
  assign s01_couplers_to_s01_regslice_WLAST = S_AXI_wlast;
  assign s01_couplers_to_s01_regslice_WSTRB = S_AXI_wstrb[31:0];
  assign s01_couplers_to_s01_regslice_WVALID = S_AXI_wvalid;
  dr_auto_rs_w_1 auto_rs_w
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_rs_w_to_s01_couplers_ARADDR),
        .m_axi_arburst(auto_rs_w_to_s01_couplers_ARBURST),
        .m_axi_arcache(auto_rs_w_to_s01_couplers_ARCACHE),
        .m_axi_arlen(auto_rs_w_to_s01_couplers_ARLEN),
        .m_axi_arlock(auto_rs_w_to_s01_couplers_ARLOCK),
        .m_axi_arprot(auto_rs_w_to_s01_couplers_ARPROT),
        .m_axi_arqos(auto_rs_w_to_s01_couplers_ARQOS),
        .m_axi_arready(auto_rs_w_to_s01_couplers_ARREADY),
        .m_axi_arsize(auto_rs_w_to_s01_couplers_ARSIZE),
        .m_axi_arvalid(auto_rs_w_to_s01_couplers_ARVALID),
        .m_axi_awaddr(auto_rs_w_to_s01_couplers_AWADDR),
        .m_axi_awburst(auto_rs_w_to_s01_couplers_AWBURST),
        .m_axi_awcache(auto_rs_w_to_s01_couplers_AWCACHE),
        .m_axi_awlen(auto_rs_w_to_s01_couplers_AWLEN),
        .m_axi_awlock(auto_rs_w_to_s01_couplers_AWLOCK),
        .m_axi_awprot(auto_rs_w_to_s01_couplers_AWPROT),
        .m_axi_awqos(auto_rs_w_to_s01_couplers_AWQOS),
        .m_axi_awready(auto_rs_w_to_s01_couplers_AWREADY),
        .m_axi_awsize(auto_rs_w_to_s01_couplers_AWSIZE),
        .m_axi_awvalid(auto_rs_w_to_s01_couplers_AWVALID),
        .m_axi_bready(auto_rs_w_to_s01_couplers_BREADY),
        .m_axi_bresp(auto_rs_w_to_s01_couplers_BRESP),
        .m_axi_bvalid(auto_rs_w_to_s01_couplers_BVALID),
        .m_axi_rdata(auto_rs_w_to_s01_couplers_RDATA),
        .m_axi_rlast(auto_rs_w_to_s01_couplers_RLAST),
        .m_axi_rready(auto_rs_w_to_s01_couplers_RREADY),
        .m_axi_rresp(auto_rs_w_to_s01_couplers_RRESP),
        .m_axi_rvalid(auto_rs_w_to_s01_couplers_RVALID),
        .m_axi_wdata(auto_rs_w_to_s01_couplers_WDATA),
        .m_axi_wlast(auto_rs_w_to_s01_couplers_WLAST),
        .m_axi_wready(auto_rs_w_to_s01_couplers_WREADY),
        .m_axi_wstrb(auto_rs_w_to_s01_couplers_WSTRB),
        .m_axi_wvalid(auto_rs_w_to_s01_couplers_WVALID),
        .s_axi_araddr(auto_us_to_auto_rs_w_ARADDR),
        .s_axi_arburst(auto_us_to_auto_rs_w_ARBURST),
        .s_axi_arcache(auto_us_to_auto_rs_w_ARCACHE),
        .s_axi_arlen(auto_us_to_auto_rs_w_ARLEN),
        .s_axi_arlock(auto_us_to_auto_rs_w_ARLOCK),
        .s_axi_arprot(auto_us_to_auto_rs_w_ARPROT),
        .s_axi_arqos(auto_us_to_auto_rs_w_ARQOS),
        .s_axi_arready(auto_us_to_auto_rs_w_ARREADY),
        .s_axi_arregion(auto_us_to_auto_rs_w_ARREGION),
        .s_axi_arsize(auto_us_to_auto_rs_w_ARSIZE),
        .s_axi_arvalid(auto_us_to_auto_rs_w_ARVALID),
        .s_axi_awaddr(auto_us_to_auto_rs_w_AWADDR),
        .s_axi_awburst(auto_us_to_auto_rs_w_AWBURST),
        .s_axi_awcache(auto_us_to_auto_rs_w_AWCACHE),
        .s_axi_awlen(auto_us_to_auto_rs_w_AWLEN),
        .s_axi_awlock(auto_us_to_auto_rs_w_AWLOCK),
        .s_axi_awprot(auto_us_to_auto_rs_w_AWPROT),
        .s_axi_awqos(auto_us_to_auto_rs_w_AWQOS),
        .s_axi_awready(auto_us_to_auto_rs_w_AWREADY),
        .s_axi_awregion(auto_us_to_auto_rs_w_AWREGION),
        .s_axi_awsize(auto_us_to_auto_rs_w_AWSIZE),
        .s_axi_awvalid(auto_us_to_auto_rs_w_AWVALID),
        .s_axi_bready(auto_us_to_auto_rs_w_BREADY),
        .s_axi_bresp(auto_us_to_auto_rs_w_BRESP),
        .s_axi_bvalid(auto_us_to_auto_rs_w_BVALID),
        .s_axi_rdata(auto_us_to_auto_rs_w_RDATA),
        .s_axi_rlast(auto_us_to_auto_rs_w_RLAST),
        .s_axi_rready(auto_us_to_auto_rs_w_RREADY),
        .s_axi_rresp(auto_us_to_auto_rs_w_RRESP),
        .s_axi_rvalid(auto_us_to_auto_rs_w_RVALID),
        .s_axi_wdata(auto_us_to_auto_rs_w_WDATA),
        .s_axi_wlast(auto_us_to_auto_rs_w_WLAST),
        .s_axi_wready(auto_us_to_auto_rs_w_WREADY),
        .s_axi_wstrb(auto_us_to_auto_rs_w_WSTRB),
        .s_axi_wvalid(auto_us_to_auto_rs_w_WVALID));
  dr_auto_us_1 auto_us
       (.m_axi_araddr(auto_us_to_auto_rs_w_ARADDR),
        .m_axi_arburst(auto_us_to_auto_rs_w_ARBURST),
        .m_axi_arcache(auto_us_to_auto_rs_w_ARCACHE),
        .m_axi_arlen(auto_us_to_auto_rs_w_ARLEN),
        .m_axi_arlock(auto_us_to_auto_rs_w_ARLOCK),
        .m_axi_arprot(auto_us_to_auto_rs_w_ARPROT),
        .m_axi_arqos(auto_us_to_auto_rs_w_ARQOS),
        .m_axi_arready(auto_us_to_auto_rs_w_ARREADY),
        .m_axi_arregion(auto_us_to_auto_rs_w_ARREGION),
        .m_axi_arsize(auto_us_to_auto_rs_w_ARSIZE),
        .m_axi_arvalid(auto_us_to_auto_rs_w_ARVALID),
        .m_axi_awaddr(auto_us_to_auto_rs_w_AWADDR),
        .m_axi_awburst(auto_us_to_auto_rs_w_AWBURST),
        .m_axi_awcache(auto_us_to_auto_rs_w_AWCACHE),
        .m_axi_awlen(auto_us_to_auto_rs_w_AWLEN),
        .m_axi_awlock(auto_us_to_auto_rs_w_AWLOCK),
        .m_axi_awprot(auto_us_to_auto_rs_w_AWPROT),
        .m_axi_awqos(auto_us_to_auto_rs_w_AWQOS),
        .m_axi_awready(auto_us_to_auto_rs_w_AWREADY),
        .m_axi_awregion(auto_us_to_auto_rs_w_AWREGION),
        .m_axi_awsize(auto_us_to_auto_rs_w_AWSIZE),
        .m_axi_awvalid(auto_us_to_auto_rs_w_AWVALID),
        .m_axi_bready(auto_us_to_auto_rs_w_BREADY),
        .m_axi_bresp(auto_us_to_auto_rs_w_BRESP),
        .m_axi_bvalid(auto_us_to_auto_rs_w_BVALID),
        .m_axi_rdata(auto_us_to_auto_rs_w_RDATA),
        .m_axi_rlast(auto_us_to_auto_rs_w_RLAST),
        .m_axi_rready(auto_us_to_auto_rs_w_RREADY),
        .m_axi_rresp(auto_us_to_auto_rs_w_RRESP),
        .m_axi_rvalid(auto_us_to_auto_rs_w_RVALID),
        .m_axi_wdata(auto_us_to_auto_rs_w_WDATA),
        .m_axi_wlast(auto_us_to_auto_rs_w_WLAST),
        .m_axi_wready(auto_us_to_auto_rs_w_WREADY),
        .m_axi_wstrb(auto_us_to_auto_rs_w_WSTRB),
        .m_axi_wvalid(auto_us_to_auto_rs_w_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s01_regslice_to_auto_us_ARADDR),
        .s_axi_arburst(s01_regslice_to_auto_us_ARBURST),
        .s_axi_arcache(s01_regslice_to_auto_us_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(s01_regslice_to_auto_us_ARLEN),
        .s_axi_arlock(s01_regslice_to_auto_us_ARLOCK),
        .s_axi_arprot(s01_regslice_to_auto_us_ARPROT),
        .s_axi_arqos(s01_regslice_to_auto_us_ARQOS),
        .s_axi_arready(s01_regslice_to_auto_us_ARREADY),
        .s_axi_arregion(s01_regslice_to_auto_us_ARREGION),
        .s_axi_arsize(s01_regslice_to_auto_us_ARSIZE),
        .s_axi_arvalid(s01_regslice_to_auto_us_ARVALID),
        .s_axi_awaddr(s01_regslice_to_auto_us_AWADDR),
        .s_axi_awburst(s01_regslice_to_auto_us_AWBURST),
        .s_axi_awcache(s01_regslice_to_auto_us_AWCACHE),
        .s_axi_awlen(s01_regslice_to_auto_us_AWLEN),
        .s_axi_awlock(s01_regslice_to_auto_us_AWLOCK),
        .s_axi_awprot(s01_regslice_to_auto_us_AWPROT),
        .s_axi_awqos(s01_regslice_to_auto_us_AWQOS),
        .s_axi_awready(s01_regslice_to_auto_us_AWREADY),
        .s_axi_awregion(s01_regslice_to_auto_us_AWREGION),
        .s_axi_awsize(s01_regslice_to_auto_us_AWSIZE),
        .s_axi_awvalid(s01_regslice_to_auto_us_AWVALID),
        .s_axi_bready(s01_regslice_to_auto_us_BREADY),
        .s_axi_bresp(s01_regslice_to_auto_us_BRESP),
        .s_axi_bvalid(s01_regslice_to_auto_us_BVALID),
        .s_axi_rdata(s01_regslice_to_auto_us_RDATA),
        .s_axi_rlast(s01_regslice_to_auto_us_RLAST),
        .s_axi_rready(s01_regslice_to_auto_us_RREADY),
        .s_axi_rresp(s01_regslice_to_auto_us_RRESP),
        .s_axi_rvalid(s01_regslice_to_auto_us_RVALID),
        .s_axi_wdata(s01_regslice_to_auto_us_WDATA),
        .s_axi_wlast(s01_regslice_to_auto_us_WLAST),
        .s_axi_wready(s01_regslice_to_auto_us_WREADY),
        .s_axi_wstrb(s01_regslice_to_auto_us_WSTRB),
        .s_axi_wvalid(s01_regslice_to_auto_us_WVALID));
  dr_s01_regslice_0 s01_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s01_regslice_to_auto_us_ARADDR),
        .m_axi_arburst(s01_regslice_to_auto_us_ARBURST),
        .m_axi_arcache(s01_regslice_to_auto_us_ARCACHE),
        .m_axi_arlen(s01_regslice_to_auto_us_ARLEN),
        .m_axi_arlock(s01_regslice_to_auto_us_ARLOCK),
        .m_axi_arprot(s01_regslice_to_auto_us_ARPROT),
        .m_axi_arqos(s01_regslice_to_auto_us_ARQOS),
        .m_axi_arready(s01_regslice_to_auto_us_ARREADY),
        .m_axi_arregion(s01_regslice_to_auto_us_ARREGION),
        .m_axi_arsize(s01_regslice_to_auto_us_ARSIZE),
        .m_axi_arvalid(s01_regslice_to_auto_us_ARVALID),
        .m_axi_awaddr(s01_regslice_to_auto_us_AWADDR),
        .m_axi_awburst(s01_regslice_to_auto_us_AWBURST),
        .m_axi_awcache(s01_regslice_to_auto_us_AWCACHE),
        .m_axi_awlen(s01_regslice_to_auto_us_AWLEN),
        .m_axi_awlock(s01_regslice_to_auto_us_AWLOCK),
        .m_axi_awprot(s01_regslice_to_auto_us_AWPROT),
        .m_axi_awqos(s01_regslice_to_auto_us_AWQOS),
        .m_axi_awready(s01_regslice_to_auto_us_AWREADY),
        .m_axi_awregion(s01_regslice_to_auto_us_AWREGION),
        .m_axi_awsize(s01_regslice_to_auto_us_AWSIZE),
        .m_axi_awvalid(s01_regslice_to_auto_us_AWVALID),
        .m_axi_bready(s01_regslice_to_auto_us_BREADY),
        .m_axi_bresp(s01_regslice_to_auto_us_BRESP),
        .m_axi_bvalid(s01_regslice_to_auto_us_BVALID),
        .m_axi_rdata(s01_regslice_to_auto_us_RDATA),
        .m_axi_rlast(s01_regslice_to_auto_us_RLAST),
        .m_axi_rready(s01_regslice_to_auto_us_RREADY),
        .m_axi_rresp(s01_regslice_to_auto_us_RRESP),
        .m_axi_rvalid(s01_regslice_to_auto_us_RVALID),
        .m_axi_wdata(s01_regslice_to_auto_us_WDATA),
        .m_axi_wlast(s01_regslice_to_auto_us_WLAST),
        .m_axi_wready(s01_regslice_to_auto_us_WREADY),
        .m_axi_wstrb(s01_regslice_to_auto_us_WSTRB),
        .m_axi_wvalid(s01_regslice_to_auto_us_WVALID),
        .s_axi_araddr(s01_couplers_to_s01_regslice_ARADDR),
        .s_axi_arburst(s01_couplers_to_s01_regslice_ARBURST),
        .s_axi_arcache(s01_couplers_to_s01_regslice_ARCACHE),
        .s_axi_arlen(s01_couplers_to_s01_regslice_ARLEN),
        .s_axi_arlock(s01_couplers_to_s01_regslice_ARLOCK),
        .s_axi_arprot(s01_couplers_to_s01_regslice_ARPROT),
        .s_axi_arqos(s01_couplers_to_s01_regslice_ARQOS),
        .s_axi_arready(s01_couplers_to_s01_regslice_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s01_couplers_to_s01_regslice_ARSIZE),
        .s_axi_arvalid(s01_couplers_to_s01_regslice_ARVALID),
        .s_axi_awaddr(s01_couplers_to_s01_regslice_AWADDR),
        .s_axi_awburst(s01_couplers_to_s01_regslice_AWBURST),
        .s_axi_awcache(s01_couplers_to_s01_regslice_AWCACHE),
        .s_axi_awlen(s01_couplers_to_s01_regslice_AWLEN),
        .s_axi_awlock(s01_couplers_to_s01_regslice_AWLOCK),
        .s_axi_awprot(s01_couplers_to_s01_regslice_AWPROT),
        .s_axi_awqos(s01_couplers_to_s01_regslice_AWQOS),
        .s_axi_awready(s01_couplers_to_s01_regslice_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s01_couplers_to_s01_regslice_AWSIZE),
        .s_axi_awvalid(s01_couplers_to_s01_regslice_AWVALID),
        .s_axi_bready(s01_couplers_to_s01_regslice_BREADY),
        .s_axi_bresp(s01_couplers_to_s01_regslice_BRESP),
        .s_axi_bvalid(s01_couplers_to_s01_regslice_BVALID),
        .s_axi_rdata(s01_couplers_to_s01_regslice_RDATA),
        .s_axi_rlast(s01_couplers_to_s01_regslice_RLAST),
        .s_axi_rready(s01_couplers_to_s01_regslice_RREADY),
        .s_axi_rresp(s01_couplers_to_s01_regslice_RRESP),
        .s_axi_rvalid(s01_couplers_to_s01_regslice_RVALID),
        .s_axi_wdata(s01_couplers_to_s01_regslice_WDATA),
        .s_axi_wlast(s01_couplers_to_s01_regslice_WLAST),
        .s_axi_wready(s01_couplers_to_s01_regslice_WREADY),
        .s_axi_wstrb(s01_couplers_to_s01_regslice_WSTRB),
        .s_axi_wvalid(s01_couplers_to_s01_regslice_WVALID));
endmodule
