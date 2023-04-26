vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/microblaze_v11_0_0
vlib modelsim_lib/msim/lmb_v10_v3_0_9
vlib modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_15
vlib modelsim_lib/msim/blk_mem_gen_v8_4_2
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/mdm_v3_2_15
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/lib_pkg_v1_0_2
vlib modelsim_lib/msim/lib_srl_fifo_v1_0_2
vlib modelsim_lib/msim/axi_uartlite_v2_0_22
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_18
vlib modelsim_lib/msim/fifo_generator_v13_2_3
vlib modelsim_lib/msim/axi_data_fifo_v2_1_17
vlib modelsim_lib/msim/axi_crossbar_v2_1_19
vlib modelsim_lib/msim/interrupt_control_v3_1_4
vlib modelsim_lib/msim/axi_gpio_v2_0_20
vlib modelsim_lib/msim/axi_intc_v4_1_12
vlib modelsim_lib/msim/xlconcat_v2_1_1
vlib modelsim_lib/msim/axi_timer_v2_0_20
vlib modelsim_lib/msim/dist_mem_gen_v8_0_12
vlib modelsim_lib/msim/lib_fifo_v1_0_12
vlib modelsim_lib/msim/axi_quad_spi_v3_2_17
vlib modelsim_lib/msim/gigantic_mux
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_18

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm
vmap microblaze_v11_0_0 modelsim_lib/msim/microblaze_v11_0_0
vmap lmb_v10_v3_0_9 modelsim_lib/msim/lmb_v10_v3_0_9
vmap lmb_bram_if_cntlr_v4_0_15 modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_15
vmap blk_mem_gen_v8_4_2 modelsim_lib/msim/blk_mem_gen_v8_4_2
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap mdm_v3_2_15 modelsim_lib/msim/mdm_v3_2_15
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap lib_pkg_v1_0_2 modelsim_lib/msim/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 modelsim_lib/msim/lib_srl_fifo_v1_0_2
vmap axi_uartlite_v2_0_22 modelsim_lib/msim/axi_uartlite_v2_0_22
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_18 modelsim_lib/msim/axi_register_slice_v2_1_18
vmap fifo_generator_v13_2_3 modelsim_lib/msim/fifo_generator_v13_2_3
vmap axi_data_fifo_v2_1_17 modelsim_lib/msim/axi_data_fifo_v2_1_17
vmap axi_crossbar_v2_1_19 modelsim_lib/msim/axi_crossbar_v2_1_19
vmap interrupt_control_v3_1_4 modelsim_lib/msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_20 modelsim_lib/msim/axi_gpio_v2_0_20
vmap axi_intc_v4_1_12 modelsim_lib/msim/axi_intc_v4_1_12
vmap xlconcat_v2_1_1 modelsim_lib/msim/xlconcat_v2_1_1
vmap axi_timer_v2_0_20 modelsim_lib/msim/axi_timer_v2_0_20
vmap dist_mem_gen_v8_0_12 modelsim_lib/msim/dist_mem_gen_v8_0_12
vmap lib_fifo_v1_0_12 modelsim_lib/msim/lib_fifo_v1_0_12
vmap axi_quad_spi_v3_2_17 modelsim_lib/msim/axi_quad_spi_v3_2_17
vmap gigantic_mux modelsim_lib/msim/gigantic_mux
vmap axi_protocol_converter_v2_1_18 modelsim_lib/msim/axi_protocol_converter_v2_1_18

vlog -work xil_defaultlib -64 -incr -sv "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/85a3" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/ec67/hdl" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/122e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/c45e/hdl/verilog" \
"D:/vivado_2018_03/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/vivado_2018_03/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/vivado_2018_03/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"D:/vivado_2018_03/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_0 -64 -93 \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/2ed1/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_mb/ip/design_mb_microblaze_0_0/sim/design_mb_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_9 -64 -93 \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_mb/ip/design_mb_dlmb_v10_0/sim/design_mb_dlmb_v10_0.vhd" \
"../../../bd/design_mb/ip/design_mb_ilmb_v10_0/sim/design_mb_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_15 -64 -93 \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/92fd/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_mb/ip/design_mb_dlmb_bram_if_cntlr_0/sim/design_mb_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/design_mb/ip/design_mb_ilmb_bram_if_cntlr_0/sim/design_mb_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_2 -64 -incr "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/85a3" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/ec67/hdl" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/122e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/c45e/hdl/verilog" \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/37c2/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/85a3" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/ec67/hdl" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/122e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/c45e/hdl/verilog" \
"../../../bd/design_mb/ip/design_mb_lmb_bram_0/sim/design_mb_lmb_bram_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mdm_v3_2_15 -64 -93 \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/41ef/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_mb/ip/design_mb_mdm_1_0/sim/design_mb_mdm_1_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/85a3" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/ec67/hdl" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/122e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/c45e/hdl/verilog" \
"../../../bd/design_mb/ip/design_mb_clk_wiz_1_0/design_mb_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/design_mb/ip/design_mb_clk_wiz_1_0/design_mb_clk_wiz_1_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_mb/ip/design_mb_rst_clk_wiz_1_100M_0/sim/design_mb_rst_clk_wiz_1_100M_0.vhd" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_22 -64 -93 \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/7371/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_mb/ip/design_mb_axi_uartlite_0_0/sim/design_mb_axi_uartlite_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/85a3" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/ec67/hdl" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/122e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/c45e/hdl/verilog" \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/85a3" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/ec67/hdl" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/122e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/c45e/hdl/verilog" \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_18 -64 -incr "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/85a3" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/ec67/hdl" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/122e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/c45e/hdl/verilog" \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_3 -64 -incr "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/85a3" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/ec67/hdl" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/122e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/c45e/hdl/verilog" \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_3 -64 -93 \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_3 -64 -incr "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/85a3" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/ec67/hdl" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/122e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/c45e/hdl/verilog" \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_17 -64 -incr "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/85a3" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/ec67/hdl" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/122e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/c45e/hdl/verilog" \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_19 -64 -incr "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/85a3" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/ec67/hdl" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/122e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/c45e/hdl/verilog" \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/6c9d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/85a3" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/ec67/hdl" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/122e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/c45e/hdl/verilog" \
"../../../bd/design_mb/ip/design_mb_xbar_0/sim/design_mb_xbar_0.v" \

vcom -work interrupt_control_v3_1_4 -64 -93 \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_20 -64 -93 \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/a7c9/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_mb/ip/design_mb_axi_gpio_0_0/sim/design_mb_axi_gpio_0_0.vhd" \
"../../../bd/design_mb/ip/design_mb_axi_gpio_1_0/sim/design_mb_axi_gpio_1_0.vhd" \
"../../../bd/design_mb/ip/design_mb_axi_gpio_2_0/sim/design_mb_axi_gpio_2_0.vhd" \

vcom -work axi_intc_v4_1_12 -64 -93 \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/31e4/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_mb/ip/design_mb_axi_intc_0_0/sim/design_mb_axi_intc_0_0.vhd" \

vlog -work xlconcat_v2_1_1 -64 -incr "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/85a3" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/ec67/hdl" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/122e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/c45e/hdl/verilog" \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/85a3" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/ec67/hdl" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/122e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/c45e/hdl/verilog" \
"../../../bd/design_mb/ip/design_mb_xlconcat_0_0/sim/design_mb_xlconcat_0_0.v" \

vcom -work axi_timer_v2_0_20 -64 -93 \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/e9c1/hdl/axi_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_mb/ip/design_mb_axi_timer_0_0/sim/design_mb_axi_timer_0_0.vhd" \
"../../../bd/design_mb/ip/design_mb_axi_uartlite_1_1/sim/design_mb_axi_uartlite_1_1.vhd" \
"../../../bd/design_mb/ip/design_mb_axi_uartlite_2_1/sim/design_mb_axi_uartlite_2_1.vhd" \

vlog -work dist_mem_gen_v8_0_12 -64 -incr "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/85a3" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/ec67/hdl" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/122e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/c45e/hdl/verilog" \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/d46a/simulation/dist_mem_gen_v8_0.v" \

vcom -work lib_fifo_v1_0_12 -64 -93 \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/544a/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work axi_quad_spi_v3_2_17 -64 -93 \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/c3d3/hdl/axi_quad_spi_v3_2_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_mb/ip/design_mb_axi_quad_spi_0_0/sim/design_mb_axi_quad_spi_0_0.vhd" \
"../../../bd/design_mb/ip/design_mb_axi_quad_spi_1_0/sim/design_mb_axi_quad_spi_1_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/85a3" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/ec67/hdl" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/122e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/c45e/hdl/verilog" \
"../../../bd/design_mb/ip/design_mb_system_ila_0_0/bd_0/ip/ip_0/sim/bd_fc76_ila_lib_0.v" \

vlog -work gigantic_mux -64 -incr "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/85a3" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/ec67/hdl" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/122e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/c45e/hdl/verilog" \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/d322/hdl/gigantic_mux_v1_0_cntr.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/85a3" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/ec67/hdl" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/122e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/c45e/hdl/verilog" \
"../../../bd/design_mb/ip/design_mb_system_ila_0_0/bd_0/ip/ip_1/bd_fc76_g_inst_0_gigantic_mux.v" \
"../../../bd/design_mb/ip/design_mb_system_ila_0_0/bd_0/ip/ip_1/sim/bd_fc76_g_inst_0.v" \
"../../../bd/design_mb/ip/design_mb_system_ila_0_0/bd_0/ip/ip_2/sim/bd_fc76_slot_1_aw_0.v" \
"../../../bd/design_mb/ip/design_mb_system_ila_0_0/bd_0/ip/ip_3/sim/bd_fc76_slot_1_w_0.v" \
"../../../bd/design_mb/ip/design_mb_system_ila_0_0/bd_0/ip/ip_4/sim/bd_fc76_slot_1_b_0.v" \
"../../../bd/design_mb/ip/design_mb_system_ila_0_0/bd_0/ip/ip_5/sim/bd_fc76_slot_1_ar_0.v" \
"../../../bd/design_mb/ip/design_mb_system_ila_0_0/bd_0/ip/ip_6/sim/bd_fc76_slot_1_r_0.v" \
"../../../bd/design_mb/ip/design_mb_system_ila_0_0/bd_0/sim/bd_fc76.v" \
"../../../bd/design_mb/ip/design_mb_system_ila_0_0/sim/design_mb_system_ila_0_0.v" \

vlog -work axi_protocol_converter_v2_1_18 -64 -incr "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/85a3" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/ec67/hdl" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/122e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/c45e/hdl/verilog" \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/7a04/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/85a3" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/ec67/hdl" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/122e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/c45e/hdl/verilog" \
"../../../bd/design_mb/ip/design_mb_auto_pc_0/sim/design_mb_auto_pc_0.v" \
"../../../bd/design_mb/sim/design_mb.v" \

vlog -work xil_defaultlib \
"glbl.v"

