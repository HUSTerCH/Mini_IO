// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Apr 11 10:18:45 2023
// Host        : FengSheng running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_mb_system_ila_0_0_stub.v
// Design      : design_mb_system_ila_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_fc76,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, probe0, probe1, probe2, 
  SLOT_0_MBINTERRUPT_interrupt, SLOT_0_MBINTERRUPT_address, SLOT_0_MBINTERRUPT_ack, 
  SLOT_1_AXI_awaddr, SLOT_1_AXI_awprot, SLOT_1_AXI_awvalid, SLOT_1_AXI_awready, 
  SLOT_1_AXI_wdata, SLOT_1_AXI_wstrb, SLOT_1_AXI_wvalid, SLOT_1_AXI_wready, 
  SLOT_1_AXI_bresp, SLOT_1_AXI_bvalid, SLOT_1_AXI_bready, SLOT_1_AXI_araddr, 
  SLOT_1_AXI_arprot, SLOT_1_AXI_arvalid, SLOT_1_AXI_arready, SLOT_1_AXI_rdata, 
  SLOT_1_AXI_rresp, SLOT_1_AXI_rvalid, SLOT_1_AXI_rready, resetn)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[0:0],probe1[0:0],probe2[0:0],SLOT_0_MBINTERRUPT_interrupt,SLOT_0_MBINTERRUPT_address[31:0],SLOT_0_MBINTERRUPT_ack[1:0],SLOT_1_AXI_awaddr[6:0],SLOT_1_AXI_awprot[2:0],SLOT_1_AXI_awvalid,SLOT_1_AXI_awready,SLOT_1_AXI_wdata[31:0],SLOT_1_AXI_wstrb[3:0],SLOT_1_AXI_wvalid,SLOT_1_AXI_wready,SLOT_1_AXI_bresp[1:0],SLOT_1_AXI_bvalid,SLOT_1_AXI_bready,SLOT_1_AXI_araddr[6:0],SLOT_1_AXI_arprot[2:0],SLOT_1_AXI_arvalid,SLOT_1_AXI_arready,SLOT_1_AXI_rdata[31:0],SLOT_1_AXI_rresp[1:0],SLOT_1_AXI_rvalid,SLOT_1_AXI_rready,resetn" */;
  input clk;
  input [0:0]probe0;
  input [0:0]probe1;
  input [0:0]probe2;
  input SLOT_0_MBINTERRUPT_interrupt;
  input [31:0]SLOT_0_MBINTERRUPT_address;
  input [1:0]SLOT_0_MBINTERRUPT_ack;
  input [6:0]SLOT_1_AXI_awaddr;
  input [2:0]SLOT_1_AXI_awprot;
  input SLOT_1_AXI_awvalid;
  input SLOT_1_AXI_awready;
  input [31:0]SLOT_1_AXI_wdata;
  input [3:0]SLOT_1_AXI_wstrb;
  input SLOT_1_AXI_wvalid;
  input SLOT_1_AXI_wready;
  input [1:0]SLOT_1_AXI_bresp;
  input SLOT_1_AXI_bvalid;
  input SLOT_1_AXI_bready;
  input [6:0]SLOT_1_AXI_araddr;
  input [2:0]SLOT_1_AXI_arprot;
  input SLOT_1_AXI_arvalid;
  input SLOT_1_AXI_arready;
  input [31:0]SLOT_1_AXI_rdata;
  input [1:0]SLOT_1_AXI_rresp;
  input SLOT_1_AXI_rvalid;
  input SLOT_1_AXI_rready;
  input resetn;
endmodule
