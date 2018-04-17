# platform binary_container_1
set debug_level 0
set kernels {}
set connections {}
set memories {}
set pipes {}
set profiling {}
lappend kernels [dict create \
  NAME        Filter2DKernel_1 \
  VLNV        xilinx.com:hls:Filter2DKernel:1.0 \
  MASTER      {M_AXI_GMEM0 M_AXI_GMEM1} \
  SLAVE       S_AXI_CONTROL \
  CLK         ap_clk \
  RST         ap_rst_n \
  ADDR_OFFSET 0x00000000 \
  ADDR_RANGE  0x1000 \
  CONFIG      {} \
  DEBUG       $debug_level \
  ];
lappend connections [dict create  \
  SRC_TYPE kernel \
  SRC_NAME Filter2DKernel_1 \
  SRC_PORT M_AXI_GMEM0 \
  DST_TYPE core \
  DST_NAME OCL_REGION_0 \
  DST_PORT M00_AXI \
  ];
lappend connections [dict create  \
  SRC_TYPE kernel \
  SRC_NAME Filter2DKernel_1 \
  SRC_PORT M_AXI_GMEM1 \
  DST_TYPE core \
  DST_NAME OCL_REGION_0 \
  DST_PORT M00_AXI \
  ];
lappend connections [dict create  \
  SRC_TYPE core \
  SRC_NAME OCL_REGION_0 \
  SRC_PORT S_AXI \
  DST_TYPE kernel \
  DST_NAME Filter2DKernel_1 \
  DST_PORT S_AXI_CONTROL \
  ];
set kernel_resources [dict create CONNECTIONS $connections MEMORIES $memories PIPES $pipes PROFILING $profiling]
