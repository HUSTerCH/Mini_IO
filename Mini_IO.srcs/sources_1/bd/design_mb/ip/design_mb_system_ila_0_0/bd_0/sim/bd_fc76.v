//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_fc76.bd
//Design : bd_fc76
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_fc76,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_fc76,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=7,numReposBlks=7,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=Global}" *) (* HW_HANDOFF = "design_mb_system_ila_0_0.hwdef" *) 
module bd_fc76
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:mbinterrupt:1.0 SLOT_0_MBINTERRUPT ACK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_0_MBINTERRUPT, LOW_LATENCY 1, SENSITIVITY LEVEL_HIGH" *) input [1:0]SLOT_0_MBINTERRUPT_ack;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mbinterrupt:1.0 SLOT_0_MBINTERRUPT ADDRESS" *) input [31:0]SLOT_0_MBINTERRUPT_address;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mbinterrupt:1.0 SLOT_0_MBINTERRUPT INTERRUPT" *) input SLOT_0_MBINTERRUPT_interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_1_AXI, ADDR_WIDTH 7, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN /clk_wiz_1_clk_out1, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [6:0]SLOT_1_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARPROT" *) input [2:0]SLOT_1_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARREADY" *) input SLOT_1_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARVALID" *) input SLOT_1_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWADDR" *) input [6:0]SLOT_1_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWPROT" *) input [2:0]SLOT_1_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWREADY" *) input SLOT_1_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWVALID" *) input SLOT_1_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI BREADY" *) input SLOT_1_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI BRESP" *) input [1:0]SLOT_1_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI BVALID" *) input SLOT_1_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI RDATA" *) input [31:0]SLOT_1_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI RREADY" *) input SLOT_1_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI RRESP" *) input [1:0]SLOT_1_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI RVALID" *) input SLOT_1_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI WDATA" *) input [31:0]SLOT_1_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI WREADY" *) input SLOT_1_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI WSTRB" *) input [3:0]SLOT_1_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI WVALID" *) input SLOT_1_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF SLOT_1_AXI, ASSOCIATED_RESET resetn, CLK_DOMAIN /clk_wiz_1_clk_out1, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.0" *) input clk;
  input [0:0]probe0;
  input [0:0]probe1;
  input [0:0]probe2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input resetn;

  wire [6:0]Conn_ARADDR;
  wire [2:0]Conn_ARPROT;
  wire Conn_ARREADY;
  wire Conn_ARVALID;
  wire [6:0]Conn_AWADDR;
  wire [2:0]Conn_AWPROT;
  wire Conn_AWREADY;
  wire Conn_AWVALID;
  wire Conn_BREADY;
  wire [1:0]Conn_BRESP;
  wire Conn_BVALID;
  wire [31:0]Conn_RDATA;
  wire Conn_RREADY;
  wire [1:0]Conn_RRESP;
  wire Conn_RVALID;
  wire [31:0]Conn_WDATA;
  wire Conn_WREADY;
  wire [3:0]Conn_WSTRB;
  wire Conn_WVALID;
  wire [1:0]SLOT_0_MBINTERRUPT_ack_1;
  wire [31:0]SLOT_0_MBINTERRUPT_address_1;
  wire SLOT_0_MBINTERRUPT_interrupt_1;
  wire clk_1;
  wire [1:0]net_slot_1_axi_ar_cnt;
  wire [1:0]net_slot_1_axi_ar_ctrl;
  wire [6:0]net_slot_1_axi_araddr;
  wire [2:0]net_slot_1_axi_arprot;
  wire net_slot_1_axi_arready;
  wire net_slot_1_axi_arvalid;
  wire [1:0]net_slot_1_axi_aw_cnt;
  wire [1:0]net_slot_1_axi_aw_ctrl;
  wire [6:0]net_slot_1_axi_awaddr;
  wire [2:0]net_slot_1_axi_awprot;
  wire net_slot_1_axi_awready;
  wire net_slot_1_axi_awvalid;
  wire [1:0]net_slot_1_axi_b_cnt;
  wire [1:0]net_slot_1_axi_b_ctrl;
  wire net_slot_1_axi_bready;
  wire [1:0]net_slot_1_axi_bresp;
  wire net_slot_1_axi_bvalid;
  wire [1:0]net_slot_1_axi_r_cnt;
  wire [1:0]net_slot_1_axi_r_ctrl;
  wire [31:0]net_slot_1_axi_rdata;
  wire net_slot_1_axi_rready;
  wire [1:0]net_slot_1_axi_rresp;
  wire net_slot_1_axi_rvalid;
  wire [1:0]net_slot_1_axi_w_ctrl;
  wire [31:0]net_slot_1_axi_wdata;
  wire net_slot_1_axi_wready;
  wire [3:0]net_slot_1_axi_wstrb;
  wire net_slot_1_axi_wvalid;
  wire [0:0]probe0_1;
  wire [0:0]probe1_1;
  wire [0:0]probe2_1;
  wire resetn_1;

  assign Conn_ARADDR = SLOT_1_AXI_araddr[6:0];
  assign Conn_ARPROT = SLOT_1_AXI_arprot[2:0];
  assign Conn_ARREADY = SLOT_1_AXI_arready;
  assign Conn_ARVALID = SLOT_1_AXI_arvalid;
  assign Conn_AWADDR = SLOT_1_AXI_awaddr[6:0];
  assign Conn_AWPROT = SLOT_1_AXI_awprot[2:0];
  assign Conn_AWREADY = SLOT_1_AXI_awready;
  assign Conn_AWVALID = SLOT_1_AXI_awvalid;
  assign Conn_BREADY = SLOT_1_AXI_bready;
  assign Conn_BRESP = SLOT_1_AXI_bresp[1:0];
  assign Conn_BVALID = SLOT_1_AXI_bvalid;
  assign Conn_RDATA = SLOT_1_AXI_rdata[31:0];
  assign Conn_RREADY = SLOT_1_AXI_rready;
  assign Conn_RRESP = SLOT_1_AXI_rresp[1:0];
  assign Conn_RVALID = SLOT_1_AXI_rvalid;
  assign Conn_WDATA = SLOT_1_AXI_wdata[31:0];
  assign Conn_WREADY = SLOT_1_AXI_wready;
  assign Conn_WSTRB = SLOT_1_AXI_wstrb[3:0];
  assign Conn_WVALID = SLOT_1_AXI_wvalid;
  assign SLOT_0_MBINTERRUPT_ack_1 = SLOT_0_MBINTERRUPT_ack[1:0];
  assign SLOT_0_MBINTERRUPT_address_1 = SLOT_0_MBINTERRUPT_address[31:0];
  assign SLOT_0_MBINTERRUPT_interrupt_1 = SLOT_0_MBINTERRUPT_interrupt;
  assign clk_1 = clk;
  assign probe0_1 = probe0[0];
  assign probe1_1 = probe1[0];
  assign probe2_1 = probe2[0];
  assign resetn_1 = resetn;
  bd_fc76_g_inst_0 g_inst
       (.aclk(clk_1),
        .aresetn(resetn_1),
        .m_slot_0_axi_ar_cnt(net_slot_1_axi_ar_cnt),
        .m_slot_0_axi_araddr(net_slot_1_axi_araddr),
        .m_slot_0_axi_arprot(net_slot_1_axi_arprot),
        .m_slot_0_axi_arready(net_slot_1_axi_arready),
        .m_slot_0_axi_arvalid(net_slot_1_axi_arvalid),
        .m_slot_0_axi_aw_cnt(net_slot_1_axi_aw_cnt),
        .m_slot_0_axi_awaddr(net_slot_1_axi_awaddr),
        .m_slot_0_axi_awprot(net_slot_1_axi_awprot),
        .m_slot_0_axi_awready(net_slot_1_axi_awready),
        .m_slot_0_axi_awvalid(net_slot_1_axi_awvalid),
        .m_slot_0_axi_b_cnt(net_slot_1_axi_b_cnt),
        .m_slot_0_axi_bready(net_slot_1_axi_bready),
        .m_slot_0_axi_bresp(net_slot_1_axi_bresp),
        .m_slot_0_axi_bvalid(net_slot_1_axi_bvalid),
        .m_slot_0_axi_r_cnt(net_slot_1_axi_r_cnt),
        .m_slot_0_axi_rdata(net_slot_1_axi_rdata),
        .m_slot_0_axi_rready(net_slot_1_axi_rready),
        .m_slot_0_axi_rresp(net_slot_1_axi_rresp),
        .m_slot_0_axi_rvalid(net_slot_1_axi_rvalid),
        .m_slot_0_axi_wdata(net_slot_1_axi_wdata),
        .m_slot_0_axi_wready(net_slot_1_axi_wready),
        .m_slot_0_axi_wstrb(net_slot_1_axi_wstrb),
        .m_slot_0_axi_wvalid(net_slot_1_axi_wvalid),
        .slot_0_axi_araddr(Conn_ARADDR),
        .slot_0_axi_arprot(Conn_ARPROT),
        .slot_0_axi_arready(Conn_ARREADY),
        .slot_0_axi_arvalid(Conn_ARVALID),
        .slot_0_axi_awaddr(Conn_AWADDR),
        .slot_0_axi_awprot(Conn_AWPROT),
        .slot_0_axi_awready(Conn_AWREADY),
        .slot_0_axi_awvalid(Conn_AWVALID),
        .slot_0_axi_bready(Conn_BREADY),
        .slot_0_axi_bresp(Conn_BRESP),
        .slot_0_axi_bvalid(Conn_BVALID),
        .slot_0_axi_rdata(Conn_RDATA),
        .slot_0_axi_rready(Conn_RREADY),
        .slot_0_axi_rresp(Conn_RRESP),
        .slot_0_axi_rvalid(Conn_RVALID),
        .slot_0_axi_wdata(Conn_WDATA),
        .slot_0_axi_wready(Conn_WREADY),
        .slot_0_axi_wstrb(Conn_WSTRB),
        .slot_0_axi_wvalid(Conn_WVALID));
  bd_fc76_ila_lib_0 ila_lib
       (.clk(clk_1),
        .probe0(probe0_1),
        .probe1(probe1_1),
        .probe10(net_slot_1_axi_awaddr),
        .probe11(net_slot_1_axi_awprot),
        .probe12(net_slot_1_axi_b_cnt),
        .probe13(net_slot_1_axi_bresp),
        .probe14(net_slot_1_axi_r_cnt),
        .probe15(net_slot_1_axi_rdata),
        .probe16(net_slot_1_axi_rresp),
        .probe17(net_slot_1_axi_wdata),
        .probe18(net_slot_1_axi_wstrb),
        .probe19(net_slot_1_axi_aw_ctrl),
        .probe2(probe2_1),
        .probe20(net_slot_1_axi_w_ctrl),
        .probe21(net_slot_1_axi_b_ctrl),
        .probe22(net_slot_1_axi_ar_ctrl),
        .probe23(net_slot_1_axi_r_ctrl),
        .probe3(SLOT_0_MBINTERRUPT_ack_1),
        .probe4(SLOT_0_MBINTERRUPT_address_1),
        .probe5(SLOT_0_MBINTERRUPT_interrupt_1),
        .probe6(net_slot_1_axi_ar_cnt),
        .probe7(net_slot_1_axi_araddr),
        .probe8(net_slot_1_axi_arprot),
        .probe9(net_slot_1_axi_aw_cnt));
  bd_fc76_slot_1_ar_0 slot_1_ar
       (.In0(net_slot_1_axi_arvalid),
        .In1(net_slot_1_axi_arready),
        .dout(net_slot_1_axi_ar_ctrl));
  bd_fc76_slot_1_aw_0 slot_1_aw
       (.In0(net_slot_1_axi_awvalid),
        .In1(net_slot_1_axi_awready),
        .dout(net_slot_1_axi_aw_ctrl));
  bd_fc76_slot_1_b_0 slot_1_b
       (.In0(net_slot_1_axi_bvalid),
        .In1(net_slot_1_axi_bready),
        .dout(net_slot_1_axi_b_ctrl));
  bd_fc76_slot_1_r_0 slot_1_r
       (.In0(net_slot_1_axi_rvalid),
        .In1(net_slot_1_axi_rready),
        .dout(net_slot_1_axi_r_ctrl));
  bd_fc76_slot_1_w_0 slot_1_w
       (.In0(net_slot_1_axi_wvalid),
        .In1(net_slot_1_axi_wready),
        .dout(net_slot_1_axi_w_ctrl));
endmodule
