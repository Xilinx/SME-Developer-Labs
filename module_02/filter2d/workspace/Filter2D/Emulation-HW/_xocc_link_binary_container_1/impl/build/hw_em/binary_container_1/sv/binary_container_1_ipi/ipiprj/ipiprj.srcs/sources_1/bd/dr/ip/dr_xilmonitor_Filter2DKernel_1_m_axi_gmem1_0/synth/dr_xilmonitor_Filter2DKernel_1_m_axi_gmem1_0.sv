// (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:ip:sdx_aximm_wv:1.0
// IP Revision: 1

(* X_CORE_INFO = "sdx_aximm_wv_v1_0_top,Vivado 2017.1_sdxop" *)
(* CHECK_LICENSE_TYPE = "dr_xilmonitor_Filter2DKernel_1_m_axi_gmem1_0,sdx_aximm_wv_v1_0_top,{}" *)
(* CORE_GENERATION_INFO = "dr_xilmonitor_Filter2DKernel_1_m_axi_gmem1_0,sdx_aximm_wv_v1_0_top,{x_ipProduct=Vivado 2017.1_sdxop,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=sdx_aximm_wv,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_FAMILY=virtexuplus,C_MON_AXI_ADDR_WIDTH=64,C_MON_AXI_DATA_WIDTH=256,C_MON_AXI_ID_WIDTH=0,C_MON_AXI_AWLEN=8,C_MON_AXI_PROTOCOL=AXI4,C_MON_AXI_SUB_PROTOCOL=AXI4LITE}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module dr_xilmonitor_Filter2DKernel_1_m_axi_gmem1_0 (
  mon_axi_aclk,
  mon_axi_aresetn,
  mon_axi_awid,
  mon_axi_awaddr,
  mon_axi_awprot,
  mon_axi_awlen,
  mon_axi_awsize,
  mon_axi_awburst,
  mon_axi_awcache,
  mon_axi_awlock,
  mon_axi_awvalid,
  mon_axi_awready,
  mon_axi_wdata,
  mon_axi_wstrb,
  mon_axi_wlast,
  mon_axi_wvalid,
  mon_axi_wready,
  mon_axi_bid,
  mon_axi_bresp,
  mon_axi_bvalid,
  mon_axi_bready,
  mon_axi_arid,
  mon_axi_araddr,
  mon_axi_arlen,
  mon_axi_arsize,
  mon_axi_arburst,
  mon_axi_arcache,
  mon_axi_arprot,
  mon_axi_arlock,
  mon_axi_arvalid,
  mon_axi_arready,
  mon_axi_rid,
  mon_axi_rdata,
  mon_axi_rresp,
  mon_axi_rlast,
  mon_axi_rvalid,
  mon_axi_rready
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 mon_axi_aclk CLK" *)
input wire mon_axi_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 mon_axi_aresetn RST" *)
input wire mon_axi_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mon_axi AWID" *)
input wire [0 : 0] mon_axi_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mon_axi AWADDR" *)
input wire [63 : 0] mon_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mon_axi AWPROT" *)
input wire [2 : 0] mon_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mon_axi AWLEN" *)
input wire [7 : 0] mon_axi_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mon_axi AWSIZE" *)
input wire [2 : 0] mon_axi_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mon_axi AWBURST" *)
input wire [1 : 0] mon_axi_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mon_axi AWCACHE" *)
input wire [3 : 0] mon_axi_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mon_axi AWLOCK" *)
input wire mon_axi_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mon_axi AWVALID" *)
input wire mon_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mon_axi AWREADY" *)
input wire mon_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mon_axi WDATA" *)
input wire [255 : 0] mon_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mon_axi WSTRB" *)
input wire [31 : 0] mon_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mon_axi WLAST" *)
input wire mon_axi_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mon_axi WVALID" *)
input wire mon_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mon_axi WREADY" *)
input wire mon_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mon_axi BID" *)
input wire [0 : 0] mon_axi_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mon_axi BRESP" *)
input wire [1 : 0] mon_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mon_axi BVALID" *)
input wire mon_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mon_axi BREADY" *)
input wire mon_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mon_axi ARID" *)
input wire [0 : 0] mon_axi_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mon_axi ARADDR" *)
input wire [63 : 0] mon_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mon_axi ARLEN" *)
input wire [7 : 0] mon_axi_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mon_axi ARSIZE" *)
input wire [2 : 0] mon_axi_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mon_axi ARBURST" *)
input wire [1 : 0] mon_axi_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mon_axi ARCACHE" *)
input wire [3 : 0] mon_axi_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mon_axi ARPROT" *)
input wire [2 : 0] mon_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mon_axi ARLOCK" *)
input wire mon_axi_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mon_axi ARVALID" *)
input wire mon_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mon_axi ARREADY" *)
input wire mon_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mon_axi RID" *)
input wire [0 : 0] mon_axi_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mon_axi RDATA" *)
input wire [255 : 0] mon_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mon_axi RRESP" *)
input wire [1 : 0] mon_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mon_axi RLAST" *)
input wire mon_axi_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mon_axi RVALID" *)
input wire mon_axi_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mon_axi RREADY" *)
input wire mon_axi_rready;

  sdx_aximm_wv_v1_0_top #(
    .C_FAMILY("virtexuplus"),
    .C_MON_AXI_ADDR_WIDTH(64),
    .C_MON_AXI_DATA_WIDTH(256),
    .C_MON_AXI_ID_WIDTH(0),
    .C_MON_AXI_AWLEN(8),
    .C_MON_AXI_PROTOCOL("AXI4"),
    .C_MON_AXI_SUB_PROTOCOL("AXI4LITE")
  ) inst (
    .mon_axi_aclk(mon_axi_aclk),
    .mon_axi_aresetn(mon_axi_aresetn),
    .mon_axi_awid(mon_axi_awid),
    .mon_axi_awaddr(mon_axi_awaddr),
    .mon_axi_awprot(mon_axi_awprot),
    .mon_axi_awlen(mon_axi_awlen),
    .mon_axi_awsize(mon_axi_awsize),
    .mon_axi_awburst(mon_axi_awburst),
    .mon_axi_awcache(mon_axi_awcache),
    .mon_axi_awlock(mon_axi_awlock),
    .mon_axi_awvalid(mon_axi_awvalid),
    .mon_axi_awready(mon_axi_awready),
    .mon_axi_wdata(mon_axi_wdata),
    .mon_axi_wstrb(mon_axi_wstrb),
    .mon_axi_wlast(mon_axi_wlast),
    .mon_axi_wvalid(mon_axi_wvalid),
    .mon_axi_wready(mon_axi_wready),
    .mon_axi_bid(mon_axi_bid),
    .mon_axi_bresp(mon_axi_bresp),
    .mon_axi_bvalid(mon_axi_bvalid),
    .mon_axi_bready(mon_axi_bready),
    .mon_axi_arid(mon_axi_arid),
    .mon_axi_araddr(mon_axi_araddr),
    .mon_axi_arlen(mon_axi_arlen),
    .mon_axi_arsize(mon_axi_arsize),
    .mon_axi_arburst(mon_axi_arburst),
    .mon_axi_arcache(mon_axi_arcache),
    .mon_axi_arprot(mon_axi_arprot),
    .mon_axi_arlock(mon_axi_arlock),
    .mon_axi_arvalid(mon_axi_arvalid),
    .mon_axi_arready(mon_axi_arready),
    .mon_axi_rid(mon_axi_rid),
    .mon_axi_rdata(mon_axi_rdata),
    .mon_axi_rresp(mon_axi_rresp),
    .mon_axi_rlast(mon_axi_rlast),
    .mon_axi_rvalid(mon_axi_rvalid),
    .mon_axi_rready(mon_axi_rready)
  );
endmodule
