`timescale 1ns/1ps

      bit  c0_ui_clk;
      bit  m_axi_ctrl_clk;
      bit  c0_ddr_saxi_awvalid;
      bit  c0_ddr_saxi_awready;
      bit  [3 : 0] c0_ddr_saxi_awregion;
      bit  [4 : 0] c0_ddr_saxi_awid;
      bit  [35 : 0] c0_ddr_saxi_awaddr;
      bit  [31 : 0] c0_ddr_saxi_awuser;
      bit  [7 : 0] c0_ddr_saxi_awlen;
      bit  [2 : 0] c0_ddr_saxi_awsize;
      bit  [1 : 0] c0_ddr_saxi_awburst;
      bit  [3 : 0] c0_ddr_saxi_awcache;
      bit  c0_ddr_saxi_awlock;
      bit  [2 : 0] c0_ddr_saxi_awprot;
      bit  [3 : 0] c0_ddr_saxi_awqos;
      bit  c0_ddr_saxi_wvalid;
      bit  c0_ddr_saxi_wready;
      bit  [511 : 0] c0_ddr_saxi_wdata;
      bit  [63 : 0] c0_ddr_saxi_wstrb;
      bit  c0_ddr_saxi_wlast;
      bit  c0_ddr_saxi_bvalid;
      bit  c0_ddr_saxi_bready;
      bit  [4 : 0] c0_ddr_saxi_bid;
      bit  [1 : 0] c0_ddr_saxi_bresp;
      bit  c0_ddr_saxi_arvalid;
      bit  c0_ddr_saxi_arready;
      bit  [3 : 0] c0_ddr_saxi_arregion;
      bit  [4 : 0] c0_ddr_saxi_arid;
      bit  [35 : 0] c0_ddr_saxi_araddr;
      bit  [31 : 0] c0_ddr_saxi_aruser;
      bit  [7 : 0] c0_ddr_saxi_arlen;
      bit  [2 : 0] c0_ddr_saxi_arsize;
      bit  [1 : 0] c0_ddr_saxi_arburst;
      bit  [3 : 0] c0_ddr_saxi_arcache;
      bit  c0_ddr_saxi_arlock;
      bit  [2 : 0] c0_ddr_saxi_arprot;
      bit  [3 : 0] c0_ddr_saxi_arqos;
      bit  c0_ddr_saxi_rvalid;
      bit  c0_ddr_saxi_rready;
      bit  [4 : 0] c0_ddr_saxi_rid;
      bit  [511 : 0] c0_ddr_saxi_rdata;
      bit  [1 : 0] c0_ddr_saxi_rresp;
      bit  c0_ddr_saxi_rlast;
      bit  c1_ddr_saxi_awvalid;
      bit  c1_ddr_saxi_awready;
      bit  [3 : 0] c1_ddr_saxi_awregion;
      bit  [4 : 0] c1_ddr_saxi_awid;
      bit  [35 : 0] c1_ddr_saxi_awaddr;
      bit  [31 : 0] c1_ddr_saxi_awuser;
      bit  [7 : 0] c1_ddr_saxi_awlen;
      bit  [2 : 0] c1_ddr_saxi_awsize;
      bit  [1 : 0] c1_ddr_saxi_awburst;
      bit  [3 : 0] c1_ddr_saxi_awcache;
      bit  c1_ddr_saxi_awlock;
      bit  [2 : 0] c1_ddr_saxi_awprot;
      bit  [3 : 0] c1_ddr_saxi_awqos;
      bit  c1_ddr_saxi_wvalid;
      bit  c1_ddr_saxi_wready;
      bit  [511 : 0] c1_ddr_saxi_wdata;
      bit  [63 : 0] c1_ddr_saxi_wstrb;
      bit  c1_ddr_saxi_wlast;
      bit  c1_ddr_saxi_bvalid;
      bit  c1_ddr_saxi_bready;
      bit  [4 : 0] c1_ddr_saxi_bid;
      bit  [1 : 0] c1_ddr_saxi_bresp;
      bit  c1_ddr_saxi_arvalid;
      bit  c1_ddr_saxi_arready;
      bit  [3 : 0] c1_ddr_saxi_arregion;
      bit  [4 : 0] c1_ddr_saxi_arid;
      bit  [35 : 0] c1_ddr_saxi_araddr;
      bit  [31 : 0] c1_ddr_saxi_aruser;
      bit  [7 : 0] c1_ddr_saxi_arlen;
      bit  [2 : 0] c1_ddr_saxi_arsize;
      bit  [1 : 0] c1_ddr_saxi_arburst;
      bit  [3 : 0] c1_ddr_saxi_arcache;
      bit  c1_ddr_saxi_arlock;
      bit  [2 : 0] c1_ddr_saxi_arprot;
      bit  [3 : 0] c1_ddr_saxi_arqos;
      bit  c1_ddr_saxi_rvalid;
      bit  c1_ddr_saxi_rready;
      bit  [4 : 0] c1_ddr_saxi_rid;
      bit  [511 : 0] c1_ddr_saxi_rdata;
      bit  [1 : 0] c1_ddr_saxi_rresp;
      bit  c1_ddr_saxi_rlast;
      bit  c2_ddr_saxi_awvalid;
      bit  c2_ddr_saxi_awready;
      bit  [3 : 0] c2_ddr_saxi_awregion;
      bit  [4 : 0] c2_ddr_saxi_awid;
      bit  [35 : 0] c2_ddr_saxi_awaddr;
      bit  [31 : 0] c2_ddr_saxi_awuser;
      bit  [7 : 0] c2_ddr_saxi_awlen;
      bit  [2 : 0] c2_ddr_saxi_awsize;
      bit  [1 : 0] c2_ddr_saxi_awburst;
      bit  [3 : 0] c2_ddr_saxi_awcache;
      bit  c2_ddr_saxi_awlock;
      bit  [2 : 0] c2_ddr_saxi_awprot;
      bit  [3 : 0] c2_ddr_saxi_awqos;
      bit  c2_ddr_saxi_wvalid;
      bit  c2_ddr_saxi_wready;
      bit  [511 : 0] c2_ddr_saxi_wdata;
      bit  [63 : 0] c2_ddr_saxi_wstrb;
      bit  c2_ddr_saxi_wlast;
      bit  c2_ddr_saxi_bvalid;
      bit  c2_ddr_saxi_bready;
      bit  [4 : 0] c2_ddr_saxi_bid;
      bit  [1 : 0] c2_ddr_saxi_bresp;
      bit  c2_ddr_saxi_arvalid;
      bit  c2_ddr_saxi_arready;
      bit  [3 : 0] c2_ddr_saxi_arregion;
      bit  [4 : 0] c2_ddr_saxi_arid;
      bit  [35 : 0] c2_ddr_saxi_araddr;
      bit  [31 : 0] c2_ddr_saxi_aruser;
      bit  [7 : 0] c2_ddr_saxi_arlen;
      bit  [2 : 0] c2_ddr_saxi_arsize;
      bit  [1 : 0] c2_ddr_saxi_arburst;
      bit  [3 : 0] c2_ddr_saxi_arcache;
      bit  c2_ddr_saxi_arlock;
      bit  [2 : 0] c2_ddr_saxi_arprot;
      bit  [3 : 0] c2_ddr_saxi_arqos;
      bit  c2_ddr_saxi_rvalid;
      bit  c2_ddr_saxi_rready;
      bit  [4 : 0] c2_ddr_saxi_rid;
      bit  [511 : 0] c2_ddr_saxi_rdata;
      bit  [1 : 0] c2_ddr_saxi_rresp;
      bit  c2_ddr_saxi_rlast;
      bit  c3_ddr_saxi_awvalid;
      bit  c3_ddr_saxi_awready;
      bit  [3 : 0] c3_ddr_saxi_awregion;
      bit  [4 : 0] c3_ddr_saxi_awid;
      bit  [35 : 0] c3_ddr_saxi_awaddr;
      bit  [31 : 0] c3_ddr_saxi_awuser;
      bit  [7 : 0] c3_ddr_saxi_awlen;
      bit  [2 : 0] c3_ddr_saxi_awsize;
      bit  [1 : 0] c3_ddr_saxi_awburst;
      bit  [3 : 0] c3_ddr_saxi_awcache;
      bit  c3_ddr_saxi_awlock;
      bit  [2 : 0] c3_ddr_saxi_awprot;
      bit  [3 : 0] c3_ddr_saxi_awqos;
      bit  c3_ddr_saxi_wvalid;
      bit  c3_ddr_saxi_wready;
      bit  [511 : 0] c3_ddr_saxi_wdata;
      bit  [63 : 0] c3_ddr_saxi_wstrb;
      bit  c3_ddr_saxi_wlast;
      bit  c3_ddr_saxi_bvalid;
      bit  c3_ddr_saxi_bready;
      bit  [4 : 0] c3_ddr_saxi_bid;
      bit  [1 : 0] c3_ddr_saxi_bresp;
      bit  c3_ddr_saxi_arvalid;
      bit  c3_ddr_saxi_arready;
      bit  [3 : 0] c3_ddr_saxi_arregion;
      bit  [4 : 0] c3_ddr_saxi_arid;
      bit  [35 : 0] c3_ddr_saxi_araddr;
      bit  [31 : 0] c3_ddr_saxi_aruser;
      bit  [7 : 0] c3_ddr_saxi_arlen;
      bit  [2 : 0] c3_ddr_saxi_arsize;
      bit  [1 : 0] c3_ddr_saxi_arburst;
      bit  [3 : 0] c3_ddr_saxi_arcache;
      bit  c3_ddr_saxi_arlock;
      bit  [2 : 0] c3_ddr_saxi_arprot;
      bit  [3 : 0] c3_ddr_saxi_arqos;
      bit  c3_ddr_saxi_rvalid;
      bit  c3_ddr_saxi_rready;
      bit  [4 : 0] c3_ddr_saxi_rid;
      bit  [511 : 0] c3_ddr_saxi_rdata;
      bit  [1 : 0] c3_ddr_saxi_rresp;
      bit  c3_ddr_saxi_rlast;
      bit  m_axi_ctrl_awvalid;
      bit  m_axi_ctrl_awready;
      bit  [63 : 0] m_axi_ctrl_awaddr;
      bit  m_axi_ctrl_wvalid;
      bit  m_axi_ctrl_wready;
      bit  [31 : 0] m_axi_ctrl_wdata;
      bit  [3 : 0] m_axi_ctrl_wstrb;
      bit  m_axi_ctrl_bvalid;
      bit  m_axi_ctrl_bready;
      bit  [1 : 0] m_axi_ctrl_bresp;
      bit  m_axi_ctrl_arvalid;
      bit  m_axi_ctrl_arready;
      bit  [63 : 0] m_axi_ctrl_araddr;
      bit  m_axi_ctrl_rvalid;
      bit  m_axi_ctrl_rready;
      bit  [31 : 0] m_axi_ctrl_rdata;
      bit  [1 : 0] m_axi_ctrl_rresp;


 module dr_sdaccel_generic_pcie_0_0 (
  c0_ui_clk,
  m_axi_ctrl_clk,
  c0_ddr_saxi_awvalid,
  c0_ddr_saxi_awready,
  c0_ddr_saxi_awregion,
  c0_ddr_saxi_awid,
  c0_ddr_saxi_awaddr,
  c0_ddr_saxi_awuser,
  c0_ddr_saxi_awlen,
  c0_ddr_saxi_awsize,
  c0_ddr_saxi_awburst,
  c0_ddr_saxi_awcache,
  c0_ddr_saxi_awlock,
  c0_ddr_saxi_awprot,
  c0_ddr_saxi_awqos,
  c0_ddr_saxi_wvalid,
  c0_ddr_saxi_wready,
  c0_ddr_saxi_wdata,
  c0_ddr_saxi_wstrb,
  c0_ddr_saxi_wlast,
  c0_ddr_saxi_bvalid,
  c0_ddr_saxi_bready,
  c0_ddr_saxi_bid,
  c0_ddr_saxi_bresp,
  c0_ddr_saxi_arvalid,
  c0_ddr_saxi_arready,
  c0_ddr_saxi_arregion,
  c0_ddr_saxi_arid,
  c0_ddr_saxi_araddr,
  c0_ddr_saxi_aruser,
  c0_ddr_saxi_arlen,
  c0_ddr_saxi_arsize,
  c0_ddr_saxi_arburst,
  c0_ddr_saxi_arcache,
  c0_ddr_saxi_arlock,
  c0_ddr_saxi_arprot,
  c0_ddr_saxi_arqos,
  c0_ddr_saxi_rvalid,
  c0_ddr_saxi_rready,
  c0_ddr_saxi_rid,
  c0_ddr_saxi_rdata,
  c0_ddr_saxi_rresp,
  c0_ddr_saxi_rlast,
  c1_ddr_saxi_awvalid,
  c1_ddr_saxi_awready,
  c1_ddr_saxi_awregion,
  c1_ddr_saxi_awid,
  c1_ddr_saxi_awaddr,
  c1_ddr_saxi_awuser,
  c1_ddr_saxi_awlen,
  c1_ddr_saxi_awsize,
  c1_ddr_saxi_awburst,
  c1_ddr_saxi_awcache,
  c1_ddr_saxi_awlock,
  c1_ddr_saxi_awprot,
  c1_ddr_saxi_awqos,
  c1_ddr_saxi_wvalid,
  c1_ddr_saxi_wready,
  c1_ddr_saxi_wdata,
  c1_ddr_saxi_wstrb,
  c1_ddr_saxi_wlast,
  c1_ddr_saxi_bvalid,
  c1_ddr_saxi_bready,
  c1_ddr_saxi_bid,
  c1_ddr_saxi_bresp,
  c1_ddr_saxi_arvalid,
  c1_ddr_saxi_arready,
  c1_ddr_saxi_arregion,
  c1_ddr_saxi_arid,
  c1_ddr_saxi_araddr,
  c1_ddr_saxi_aruser,
  c1_ddr_saxi_arlen,
  c1_ddr_saxi_arsize,
  c1_ddr_saxi_arburst,
  c1_ddr_saxi_arcache,
  c1_ddr_saxi_arlock,
  c1_ddr_saxi_arprot,
  c1_ddr_saxi_arqos,
  c1_ddr_saxi_rvalid,
  c1_ddr_saxi_rready,
  c1_ddr_saxi_rid,
  c1_ddr_saxi_rdata,
  c1_ddr_saxi_rresp,
  c1_ddr_saxi_rlast,
  c2_ddr_saxi_awvalid,
  c2_ddr_saxi_awready,
  c2_ddr_saxi_awregion,
  c2_ddr_saxi_awid,
  c2_ddr_saxi_awaddr,
  c2_ddr_saxi_awuser,
  c2_ddr_saxi_awlen,
  c2_ddr_saxi_awsize,
  c2_ddr_saxi_awburst,
  c2_ddr_saxi_awcache,
  c2_ddr_saxi_awlock,
  c2_ddr_saxi_awprot,
  c2_ddr_saxi_awqos,
  c2_ddr_saxi_wvalid,
  c2_ddr_saxi_wready,
  c2_ddr_saxi_wdata,
  c2_ddr_saxi_wstrb,
  c2_ddr_saxi_wlast,
  c2_ddr_saxi_bvalid,
  c2_ddr_saxi_bready,
  c2_ddr_saxi_bid,
  c2_ddr_saxi_bresp,
  c2_ddr_saxi_arvalid,
  c2_ddr_saxi_arready,
  c2_ddr_saxi_arregion,
  c2_ddr_saxi_arid,
  c2_ddr_saxi_araddr,
  c2_ddr_saxi_aruser,
  c2_ddr_saxi_arlen,
  c2_ddr_saxi_arsize,
  c2_ddr_saxi_arburst,
  c2_ddr_saxi_arcache,
  c2_ddr_saxi_arlock,
  c2_ddr_saxi_arprot,
  c2_ddr_saxi_arqos,
  c2_ddr_saxi_rvalid,
  c2_ddr_saxi_rready,
  c2_ddr_saxi_rid,
  c2_ddr_saxi_rdata,
  c2_ddr_saxi_rresp,
  c2_ddr_saxi_rlast,
  c3_ddr_saxi_awvalid,
  c3_ddr_saxi_awready,
  c3_ddr_saxi_awregion,
  c3_ddr_saxi_awid,
  c3_ddr_saxi_awaddr,
  c3_ddr_saxi_awuser,
  c3_ddr_saxi_awlen,
  c3_ddr_saxi_awsize,
  c3_ddr_saxi_awburst,
  c3_ddr_saxi_awcache,
  c3_ddr_saxi_awlock,
  c3_ddr_saxi_awprot,
  c3_ddr_saxi_awqos,
  c3_ddr_saxi_wvalid,
  c3_ddr_saxi_wready,
  c3_ddr_saxi_wdata,
  c3_ddr_saxi_wstrb,
  c3_ddr_saxi_wlast,
  c3_ddr_saxi_bvalid,
  c3_ddr_saxi_bready,
  c3_ddr_saxi_bid,
  c3_ddr_saxi_bresp,
  c3_ddr_saxi_arvalid,
  c3_ddr_saxi_arready,
  c3_ddr_saxi_arregion,
  c3_ddr_saxi_arid,
  c3_ddr_saxi_araddr,
  c3_ddr_saxi_aruser,
  c3_ddr_saxi_arlen,
  c3_ddr_saxi_arsize,
  c3_ddr_saxi_arburst,
  c3_ddr_saxi_arcache,
  c3_ddr_saxi_arlock,
  c3_ddr_saxi_arprot,
  c3_ddr_saxi_arqos,
  c3_ddr_saxi_rvalid,
  c3_ddr_saxi_rready,
  c3_ddr_saxi_rid,
  c3_ddr_saxi_rdata,
  c3_ddr_saxi_rresp,
  c3_ddr_saxi_rlast,
  m_axi_ctrl_awvalid,
  m_axi_ctrl_awready,
  m_axi_ctrl_awaddr,
  m_axi_ctrl_wvalid,
  m_axi_ctrl_wready,
  m_axi_ctrl_wdata,
  m_axi_ctrl_wstrb,
  m_axi_ctrl_bvalid,
  m_axi_ctrl_bready,
  m_axi_ctrl_bresp,
  m_axi_ctrl_arvalid,
  m_axi_ctrl_arready,
  m_axi_ctrl_araddr,
  m_axi_ctrl_rvalid,
  m_axi_ctrl_rready,
  m_axi_ctrl_rdata,
  m_axi_ctrl_rresp
 );

      parameter C_S0_ID_WIDTH = 5;
      parameter C_S0_ADDR_WIDTH = 36;
      parameter C_S0_LEN_WIDTH = 8;
      parameter C_S0_DATA_WIDTH = 512;
      parameter C_S0_STRB_WIDTH = 64;
      parameter C_S0_REGION_WIDTH = 32;
      parameter C_S1_ID_WIDTH = 5;
      parameter C_S1_ADDR_WIDTH = 36;
      parameter C_S1_LEN_WIDTH = 8;
      parameter C_S1_DATA_WIDTH = 512;
      parameter C_S1_STRB_WIDTH = 64;
      parameter C_S1_REGION_WIDTH = 32;
      parameter C_S2_ID_WIDTH = 5;
      parameter C_S2_ADDR_WIDTH = 36;
      parameter C_S2_LEN_WIDTH = 8;
      parameter C_S2_DATA_WIDTH = 512;
      parameter C_S2_STRB_WIDTH = 64;
      parameter C_S2_REGION_WIDTH = 32;
      parameter C_S3_ID_WIDTH = 5;
      parameter C_S3_ADDR_WIDTH = 36;
      parameter C_S3_LEN_WIDTH = 8;
      parameter C_S3_DATA_WIDTH = 512;
      parameter C_S3_STRB_WIDTH = 64;
      parameter C_S3_REGION_WIDTH = 32;
      parameter C_M_ADDR_WIDTH = 64;
      parameter C_M_LEN_WIDTH = 8;
      parameter C_M_DATA_WIDTH = 512;
      parameter C_Component_Name = "dr_sdaccel_generic_pcie_0_0";
      parameter C_NUM_SLAVE_SLOTS = 4;
      parameter C_ADDR_RANGES = 1;
      parameter C_NUMBER_OF_GLOBAL_MEMORIES = 4;
      parameter C0_NAME = "mem0";
      parameter C0_TYPE = "ddr4";
      parameter C0_SIZE = "16GB";
      parameter C0_AXI_ARBITRATION_SCHEME = "RD_PRI_REG";
      parameter C0_ControllerType = "DDR3_SDRAM";
      parameter C0_APP_ADDR_WIDTH = 30;
      parameter C0_APP_DATA_WIDTH = 512;
      parameter C0_Mem_Add_Map = "ROW_COLUMN_BANK";
      parameter C0_Ordering = "Normal";
      parameter C0_ADDR_WIDTH = 16;
      parameter C0_AXI_ADDR_WIDTH = 33;
      parameter C0_AXI_DATA_WIDTH = 512;
      parameter C0_AXI_ID_WIDTH = 1;
      parameter C0_BANK_GROUP_WIDTH = 2;
      parameter C0_BANK_WIDTH = 1;
      parameter C0_CL = 0;
      parameter C0_COLUMN_WIDTH = 10;
      parameter C0_CWL = 0;
      parameter C0_RANK_WIDTH = 2;
      parameter C0_ROW_WIDTH = 16;
      parameter C0_tCK = 1250;
      parameter C0_tCKE = 0;
      parameter C0_tFAW = 24;
      parameter C0_tMRD = 1;
      parameter C0_tRAS = 28;
      parameter C0_tRCD = 11;
      parameter C0_tREFI = 6240;
      parameter C0_tRFC = 208;
      parameter C0_tRP = 11;
      parameter C0_tRTW = 10;
      parameter C0_tCCD = 4;
      parameter C0_tRRD = 5;
      parameter C0_tRRD_L = 5;
      parameter C0_tRRD_S = 5;
      parameter C0_tRTP = 6;
      parameter C0_tWR = 12;
      parameter C0_tWTR = 6;
      parameter C0_tWTR_L = 6;
      parameter C0_tWTR_S = 6;
      parameter C0_tXPR = 54;
      parameter C0_tZQCS = 64;
      parameter C0_tZQI = 0;
      parameter C0_tZQINIT = 128;
      parameter C0_AutoPrecharge = "false";
      parameter C0_AxiNarrowBurst = "false";
      parameter C0_BURST_LENGTH = 8;
      parameter C0_CAS_LATENCY = 8;
      parameter C0_CAS_WRITE_LATENCY = 6;
      parameter C0_DATA_WIDTH = 8;
      parameter C0_MEMORY_PART = "MT41J512M8XX-107";
      parameter C0_MEM_ADDR_MAP = "ROW_COLUMN_BANK";
      parameter C0_TIMEPERIOD_PS = 10;
      parameter C0_A00_BASE_ADDR = 'H0000000000000000;
      parameter C0_A01_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C0_A02_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C0_A03_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C0_A04_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C0_A05_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C0_A06_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C0_A07_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C0_A08_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C0_A09_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C0_A10_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C0_A11_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C0_A12_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C0_A13_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C0_A14_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C0_A15_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C0_A00_HIGH_ADDR = 'H0000000400000000;
      parameter C0_A01_HIGH_ADDR = 'D0;
      parameter C0_A02_HIGH_ADDR = 'D0;
      parameter C0_A03_HIGH_ADDR = 'D0;
      parameter C0_A04_HIGH_ADDR = 'D0;
      parameter C0_A05_HIGH_ADDR = 'D0;
      parameter C0_A06_HIGH_ADDR = 'D0;
      parameter C0_A07_HIGH_ADDR = 'D0;
      parameter C0_A08_HIGH_ADDR = 'D0;
      parameter C0_A09_HIGH_ADDR = 'D0;
      parameter C0_A10_HIGH_ADDR = 'D0;
      parameter C0_A11_HIGH_ADDR = 'D0;
      parameter C0_A12_HIGH_ADDR = 'D0;
      parameter C0_A13_HIGH_ADDR = 'D0;
      parameter C0_A14_HIGH_ADDR = 'D0;
      parameter C0_A15_HIGH_ADDR = 'D0;
      parameter C1_NAME = "mem1";
      parameter C1_TYPE = "ddr4";
      parameter C1_SIZE = "16GB";
      parameter C1_AXI_ARBITRATION_SCHEME = "RD_PRI_REG";
      parameter C1_ControllerType = "DDR3_SDRAM";
      parameter C1_APP_ADDR_WIDTH = 30;
      parameter C1_APP_DATA_WIDTH = 512;
      parameter C1_Mem_Add_Map = "ROW_COLUMN_BANK";
      parameter C1_Ordering = "Normal";
      parameter C1_ADDR_WIDTH = 16;
      parameter C1_AXI_ADDR_WIDTH = 33;
      parameter C1_AXI_DATA_WIDTH = 512;
      parameter C1_AXI_ID_WIDTH = 1;
      parameter C1_BANK_GROUP_WIDTH = 2;
      parameter C1_BANK_WIDTH = 1;
      parameter C1_CL = 0;
      parameter C1_COLUMN_WIDTH = 10;
      parameter C1_CWL = 0;
      parameter C1_RANK_WIDTH = 2;
      parameter C1_ROW_WIDTH = 16;
      parameter C1_tCK = 1250;
      parameter C1_tCKE = 0;
      parameter C1_tFAW = 24;
      parameter C1_tMRD = 1;
      parameter C1_tRAS = 28;
      parameter C1_tRCD = 11;
      parameter C1_tREFI = 6240;
      parameter C1_tRFC = 208;
      parameter C1_tRP = 11;
      parameter C1_tRTW = 10;
      parameter C1_tCCD = 4;
      parameter C1_tRRD = 5;
      parameter C1_tRRD_L = 5;
      parameter C1_tRRD_S = 5;
      parameter C1_tRTP = 6;
      parameter C1_tWR = 12;
      parameter C1_tWTR = 6;
      parameter C1_tWTR_L = 6;
      parameter C1_tWTR_S = 6;
      parameter C1_tXPR = 54;
      parameter C1_tZQCS = 64;
      parameter C1_tZQI = 0;
      parameter C1_tZQINIT = 128;
      parameter C1_AutoPrecharge = "false";
      parameter C1_AxiNarrowBurst = "false";
      parameter C1_BURST_LENGTH = 8;
      parameter C1_CAS_LATENCY = 8;
      parameter C1_CAS_WRITE_LATENCY = 6;
      parameter C1_DATA_WIDTH = 8;
      parameter C1_MEMORY_PART = "MT41J512M8XX-107";
      parameter C1_MEM_ADDR_MAP = "ROW_COLUMN_BANK";
      parameter C1_TIMEPERIOD_PS = 10;
      parameter C1_A00_BASE_ADDR = 'H0000000400000000;
      parameter C1_A01_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C1_A02_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C1_A03_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C1_A04_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C1_A05_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C1_A06_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C1_A07_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C1_A08_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C1_A09_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C1_A10_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C1_A11_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C1_A12_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C1_A13_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C1_A14_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C1_A15_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C1_A00_HIGH_ADDR = 'H0000000400000000;
      parameter C1_A01_HIGH_ADDR = 'D0;
      parameter C1_A02_HIGH_ADDR = 'D0;
      parameter C1_A03_HIGH_ADDR = 'D0;
      parameter C1_A04_HIGH_ADDR = 'D0;
      parameter C1_A05_HIGH_ADDR = 'D0;
      parameter C1_A06_HIGH_ADDR = 'D0;
      parameter C1_A07_HIGH_ADDR = 'D0;
      parameter C1_A08_HIGH_ADDR = 'D0;
      parameter C1_A09_HIGH_ADDR = 'D0;
      parameter C1_A10_HIGH_ADDR = 'D0;
      parameter C1_A11_HIGH_ADDR = 'D0;
      parameter C1_A12_HIGH_ADDR = 'D0;
      parameter C1_A13_HIGH_ADDR = 'D0;
      parameter C1_A14_HIGH_ADDR = 'D0;
      parameter C1_A15_HIGH_ADDR = 'D0;
      parameter C2_NAME = "mem2";
      parameter C2_TYPE = "ddr4";
      parameter C2_SIZE = "16GB";
      parameter C2_AXI_ARBITRATION_SCHEME = "RD_PRI_REG";
      parameter C2_ControllerType = "DDR3_SDRAM";
      parameter C2_APP_ADDR_WIDTH = 30;
      parameter C2_APP_DATA_WIDTH = 512;
      parameter C2_Mem_Add_Map = "ROW_COLUMN_BANK";
      parameter C2_Ordering = "Normal";
      parameter C2_ADDR_WIDTH = 16;
      parameter C2_AXI_ADDR_WIDTH = 33;
      parameter C2_AXI_DATA_WIDTH = 512;
      parameter C2_AXI_ID_WIDTH = 1;
      parameter C2_BANK_GROUP_WIDTH = 2;
      parameter C2_BANK_WIDTH = 1;
      parameter C2_CL = 0;
      parameter C2_COLUMN_WIDTH = 10;
      parameter C2_CWL = 0;
      parameter C2_RANK_WIDTH = 2;
      parameter C2_ROW_WIDTH = 16;
      parameter C2_tCK = 1250;
      parameter C2_tCKE = 0;
      parameter C2_tFAW = 24;
      parameter C2_tMRD = 1;
      parameter C2_tRAS = 28;
      parameter C2_tRCD = 11;
      parameter C2_tREFI = 6240;
      parameter C2_tRFC = 208;
      parameter C2_tRP = 11;
      parameter C2_tRTW = 10;
      parameter C2_tCCD = 4;
      parameter C2_tRRD = 5;
      parameter C2_tRRD_L = 5;
      parameter C2_tRRD_S = 5;
      parameter C2_tRTP = 6;
      parameter C2_tWR = 12;
      parameter C2_tWTR = 6;
      parameter C2_tWTR_L = 6;
      parameter C2_tWTR_S = 6;
      parameter C2_tXPR = 54;
      parameter C2_tZQCS = 64;
      parameter C2_tZQI = 0;
      parameter C2_tZQINIT = 128;
      parameter C2_AutoPrecharge = "false";
      parameter C2_AxiNarrowBurst = "false";
      parameter C2_BURST_LENGTH = 8;
      parameter C2_CAS_LATENCY = 8;
      parameter C2_CAS_WRITE_LATENCY = 6;
      parameter C2_DATA_WIDTH = 8;
      parameter C2_MEMORY_PART = "MT41J512M8XX-107";
      parameter C2_MEM_ADDR_MAP = "ROW_COLUMN_BANK";
      parameter C2_TIMEPERIOD_PS = 10;
      parameter C2_A00_BASE_ADDR = 'H0000000800000000;
      parameter C2_A01_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C2_A02_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C2_A03_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C2_A04_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C2_A05_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C2_A06_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C2_A07_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C2_A08_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C2_A09_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C2_A10_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C2_A11_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C2_A12_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C2_A13_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C2_A14_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C2_A15_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C2_A00_HIGH_ADDR = 'H0000000400000000;
      parameter C2_A01_HIGH_ADDR = 'D0;
      parameter C2_A02_HIGH_ADDR = 'D0;
      parameter C2_A03_HIGH_ADDR = 'D0;
      parameter C2_A04_HIGH_ADDR = 'D0;
      parameter C2_A05_HIGH_ADDR = 'D0;
      parameter C2_A06_HIGH_ADDR = 'D0;
      parameter C2_A07_HIGH_ADDR = 'D0;
      parameter C2_A08_HIGH_ADDR = 'D0;
      parameter C2_A09_HIGH_ADDR = 'D0;
      parameter C2_A10_HIGH_ADDR = 'D0;
      parameter C2_A11_HIGH_ADDR = 'D0;
      parameter C2_A12_HIGH_ADDR = 'D0;
      parameter C2_A13_HIGH_ADDR = 'D0;
      parameter C2_A14_HIGH_ADDR = 'D0;
      parameter C2_A15_HIGH_ADDR = 'D0;
      parameter C3_NAME = "mem3";
      parameter C3_TYPE = "ddr4";
      parameter C3_SIZE = "16GB";
      parameter C3_AXI_ARBITRATION_SCHEME = "RD_PRI_REG";
      parameter C3_ControllerType = "DDR3_SDRAM";
      parameter C3_APP_ADDR_WIDTH = 30;
      parameter C3_APP_DATA_WIDTH = 512;
      parameter C3_Mem_Add_Map = "ROW_COLUMN_BANK";
      parameter C3_Ordering = "Normal";
      parameter C3_ADDR_WIDTH = 16;
      parameter C3_AXI_ADDR_WIDTH = 33;
      parameter C3_AXI_DATA_WIDTH = 512;
      parameter C3_AXI_ID_WIDTH = 1;
      parameter C3_BANK_GROUP_WIDTH = 2;
      parameter C3_BANK_WIDTH = 1;
      parameter C3_CL = 0;
      parameter C3_COLUMN_WIDTH = 10;
      parameter C3_CWL = 0;
      parameter C3_RANK_WIDTH = 2;
      parameter C3_ROW_WIDTH = 16;
      parameter C3_tCK = 1250;
      parameter C3_tCKE = 0;
      parameter C3_tFAW = 24;
      parameter C3_tMRD = 1;
      parameter C3_tRAS = 28;
      parameter C3_tRCD = 11;
      parameter C3_tREFI = 6240;
      parameter C3_tRFC = 208;
      parameter C3_tRP = 11;
      parameter C3_tRTW = 10;
      parameter C3_tCCD = 4;
      parameter C3_tRRD = 5;
      parameter C3_tRRD_L = 5;
      parameter C3_tRRD_S = 5;
      parameter C3_tRTP = 6;
      parameter C3_tWR = 12;
      parameter C3_tWTR = 6;
      parameter C3_tWTR_L = 6;
      parameter C3_tWTR_S = 6;
      parameter C3_tXPR = 54;
      parameter C3_tZQCS = 64;
      parameter C3_tZQI = 0;
      parameter C3_tZQINIT = 128;
      parameter C3_AutoPrecharge = "false";
      parameter C3_AxiNarrowBurst = "false";
      parameter C3_BURST_LENGTH = 8;
      parameter C3_CAS_LATENCY = 8;
      parameter C3_CAS_WRITE_LATENCY = 6;
      parameter C3_DATA_WIDTH = 8;
      parameter C3_MEMORY_PART = "MT41J512M8XX-107";
      parameter C3_MEM_ADDR_MAP = "ROW_COLUMN_BANK";
      parameter C3_TIMEPERIOD_PS = 10;
      parameter C3_A00_BASE_ADDR = 'H0000000C00000000;
      parameter C3_A01_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C3_A02_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C3_A03_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C3_A04_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C3_A05_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C3_A06_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C3_A07_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C3_A08_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C3_A09_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C3_A10_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C3_A11_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C3_A12_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C3_A13_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C3_A14_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C3_A15_BASE_ADDR = 'HFFFFFFFFFFFFFFFF;
      parameter C3_A00_HIGH_ADDR = 'H0000000400000000;
      parameter C3_A01_HIGH_ADDR = 'D0;
      parameter C3_A02_HIGH_ADDR = 'D0;
      parameter C3_A03_HIGH_ADDR = 'D0;
      parameter C3_A04_HIGH_ADDR = 'D0;
      parameter C3_A05_HIGH_ADDR = 'D0;
      parameter C3_A06_HIGH_ADDR = 'D0;
      parameter C3_A07_HIGH_ADDR = 'D0;
      parameter C3_A08_HIGH_ADDR = 'D0;
      parameter C3_A09_HIGH_ADDR = 'D0;
      parameter C3_A10_HIGH_ADDR = 'D0;
      parameter C3_A11_HIGH_ADDR = 'D0;
      parameter C3_A12_HIGH_ADDR = 'D0;
      parameter C3_A13_HIGH_ADDR = 'D0;
      parameter C3_A14_HIGH_ADDR = 'D0;
      parameter C3_A15_HIGH_ADDR = 'D0;


      input  c0_ui_clk;
      input  m_axi_ctrl_clk;
      input  c0_ddr_saxi_awvalid;
      output  c0_ddr_saxi_awready;
      input  [3 : 0] c0_ddr_saxi_awregion;
      input  [4 : 0] c0_ddr_saxi_awid;
      input  [35 : 0] c0_ddr_saxi_awaddr;
      input  [31 : 0] c0_ddr_saxi_awuser;
      input  [7 : 0] c0_ddr_saxi_awlen;
      input  [2 : 0] c0_ddr_saxi_awsize;
      input  [1 : 0] c0_ddr_saxi_awburst;
      input  [3 : 0] c0_ddr_saxi_awcache;
      input  c0_ddr_saxi_awlock;
      input  [2 : 0] c0_ddr_saxi_awprot;
      input  [3 : 0] c0_ddr_saxi_awqos;
      input  c0_ddr_saxi_wvalid;
      output  c0_ddr_saxi_wready;
      input  [511 : 0] c0_ddr_saxi_wdata;
      input  [63 : 0] c0_ddr_saxi_wstrb;
      input  c0_ddr_saxi_wlast;
      output  c0_ddr_saxi_bvalid;
      input  c0_ddr_saxi_bready;
      output  [4 : 0] c0_ddr_saxi_bid;
      output  [1 : 0] c0_ddr_saxi_bresp;
      input  c0_ddr_saxi_arvalid;
      output  c0_ddr_saxi_arready;
      input  [3 : 0] c0_ddr_saxi_arregion;
      input  [4 : 0] c0_ddr_saxi_arid;
      input  [35 : 0] c0_ddr_saxi_araddr;
      input  [31 : 0] c0_ddr_saxi_aruser;
      input  [7 : 0] c0_ddr_saxi_arlen;
      input  [2 : 0] c0_ddr_saxi_arsize;
      input  [1 : 0] c0_ddr_saxi_arburst;
      input  [3 : 0] c0_ddr_saxi_arcache;
      input  c0_ddr_saxi_arlock;
      input  [2 : 0] c0_ddr_saxi_arprot;
      input  [3 : 0] c0_ddr_saxi_arqos;
      output  c0_ddr_saxi_rvalid;
      input  c0_ddr_saxi_rready;
      output  [4 : 0] c0_ddr_saxi_rid;
      output  [511 : 0] c0_ddr_saxi_rdata;
      output  [1 : 0] c0_ddr_saxi_rresp;
      output  c0_ddr_saxi_rlast;
      input  c1_ddr_saxi_awvalid;
      output  c1_ddr_saxi_awready;
      input  [3 : 0] c1_ddr_saxi_awregion;
      input  [4 : 0] c1_ddr_saxi_awid;
      input  [35 : 0] c1_ddr_saxi_awaddr;
      input  [31 : 0] c1_ddr_saxi_awuser;
      input  [7 : 0] c1_ddr_saxi_awlen;
      input  [2 : 0] c1_ddr_saxi_awsize;
      input  [1 : 0] c1_ddr_saxi_awburst;
      input  [3 : 0] c1_ddr_saxi_awcache;
      input  c1_ddr_saxi_awlock;
      input  [2 : 0] c1_ddr_saxi_awprot;
      input  [3 : 0] c1_ddr_saxi_awqos;
      input  c1_ddr_saxi_wvalid;
      output  c1_ddr_saxi_wready;
      input  [511 : 0] c1_ddr_saxi_wdata;
      input  [63 : 0] c1_ddr_saxi_wstrb;
      input  c1_ddr_saxi_wlast;
      output  c1_ddr_saxi_bvalid;
      input  c1_ddr_saxi_bready;
      output  [4 : 0] c1_ddr_saxi_bid;
      output  [1 : 0] c1_ddr_saxi_bresp;
      input  c1_ddr_saxi_arvalid;
      output  c1_ddr_saxi_arready;
      input  [3 : 0] c1_ddr_saxi_arregion;
      input  [4 : 0] c1_ddr_saxi_arid;
      input  [35 : 0] c1_ddr_saxi_araddr;
      input  [31 : 0] c1_ddr_saxi_aruser;
      input  [7 : 0] c1_ddr_saxi_arlen;
      input  [2 : 0] c1_ddr_saxi_arsize;
      input  [1 : 0] c1_ddr_saxi_arburst;
      input  [3 : 0] c1_ddr_saxi_arcache;
      input  c1_ddr_saxi_arlock;
      input  [2 : 0] c1_ddr_saxi_arprot;
      input  [3 : 0] c1_ddr_saxi_arqos;
      output  c1_ddr_saxi_rvalid;
      input  c1_ddr_saxi_rready;
      output  [4 : 0] c1_ddr_saxi_rid;
      output  [511 : 0] c1_ddr_saxi_rdata;
      output  [1 : 0] c1_ddr_saxi_rresp;
      output  c1_ddr_saxi_rlast;
      input  c2_ddr_saxi_awvalid;
      output  c2_ddr_saxi_awready;
      input  [3 : 0] c2_ddr_saxi_awregion;
      input  [4 : 0] c2_ddr_saxi_awid;
      input  [35 : 0] c2_ddr_saxi_awaddr;
      input  [31 : 0] c2_ddr_saxi_awuser;
      input  [7 : 0] c2_ddr_saxi_awlen;
      input  [2 : 0] c2_ddr_saxi_awsize;
      input  [1 : 0] c2_ddr_saxi_awburst;
      input  [3 : 0] c2_ddr_saxi_awcache;
      input  c2_ddr_saxi_awlock;
      input  [2 : 0] c2_ddr_saxi_awprot;
      input  [3 : 0] c2_ddr_saxi_awqos;
      input  c2_ddr_saxi_wvalid;
      output  c2_ddr_saxi_wready;
      input  [511 : 0] c2_ddr_saxi_wdata;
      input  [63 : 0] c2_ddr_saxi_wstrb;
      input  c2_ddr_saxi_wlast;
      output  c2_ddr_saxi_bvalid;
      input  c2_ddr_saxi_bready;
      output  [4 : 0] c2_ddr_saxi_bid;
      output  [1 : 0] c2_ddr_saxi_bresp;
      input  c2_ddr_saxi_arvalid;
      output  c2_ddr_saxi_arready;
      input  [3 : 0] c2_ddr_saxi_arregion;
      input  [4 : 0] c2_ddr_saxi_arid;
      input  [35 : 0] c2_ddr_saxi_araddr;
      input  [31 : 0] c2_ddr_saxi_aruser;
      input  [7 : 0] c2_ddr_saxi_arlen;
      input  [2 : 0] c2_ddr_saxi_arsize;
      input  [1 : 0] c2_ddr_saxi_arburst;
      input  [3 : 0] c2_ddr_saxi_arcache;
      input  c2_ddr_saxi_arlock;
      input  [2 : 0] c2_ddr_saxi_arprot;
      input  [3 : 0] c2_ddr_saxi_arqos;
      output  c2_ddr_saxi_rvalid;
      input  c2_ddr_saxi_rready;
      output  [4 : 0] c2_ddr_saxi_rid;
      output  [511 : 0] c2_ddr_saxi_rdata;
      output  [1 : 0] c2_ddr_saxi_rresp;
      output  c2_ddr_saxi_rlast;
      input  c3_ddr_saxi_awvalid;
      output  c3_ddr_saxi_awready;
      input  [3 : 0] c3_ddr_saxi_awregion;
      input  [4 : 0] c3_ddr_saxi_awid;
      input  [35 : 0] c3_ddr_saxi_awaddr;
      input  [31 : 0] c3_ddr_saxi_awuser;
      input  [7 : 0] c3_ddr_saxi_awlen;
      input  [2 : 0] c3_ddr_saxi_awsize;
      input  [1 : 0] c3_ddr_saxi_awburst;
      input  [3 : 0] c3_ddr_saxi_awcache;
      input  c3_ddr_saxi_awlock;
      input  [2 : 0] c3_ddr_saxi_awprot;
      input  [3 : 0] c3_ddr_saxi_awqos;
      input  c3_ddr_saxi_wvalid;
      output  c3_ddr_saxi_wready;
      input  [511 : 0] c3_ddr_saxi_wdata;
      input  [63 : 0] c3_ddr_saxi_wstrb;
      input  c3_ddr_saxi_wlast;
      output  c3_ddr_saxi_bvalid;
      input  c3_ddr_saxi_bready;
      output  [4 : 0] c3_ddr_saxi_bid;
      output  [1 : 0] c3_ddr_saxi_bresp;
      input  c3_ddr_saxi_arvalid;
      output  c3_ddr_saxi_arready;
      input  [3 : 0] c3_ddr_saxi_arregion;
      input  [4 : 0] c3_ddr_saxi_arid;
      input  [35 : 0] c3_ddr_saxi_araddr;
      input  [31 : 0] c3_ddr_saxi_aruser;
      input  [7 : 0] c3_ddr_saxi_arlen;
      input  [2 : 0] c3_ddr_saxi_arsize;
      input  [1 : 0] c3_ddr_saxi_arburst;
      input  [3 : 0] c3_ddr_saxi_arcache;
      input  c3_ddr_saxi_arlock;
      input  [2 : 0] c3_ddr_saxi_arprot;
      input  [3 : 0] c3_ddr_saxi_arqos;
      output  c3_ddr_saxi_rvalid;
      input  c3_ddr_saxi_rready;
      output  [4 : 0] c3_ddr_saxi_rid;
      output  [511 : 0] c3_ddr_saxi_rdata;
      output  [1 : 0] c3_ddr_saxi_rresp;
      output  c3_ddr_saxi_rlast;
      output  m_axi_ctrl_awvalid;
      input  m_axi_ctrl_awready;
      output  [63 : 0] m_axi_ctrl_awaddr;
      output  m_axi_ctrl_wvalid;
      input  m_axi_ctrl_wready;
      output  [31 : 0] m_axi_ctrl_wdata;
      output  [3 : 0] m_axi_ctrl_wstrb;
      input  m_axi_ctrl_bvalid;
      output  m_axi_ctrl_bready;
      input  [1 : 0] m_axi_ctrl_bresp;
      output  m_axi_ctrl_arvalid;
      input  m_axi_ctrl_arready;
      output  [63 : 0] m_axi_ctrl_araddr;
      input  m_axi_ctrl_rvalid;
      output  m_axi_ctrl_rready;
      input  [31 : 0] m_axi_ctrl_rdata;
      input  [1 : 0] m_axi_ctrl_rresp;

      reg c0_ddr_saxi_awready;
      reg c0_ddr_saxi_wready;
      reg c0_ddr_saxi_bvalid;
      reg [4 : 0] c0_ddr_saxi_bid;
      reg [1 : 0] c0_ddr_saxi_bresp;
      reg c0_ddr_saxi_arready;
      reg c0_ddr_saxi_rvalid;
      reg [4 : 0] c0_ddr_saxi_rid;
      reg [511 : 0] c0_ddr_saxi_rdata;
      reg [1 : 0] c0_ddr_saxi_rresp;
      reg c0_ddr_saxi_rlast;
      reg c1_ddr_saxi_awready;
      reg c1_ddr_saxi_wready;
      reg c1_ddr_saxi_bvalid;
      reg [4 : 0] c1_ddr_saxi_bid;
      reg [1 : 0] c1_ddr_saxi_bresp;
      reg c1_ddr_saxi_arready;
      reg c1_ddr_saxi_rvalid;
      reg [4 : 0] c1_ddr_saxi_rid;
      reg [511 : 0] c1_ddr_saxi_rdata;
      reg [1 : 0] c1_ddr_saxi_rresp;
      reg c1_ddr_saxi_rlast;
      reg c2_ddr_saxi_awready;
      reg c2_ddr_saxi_wready;
      reg c2_ddr_saxi_bvalid;
      reg [4 : 0] c2_ddr_saxi_bid;
      reg [1 : 0] c2_ddr_saxi_bresp;
      reg c2_ddr_saxi_arready;
      reg c2_ddr_saxi_rvalid;
      reg [4 : 0] c2_ddr_saxi_rid;
      reg [511 : 0] c2_ddr_saxi_rdata;
      reg [1 : 0] c2_ddr_saxi_rresp;
      reg c2_ddr_saxi_rlast;
      reg c3_ddr_saxi_awready;
      reg c3_ddr_saxi_wready;
      reg c3_ddr_saxi_bvalid;
      reg [4 : 0] c3_ddr_saxi_bid;
      reg [1 : 0] c3_ddr_saxi_bresp;
      reg c3_ddr_saxi_arready;
      reg c3_ddr_saxi_rvalid;
      reg [4 : 0] c3_ddr_saxi_rid;
      reg [511 : 0] c3_ddr_saxi_rdata;
      reg [1 : 0] c3_ddr_saxi_rresp;
      reg c3_ddr_saxi_rlast;
      reg m_axi_ctrl_awvalid;
      reg [63 : 0] m_axi_ctrl_awaddr;
      reg m_axi_ctrl_wvalid;
      reg [31 : 0] m_axi_ctrl_wdata;
      reg [3 : 0] m_axi_ctrl_wstrb;
      reg m_axi_ctrl_bready;
      reg m_axi_ctrl_arvalid;
      reg [63 : 0] m_axi_ctrl_araddr;
      reg m_axi_ctrl_rready;
      string ip_name;
      string dpi_arguments;
      reg disable_port;
      reg l_c0_ddr_saxi_awvalid ;
      reg l_c0_ddr_saxi_wvalid ;
      reg l_c0_ddr_saxi_bready ;
      reg l_c0_ddr_saxi_arvalid ;
      reg l_c0_ddr_saxi_rready ;
      reg l_c1_ddr_saxi_awvalid ;
      reg l_c1_ddr_saxi_wvalid ;
      reg l_c1_ddr_saxi_bready ;
      reg l_c1_ddr_saxi_arvalid ;
      reg l_c1_ddr_saxi_rready ;
      reg l_c2_ddr_saxi_awvalid ;
      reg l_c2_ddr_saxi_wvalid ;
      reg l_c2_ddr_saxi_bready ;
      reg l_c2_ddr_saxi_arvalid ;
      reg l_c2_ddr_saxi_rready ;
      reg l_c3_ddr_saxi_awvalid ;
      reg l_c3_ddr_saxi_wvalid ;
      reg l_c3_ddr_saxi_bready ;
      reg l_c3_ddr_saxi_arvalid ;
      reg l_c3_ddr_saxi_rready ;
      reg l_m_axi_ctrl_awready ;
      reg l_m_axi_ctrl_wready ;
      reg l_m_axi_ctrl_bvalid ;
      reg l_m_axi_ctrl_arready ;
      reg l_m_axi_ctrl_rvalid ;
import "DPI-C" context function void sdaccel_generic_pcie_set_dpi_arguments(input string dpi_arguments);
import "DPI-C" context function void sdaccel_generic_pcie_set_str_param(input string name,input string val);
import "DPI-C" context function void sdaccel_generic_pcie_set_int_param(input string name,input longint val);
import "DPI-C" context function void sdaccel_generic_pcie_init_c_model();
import "DPI-C" context function void initialize_clk(input string  clk_name,input int frequency);
import "DPI-C" context function void sdaccel_generic_pcie_add_clk_id(input string  clk,input string clk_id);

import "DPI-C" context function void sdaccel_generic_pcie_init_c0_ddr_saxi(input int c0_ddr_saxi_awid_size,input int c0_ddr_saxi_awaddr_size,input int c0_ddr_saxi_awlen_size,input int c0_ddr_saxi_awsize_size,input int c0_ddr_saxi_awburst_size,input int c0_ddr_saxi_awlock_size,input int c0_ddr_saxi_awcache_size,input int c0_ddr_saxi_awprot_size,input int c0_ddr_saxi_awregion_size,input int c0_ddr_saxi_awqos_size,input int c0_ddr_saxi_awuser_size,input int c0_ddr_saxi_awvalid_size,input int c0_ddr_saxi_awready_size,input int c0_ddr_saxi_wdata_size,input int c0_ddr_saxi_wstrb_size,input int c0_ddr_saxi_wlast_size,input int c0_ddr_saxi_wvalid_size,input int c0_ddr_saxi_wready_size,input int c0_ddr_saxi_bid_size,input int c0_ddr_saxi_bresp_size,input int c0_ddr_saxi_bvalid_size,input int c0_ddr_saxi_bready_size,input int c0_ddr_saxi_arid_size,input int c0_ddr_saxi_araddr_size,input int c0_ddr_saxi_arlen_size,input int c0_ddr_saxi_arsize_size,input int c0_ddr_saxi_arburst_size,input int c0_ddr_saxi_arlock_size,input int c0_ddr_saxi_arcache_size,input int c0_ddr_saxi_arprot_size,input int c0_ddr_saxi_arregion_size,input int c0_ddr_saxi_arqos_size,input int c0_ddr_saxi_aruser_size,input int c0_ddr_saxi_arvalid_size,input int c0_ddr_saxi_arready_size,input int c0_ddr_saxi_rid_size,input int c0_ddr_saxi_rdata_size,input int c0_ddr_saxi_rresp_size,input int c0_ddr_saxi_rlast_size,input int c0_ddr_saxi_rvalid_size,input int c0_ddr_saxi_rready_size);

import "DPI-C" context function void sdaccel_generic_pcie_init_c1_ddr_saxi(input int c1_ddr_saxi_awid_size,input int c1_ddr_saxi_awaddr_size,input int c1_ddr_saxi_awlen_size,input int c1_ddr_saxi_awsize_size,input int c1_ddr_saxi_awburst_size,input int c1_ddr_saxi_awlock_size,input int c1_ddr_saxi_awcache_size,input int c1_ddr_saxi_awprot_size,input int c1_ddr_saxi_awregion_size,input int c1_ddr_saxi_awqos_size,input int c1_ddr_saxi_awuser_size,input int c1_ddr_saxi_awvalid_size,input int c1_ddr_saxi_awready_size,input int c1_ddr_saxi_wdata_size,input int c1_ddr_saxi_wstrb_size,input int c1_ddr_saxi_wlast_size,input int c1_ddr_saxi_wvalid_size,input int c1_ddr_saxi_wready_size,input int c1_ddr_saxi_bid_size,input int c1_ddr_saxi_bresp_size,input int c1_ddr_saxi_bvalid_size,input int c1_ddr_saxi_bready_size,input int c1_ddr_saxi_arid_size,input int c1_ddr_saxi_araddr_size,input int c1_ddr_saxi_arlen_size,input int c1_ddr_saxi_arsize_size,input int c1_ddr_saxi_arburst_size,input int c1_ddr_saxi_arlock_size,input int c1_ddr_saxi_arcache_size,input int c1_ddr_saxi_arprot_size,input int c1_ddr_saxi_arregion_size,input int c1_ddr_saxi_arqos_size,input int c1_ddr_saxi_aruser_size,input int c1_ddr_saxi_arvalid_size,input int c1_ddr_saxi_arready_size,input int c1_ddr_saxi_rid_size,input int c1_ddr_saxi_rdata_size,input int c1_ddr_saxi_rresp_size,input int c1_ddr_saxi_rlast_size,input int c1_ddr_saxi_rvalid_size,input int c1_ddr_saxi_rready_size);

import "DPI-C" context function void sdaccel_generic_pcie_init_c2_ddr_saxi(input int c2_ddr_saxi_awid_size,input int c2_ddr_saxi_awaddr_size,input int c2_ddr_saxi_awlen_size,input int c2_ddr_saxi_awsize_size,input int c2_ddr_saxi_awburst_size,input int c2_ddr_saxi_awlock_size,input int c2_ddr_saxi_awcache_size,input int c2_ddr_saxi_awprot_size,input int c2_ddr_saxi_awregion_size,input int c2_ddr_saxi_awqos_size,input int c2_ddr_saxi_awuser_size,input int c2_ddr_saxi_awvalid_size,input int c2_ddr_saxi_awready_size,input int c2_ddr_saxi_wdata_size,input int c2_ddr_saxi_wstrb_size,input int c2_ddr_saxi_wlast_size,input int c2_ddr_saxi_wvalid_size,input int c2_ddr_saxi_wready_size,input int c2_ddr_saxi_bid_size,input int c2_ddr_saxi_bresp_size,input int c2_ddr_saxi_bvalid_size,input int c2_ddr_saxi_bready_size,input int c2_ddr_saxi_arid_size,input int c2_ddr_saxi_araddr_size,input int c2_ddr_saxi_arlen_size,input int c2_ddr_saxi_arsize_size,input int c2_ddr_saxi_arburst_size,input int c2_ddr_saxi_arlock_size,input int c2_ddr_saxi_arcache_size,input int c2_ddr_saxi_arprot_size,input int c2_ddr_saxi_arregion_size,input int c2_ddr_saxi_arqos_size,input int c2_ddr_saxi_aruser_size,input int c2_ddr_saxi_arvalid_size,input int c2_ddr_saxi_arready_size,input int c2_ddr_saxi_rid_size,input int c2_ddr_saxi_rdata_size,input int c2_ddr_saxi_rresp_size,input int c2_ddr_saxi_rlast_size,input int c2_ddr_saxi_rvalid_size,input int c2_ddr_saxi_rready_size);

import "DPI-C" context function void sdaccel_generic_pcie_init_c3_ddr_saxi(input int c3_ddr_saxi_awid_size,input int c3_ddr_saxi_awaddr_size,input int c3_ddr_saxi_awlen_size,input int c3_ddr_saxi_awsize_size,input int c3_ddr_saxi_awburst_size,input int c3_ddr_saxi_awlock_size,input int c3_ddr_saxi_awcache_size,input int c3_ddr_saxi_awprot_size,input int c3_ddr_saxi_awregion_size,input int c3_ddr_saxi_awqos_size,input int c3_ddr_saxi_awuser_size,input int c3_ddr_saxi_awvalid_size,input int c3_ddr_saxi_awready_size,input int c3_ddr_saxi_wdata_size,input int c3_ddr_saxi_wstrb_size,input int c3_ddr_saxi_wlast_size,input int c3_ddr_saxi_wvalid_size,input int c3_ddr_saxi_wready_size,input int c3_ddr_saxi_bid_size,input int c3_ddr_saxi_bresp_size,input int c3_ddr_saxi_bvalid_size,input int c3_ddr_saxi_bready_size,input int c3_ddr_saxi_arid_size,input int c3_ddr_saxi_araddr_size,input int c3_ddr_saxi_arlen_size,input int c3_ddr_saxi_arsize_size,input int c3_ddr_saxi_arburst_size,input int c3_ddr_saxi_arlock_size,input int c3_ddr_saxi_arcache_size,input int c3_ddr_saxi_arprot_size,input int c3_ddr_saxi_arregion_size,input int c3_ddr_saxi_arqos_size,input int c3_ddr_saxi_aruser_size,input int c3_ddr_saxi_arvalid_size,input int c3_ddr_saxi_arready_size,input int c3_ddr_saxi_rid_size,input int c3_ddr_saxi_rdata_size,input int c3_ddr_saxi_rresp_size,input int c3_ddr_saxi_rlast_size,input int c3_ddr_saxi_rvalid_size,input int c3_ddr_saxi_rready_size);

import "DPI-C" context function void sdaccel_generic_pcie_init_m_axi_ctrl(input int m_axi_ctrl_awaddr_size,input int m_axi_ctrl_awvalid_size,input int m_axi_ctrl_awready_size,input int m_axi_ctrl_wdata_size,input int m_axi_ctrl_wstrb_size,input int m_axi_ctrl_wvalid_size,input int m_axi_ctrl_wready_size,input int m_axi_ctrl_bresp_size,input int m_axi_ctrl_bvalid_size,input int m_axi_ctrl_bready_size,input int m_axi_ctrl_araddr_size,input int m_axi_ctrl_arvalid_size,input int m_axi_ctrl_arready_size,input int m_axi_ctrl_rdata_size,input int m_axi_ctrl_rresp_size,input int m_axi_ctrl_rvalid_size,input int m_axi_ctrl_rready_size);
export "DPI-C" function  sdaccel_generic_pcie_check_inputs_c0_ddr_saxi_c0_ui_clk;
 function bit  sdaccel_generic_pcie_check_inputs_c0_ddr_saxi_c0_ui_clk();
  bit ret_value;
 if( ( c0_ddr_saxi_awvalid === 1'b1 || ( l_c0_ddr_saxi_awvalid === 1'b1 && c0_ddr_saxi_awvalid === 1'b0 ) ) || ( c0_ddr_saxi_wvalid === 1'b1 || ( l_c0_ddr_saxi_wvalid === 1'b1 && c0_ddr_saxi_wvalid === 1'b0 ) ) || ( l_c0_ddr_saxi_bready !== c0_ddr_saxi_bready) || ( c0_ddr_saxi_arvalid === 1'b1 || ( l_c0_ddr_saxi_arvalid === 1'b1 && c0_ddr_saxi_arvalid === 1'b0 ) ) || ( l_c0_ddr_saxi_rready !== c0_ddr_saxi_rready) )
 begin 
 l_c0_ddr_saxi_awvalid = c0_ddr_saxi_awvalid;
 l_c0_ddr_saxi_wvalid = c0_ddr_saxi_wvalid;
 l_c0_ddr_saxi_bready = c0_ddr_saxi_bready;
 l_c0_ddr_saxi_arvalid = c0_ddr_saxi_arvalid;
 l_c0_ddr_saxi_rready = c0_ddr_saxi_rready;
 ret_value = 1;
 end
else 
 ret_value = 0;
 return ret_value;
endfunction

export "DPI-C" function  sdaccel_generic_pcie_get_inputs_c0_ddr_saxi_c0_ui_clk;
function void  sdaccel_generic_pcie_get_inputs_c0_ddr_saxi_c0_ui_clk( 
output bit [4 : 0] p_c0_ddr_saxi_awid,
output bit [35 : 0] p_c0_ddr_saxi_awaddr,
output bit [7 : 0] p_c0_ddr_saxi_awlen,
output bit [2 : 0] p_c0_ddr_saxi_awsize,
output bit [1 : 0] p_c0_ddr_saxi_awburst,
output bit p_c0_ddr_saxi_awlock,
output bit [3 : 0] p_c0_ddr_saxi_awcache,
output bit [2 : 0] p_c0_ddr_saxi_awprot,
output bit [3 : 0] p_c0_ddr_saxi_awregion,
output bit [3 : 0] p_c0_ddr_saxi_awqos,
output bit [31 : 0] p_c0_ddr_saxi_awuser,
output bit p_c0_ddr_saxi_awvalid,
output bit [511 : 0] p_c0_ddr_saxi_wdata,
output bit [63 : 0] p_c0_ddr_saxi_wstrb,
output bit p_c0_ddr_saxi_wlast,
output bit p_c0_ddr_saxi_wvalid,
output bit p_c0_ddr_saxi_bready,
output bit [4 : 0] p_c0_ddr_saxi_arid,
output bit [35 : 0] p_c0_ddr_saxi_araddr,
output bit [7 : 0] p_c0_ddr_saxi_arlen,
output bit [2 : 0] p_c0_ddr_saxi_arsize,
output bit [1 : 0] p_c0_ddr_saxi_arburst,
output bit p_c0_ddr_saxi_arlock,
output bit [3 : 0] p_c0_ddr_saxi_arcache,
output bit [2 : 0] p_c0_ddr_saxi_arprot,
output bit [3 : 0] p_c0_ddr_saxi_arregion,
output bit [3 : 0] p_c0_ddr_saxi_arqos,
output bit [31 : 0] p_c0_ddr_saxi_aruser,
output bit p_c0_ddr_saxi_arvalid,
output bit p_c0_ddr_saxi_rready
);
 p_c0_ddr_saxi_awid = c0_ddr_saxi_awid ;
 p_c0_ddr_saxi_awaddr = c0_ddr_saxi_awaddr ;
 p_c0_ddr_saxi_awlen = c0_ddr_saxi_awlen ;
 p_c0_ddr_saxi_awsize = c0_ddr_saxi_awsize ;
 p_c0_ddr_saxi_awburst = c0_ddr_saxi_awburst ;
 p_c0_ddr_saxi_awlock = c0_ddr_saxi_awlock ;
 p_c0_ddr_saxi_awcache = c0_ddr_saxi_awcache ;
 p_c0_ddr_saxi_awprot = c0_ddr_saxi_awprot ;
 p_c0_ddr_saxi_awregion = c0_ddr_saxi_awregion ;
 p_c0_ddr_saxi_awqos = c0_ddr_saxi_awqos ;
 p_c0_ddr_saxi_awuser = c0_ddr_saxi_awuser ;
 p_c0_ddr_saxi_awvalid = c0_ddr_saxi_awvalid ;
 p_c0_ddr_saxi_wdata = c0_ddr_saxi_wdata ;
 p_c0_ddr_saxi_wstrb = c0_ddr_saxi_wstrb ;
 p_c0_ddr_saxi_wlast = c0_ddr_saxi_wlast ;
 p_c0_ddr_saxi_wvalid = c0_ddr_saxi_wvalid ;
 p_c0_ddr_saxi_bready = c0_ddr_saxi_bready ;
 p_c0_ddr_saxi_arid = c0_ddr_saxi_arid ;
 p_c0_ddr_saxi_araddr = c0_ddr_saxi_araddr ;
 p_c0_ddr_saxi_arlen = c0_ddr_saxi_arlen ;
 p_c0_ddr_saxi_arsize = c0_ddr_saxi_arsize ;
 p_c0_ddr_saxi_arburst = c0_ddr_saxi_arburst ;
 p_c0_ddr_saxi_arlock = c0_ddr_saxi_arlock ;
 p_c0_ddr_saxi_arcache = c0_ddr_saxi_arcache ;
 p_c0_ddr_saxi_arprot = c0_ddr_saxi_arprot ;
 p_c0_ddr_saxi_arregion = c0_ddr_saxi_arregion ;
 p_c0_ddr_saxi_arqos = c0_ddr_saxi_arqos ;
 p_c0_ddr_saxi_aruser = c0_ddr_saxi_aruser ;
 p_c0_ddr_saxi_arvalid = c0_ddr_saxi_arvalid ;
 p_c0_ddr_saxi_rready = c0_ddr_saxi_rready ;
endfunction

export "DPI-C" function  sdaccel_generic_pcie_set_outputs_c0_ddr_saxi_c0_ui_clk;
function void  sdaccel_generic_pcie_set_outputs_c0_ddr_saxi_c0_ui_clk( 
input bit p_c0_ddr_saxi_awready,
input bit p_c0_ddr_saxi_wready,
input bit [4 : 0] p_c0_ddr_saxi_bid,
input bit [1 : 0] p_c0_ddr_saxi_bresp,
input bit p_c0_ddr_saxi_bvalid,
input bit p_c0_ddr_saxi_arready,
input bit [4 : 0] p_c0_ddr_saxi_rid,
input bit [511 : 0] p_c0_ddr_saxi_rdata,
input bit [1 : 0] p_c0_ddr_saxi_rresp,
input bit p_c0_ddr_saxi_rlast,
input bit p_c0_ddr_saxi_rvalid
);
 c0_ddr_saxi_awready = p_c0_ddr_saxi_awready ;
 c0_ddr_saxi_wready = p_c0_ddr_saxi_wready ;
 c0_ddr_saxi_bid = p_c0_ddr_saxi_bid ;
 c0_ddr_saxi_bresp = p_c0_ddr_saxi_bresp ;
 c0_ddr_saxi_bvalid = p_c0_ddr_saxi_bvalid ;
 c0_ddr_saxi_arready = p_c0_ddr_saxi_arready ;
 c0_ddr_saxi_rid = p_c0_ddr_saxi_rid ;
 c0_ddr_saxi_rdata = p_c0_ddr_saxi_rdata ;
 c0_ddr_saxi_rresp = p_c0_ddr_saxi_rresp ;
 c0_ddr_saxi_rlast = p_c0_ddr_saxi_rlast ;
 c0_ddr_saxi_rvalid = p_c0_ddr_saxi_rvalid ;
endfunction

export "DPI-C" function  sdaccel_generic_pcie_check_inputs_c1_ddr_saxi_c0_ui_clk;
 function bit  sdaccel_generic_pcie_check_inputs_c1_ddr_saxi_c0_ui_clk();
  bit ret_value;
 if( ( c1_ddr_saxi_awvalid === 1'b1 || ( l_c1_ddr_saxi_awvalid === 1'b1 && c1_ddr_saxi_awvalid === 1'b0 ) ) || ( c1_ddr_saxi_wvalid === 1'b1 || ( l_c1_ddr_saxi_wvalid === 1'b1 && c1_ddr_saxi_wvalid === 1'b0 ) ) || ( l_c1_ddr_saxi_bready !== c1_ddr_saxi_bready) || ( c1_ddr_saxi_arvalid === 1'b1 || ( l_c1_ddr_saxi_arvalid === 1'b1 && c1_ddr_saxi_arvalid === 1'b0 ) ) || ( l_c1_ddr_saxi_rready !== c1_ddr_saxi_rready) )
 begin 
 l_c1_ddr_saxi_awvalid = c1_ddr_saxi_awvalid;
 l_c1_ddr_saxi_wvalid = c1_ddr_saxi_wvalid;
 l_c1_ddr_saxi_bready = c1_ddr_saxi_bready;
 l_c1_ddr_saxi_arvalid = c1_ddr_saxi_arvalid;
 l_c1_ddr_saxi_rready = c1_ddr_saxi_rready;
 ret_value = 1;
 end
else 
 ret_value = 0;
 return ret_value;
endfunction

export "DPI-C" function  sdaccel_generic_pcie_get_inputs_c1_ddr_saxi_c0_ui_clk;
function void  sdaccel_generic_pcie_get_inputs_c1_ddr_saxi_c0_ui_clk( 
output bit [4 : 0] p_c1_ddr_saxi_awid,
output bit [35 : 0] p_c1_ddr_saxi_awaddr,
output bit [7 : 0] p_c1_ddr_saxi_awlen,
output bit [2 : 0] p_c1_ddr_saxi_awsize,
output bit [1 : 0] p_c1_ddr_saxi_awburst,
output bit p_c1_ddr_saxi_awlock,
output bit [3 : 0] p_c1_ddr_saxi_awcache,
output bit [2 : 0] p_c1_ddr_saxi_awprot,
output bit [3 : 0] p_c1_ddr_saxi_awregion,
output bit [3 : 0] p_c1_ddr_saxi_awqos,
output bit [31 : 0] p_c1_ddr_saxi_awuser,
output bit p_c1_ddr_saxi_awvalid,
output bit [511 : 0] p_c1_ddr_saxi_wdata,
output bit [63 : 0] p_c1_ddr_saxi_wstrb,
output bit p_c1_ddr_saxi_wlast,
output bit p_c1_ddr_saxi_wvalid,
output bit p_c1_ddr_saxi_bready,
output bit [4 : 0] p_c1_ddr_saxi_arid,
output bit [35 : 0] p_c1_ddr_saxi_araddr,
output bit [7 : 0] p_c1_ddr_saxi_arlen,
output bit [2 : 0] p_c1_ddr_saxi_arsize,
output bit [1 : 0] p_c1_ddr_saxi_arburst,
output bit p_c1_ddr_saxi_arlock,
output bit [3 : 0] p_c1_ddr_saxi_arcache,
output bit [2 : 0] p_c1_ddr_saxi_arprot,
output bit [3 : 0] p_c1_ddr_saxi_arregion,
output bit [3 : 0] p_c1_ddr_saxi_arqos,
output bit [31 : 0] p_c1_ddr_saxi_aruser,
output bit p_c1_ddr_saxi_arvalid,
output bit p_c1_ddr_saxi_rready
);
 p_c1_ddr_saxi_awid = c1_ddr_saxi_awid ;
 p_c1_ddr_saxi_awaddr = c1_ddr_saxi_awaddr ;
 p_c1_ddr_saxi_awlen = c1_ddr_saxi_awlen ;
 p_c1_ddr_saxi_awsize = c1_ddr_saxi_awsize ;
 p_c1_ddr_saxi_awburst = c1_ddr_saxi_awburst ;
 p_c1_ddr_saxi_awlock = c1_ddr_saxi_awlock ;
 p_c1_ddr_saxi_awcache = c1_ddr_saxi_awcache ;
 p_c1_ddr_saxi_awprot = c1_ddr_saxi_awprot ;
 p_c1_ddr_saxi_awregion = c1_ddr_saxi_awregion ;
 p_c1_ddr_saxi_awqos = c1_ddr_saxi_awqos ;
 p_c1_ddr_saxi_awuser = c1_ddr_saxi_awuser ;
 p_c1_ddr_saxi_awvalid = c1_ddr_saxi_awvalid ;
 p_c1_ddr_saxi_wdata = c1_ddr_saxi_wdata ;
 p_c1_ddr_saxi_wstrb = c1_ddr_saxi_wstrb ;
 p_c1_ddr_saxi_wlast = c1_ddr_saxi_wlast ;
 p_c1_ddr_saxi_wvalid = c1_ddr_saxi_wvalid ;
 p_c1_ddr_saxi_bready = c1_ddr_saxi_bready ;
 p_c1_ddr_saxi_arid = c1_ddr_saxi_arid ;
 p_c1_ddr_saxi_araddr = c1_ddr_saxi_araddr ;
 p_c1_ddr_saxi_arlen = c1_ddr_saxi_arlen ;
 p_c1_ddr_saxi_arsize = c1_ddr_saxi_arsize ;
 p_c1_ddr_saxi_arburst = c1_ddr_saxi_arburst ;
 p_c1_ddr_saxi_arlock = c1_ddr_saxi_arlock ;
 p_c1_ddr_saxi_arcache = c1_ddr_saxi_arcache ;
 p_c1_ddr_saxi_arprot = c1_ddr_saxi_arprot ;
 p_c1_ddr_saxi_arregion = c1_ddr_saxi_arregion ;
 p_c1_ddr_saxi_arqos = c1_ddr_saxi_arqos ;
 p_c1_ddr_saxi_aruser = c1_ddr_saxi_aruser ;
 p_c1_ddr_saxi_arvalid = c1_ddr_saxi_arvalid ;
 p_c1_ddr_saxi_rready = c1_ddr_saxi_rready ;
endfunction

export "DPI-C" function  sdaccel_generic_pcie_set_outputs_c1_ddr_saxi_c0_ui_clk;
function void  sdaccel_generic_pcie_set_outputs_c1_ddr_saxi_c0_ui_clk( 
input bit p_c1_ddr_saxi_awready,
input bit p_c1_ddr_saxi_wready,
input bit [4 : 0] p_c1_ddr_saxi_bid,
input bit [1 : 0] p_c1_ddr_saxi_bresp,
input bit p_c1_ddr_saxi_bvalid,
input bit p_c1_ddr_saxi_arready,
input bit [4 : 0] p_c1_ddr_saxi_rid,
input bit [511 : 0] p_c1_ddr_saxi_rdata,
input bit [1 : 0] p_c1_ddr_saxi_rresp,
input bit p_c1_ddr_saxi_rlast,
input bit p_c1_ddr_saxi_rvalid
);
 c1_ddr_saxi_awready = p_c1_ddr_saxi_awready ;
 c1_ddr_saxi_wready = p_c1_ddr_saxi_wready ;
 c1_ddr_saxi_bid = p_c1_ddr_saxi_bid ;
 c1_ddr_saxi_bresp = p_c1_ddr_saxi_bresp ;
 c1_ddr_saxi_bvalid = p_c1_ddr_saxi_bvalid ;
 c1_ddr_saxi_arready = p_c1_ddr_saxi_arready ;
 c1_ddr_saxi_rid = p_c1_ddr_saxi_rid ;
 c1_ddr_saxi_rdata = p_c1_ddr_saxi_rdata ;
 c1_ddr_saxi_rresp = p_c1_ddr_saxi_rresp ;
 c1_ddr_saxi_rlast = p_c1_ddr_saxi_rlast ;
 c1_ddr_saxi_rvalid = p_c1_ddr_saxi_rvalid ;
endfunction

export "DPI-C" function  sdaccel_generic_pcie_check_inputs_c2_ddr_saxi_c0_ui_clk;
 function bit  sdaccel_generic_pcie_check_inputs_c2_ddr_saxi_c0_ui_clk();
  bit ret_value;
 if( ( c2_ddr_saxi_awvalid === 1'b1 || ( l_c2_ddr_saxi_awvalid === 1'b1 && c2_ddr_saxi_awvalid === 1'b0 ) ) || ( c2_ddr_saxi_wvalid === 1'b1 || ( l_c2_ddr_saxi_wvalid === 1'b1 && c2_ddr_saxi_wvalid === 1'b0 ) ) || ( l_c2_ddr_saxi_bready !== c2_ddr_saxi_bready) || ( c2_ddr_saxi_arvalid === 1'b1 || ( l_c2_ddr_saxi_arvalid === 1'b1 && c2_ddr_saxi_arvalid === 1'b0 ) ) || ( l_c2_ddr_saxi_rready !== c2_ddr_saxi_rready) )
 begin 
 l_c2_ddr_saxi_awvalid = c2_ddr_saxi_awvalid;
 l_c2_ddr_saxi_wvalid = c2_ddr_saxi_wvalid;
 l_c2_ddr_saxi_bready = c2_ddr_saxi_bready;
 l_c2_ddr_saxi_arvalid = c2_ddr_saxi_arvalid;
 l_c2_ddr_saxi_rready = c2_ddr_saxi_rready;
 ret_value = 1;
 end
else 
 ret_value = 0;
 return ret_value;
endfunction

export "DPI-C" function  sdaccel_generic_pcie_get_inputs_c2_ddr_saxi_c0_ui_clk;
function void  sdaccel_generic_pcie_get_inputs_c2_ddr_saxi_c0_ui_clk( 
output bit [4 : 0] p_c2_ddr_saxi_awid,
output bit [35 : 0] p_c2_ddr_saxi_awaddr,
output bit [7 : 0] p_c2_ddr_saxi_awlen,
output bit [2 : 0] p_c2_ddr_saxi_awsize,
output bit [1 : 0] p_c2_ddr_saxi_awburst,
output bit p_c2_ddr_saxi_awlock,
output bit [3 : 0] p_c2_ddr_saxi_awcache,
output bit [2 : 0] p_c2_ddr_saxi_awprot,
output bit [3 : 0] p_c2_ddr_saxi_awregion,
output bit [3 : 0] p_c2_ddr_saxi_awqos,
output bit [31 : 0] p_c2_ddr_saxi_awuser,
output bit p_c2_ddr_saxi_awvalid,
output bit [511 : 0] p_c2_ddr_saxi_wdata,
output bit [63 : 0] p_c2_ddr_saxi_wstrb,
output bit p_c2_ddr_saxi_wlast,
output bit p_c2_ddr_saxi_wvalid,
output bit p_c2_ddr_saxi_bready,
output bit [4 : 0] p_c2_ddr_saxi_arid,
output bit [35 : 0] p_c2_ddr_saxi_araddr,
output bit [7 : 0] p_c2_ddr_saxi_arlen,
output bit [2 : 0] p_c2_ddr_saxi_arsize,
output bit [1 : 0] p_c2_ddr_saxi_arburst,
output bit p_c2_ddr_saxi_arlock,
output bit [3 : 0] p_c2_ddr_saxi_arcache,
output bit [2 : 0] p_c2_ddr_saxi_arprot,
output bit [3 : 0] p_c2_ddr_saxi_arregion,
output bit [3 : 0] p_c2_ddr_saxi_arqos,
output bit [31 : 0] p_c2_ddr_saxi_aruser,
output bit p_c2_ddr_saxi_arvalid,
output bit p_c2_ddr_saxi_rready
);
 p_c2_ddr_saxi_awid = c2_ddr_saxi_awid ;
 p_c2_ddr_saxi_awaddr = c2_ddr_saxi_awaddr ;
 p_c2_ddr_saxi_awlen = c2_ddr_saxi_awlen ;
 p_c2_ddr_saxi_awsize = c2_ddr_saxi_awsize ;
 p_c2_ddr_saxi_awburst = c2_ddr_saxi_awburst ;
 p_c2_ddr_saxi_awlock = c2_ddr_saxi_awlock ;
 p_c2_ddr_saxi_awcache = c2_ddr_saxi_awcache ;
 p_c2_ddr_saxi_awprot = c2_ddr_saxi_awprot ;
 p_c2_ddr_saxi_awregion = c2_ddr_saxi_awregion ;
 p_c2_ddr_saxi_awqos = c2_ddr_saxi_awqos ;
 p_c2_ddr_saxi_awuser = c2_ddr_saxi_awuser ;
 p_c2_ddr_saxi_awvalid = c2_ddr_saxi_awvalid ;
 p_c2_ddr_saxi_wdata = c2_ddr_saxi_wdata ;
 p_c2_ddr_saxi_wstrb = c2_ddr_saxi_wstrb ;
 p_c2_ddr_saxi_wlast = c2_ddr_saxi_wlast ;
 p_c2_ddr_saxi_wvalid = c2_ddr_saxi_wvalid ;
 p_c2_ddr_saxi_bready = c2_ddr_saxi_bready ;
 p_c2_ddr_saxi_arid = c2_ddr_saxi_arid ;
 p_c2_ddr_saxi_araddr = c2_ddr_saxi_araddr ;
 p_c2_ddr_saxi_arlen = c2_ddr_saxi_arlen ;
 p_c2_ddr_saxi_arsize = c2_ddr_saxi_arsize ;
 p_c2_ddr_saxi_arburst = c2_ddr_saxi_arburst ;
 p_c2_ddr_saxi_arlock = c2_ddr_saxi_arlock ;
 p_c2_ddr_saxi_arcache = c2_ddr_saxi_arcache ;
 p_c2_ddr_saxi_arprot = c2_ddr_saxi_arprot ;
 p_c2_ddr_saxi_arregion = c2_ddr_saxi_arregion ;
 p_c2_ddr_saxi_arqos = c2_ddr_saxi_arqos ;
 p_c2_ddr_saxi_aruser = c2_ddr_saxi_aruser ;
 p_c2_ddr_saxi_arvalid = c2_ddr_saxi_arvalid ;
 p_c2_ddr_saxi_rready = c2_ddr_saxi_rready ;
endfunction

export "DPI-C" function  sdaccel_generic_pcie_set_outputs_c2_ddr_saxi_c0_ui_clk;
function void  sdaccel_generic_pcie_set_outputs_c2_ddr_saxi_c0_ui_clk( 
input bit p_c2_ddr_saxi_awready,
input bit p_c2_ddr_saxi_wready,
input bit [4 : 0] p_c2_ddr_saxi_bid,
input bit [1 : 0] p_c2_ddr_saxi_bresp,
input bit p_c2_ddr_saxi_bvalid,
input bit p_c2_ddr_saxi_arready,
input bit [4 : 0] p_c2_ddr_saxi_rid,
input bit [511 : 0] p_c2_ddr_saxi_rdata,
input bit [1 : 0] p_c2_ddr_saxi_rresp,
input bit p_c2_ddr_saxi_rlast,
input bit p_c2_ddr_saxi_rvalid
);
 c2_ddr_saxi_awready = p_c2_ddr_saxi_awready ;
 c2_ddr_saxi_wready = p_c2_ddr_saxi_wready ;
 c2_ddr_saxi_bid = p_c2_ddr_saxi_bid ;
 c2_ddr_saxi_bresp = p_c2_ddr_saxi_bresp ;
 c2_ddr_saxi_bvalid = p_c2_ddr_saxi_bvalid ;
 c2_ddr_saxi_arready = p_c2_ddr_saxi_arready ;
 c2_ddr_saxi_rid = p_c2_ddr_saxi_rid ;
 c2_ddr_saxi_rdata = p_c2_ddr_saxi_rdata ;
 c2_ddr_saxi_rresp = p_c2_ddr_saxi_rresp ;
 c2_ddr_saxi_rlast = p_c2_ddr_saxi_rlast ;
 c2_ddr_saxi_rvalid = p_c2_ddr_saxi_rvalid ;
endfunction

export "DPI-C" function  sdaccel_generic_pcie_check_inputs_c3_ddr_saxi_c0_ui_clk;
 function bit  sdaccel_generic_pcie_check_inputs_c3_ddr_saxi_c0_ui_clk();
  bit ret_value;
 if( ( c3_ddr_saxi_awvalid === 1'b1 || ( l_c3_ddr_saxi_awvalid === 1'b1 && c3_ddr_saxi_awvalid === 1'b0 ) ) || ( c3_ddr_saxi_wvalid === 1'b1 || ( l_c3_ddr_saxi_wvalid === 1'b1 && c3_ddr_saxi_wvalid === 1'b0 ) ) || ( l_c3_ddr_saxi_bready !== c3_ddr_saxi_bready) || ( c3_ddr_saxi_arvalid === 1'b1 || ( l_c3_ddr_saxi_arvalid === 1'b1 && c3_ddr_saxi_arvalid === 1'b0 ) ) || ( l_c3_ddr_saxi_rready !== c3_ddr_saxi_rready) )
 begin 
 l_c3_ddr_saxi_awvalid = c3_ddr_saxi_awvalid;
 l_c3_ddr_saxi_wvalid = c3_ddr_saxi_wvalid;
 l_c3_ddr_saxi_bready = c3_ddr_saxi_bready;
 l_c3_ddr_saxi_arvalid = c3_ddr_saxi_arvalid;
 l_c3_ddr_saxi_rready = c3_ddr_saxi_rready;
 ret_value = 1;
 end
else 
 ret_value = 0;
 return ret_value;
endfunction

export "DPI-C" function  sdaccel_generic_pcie_get_inputs_c3_ddr_saxi_c0_ui_clk;
function void  sdaccel_generic_pcie_get_inputs_c3_ddr_saxi_c0_ui_clk( 
output bit [4 : 0] p_c3_ddr_saxi_awid,
output bit [35 : 0] p_c3_ddr_saxi_awaddr,
output bit [7 : 0] p_c3_ddr_saxi_awlen,
output bit [2 : 0] p_c3_ddr_saxi_awsize,
output bit [1 : 0] p_c3_ddr_saxi_awburst,
output bit p_c3_ddr_saxi_awlock,
output bit [3 : 0] p_c3_ddr_saxi_awcache,
output bit [2 : 0] p_c3_ddr_saxi_awprot,
output bit [3 : 0] p_c3_ddr_saxi_awregion,
output bit [3 : 0] p_c3_ddr_saxi_awqos,
output bit [31 : 0] p_c3_ddr_saxi_awuser,
output bit p_c3_ddr_saxi_awvalid,
output bit [511 : 0] p_c3_ddr_saxi_wdata,
output bit [63 : 0] p_c3_ddr_saxi_wstrb,
output bit p_c3_ddr_saxi_wlast,
output bit p_c3_ddr_saxi_wvalid,
output bit p_c3_ddr_saxi_bready,
output bit [4 : 0] p_c3_ddr_saxi_arid,
output bit [35 : 0] p_c3_ddr_saxi_araddr,
output bit [7 : 0] p_c3_ddr_saxi_arlen,
output bit [2 : 0] p_c3_ddr_saxi_arsize,
output bit [1 : 0] p_c3_ddr_saxi_arburst,
output bit p_c3_ddr_saxi_arlock,
output bit [3 : 0] p_c3_ddr_saxi_arcache,
output bit [2 : 0] p_c3_ddr_saxi_arprot,
output bit [3 : 0] p_c3_ddr_saxi_arregion,
output bit [3 : 0] p_c3_ddr_saxi_arqos,
output bit [31 : 0] p_c3_ddr_saxi_aruser,
output bit p_c3_ddr_saxi_arvalid,
output bit p_c3_ddr_saxi_rready
);
 p_c3_ddr_saxi_awid = c3_ddr_saxi_awid ;
 p_c3_ddr_saxi_awaddr = c3_ddr_saxi_awaddr ;
 p_c3_ddr_saxi_awlen = c3_ddr_saxi_awlen ;
 p_c3_ddr_saxi_awsize = c3_ddr_saxi_awsize ;
 p_c3_ddr_saxi_awburst = c3_ddr_saxi_awburst ;
 p_c3_ddr_saxi_awlock = c3_ddr_saxi_awlock ;
 p_c3_ddr_saxi_awcache = c3_ddr_saxi_awcache ;
 p_c3_ddr_saxi_awprot = c3_ddr_saxi_awprot ;
 p_c3_ddr_saxi_awregion = c3_ddr_saxi_awregion ;
 p_c3_ddr_saxi_awqos = c3_ddr_saxi_awqos ;
 p_c3_ddr_saxi_awuser = c3_ddr_saxi_awuser ;
 p_c3_ddr_saxi_awvalid = c3_ddr_saxi_awvalid ;
 p_c3_ddr_saxi_wdata = c3_ddr_saxi_wdata ;
 p_c3_ddr_saxi_wstrb = c3_ddr_saxi_wstrb ;
 p_c3_ddr_saxi_wlast = c3_ddr_saxi_wlast ;
 p_c3_ddr_saxi_wvalid = c3_ddr_saxi_wvalid ;
 p_c3_ddr_saxi_bready = c3_ddr_saxi_bready ;
 p_c3_ddr_saxi_arid = c3_ddr_saxi_arid ;
 p_c3_ddr_saxi_araddr = c3_ddr_saxi_araddr ;
 p_c3_ddr_saxi_arlen = c3_ddr_saxi_arlen ;
 p_c3_ddr_saxi_arsize = c3_ddr_saxi_arsize ;
 p_c3_ddr_saxi_arburst = c3_ddr_saxi_arburst ;
 p_c3_ddr_saxi_arlock = c3_ddr_saxi_arlock ;
 p_c3_ddr_saxi_arcache = c3_ddr_saxi_arcache ;
 p_c3_ddr_saxi_arprot = c3_ddr_saxi_arprot ;
 p_c3_ddr_saxi_arregion = c3_ddr_saxi_arregion ;
 p_c3_ddr_saxi_arqos = c3_ddr_saxi_arqos ;
 p_c3_ddr_saxi_aruser = c3_ddr_saxi_aruser ;
 p_c3_ddr_saxi_arvalid = c3_ddr_saxi_arvalid ;
 p_c3_ddr_saxi_rready = c3_ddr_saxi_rready ;
endfunction

export "DPI-C" function  sdaccel_generic_pcie_set_outputs_c3_ddr_saxi_c0_ui_clk;
function void  sdaccel_generic_pcie_set_outputs_c3_ddr_saxi_c0_ui_clk( 
input bit p_c3_ddr_saxi_awready,
input bit p_c3_ddr_saxi_wready,
input bit [4 : 0] p_c3_ddr_saxi_bid,
input bit [1 : 0] p_c3_ddr_saxi_bresp,
input bit p_c3_ddr_saxi_bvalid,
input bit p_c3_ddr_saxi_arready,
input bit [4 : 0] p_c3_ddr_saxi_rid,
input bit [511 : 0] p_c3_ddr_saxi_rdata,
input bit [1 : 0] p_c3_ddr_saxi_rresp,
input bit p_c3_ddr_saxi_rlast,
input bit p_c3_ddr_saxi_rvalid
);
 c3_ddr_saxi_awready = p_c3_ddr_saxi_awready ;
 c3_ddr_saxi_wready = p_c3_ddr_saxi_wready ;
 c3_ddr_saxi_bid = p_c3_ddr_saxi_bid ;
 c3_ddr_saxi_bresp = p_c3_ddr_saxi_bresp ;
 c3_ddr_saxi_bvalid = p_c3_ddr_saxi_bvalid ;
 c3_ddr_saxi_arready = p_c3_ddr_saxi_arready ;
 c3_ddr_saxi_rid = p_c3_ddr_saxi_rid ;
 c3_ddr_saxi_rdata = p_c3_ddr_saxi_rdata ;
 c3_ddr_saxi_rresp = p_c3_ddr_saxi_rresp ;
 c3_ddr_saxi_rlast = p_c3_ddr_saxi_rlast ;
 c3_ddr_saxi_rvalid = p_c3_ddr_saxi_rvalid ;
endfunction

export "DPI-C" function  sdaccel_generic_pcie_check_inputs_m_axi_ctrl_m_axi_ctrl_clk;
 function bit  sdaccel_generic_pcie_check_inputs_m_axi_ctrl_m_axi_ctrl_clk();
  bit ret_value;
 if( ( l_m_axi_ctrl_awready !== m_axi_ctrl_awready) || ( l_m_axi_ctrl_wready !== m_axi_ctrl_wready) || ( m_axi_ctrl_bvalid === 1'b1 || ( l_m_axi_ctrl_bvalid === 1'b1 && m_axi_ctrl_bvalid === 1'b0 ) ) || ( l_m_axi_ctrl_arready !== m_axi_ctrl_arready) || ( m_axi_ctrl_rvalid === 1'b1 || ( l_m_axi_ctrl_rvalid === 1'b1 && m_axi_ctrl_rvalid === 1'b0 ) ) )
 begin 
 l_m_axi_ctrl_awready = m_axi_ctrl_awready;
 l_m_axi_ctrl_wready = m_axi_ctrl_wready;
 l_m_axi_ctrl_bvalid = m_axi_ctrl_bvalid;
 l_m_axi_ctrl_arready = m_axi_ctrl_arready;
 l_m_axi_ctrl_rvalid = m_axi_ctrl_rvalid;
 ret_value = 1;
 end
else 
 ret_value = 0;
 return ret_value;
endfunction

export "DPI-C" function  sdaccel_generic_pcie_get_inputs_m_axi_ctrl_m_axi_ctrl_clk;
function void  sdaccel_generic_pcie_get_inputs_m_axi_ctrl_m_axi_ctrl_clk( 
output bit p_m_axi_ctrl_awready,
output bit p_m_axi_ctrl_wready,
output bit [1 : 0] p_m_axi_ctrl_bresp,
output bit p_m_axi_ctrl_bvalid,
output bit p_m_axi_ctrl_arready,
output bit [31 : 0] p_m_axi_ctrl_rdata,
output bit [1 : 0] p_m_axi_ctrl_rresp,
output bit p_m_axi_ctrl_rvalid
);
 p_m_axi_ctrl_awready = m_axi_ctrl_awready ;
 p_m_axi_ctrl_wready = m_axi_ctrl_wready ;
 p_m_axi_ctrl_bresp = m_axi_ctrl_bresp ;
 p_m_axi_ctrl_bvalid = m_axi_ctrl_bvalid ;
 p_m_axi_ctrl_arready = m_axi_ctrl_arready ;
 p_m_axi_ctrl_rdata = m_axi_ctrl_rdata ;
 p_m_axi_ctrl_rresp = m_axi_ctrl_rresp ;
 p_m_axi_ctrl_rvalid = m_axi_ctrl_rvalid ;
endfunction

export "DPI-C" function  sdaccel_generic_pcie_set_outputs_m_axi_ctrl_m_axi_ctrl_clk;
function void  sdaccel_generic_pcie_set_outputs_m_axi_ctrl_m_axi_ctrl_clk( 
input bit [63 : 0] p_m_axi_ctrl_awaddr,
input bit p_m_axi_ctrl_awvalid,
input bit [31 : 0] p_m_axi_ctrl_wdata,
input bit [3 : 0] p_m_axi_ctrl_wstrb,
input bit p_m_axi_ctrl_wvalid,
input bit p_m_axi_ctrl_bready,
input bit [63 : 0] p_m_axi_ctrl_araddr,
input bit p_m_axi_ctrl_arvalid,
input bit p_m_axi_ctrl_rready
);
 m_axi_ctrl_awaddr = p_m_axi_ctrl_awaddr ;
 m_axi_ctrl_awvalid = p_m_axi_ctrl_awvalid ;
 m_axi_ctrl_wdata = p_m_axi_ctrl_wdata ;
 m_axi_ctrl_wstrb = p_m_axi_ctrl_wstrb ;
 m_axi_ctrl_wvalid = p_m_axi_ctrl_wvalid ;
 m_axi_ctrl_bready = p_m_axi_ctrl_bready ;
 m_axi_ctrl_araddr = p_m_axi_ctrl_araddr ;
 m_axi_ctrl_arvalid = p_m_axi_ctrl_arvalid ;
 m_axi_ctrl_rready = p_m_axi_ctrl_rready ;
endfunction


   initial
   begin
initialize_clk("dr_c0_ui_clk_0_clk_250000000_0" , 250000000);
initialize_clk("dr_c0_ui_clk_0_clk_250000000_0" , 250000000);

   $sformat(ip_name,"%m");
      if ( $value$plusargs("DPI_ARGS=%s",dpi_arguments) )
      begin 
           sdaccel_generic_pcie_set_dpi_arguments(dpi_arguments);
      end
      sdaccel_generic_pcie_add_clk_id("c0_ui_clk" , "dr_c0_ui_clk_0_clk_250000000_0");
      sdaccel_generic_pcie_add_clk_id("m_axi_ctrl_clk" , "dr_c0_ui_clk_0_clk_250000000_0");
      sdaccel_generic_pcie_set_int_param ( "C_S0_ID_WIDTH",C_S0_ID_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C_S0_ADDR_WIDTH",C_S0_ADDR_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C_S0_LEN_WIDTH",C_S0_LEN_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C_S0_DATA_WIDTH",C_S0_DATA_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C_S0_STRB_WIDTH",C_S0_STRB_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C_S0_REGION_WIDTH",C_S0_REGION_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C_S1_ID_WIDTH",C_S1_ID_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C_S1_ADDR_WIDTH",C_S1_ADDR_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C_S1_LEN_WIDTH",C_S1_LEN_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C_S1_DATA_WIDTH",C_S1_DATA_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C_S1_STRB_WIDTH",C_S1_STRB_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C_S1_REGION_WIDTH",C_S1_REGION_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C_S2_ID_WIDTH",C_S2_ID_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C_S2_ADDR_WIDTH",C_S2_ADDR_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C_S2_LEN_WIDTH",C_S2_LEN_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C_S2_DATA_WIDTH",C_S2_DATA_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C_S2_STRB_WIDTH",C_S2_STRB_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C_S2_REGION_WIDTH",C_S2_REGION_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C_S3_ID_WIDTH",C_S3_ID_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C_S3_ADDR_WIDTH",C_S3_ADDR_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C_S3_LEN_WIDTH",C_S3_LEN_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C_S3_DATA_WIDTH",C_S3_DATA_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C_S3_STRB_WIDTH",C_S3_STRB_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C_S3_REGION_WIDTH",C_S3_REGION_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C_M_ADDR_WIDTH",C_M_ADDR_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C_M_LEN_WIDTH",C_M_LEN_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C_M_DATA_WIDTH",C_M_DATA_WIDTH );
      sdaccel_generic_pcie_set_str_param ( "C_Component_Name",C_Component_Name );
      sdaccel_generic_pcie_set_int_param ( "C_NUM_SLAVE_SLOTS",C_NUM_SLAVE_SLOTS );
      sdaccel_generic_pcie_set_int_param ( "C_ADDR_RANGES",C_ADDR_RANGES );
      sdaccel_generic_pcie_set_int_param ( "C_NUMBER_OF_GLOBAL_MEMORIES",C_NUMBER_OF_GLOBAL_MEMORIES );
      sdaccel_generic_pcie_set_str_param ( "C0_NAME",C0_NAME );
      sdaccel_generic_pcie_set_str_param ( "C0_TYPE",C0_TYPE );
      sdaccel_generic_pcie_set_str_param ( "C0_SIZE",C0_SIZE );
      sdaccel_generic_pcie_set_str_param ( "C0_AXI_ARBITRATION_SCHEME",C0_AXI_ARBITRATION_SCHEME );
      sdaccel_generic_pcie_set_str_param ( "C0_ControllerType",C0_ControllerType );
      sdaccel_generic_pcie_set_int_param ( "C0_APP_ADDR_WIDTH",C0_APP_ADDR_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C0_APP_DATA_WIDTH",C0_APP_DATA_WIDTH );
      sdaccel_generic_pcie_set_str_param ( "C0_Mem_Add_Map",C0_Mem_Add_Map );
      sdaccel_generic_pcie_set_str_param ( "C0_Ordering",C0_Ordering );
      sdaccel_generic_pcie_set_int_param ( "C0_ADDR_WIDTH",C0_ADDR_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C0_AXI_ADDR_WIDTH",C0_AXI_ADDR_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C0_AXI_DATA_WIDTH",C0_AXI_DATA_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C0_AXI_ID_WIDTH",C0_AXI_ID_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C0_BANK_GROUP_WIDTH",C0_BANK_GROUP_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C0_BANK_WIDTH",C0_BANK_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C0_CL",C0_CL );
      sdaccel_generic_pcie_set_int_param ( "C0_COLUMN_WIDTH",C0_COLUMN_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C0_CWL",C0_CWL );
      sdaccel_generic_pcie_set_int_param ( "C0_RANK_WIDTH",C0_RANK_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C0_ROW_WIDTH",C0_ROW_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C0_tCK",C0_tCK );
      sdaccel_generic_pcie_set_int_param ( "C0_tCKE",C0_tCKE );
      sdaccel_generic_pcie_set_int_param ( "C0_tFAW",C0_tFAW );
      sdaccel_generic_pcie_set_int_param ( "C0_tMRD",C0_tMRD );
      sdaccel_generic_pcie_set_int_param ( "C0_tRAS",C0_tRAS );
      sdaccel_generic_pcie_set_int_param ( "C0_tRCD",C0_tRCD );
      sdaccel_generic_pcie_set_int_param ( "C0_tREFI",C0_tREFI );
      sdaccel_generic_pcie_set_int_param ( "C0_tRFC",C0_tRFC );
      sdaccel_generic_pcie_set_int_param ( "C0_tRP",C0_tRP );
      sdaccel_generic_pcie_set_int_param ( "C0_tRTW",C0_tRTW );
      sdaccel_generic_pcie_set_int_param ( "C0_tCCD",C0_tCCD );
      sdaccel_generic_pcie_set_int_param ( "C0_tRRD",C0_tRRD );
      sdaccel_generic_pcie_set_int_param ( "C0_tRRD_L",C0_tRRD_L );
      sdaccel_generic_pcie_set_int_param ( "C0_tRRD_S",C0_tRRD_S );
      sdaccel_generic_pcie_set_int_param ( "C0_tRTP",C0_tRTP );
      sdaccel_generic_pcie_set_int_param ( "C0_tWR",C0_tWR );
      sdaccel_generic_pcie_set_int_param ( "C0_tWTR",C0_tWTR );
      sdaccel_generic_pcie_set_int_param ( "C0_tWTR_L",C0_tWTR_L );
      sdaccel_generic_pcie_set_int_param ( "C0_tWTR_S",C0_tWTR_S );
      sdaccel_generic_pcie_set_int_param ( "C0_tXPR",C0_tXPR );
      sdaccel_generic_pcie_set_int_param ( "C0_tZQCS",C0_tZQCS );
      sdaccel_generic_pcie_set_int_param ( "C0_tZQI",C0_tZQI );
      sdaccel_generic_pcie_set_int_param ( "C0_tZQINIT",C0_tZQINIT );
      sdaccel_generic_pcie_set_str_param ( "C0_AutoPrecharge",C0_AutoPrecharge );
      sdaccel_generic_pcie_set_str_param ( "C0_AxiNarrowBurst",C0_AxiNarrowBurst );
      sdaccel_generic_pcie_set_int_param ( "C0_BURST_LENGTH",C0_BURST_LENGTH );
      sdaccel_generic_pcie_set_int_param ( "C0_CAS_LATENCY",C0_CAS_LATENCY );
      sdaccel_generic_pcie_set_int_param ( "C0_CAS_WRITE_LATENCY",C0_CAS_WRITE_LATENCY );
      sdaccel_generic_pcie_set_int_param ( "C0_DATA_WIDTH",C0_DATA_WIDTH );
      sdaccel_generic_pcie_set_str_param ( "C0_MEMORY_PART",C0_MEMORY_PART );
      sdaccel_generic_pcie_set_str_param ( "C0_MEM_ADDR_MAP",C0_MEM_ADDR_MAP );
      sdaccel_generic_pcie_set_int_param ( "C0_TIMEPERIOD_PS",C0_TIMEPERIOD_PS );
      sdaccel_generic_pcie_set_int_param ( "C0_A00_BASE_ADDR",C0_A00_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C0_A01_BASE_ADDR",C0_A01_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C0_A02_BASE_ADDR",C0_A02_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C0_A03_BASE_ADDR",C0_A03_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C0_A04_BASE_ADDR",C0_A04_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C0_A05_BASE_ADDR",C0_A05_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C0_A06_BASE_ADDR",C0_A06_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C0_A07_BASE_ADDR",C0_A07_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C0_A08_BASE_ADDR",C0_A08_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C0_A09_BASE_ADDR",C0_A09_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C0_A10_BASE_ADDR",C0_A10_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C0_A11_BASE_ADDR",C0_A11_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C0_A12_BASE_ADDR",C0_A12_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C0_A13_BASE_ADDR",C0_A13_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C0_A14_BASE_ADDR",C0_A14_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C0_A15_BASE_ADDR",C0_A15_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C0_A00_HIGH_ADDR",C0_A00_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C0_A01_HIGH_ADDR",C0_A01_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C0_A02_HIGH_ADDR",C0_A02_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C0_A03_HIGH_ADDR",C0_A03_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C0_A04_HIGH_ADDR",C0_A04_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C0_A05_HIGH_ADDR",C0_A05_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C0_A06_HIGH_ADDR",C0_A06_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C0_A07_HIGH_ADDR",C0_A07_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C0_A08_HIGH_ADDR",C0_A08_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C0_A09_HIGH_ADDR",C0_A09_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C0_A10_HIGH_ADDR",C0_A10_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C0_A11_HIGH_ADDR",C0_A11_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C0_A12_HIGH_ADDR",C0_A12_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C0_A13_HIGH_ADDR",C0_A13_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C0_A14_HIGH_ADDR",C0_A14_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C0_A15_HIGH_ADDR",C0_A15_HIGH_ADDR );
      sdaccel_generic_pcie_set_str_param ( "C1_NAME",C1_NAME );
      sdaccel_generic_pcie_set_str_param ( "C1_TYPE",C1_TYPE );
      sdaccel_generic_pcie_set_str_param ( "C1_SIZE",C1_SIZE );
      sdaccel_generic_pcie_set_str_param ( "C1_AXI_ARBITRATION_SCHEME",C1_AXI_ARBITRATION_SCHEME );
      sdaccel_generic_pcie_set_str_param ( "C1_ControllerType",C1_ControllerType );
      sdaccel_generic_pcie_set_int_param ( "C1_APP_ADDR_WIDTH",C1_APP_ADDR_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C1_APP_DATA_WIDTH",C1_APP_DATA_WIDTH );
      sdaccel_generic_pcie_set_str_param ( "C1_Mem_Add_Map",C1_Mem_Add_Map );
      sdaccel_generic_pcie_set_str_param ( "C1_Ordering",C1_Ordering );
      sdaccel_generic_pcie_set_int_param ( "C1_ADDR_WIDTH",C1_ADDR_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C1_AXI_ADDR_WIDTH",C1_AXI_ADDR_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C1_AXI_DATA_WIDTH",C1_AXI_DATA_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C1_AXI_ID_WIDTH",C1_AXI_ID_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C1_BANK_GROUP_WIDTH",C1_BANK_GROUP_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C1_BANK_WIDTH",C1_BANK_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C1_CL",C1_CL );
      sdaccel_generic_pcie_set_int_param ( "C1_COLUMN_WIDTH",C1_COLUMN_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C1_CWL",C1_CWL );
      sdaccel_generic_pcie_set_int_param ( "C1_RANK_WIDTH",C1_RANK_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C1_ROW_WIDTH",C1_ROW_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C1_tCK",C1_tCK );
      sdaccel_generic_pcie_set_int_param ( "C1_tCKE",C1_tCKE );
      sdaccel_generic_pcie_set_int_param ( "C1_tFAW",C1_tFAW );
      sdaccel_generic_pcie_set_int_param ( "C1_tMRD",C1_tMRD );
      sdaccel_generic_pcie_set_int_param ( "C1_tRAS",C1_tRAS );
      sdaccel_generic_pcie_set_int_param ( "C1_tRCD",C1_tRCD );
      sdaccel_generic_pcie_set_int_param ( "C1_tREFI",C1_tREFI );
      sdaccel_generic_pcie_set_int_param ( "C1_tRFC",C1_tRFC );
      sdaccel_generic_pcie_set_int_param ( "C1_tRP",C1_tRP );
      sdaccel_generic_pcie_set_int_param ( "C1_tRTW",C1_tRTW );
      sdaccel_generic_pcie_set_int_param ( "C1_tCCD",C1_tCCD );
      sdaccel_generic_pcie_set_int_param ( "C1_tRRD",C1_tRRD );
      sdaccel_generic_pcie_set_int_param ( "C1_tRRD_L",C1_tRRD_L );
      sdaccel_generic_pcie_set_int_param ( "C1_tRRD_S",C1_tRRD_S );
      sdaccel_generic_pcie_set_int_param ( "C1_tRTP",C1_tRTP );
      sdaccel_generic_pcie_set_int_param ( "C1_tWR",C1_tWR );
      sdaccel_generic_pcie_set_int_param ( "C1_tWTR",C1_tWTR );
      sdaccel_generic_pcie_set_int_param ( "C1_tWTR_L",C1_tWTR_L );
      sdaccel_generic_pcie_set_int_param ( "C1_tWTR_S",C1_tWTR_S );
      sdaccel_generic_pcie_set_int_param ( "C1_tXPR",C1_tXPR );
      sdaccel_generic_pcie_set_int_param ( "C1_tZQCS",C1_tZQCS );
      sdaccel_generic_pcie_set_int_param ( "C1_tZQI",C1_tZQI );
      sdaccel_generic_pcie_set_int_param ( "C1_tZQINIT",C1_tZQINIT );
      sdaccel_generic_pcie_set_str_param ( "C1_AutoPrecharge",C1_AutoPrecharge );
      sdaccel_generic_pcie_set_str_param ( "C1_AxiNarrowBurst",C1_AxiNarrowBurst );
      sdaccel_generic_pcie_set_int_param ( "C1_BURST_LENGTH",C1_BURST_LENGTH );
      sdaccel_generic_pcie_set_int_param ( "C1_CAS_LATENCY",C1_CAS_LATENCY );
      sdaccel_generic_pcie_set_int_param ( "C1_CAS_WRITE_LATENCY",C1_CAS_WRITE_LATENCY );
      sdaccel_generic_pcie_set_int_param ( "C1_DATA_WIDTH",C1_DATA_WIDTH );
      sdaccel_generic_pcie_set_str_param ( "C1_MEMORY_PART",C1_MEMORY_PART );
      sdaccel_generic_pcie_set_str_param ( "C1_MEM_ADDR_MAP",C1_MEM_ADDR_MAP );
      sdaccel_generic_pcie_set_int_param ( "C1_TIMEPERIOD_PS",C1_TIMEPERIOD_PS );
      sdaccel_generic_pcie_set_int_param ( "C1_A00_BASE_ADDR",C1_A00_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C1_A01_BASE_ADDR",C1_A01_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C1_A02_BASE_ADDR",C1_A02_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C1_A03_BASE_ADDR",C1_A03_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C1_A04_BASE_ADDR",C1_A04_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C1_A05_BASE_ADDR",C1_A05_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C1_A06_BASE_ADDR",C1_A06_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C1_A07_BASE_ADDR",C1_A07_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C1_A08_BASE_ADDR",C1_A08_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C1_A09_BASE_ADDR",C1_A09_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C1_A10_BASE_ADDR",C1_A10_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C1_A11_BASE_ADDR",C1_A11_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C1_A12_BASE_ADDR",C1_A12_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C1_A13_BASE_ADDR",C1_A13_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C1_A14_BASE_ADDR",C1_A14_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C1_A15_BASE_ADDR",C1_A15_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C1_A00_HIGH_ADDR",C1_A00_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C1_A01_HIGH_ADDR",C1_A01_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C1_A02_HIGH_ADDR",C1_A02_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C1_A03_HIGH_ADDR",C1_A03_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C1_A04_HIGH_ADDR",C1_A04_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C1_A05_HIGH_ADDR",C1_A05_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C1_A06_HIGH_ADDR",C1_A06_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C1_A07_HIGH_ADDR",C1_A07_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C1_A08_HIGH_ADDR",C1_A08_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C1_A09_HIGH_ADDR",C1_A09_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C1_A10_HIGH_ADDR",C1_A10_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C1_A11_HIGH_ADDR",C1_A11_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C1_A12_HIGH_ADDR",C1_A12_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C1_A13_HIGH_ADDR",C1_A13_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C1_A14_HIGH_ADDR",C1_A14_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C1_A15_HIGH_ADDR",C1_A15_HIGH_ADDR );
      sdaccel_generic_pcie_set_str_param ( "C2_NAME",C2_NAME );
      sdaccel_generic_pcie_set_str_param ( "C2_TYPE",C2_TYPE );
      sdaccel_generic_pcie_set_str_param ( "C2_SIZE",C2_SIZE );
      sdaccel_generic_pcie_set_str_param ( "C2_AXI_ARBITRATION_SCHEME",C2_AXI_ARBITRATION_SCHEME );
      sdaccel_generic_pcie_set_str_param ( "C2_ControllerType",C2_ControllerType );
      sdaccel_generic_pcie_set_int_param ( "C2_APP_ADDR_WIDTH",C2_APP_ADDR_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C2_APP_DATA_WIDTH",C2_APP_DATA_WIDTH );
      sdaccel_generic_pcie_set_str_param ( "C2_Mem_Add_Map",C2_Mem_Add_Map );
      sdaccel_generic_pcie_set_str_param ( "C2_Ordering",C2_Ordering );
      sdaccel_generic_pcie_set_int_param ( "C2_ADDR_WIDTH",C2_ADDR_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C2_AXI_ADDR_WIDTH",C2_AXI_ADDR_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C2_AXI_DATA_WIDTH",C2_AXI_DATA_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C2_AXI_ID_WIDTH",C2_AXI_ID_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C2_BANK_GROUP_WIDTH",C2_BANK_GROUP_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C2_BANK_WIDTH",C2_BANK_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C2_CL",C2_CL );
      sdaccel_generic_pcie_set_int_param ( "C2_COLUMN_WIDTH",C2_COLUMN_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C2_CWL",C2_CWL );
      sdaccel_generic_pcie_set_int_param ( "C2_RANK_WIDTH",C2_RANK_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C2_ROW_WIDTH",C2_ROW_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C2_tCK",C2_tCK );
      sdaccel_generic_pcie_set_int_param ( "C2_tCKE",C2_tCKE );
      sdaccel_generic_pcie_set_int_param ( "C2_tFAW",C2_tFAW );
      sdaccel_generic_pcie_set_int_param ( "C2_tMRD",C2_tMRD );
      sdaccel_generic_pcie_set_int_param ( "C2_tRAS",C2_tRAS );
      sdaccel_generic_pcie_set_int_param ( "C2_tRCD",C2_tRCD );
      sdaccel_generic_pcie_set_int_param ( "C2_tREFI",C2_tREFI );
      sdaccel_generic_pcie_set_int_param ( "C2_tRFC",C2_tRFC );
      sdaccel_generic_pcie_set_int_param ( "C2_tRP",C2_tRP );
      sdaccel_generic_pcie_set_int_param ( "C2_tRTW",C2_tRTW );
      sdaccel_generic_pcie_set_int_param ( "C2_tCCD",C2_tCCD );
      sdaccel_generic_pcie_set_int_param ( "C2_tRRD",C2_tRRD );
      sdaccel_generic_pcie_set_int_param ( "C2_tRRD_L",C2_tRRD_L );
      sdaccel_generic_pcie_set_int_param ( "C2_tRRD_S",C2_tRRD_S );
      sdaccel_generic_pcie_set_int_param ( "C2_tRTP",C2_tRTP );
      sdaccel_generic_pcie_set_int_param ( "C2_tWR",C2_tWR );
      sdaccel_generic_pcie_set_int_param ( "C2_tWTR",C2_tWTR );
      sdaccel_generic_pcie_set_int_param ( "C2_tWTR_L",C2_tWTR_L );
      sdaccel_generic_pcie_set_int_param ( "C2_tWTR_S",C2_tWTR_S );
      sdaccel_generic_pcie_set_int_param ( "C2_tXPR",C2_tXPR );
      sdaccel_generic_pcie_set_int_param ( "C2_tZQCS",C2_tZQCS );
      sdaccel_generic_pcie_set_int_param ( "C2_tZQI",C2_tZQI );
      sdaccel_generic_pcie_set_int_param ( "C2_tZQINIT",C2_tZQINIT );
      sdaccel_generic_pcie_set_str_param ( "C2_AutoPrecharge",C2_AutoPrecharge );
      sdaccel_generic_pcie_set_str_param ( "C2_AxiNarrowBurst",C2_AxiNarrowBurst );
      sdaccel_generic_pcie_set_int_param ( "C2_BURST_LENGTH",C2_BURST_LENGTH );
      sdaccel_generic_pcie_set_int_param ( "C2_CAS_LATENCY",C2_CAS_LATENCY );
      sdaccel_generic_pcie_set_int_param ( "C2_CAS_WRITE_LATENCY",C2_CAS_WRITE_LATENCY );
      sdaccel_generic_pcie_set_int_param ( "C2_DATA_WIDTH",C2_DATA_WIDTH );
      sdaccel_generic_pcie_set_str_param ( "C2_MEMORY_PART",C2_MEMORY_PART );
      sdaccel_generic_pcie_set_str_param ( "C2_MEM_ADDR_MAP",C2_MEM_ADDR_MAP );
      sdaccel_generic_pcie_set_int_param ( "C2_TIMEPERIOD_PS",C2_TIMEPERIOD_PS );
      sdaccel_generic_pcie_set_int_param ( "C2_A00_BASE_ADDR",C2_A00_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C2_A01_BASE_ADDR",C2_A01_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C2_A02_BASE_ADDR",C2_A02_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C2_A03_BASE_ADDR",C2_A03_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C2_A04_BASE_ADDR",C2_A04_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C2_A05_BASE_ADDR",C2_A05_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C2_A06_BASE_ADDR",C2_A06_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C2_A07_BASE_ADDR",C2_A07_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C2_A08_BASE_ADDR",C2_A08_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C2_A09_BASE_ADDR",C2_A09_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C2_A10_BASE_ADDR",C2_A10_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C2_A11_BASE_ADDR",C2_A11_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C2_A12_BASE_ADDR",C2_A12_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C2_A13_BASE_ADDR",C2_A13_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C2_A14_BASE_ADDR",C2_A14_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C2_A15_BASE_ADDR",C2_A15_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C2_A00_HIGH_ADDR",C2_A00_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C2_A01_HIGH_ADDR",C2_A01_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C2_A02_HIGH_ADDR",C2_A02_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C2_A03_HIGH_ADDR",C2_A03_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C2_A04_HIGH_ADDR",C2_A04_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C2_A05_HIGH_ADDR",C2_A05_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C2_A06_HIGH_ADDR",C2_A06_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C2_A07_HIGH_ADDR",C2_A07_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C2_A08_HIGH_ADDR",C2_A08_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C2_A09_HIGH_ADDR",C2_A09_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C2_A10_HIGH_ADDR",C2_A10_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C2_A11_HIGH_ADDR",C2_A11_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C2_A12_HIGH_ADDR",C2_A12_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C2_A13_HIGH_ADDR",C2_A13_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C2_A14_HIGH_ADDR",C2_A14_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C2_A15_HIGH_ADDR",C2_A15_HIGH_ADDR );
      sdaccel_generic_pcie_set_str_param ( "C3_NAME",C3_NAME );
      sdaccel_generic_pcie_set_str_param ( "C3_TYPE",C3_TYPE );
      sdaccel_generic_pcie_set_str_param ( "C3_SIZE",C3_SIZE );
      sdaccel_generic_pcie_set_str_param ( "C3_AXI_ARBITRATION_SCHEME",C3_AXI_ARBITRATION_SCHEME );
      sdaccel_generic_pcie_set_str_param ( "C3_ControllerType",C3_ControllerType );
      sdaccel_generic_pcie_set_int_param ( "C3_APP_ADDR_WIDTH",C3_APP_ADDR_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C3_APP_DATA_WIDTH",C3_APP_DATA_WIDTH );
      sdaccel_generic_pcie_set_str_param ( "C3_Mem_Add_Map",C3_Mem_Add_Map );
      sdaccel_generic_pcie_set_str_param ( "C3_Ordering",C3_Ordering );
      sdaccel_generic_pcie_set_int_param ( "C3_ADDR_WIDTH",C3_ADDR_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C3_AXI_ADDR_WIDTH",C3_AXI_ADDR_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C3_AXI_DATA_WIDTH",C3_AXI_DATA_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C3_AXI_ID_WIDTH",C3_AXI_ID_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C3_BANK_GROUP_WIDTH",C3_BANK_GROUP_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C3_BANK_WIDTH",C3_BANK_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C3_CL",C3_CL );
      sdaccel_generic_pcie_set_int_param ( "C3_COLUMN_WIDTH",C3_COLUMN_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C3_CWL",C3_CWL );
      sdaccel_generic_pcie_set_int_param ( "C3_RANK_WIDTH",C3_RANK_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C3_ROW_WIDTH",C3_ROW_WIDTH );
      sdaccel_generic_pcie_set_int_param ( "C3_tCK",C3_tCK );
      sdaccel_generic_pcie_set_int_param ( "C3_tCKE",C3_tCKE );
      sdaccel_generic_pcie_set_int_param ( "C3_tFAW",C3_tFAW );
      sdaccel_generic_pcie_set_int_param ( "C3_tMRD",C3_tMRD );
      sdaccel_generic_pcie_set_int_param ( "C3_tRAS",C3_tRAS );
      sdaccel_generic_pcie_set_int_param ( "C3_tRCD",C3_tRCD );
      sdaccel_generic_pcie_set_int_param ( "C3_tREFI",C3_tREFI );
      sdaccel_generic_pcie_set_int_param ( "C3_tRFC",C3_tRFC );
      sdaccel_generic_pcie_set_int_param ( "C3_tRP",C3_tRP );
      sdaccel_generic_pcie_set_int_param ( "C3_tRTW",C3_tRTW );
      sdaccel_generic_pcie_set_int_param ( "C3_tCCD",C3_tCCD );
      sdaccel_generic_pcie_set_int_param ( "C3_tRRD",C3_tRRD );
      sdaccel_generic_pcie_set_int_param ( "C3_tRRD_L",C3_tRRD_L );
      sdaccel_generic_pcie_set_int_param ( "C3_tRRD_S",C3_tRRD_S );
      sdaccel_generic_pcie_set_int_param ( "C3_tRTP",C3_tRTP );
      sdaccel_generic_pcie_set_int_param ( "C3_tWR",C3_tWR );
      sdaccel_generic_pcie_set_int_param ( "C3_tWTR",C3_tWTR );
      sdaccel_generic_pcie_set_int_param ( "C3_tWTR_L",C3_tWTR_L );
      sdaccel_generic_pcie_set_int_param ( "C3_tWTR_S",C3_tWTR_S );
      sdaccel_generic_pcie_set_int_param ( "C3_tXPR",C3_tXPR );
      sdaccel_generic_pcie_set_int_param ( "C3_tZQCS",C3_tZQCS );
      sdaccel_generic_pcie_set_int_param ( "C3_tZQI",C3_tZQI );
      sdaccel_generic_pcie_set_int_param ( "C3_tZQINIT",C3_tZQINIT );
      sdaccel_generic_pcie_set_str_param ( "C3_AutoPrecharge",C3_AutoPrecharge );
      sdaccel_generic_pcie_set_str_param ( "C3_AxiNarrowBurst",C3_AxiNarrowBurst );
      sdaccel_generic_pcie_set_int_param ( "C3_BURST_LENGTH",C3_BURST_LENGTH );
      sdaccel_generic_pcie_set_int_param ( "C3_CAS_LATENCY",C3_CAS_LATENCY );
      sdaccel_generic_pcie_set_int_param ( "C3_CAS_WRITE_LATENCY",C3_CAS_WRITE_LATENCY );
      sdaccel_generic_pcie_set_int_param ( "C3_DATA_WIDTH",C3_DATA_WIDTH );
      sdaccel_generic_pcie_set_str_param ( "C3_MEMORY_PART",C3_MEMORY_PART );
      sdaccel_generic_pcie_set_str_param ( "C3_MEM_ADDR_MAP",C3_MEM_ADDR_MAP );
      sdaccel_generic_pcie_set_int_param ( "C3_TIMEPERIOD_PS",C3_TIMEPERIOD_PS );
      sdaccel_generic_pcie_set_int_param ( "C3_A00_BASE_ADDR",C3_A00_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C3_A01_BASE_ADDR",C3_A01_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C3_A02_BASE_ADDR",C3_A02_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C3_A03_BASE_ADDR",C3_A03_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C3_A04_BASE_ADDR",C3_A04_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C3_A05_BASE_ADDR",C3_A05_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C3_A06_BASE_ADDR",C3_A06_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C3_A07_BASE_ADDR",C3_A07_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C3_A08_BASE_ADDR",C3_A08_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C3_A09_BASE_ADDR",C3_A09_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C3_A10_BASE_ADDR",C3_A10_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C3_A11_BASE_ADDR",C3_A11_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C3_A12_BASE_ADDR",C3_A12_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C3_A13_BASE_ADDR",C3_A13_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C3_A14_BASE_ADDR",C3_A14_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C3_A15_BASE_ADDR",C3_A15_BASE_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C3_A00_HIGH_ADDR",C3_A00_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C3_A01_HIGH_ADDR",C3_A01_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C3_A02_HIGH_ADDR",C3_A02_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C3_A03_HIGH_ADDR",C3_A03_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C3_A04_HIGH_ADDR",C3_A04_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C3_A05_HIGH_ADDR",C3_A05_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C3_A06_HIGH_ADDR",C3_A06_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C3_A07_HIGH_ADDR",C3_A07_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C3_A08_HIGH_ADDR",C3_A08_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C3_A09_HIGH_ADDR",C3_A09_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C3_A10_HIGH_ADDR",C3_A10_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C3_A11_HIGH_ADDR",C3_A11_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C3_A12_HIGH_ADDR",C3_A12_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C3_A13_HIGH_ADDR",C3_A13_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C3_A14_HIGH_ADDR",C3_A14_HIGH_ADDR );
      sdaccel_generic_pcie_set_int_param ( "C3_A15_HIGH_ADDR",C3_A15_HIGH_ADDR );

sdaccel_generic_pcie_init_c0_ddr_saxi($bits(c0_ddr_saxi_awid),$bits(c0_ddr_saxi_awaddr),$bits(c0_ddr_saxi_awlen),$bits(c0_ddr_saxi_awsize),$bits(c0_ddr_saxi_awburst),$bits(c0_ddr_saxi_awlock),$bits(c0_ddr_saxi_awcache),$bits(c0_ddr_saxi_awprot),$bits(c0_ddr_saxi_awregion),$bits(c0_ddr_saxi_awqos),$bits(c0_ddr_saxi_awuser),$bits(c0_ddr_saxi_awvalid),$bits(c0_ddr_saxi_awready),$bits(c0_ddr_saxi_wdata),$bits(c0_ddr_saxi_wstrb),$bits(c0_ddr_saxi_wlast),$bits(c0_ddr_saxi_wvalid),$bits(c0_ddr_saxi_wready),$bits(c0_ddr_saxi_bid),$bits(c0_ddr_saxi_bresp),$bits(c0_ddr_saxi_bvalid),$bits(c0_ddr_saxi_bready),$bits(c0_ddr_saxi_arid),$bits(c0_ddr_saxi_araddr),$bits(c0_ddr_saxi_arlen),$bits(c0_ddr_saxi_arsize),$bits(c0_ddr_saxi_arburst),$bits(c0_ddr_saxi_arlock),$bits(c0_ddr_saxi_arcache),$bits(c0_ddr_saxi_arprot),$bits(c0_ddr_saxi_arregion),$bits(c0_ddr_saxi_arqos),$bits(c0_ddr_saxi_aruser),$bits(c0_ddr_saxi_arvalid),$bits(c0_ddr_saxi_arready),$bits(c0_ddr_saxi_rid),$bits(c0_ddr_saxi_rdata),$bits(c0_ddr_saxi_rresp),$bits(c0_ddr_saxi_rlast),$bits(c0_ddr_saxi_rvalid),$bits(c0_ddr_saxi_rready));
sdaccel_generic_pcie_init_c1_ddr_saxi($bits(c1_ddr_saxi_awid),$bits(c1_ddr_saxi_awaddr),$bits(c1_ddr_saxi_awlen),$bits(c1_ddr_saxi_awsize),$bits(c1_ddr_saxi_awburst),$bits(c1_ddr_saxi_awlock),$bits(c1_ddr_saxi_awcache),$bits(c1_ddr_saxi_awprot),$bits(c1_ddr_saxi_awregion),$bits(c1_ddr_saxi_awqos),$bits(c1_ddr_saxi_awuser),$bits(c1_ddr_saxi_awvalid),$bits(c1_ddr_saxi_awready),$bits(c1_ddr_saxi_wdata),$bits(c1_ddr_saxi_wstrb),$bits(c1_ddr_saxi_wlast),$bits(c1_ddr_saxi_wvalid),$bits(c1_ddr_saxi_wready),$bits(c1_ddr_saxi_bid),$bits(c1_ddr_saxi_bresp),$bits(c1_ddr_saxi_bvalid),$bits(c1_ddr_saxi_bready),$bits(c1_ddr_saxi_arid),$bits(c1_ddr_saxi_araddr),$bits(c1_ddr_saxi_arlen),$bits(c1_ddr_saxi_arsize),$bits(c1_ddr_saxi_arburst),$bits(c1_ddr_saxi_arlock),$bits(c1_ddr_saxi_arcache),$bits(c1_ddr_saxi_arprot),$bits(c1_ddr_saxi_arregion),$bits(c1_ddr_saxi_arqos),$bits(c1_ddr_saxi_aruser),$bits(c1_ddr_saxi_arvalid),$bits(c1_ddr_saxi_arready),$bits(c1_ddr_saxi_rid),$bits(c1_ddr_saxi_rdata),$bits(c1_ddr_saxi_rresp),$bits(c1_ddr_saxi_rlast),$bits(c1_ddr_saxi_rvalid),$bits(c1_ddr_saxi_rready));
sdaccel_generic_pcie_init_c2_ddr_saxi($bits(c2_ddr_saxi_awid),$bits(c2_ddr_saxi_awaddr),$bits(c2_ddr_saxi_awlen),$bits(c2_ddr_saxi_awsize),$bits(c2_ddr_saxi_awburst),$bits(c2_ddr_saxi_awlock),$bits(c2_ddr_saxi_awcache),$bits(c2_ddr_saxi_awprot),$bits(c2_ddr_saxi_awregion),$bits(c2_ddr_saxi_awqos),$bits(c2_ddr_saxi_awuser),$bits(c2_ddr_saxi_awvalid),$bits(c2_ddr_saxi_awready),$bits(c2_ddr_saxi_wdata),$bits(c2_ddr_saxi_wstrb),$bits(c2_ddr_saxi_wlast),$bits(c2_ddr_saxi_wvalid),$bits(c2_ddr_saxi_wready),$bits(c2_ddr_saxi_bid),$bits(c2_ddr_saxi_bresp),$bits(c2_ddr_saxi_bvalid),$bits(c2_ddr_saxi_bready),$bits(c2_ddr_saxi_arid),$bits(c2_ddr_saxi_araddr),$bits(c2_ddr_saxi_arlen),$bits(c2_ddr_saxi_arsize),$bits(c2_ddr_saxi_arburst),$bits(c2_ddr_saxi_arlock),$bits(c2_ddr_saxi_arcache),$bits(c2_ddr_saxi_arprot),$bits(c2_ddr_saxi_arregion),$bits(c2_ddr_saxi_arqos),$bits(c2_ddr_saxi_aruser),$bits(c2_ddr_saxi_arvalid),$bits(c2_ddr_saxi_arready),$bits(c2_ddr_saxi_rid),$bits(c2_ddr_saxi_rdata),$bits(c2_ddr_saxi_rresp),$bits(c2_ddr_saxi_rlast),$bits(c2_ddr_saxi_rvalid),$bits(c2_ddr_saxi_rready));
sdaccel_generic_pcie_init_c3_ddr_saxi($bits(c3_ddr_saxi_awid),$bits(c3_ddr_saxi_awaddr),$bits(c3_ddr_saxi_awlen),$bits(c3_ddr_saxi_awsize),$bits(c3_ddr_saxi_awburst),$bits(c3_ddr_saxi_awlock),$bits(c3_ddr_saxi_awcache),$bits(c3_ddr_saxi_awprot),$bits(c3_ddr_saxi_awregion),$bits(c3_ddr_saxi_awqos),$bits(c3_ddr_saxi_awuser),$bits(c3_ddr_saxi_awvalid),$bits(c3_ddr_saxi_awready),$bits(c3_ddr_saxi_wdata),$bits(c3_ddr_saxi_wstrb),$bits(c3_ddr_saxi_wlast),$bits(c3_ddr_saxi_wvalid),$bits(c3_ddr_saxi_wready),$bits(c3_ddr_saxi_bid),$bits(c3_ddr_saxi_bresp),$bits(c3_ddr_saxi_bvalid),$bits(c3_ddr_saxi_bready),$bits(c3_ddr_saxi_arid),$bits(c3_ddr_saxi_araddr),$bits(c3_ddr_saxi_arlen),$bits(c3_ddr_saxi_arsize),$bits(c3_ddr_saxi_arburst),$bits(c3_ddr_saxi_arlock),$bits(c3_ddr_saxi_arcache),$bits(c3_ddr_saxi_arprot),$bits(c3_ddr_saxi_arregion),$bits(c3_ddr_saxi_arqos),$bits(c3_ddr_saxi_aruser),$bits(c3_ddr_saxi_arvalid),$bits(c3_ddr_saxi_arready),$bits(c3_ddr_saxi_rid),$bits(c3_ddr_saxi_rdata),$bits(c3_ddr_saxi_rresp),$bits(c3_ddr_saxi_rlast),$bits(c3_ddr_saxi_rvalid),$bits(c3_ddr_saxi_rready));
sdaccel_generic_pcie_init_m_axi_ctrl($bits(m_axi_ctrl_awaddr),$bits(m_axi_ctrl_awvalid),$bits(m_axi_ctrl_awready),$bits(m_axi_ctrl_wdata),$bits(m_axi_ctrl_wstrb),$bits(m_axi_ctrl_wvalid),$bits(m_axi_ctrl_wready),$bits(m_axi_ctrl_bresp),$bits(m_axi_ctrl_bvalid),$bits(m_axi_ctrl_bready),$bits(m_axi_ctrl_araddr),$bits(m_axi_ctrl_arvalid),$bits(m_axi_ctrl_arready),$bits(m_axi_ctrl_rdata),$bits(m_axi_ctrl_rresp),$bits(m_axi_ctrl_rvalid),$bits(m_axi_ctrl_rready));
  sdaccel_generic_pcie_init_c_model();
  end

endmodule
