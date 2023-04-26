-makelib xcelium_lib/xil_defaultlib -sv \
  "D:/vivado_2018_03/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/vivado_2018_03/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "D:/vivado_2018_03/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "D:/vivado_2018_03/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/microblaze_v11_0_0 \
  "../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/2ed1/hdl/microblaze_v11_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_mb/ip/design_mb_microblaze_0_0/sim/design_mb_microblaze_0_0.vhd" \
-endlib
-makelib xcelium_lib/lmb_v10_v3_0_9 \
  "../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_mb/ip/design_mb_dlmb_v10_0/sim/design_mb_dlmb_v10_0.vhd" \
  "../../../bd/design_mb/ip/design_mb_ilmb_v10_0/sim/design_mb_ilmb_v10_0.vhd" \
-endlib
-makelib xcelium_lib/lmb_bram_if_cntlr_v4_0_15 \
  "../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/92fd/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_mb/ip/design_mb_dlmb_bram_if_cntlr_0/sim/design_mb_dlmb_bram_if_cntlr_0.vhd" \
  "../../../bd/design_mb/ip/design_mb_ilmb_bram_if_cntlr_0/sim/design_mb_ilmb_bram_if_cntlr_0.vhd" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_2 \
  "../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/37c2/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_mb/ip/design_mb_lmb_bram_0/sim/design_mb_lmb_bram_0.v" \
-endlib
-makelib xcelium_lib/axi_lite_ipif_v3_0_4 \
  "../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/mdm_v3_2_15 \
  "../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/41ef/hdl/mdm_v3_2_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_mb/ip/design_mb_mdm_1_0/sim/design_mb_mdm_1_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_mb/ip/design_mb_clk_wiz_1_0/design_mb_clk_wiz_1_0_clk_wiz.v" \
  "../../../bd/design_mb/ip/design_mb_clk_wiz_1_0/design_mb_clk_wiz_1_0.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_mb/ip/design_mb_rst_clk_wiz_1_100M_0/sim/design_mb_rst_clk_wiz_1_100M_0.vhd" \
-endlib
-makelib xcelium_lib/lib_pkg_v1_0_2 \
  "../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_srl_fifo_v1_0_2 \
  "../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_uartlite_v2_0_22 \
  "../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/7371/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_mb/ip/design_mb_axi_uartlite_0_0/sim/design_mb_axi_uartlite_0_0.vhd" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_18 \
  "../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_3 \
  "../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_3 \
  "../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_3 \
  "../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_17 \
  "../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_19 \
  "../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/6c9d/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_mb/ip/design_mb_xbar_0/sim/design_mb_xbar_0.v" \
-endlib
-makelib xcelium_lib/interrupt_control_v3_1_4 \
  "../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_gpio_v2_0_20 \
  "../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/a7c9/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_mb/ip/design_mb_axi_gpio_0_0/sim/design_mb_axi_gpio_0_0.vhd" \
  "../../../bd/design_mb/ip/design_mb_axi_gpio_1_0/sim/design_mb_axi_gpio_1_0.vhd" \
  "../../../bd/design_mb/ip/design_mb_axi_gpio_2_0/sim/design_mb_axi_gpio_2_0.vhd" \
-endlib
-makelib xcelium_lib/axi_intc_v4_1_12 \
  "../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/31e4/hdl/axi_intc_v4_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_mb/ip/design_mb_axi_intc_0_0/sim/design_mb_axi_intc_0_0.vhd" \
-endlib
-makelib xcelium_lib/xlconcat_v2_1_1 \
  "../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_mb/ip/design_mb_xlconcat_0_0/sim/design_mb_xlconcat_0_0.v" \
-endlib
-makelib xcelium_lib/axi_timer_v2_0_20 \
  "../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/e9c1/hdl/axi_timer_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_mb/ip/design_mb_axi_timer_0_0/sim/design_mb_axi_timer_0_0.vhd" \
  "../../../bd/design_mb/ip/design_mb_axi_uartlite_1_1/sim/design_mb_axi_uartlite_1_1.vhd" \
  "../../../bd/design_mb/ip/design_mb_axi_uartlite_2_1/sim/design_mb_axi_uartlite_2_1.vhd" \
-endlib
-makelib xcelium_lib/dist_mem_gen_v8_0_12 \
  "../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/d46a/simulation/dist_mem_gen_v8_0.v" \
-endlib
-makelib xcelium_lib/lib_fifo_v1_0_12 \
  "../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/544a/hdl/lib_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_quad_spi_v3_2_17 \
  "../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/c3d3/hdl/axi_quad_spi_v3_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_mb/ip/design_mb_axi_quad_spi_0_0/sim/design_mb_axi_quad_spi_0_0.vhd" \
  "../../../bd/design_mb/ip/design_mb_axi_quad_spi_1_0/sim/design_mb_axi_quad_spi_1_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_mb/ip/design_mb_system_ila_0_0/bd_0/ip/ip_0/sim/bd_fc76_ila_lib_0.v" \
-endlib
-makelib xcelium_lib/gigantic_mux \
  "../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/d322/hdl/gigantic_mux_v1_0_cntr.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_mb/ip/design_mb_system_ila_0_0/bd_0/ip/ip_1/bd_fc76_g_inst_0_gigantic_mux.v" \
  "../../../bd/design_mb/ip/design_mb_system_ila_0_0/bd_0/ip/ip_1/sim/bd_fc76_g_inst_0.v" \
  "../../../bd/design_mb/ip/design_mb_system_ila_0_0/bd_0/ip/ip_2/sim/bd_fc76_slot_1_aw_0.v" \
  "../../../bd/design_mb/ip/design_mb_system_ila_0_0/bd_0/ip/ip_3/sim/bd_fc76_slot_1_w_0.v" \
  "../../../bd/design_mb/ip/design_mb_system_ila_0_0/bd_0/ip/ip_4/sim/bd_fc76_slot_1_b_0.v" \
  "../../../bd/design_mb/ip/design_mb_system_ila_0_0/bd_0/ip/ip_5/sim/bd_fc76_slot_1_ar_0.v" \
  "../../../bd/design_mb/ip/design_mb_system_ila_0_0/bd_0/ip/ip_6/sim/bd_fc76_slot_1_r_0.v" \
  "../../../bd/design_mb/ip/design_mb_system_ila_0_0/bd_0/sim/bd_fc76.v" \
  "../../../bd/design_mb/ip/design_mb_system_ila_0_0/sim/design_mb_system_ila_0_0.v" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_18 \
  "../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/7a04/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_mb/ip/design_mb_auto_pc_0/sim/design_mb_auto_pc_0.v" \
  "../../../bd/design_mb/sim/design_mb.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

