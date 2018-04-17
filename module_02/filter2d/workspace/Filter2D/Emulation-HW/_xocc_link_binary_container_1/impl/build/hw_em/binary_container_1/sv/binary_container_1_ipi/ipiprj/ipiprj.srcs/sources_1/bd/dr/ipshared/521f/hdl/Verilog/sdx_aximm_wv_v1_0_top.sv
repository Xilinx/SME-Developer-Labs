`timescale 1ns/1ps
(* DowngradeIPIdentifiedWarnings="yes" *)

module sdx_aximm_wv_v1_0_top 
  #(
    parameter C_FAMILY                       = "virtex7",
    
    // AXI Monitor parameters
    parameter C_MON_AXI_ADDR_WIDTH           = 32,
    parameter C_MON_AXI_DATA_WIDTH           = 32,
    parameter C_MON_AXI_ID_WIDTH             = 1,
    parameter C_MON_AXI_AWLEN                = 8,
    parameter C_MON_AXI_PROTOCOL             = "AXI4",
    parameter C_MON_AXI_SUB_PROTOCOL         = "AXI4LITE"
   )
   (
    // AXI MM Monitor signals
    input                                    mon_axi_aclk,
    input                                    mon_axi_aresetn,
    input [C_MON_AXI_ID_WIDTH-1:0]           mon_axi_awid,
    input [C_MON_AXI_ADDR_WIDTH-1:0]         mon_axi_awaddr,
    input [2:0]                              mon_axi_awprot,
    input [C_MON_AXI_AWLEN-1:0]              mon_axi_awlen,
    input [2:0]                              mon_axi_awsize,
    input [1:0]                              mon_axi_awburst,
    input [3:0]                              mon_axi_awcache,
    input                                    mon_axi_awlock,
    input                                    mon_axi_awvalid,
    input                                    mon_axi_awready,
    input [C_MON_AXI_DATA_WIDTH-1:0]         mon_axi_wdata,
    input [C_MON_AXI_DATA_WIDTH/8-1:0]       mon_axi_wstrb,
    input                                    mon_axi_wlast,
    input                                    mon_axi_wvalid,
    input                                    mon_axi_wready,
    input [C_MON_AXI_ID_WIDTH-1:0]           mon_axi_bid,
    input [1:0]                              mon_axi_bresp,
    input                                    mon_axi_bvalid,
    input                                    mon_axi_bready,
    input [C_MON_AXI_ID_WIDTH-1:0]           mon_axi_arid,
    input [C_MON_AXI_ADDR_WIDTH-1:0]         mon_axi_araddr,
    input [C_MON_AXI_AWLEN-1:0]              mon_axi_arlen,
    input [2:0]                              mon_axi_arsize,
    input [1:0]                              mon_axi_arburst,
    input [3:0]                              mon_axi_arcache,
    input [2:0]                              mon_axi_arprot,
    input                                    mon_axi_arlock,
    input                                    mon_axi_arvalid,
    input                                    mon_axi_arready,
    input [C_MON_AXI_ID_WIDTH-1:0]           mon_axi_rid,
    input [C_MON_AXI_DATA_WIDTH-1:0]         mon_axi_rdata,
    input [1:0]                              mon_axi_rresp,
    input                                    mon_axi_rlast,
    input                                    mon_axi_rvalid,
    input                                    mon_axi_rready
);

//#####################################################################################################################

  //
  // Types
  //
  
  // Active logic level for a negative sense reset signal
  `define RSTN_ACTIVE 0

  // Address value which indicates no transaction (blank)  
  `define NO_ADDR (-1)

  // Given a number of binary digits, return the number of decimal digits necessary to represent the binary number
  `define BIN_TO_DEC_DIGITS(binDigits_) $rtoi($ceil(binDigits_ * $log10(2)))

  // Number of decimal digits of a length field
  `define LENGTH_DEC_DIGITS `BIN_TO_DEC_DIGITS(C_MON_AXI_AWLEN)
  
  // Tooltip data format required by the wave viewer
  //
  typedef struct {
    bit m_isOn;  // true = display tooltip, false = hide tooltip
    
    // Fixed-length strings, where member name (with _ replaced with space) is the displayed field name
    // and values are left justified and padded with spaces
    //byte ID[(C_MON_AXI_ID_WIDTH + 3) / 4];
    byte Address[(C_MON_AXI_ADDR_WIDTH + 3) / 4];
    byte Burst_Length[`LENGTH_DEC_DIGITS];  // decimal
    byte Burst_Size[3];
    byte Burst_Type[5];
    byte Cache_Type[4];
    byte Privileged[3];
    byte Secure[3];
    byte Mem_Type[11];
    byte Locked[3];
  } ToolTip;
  
  // Tooltip value which indicates no tooltip (blank)
  `define TOOLTIP_OFF ('{m_isOn: 0, /* ID: '{default: " "}, */ Address: '{default: " "}, Burst_Length: '{default: " "}, \
      Burst_Size: " ", Burst_Type: '{default: " "}, Cache_Type: '{default: " "}, Privileged: '{default: " "}, Secure: '{default: " "}, \
      Mem_Type: '{default: " "}, Locked: '{default: " "}})
  
  
  // Data to preserve from address channel to present on data channel
  //
  typedef struct {
    //logic [C_MON_AXI_ID_WIDTH-1:0] m_id;
    logic [C_MON_AXI_ADDR_WIDTH-1:0] m_addr;
    logic [C_MON_AXI_AWLEN-1:0] m_len;
    logic [2:0] m_size;
    logic [1:0] m_burst;
    logic [3:0] m_cache;
    logic [2:0] m_prot;
    logic m_lock;
  } TransactionData;
  
//#####################################################################################################################

  //
  // Signals for wave viewer presentation and data mining
  //
  
  // used to draw transaction waveform itself
  logic [C_MON_AXI_ADDR_WIDTH-1:0] readAddrWaveData;  // read address channel
  logic [C_MON_AXI_ADDR_WIDTH-1:0] readDataWaveData;  // read data channel
  logic [C_MON_AXI_ADDR_WIDTH-1:0] writeAddrWaveData;  // write address channel
  logic [C_MON_AXI_ADDR_WIDTH-1:0] writeDataWaveData;  // write data channel
  logic [C_MON_AXI_ADDR_WIDTH-1:0] writeRespWaveData;  // write response channel
  
  // used to present tooltip on transaction
  ToolTip readAddrTooltipData;  // read address channel
  ToolTip readDataTooltipData;  // read data channel
  ToolTip writeAddrTooltipData;  // write address channel
  ToolTip writeDataTooltipData;  // write data channel
  ToolTip writeRespTooltipData;  // write response channel
  
  // for data mining
  wire readActive;  // true if there is a read operation outstanding
  wire writeActive;  // true if there is a write operation outstanding
   
//#####################################################################################################################

  //
  // Internal state declarations
  //
  
  TransactionData readQueue[$];  // data preserved from read request on read address channel to use for data channel
  TransactionData writeQueue[$];  // data preserved from write request on write address channel to use for data chan
  TransactionData responseQueue[$];  // data preserved from write data channel to use for response channel
  
  reg readAddrStarted;  // true if seen arvalid
  wire lastReadAddrStart = mon_axi_arvalid && mon_axi_arready;  // start of read addr ack
  reg lastReadAddrEnd;  // one clock after lastReadAddrStart

  wire lastReadStart = mon_axi_rlast && mon_axi_rvalid && mon_axi_rready;  // start of last read data beat
  reg lastReadEnd;  // last read, delayed to next clock cycle 

  reg writeAddrStarted;  // true if seend awvalid
  wire lastWriteAddrStart = mon_axi_awvalid && mon_axi_awready;  // start of write addr ack
  reg lastWriteAddrEnd;  // one clock after lastWriteAddrStart

  wire lastWriteStart = mon_axi_wlast && mon_axi_wvalid && mon_axi_wready;  // start of last write data beat
  reg lastWriteEnd;  // last read, delayed to next clock cycle
  int readOutstandingCount;  // how many reads have been requested but not finished transferring
  int writeOutstandingCount;  // how many writes have been requested but not finished transferring
  bit readDataStarted;  // true if the read data channel is actively transferring data beats
  bit writeDataStarted;  // true if the write data channel is actively transferring data beats
  
  // True if a read has just been requested and received
  `define ReadStarted (mon_axi_arvalid && mon_axi_arready)
  
  `define WriteStarted (mon_axi_wrvalid && mon_axi_wrready)
  
  
//=====================================================================================================================

    //
    // Utility subprograms
    //
      
  // Resets the state machine
  task resetState();
    readAddrWaveData = `NO_ADDR;
    readDataWaveData = `NO_ADDR;
    writeAddrWaveData = `NO_ADDR;
    writeDataWaveData = `NO_ADDR;
    writeRespWaveData = `NO_ADDR;
    
    readAddrTooltipData = `TOOLTIP_OFF;
    readDataTooltipData = `TOOLTIP_OFF;
    writeAddrTooltipData = `TOOLTIP_OFF;
    writeDataTooltipData = `TOOLTIP_OFF;
    writeRespTooltipData = `TOOLTIP_OFF;
  
    readQueue = {};
    writeQueue = {};
    responseQueue = {};
    readOutstandingCount = 0;
    writeOutstandingCount = 0;
    
    lastReadAddrEnd = 0;
    readAddrStarted = 0;
    readDataStarted = 0;
    
    lastWriteAddrEnd = 0;
    writeAddrStarted = 0;
    writeDataStarted = 0;
    
    lastReadEnd = 0;
    lastWriteEnd = 0;
  endtask

  // Given (abstract) transaction data, returns a tooltip
  function ToolTip makeTooltip(TransactionData d);
    automatic ToolTip tt;
    //automatic byte ID[(C_MON_AXI_ID_WIDTH + 3) / 4];
    automatic byte Address[(C_MON_AXI_ADDR_WIDTH + 3) / 4];
    automatic logic [C_MON_AXI_AWLEN:0] lenPlusOne = d.m_len + 1;
    automatic byte Burst_Length[`LENGTH_DEC_DIGITS];
    automatic byte Cache_Type[4];

    // $display("TransactionData: %p", d);
    tt.m_isOn = 1;
    //$sformat(ID, "%x", d.m_id);
    //tt.ID = ID;
    $sformat(Address, "%x", d.m_addr);
    tt.Address = Address;
    $sformat(Burst_Length, "%0d", lenPlusOne);
    tt.Burst_Length = Burst_Length;

    case (d.m_size)
      0: tt.Burst_Size = "1  ";
      1: tt.Burst_Size = "2  ";
      2: tt.Burst_Size = "4  ";
      3: tt.Burst_Size = "8  ";
      4: tt.Burst_Size = "16 ";
      5: tt.Burst_Size = "32 ";
      6: tt.Burst_Size = "64 ";
      7: tt.Burst_Size = "128";
      default tt.Burst_Size = "???";
    endcase
    
    case (d.m_burst)
      0: tt.Burst_Type = "FIXED";
      1: tt.Burst_Type = "INCR ";
      2: tt.Burst_Type = "WRAP ";
      default tt.Burst_Type = "???  ";
    endcase
    
    $sformat(Cache_Type, "%b", d.m_cache);
    tt.Cache_Type = Cache_Type;
    
    if (d.m_prot[0])
      tt.Privileged = "Yes";
    else
      tt.Privileged = "No ";
    
    if (d.m_prot[1])
      tt.Secure = "No ";
    else
      tt.Secure = "Yes";
      
    if (d.m_prot[2])
      tt.Mem_Type = "Instruction";
    else
      tt.Mem_Type = "Data       ";
      
    if (d.m_lock)
      tt.Locked = "Yes";
    else
      tt.Locked = "No ";
      
    return tt;
  endfunction
  
//=====================================================================================================================

  //
  // Utility processes
  //
  
//=====================================================================================================================

  //
  // Transaction state machine processes
  //
  
  initial
    resetState();
  
  always @(posedge mon_axi_aclk) begin
    // If resetting, clear all queues, reset state machine
    
    if (mon_axi_aresetn == `RSTN_ACTIVE)
      resetState();
    
    // Not resetting: normal state machine operation
    
    else begin
      // Read address channel
      
      // If we've seen arready for one clock already, address transaction is done
      if (lastReadAddrEnd)
        readAddrStarted = 0;
        
      // If new request on read address channel, capture the request details and enqueue them.  Create a transaction.
      if (mon_axi_arvalid && ~readAddrStarted) begin
        automatic TransactionData d = '{/*m_id: mon_axi_arid,*/ m_addr: mon_axi_araddr, m_len: mon_axi_arlen,
            m_size: mon_axi_arsize, m_burst: mon_axi_arburst, m_cache: mon_axi_arcache, m_prot: mon_axi_arprot,
            m_lock: mon_axi_arlock}; 
        readAddrWaveData = mon_axi_araddr;
        readAddrTooltipData = makeTooltip(d);
        readQueue.push_back(d);
        
        readAddrStarted = 1;
        ++readOutstandingCount;
      end
      
      // No request on address channel: end the address channel transaction
      if (~readAddrStarted) begin
        readAddrWaveData = `NO_ADDR;
        readAddrTooltipData = `TOOLTIP_OFF;
      end

      // Set up read addr end for next display clock cycle
      lastReadAddrEnd = lastReadAddrStart;
      
      // Read data channel
      
      // If we've seen the last beat of a data transfer, end the transaction.
      // Need to draw the data transaction to the clock after last read is detected to avoid zero-length transactions
      // for single-burst data transfers.
      if (lastReadEnd) begin
        readDataStarted = 0;
        --readOutstandingCount;
      end
      
      // If there is a read data beat and there is no transaction in progress, start one 
      if (mon_axi_rvalid && ~readDataStarted) begin
        automatic TransactionData d = readQueue.pop_front();
        readDataStarted = 1;
        readDataWaveData = d.m_addr;
        readDataTooltipData = makeTooltip(d);
      end

      // Display blank if no transaction
      if (~readDataStarted) begin
        readDataWaveData = `NO_ADDR;
        readDataTooltipData = `TOOLTIP_OFF;
      end
              
      // Set up read end for next display clock cycle
      lastReadEnd = lastReadStart;
      
      // Write address channel
      
      // If we've seen awready for one clock already, address transaction is done
      if (lastWriteAddrEnd)
        writeAddrStarted = 0;
        
      // If new request on write address channel, capture the request details and enqueue them.  Create a transaction.
      if (mon_axi_awvalid && ~writeAddrStarted) begin
        automatic TransactionData d = '{/*m_id: mon_axi_awid,*/ m_addr: mon_axi_awaddr, m_len: mon_axi_awlen,
            m_size: mon_axi_awsize, m_burst: mon_axi_awburst, m_cache: mon_axi_awcache, m_prot: mon_axi_awprot,
            m_lock: mon_axi_awlock}; 
        writeAddrWaveData = mon_axi_awaddr;
        writeAddrTooltipData = makeTooltip(d);
        writeQueue.push_back(d);
        responseQueue.push_back(d);
        
        writeAddrStarted = 1;
        ++writeOutstandingCount;
      end
      
      // No request on address channel: end the address channel transaction
      if (~writeAddrStarted) begin
        writeAddrWaveData = `NO_ADDR;
        writeAddrTooltipData = `TOOLTIP_OFF;
      end
      
      // Set up write addr end for next display clock cycle
      lastWriteAddrEnd = lastWriteAddrStart;
      
      // Write data channel
      
      // If we've seen the last beat of a data transfer, end the transaction
      // Need to draw the data transaction to the clock after last read is detected to avoid zero-length transactions
      // for single-burst data transfers.
      if (lastWriteEnd) begin
        writeDataStarted = 0;
      end
      
      // If there is a write data beat and there is no transaction in progress, start one 
      if (mon_axi_wvalid && ~writeDataStarted) begin
        automatic TransactionData d = writeQueue.pop_front();
        writeDataStarted = 1;
        writeDataWaveData = d.m_addr;
        writeDataTooltipData = makeTooltip(d);
      end
      
      // Display blank if no transaction
      if (~writeDataStarted) begin
        writeDataWaveData = `NO_ADDR;
        writeDataTooltipData = `TOOLTIP_OFF;
      end
              
      // Set up read end for next display clock cycle
      lastWriteEnd = lastWriteStart;
      
      // Write response channel
      
      if (mon_axi_bvalid && mon_axi_bready) begin
        automatic TransactionData d = responseQueue.pop_front();
        writeRespWaveData = d.m_addr;
        writeRespTooltipData = makeTooltip(d);
        --writeOutstandingCount;
      end
      else begin
        writeRespWaveData = `NO_ADDR;
        writeRespTooltipData = `TOOLTIP_OFF;
      end
    end
  end

  assign readActive = readOutstandingCount > 0;
  assign writeActive = writeOutstandingCount > 0;

endmodule

