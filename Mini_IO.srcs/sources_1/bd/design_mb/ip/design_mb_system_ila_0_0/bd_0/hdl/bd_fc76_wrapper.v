//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_fc76_wrapper.bd
//Design : bd_fc76_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_fc76_wrapper
   (SLOT_0_MBINTERRUPT_ack,
    SLOT_0_MBINTERRUPT_address,
    SLOT_0_MBINTERRUPT_interrupt,
    SLOT_1_AXI_araddr,
    SLOT_1_AXI_arprot,
    SLOT_1_AXI_arready,
    SLOT_1_AXI_arvalid,
    SLOT_1_AXI_awaddr,
    SLOT_1_AXI_awprot,
    SLOT_1_AXI_awready,
    SLOT_1_AXI_awvalid,
    SLOT_1_AXI_bready,
    SLOT_1_AXI_bresp,
    SLOT_1_AXI_bvalid,
    SLOT_1_AXI_rdata,
    SLOT_1_AXI_rready,
    SLOT_1_AXI_rresp,
    SLOT_1_AXI_rvalid,
    SLOT_1_AXI_wdata,
    SLOT_1_AXI_wready,
    SLOT_1_AXI_wstrb,
    SLOT_1_AXI_wvalid,
    clk,
    probe0,
    probe1,
    probe2,
    resetn);
  input [1:0]SLOT_0_MBINTERRUPT_ack;
  input [31:0]SLOT_0_MBINTERRUPT_address;
  input SLOT_0_MBINTERRUPT_interrupt;
  input [6:0]SLOT_1_AXI_araddr;
  input [2:0]SLOT_1_AXI_arprot;
  input SLOT_1_AXI_arready;
  input SLOT_1_AXI_arvalid;
  input [6:0]SLOT_1_AXI_awaddr;
  input [2:0]SLOT_1_AXI_awprot;
  input SLOT_1_AXI_awready;
  input SLOT_1_AXI_awvalid;
  input SLOT_1_AXI_bready;
  input [1:0]SLOT_1_AXI_bresp;
  input SLOT_1_AXI_bvalid;
  input [31:0]SLOT_1_AXI_rdata;
  input SLOT_1_AXI_rready;
  input [1:0]SLOT_1_AXI_rresp;
  input SLOT_1_AXI_rvalid;
  input [31:0]SLOT_1_AXI_wdata;
  input SLOT_1_AXI_wready;
  input [3:0]SLOT_1_AXI_wstrb;
  input SLOT_1_AXI_wvalid;
  input clk;
  input [0:0]probe0;
  input [0:0]probe1;
  input [0:0]probe2;
  input resetn;

  wire [1:0]SLOT_0_MBINTERRUPT_ack;
  wire [31:0]SLOT_0_MBINTERRUPT_address;
  wire SLOT_0_MBINTERRUPT_interrupt;
  wire [6:0]SLOT_1_AXI_araddr;
  wire [2:0]SLOT_1_AXI_arprot;
  wire SLOT_1_AXI_arready;
  wire SLOT_1_AXI_arvalid;
  wire [6:0]SLOT_1_AXI_awaddr;
  wire [2:0]SLOT_1_AXI_awprot;
  wire SLOT_1_AXI_awready;
  wire SLOT_1_AXI_awvalid;
  wire SLOT_1_AXI_bready;
  wire [1:0]SLOT_1_AXI_bresp;
  wire SLOT_1_AXI_bvalid;
  wire [31:0]SLOT_1_AXI_rdata;
  wire SLOT_1_AXI_rready;
  wire [1:0]SLOT_1_AXI_rresp;
  wire SLOT_1_AXI_rvalid;
  wire [31:0]SLOT_1_AXI_wdata;
  wire SLOT_1_AXI_wready;
  wire [3:0]SLOT_1_AXI_wstrb;
  wire SLOT_1_AXI_wvalid;
  wire clk;
  wire [0:0]probe0;
  wire [0:0]probe1;
  wire [0:0]probe2;
  wire resetn;

  bd_fc76 bd_fc76_i
       (.SLOT_0_MBINTERRUPT_ack(SLOT_0_MBINTERRUPT_ack),
        .SLOT_0_MBINTERRUPT_address(SLOT_0_MBINTERRUPT_address),
        .SLOT_0_MBINTERRUPT_interrupt(SLOT_0_MBINTERRUPT_interrupt),
        .SLOT_1_AXI_araddr(SLOT_1_AXI_araddr),
        .SLOT_1_AXI_arprot(SLOT_1_AXI_arprot),
        .SLOT_1_AXI_arready(SLOT_1_AXI_arready),
        .SLOT_1_AXI_arvalid(SLOT_1_AXI_arvalid),
        .SLOT_1_AXI_awaddr(SLOT_1_AXI_awaddr),
        .SLOT_1_AXI_awprot(SLOT_1_AXI_awprot),
        .SLOT_1_AXI_awready(SLOT_1_AXI_awready),
        .SLOT_1_AXI_awvalid(SLOT_1_AXI_awvalid),
        .SLOT_1_AXI_bready(SLOT_1_AXI_bready),
        .SLOT_1_AXI_bresp(SLOT_1_AXI_bresp),
        .SLOT_1_AXI_bvalid(SLOT_1_AXI_bvalid),
        .SLOT_1_AXI_rdata(SLOT_1_AXI_rdata),
        .SLOT_1_AXI_rready(SLOT_1_AXI_rready),
        .SLOT_1_AXI_rresp(SLOT_1_AXI_rresp),
        .SLOT_1_AXI_rvalid(SLOT_1_AXI_rvalid),
        .SLOT_1_AXI_wdata(SLOT_1_AXI_wdata),
        .SLOT_1_AXI_wready(SLOT_1_AXI_wready),
        .SLOT_1_AXI_wstrb(SLOT_1_AXI_wstrb),
        .SLOT_1_AXI_wvalid(SLOT_1_AXI_wvalid),
        .clk(clk),
        .probe0(probe0),
        .probe1(probe1),
        .probe2(probe2),
        .resetn(resetn));
endmodule
