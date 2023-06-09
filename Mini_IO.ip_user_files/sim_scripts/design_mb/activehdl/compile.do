vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/microblaze_v11_0_0
vlib activehdl/lmb_v10_v3_0_9
vlib activehdl/lmb_bram_if_cntlr_v4_0_15
vlib activehdl/blk_mem_gen_v8_4_2
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/mdm_v3_2_15
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/lib_pkg_v1_0_2
vlib activehdl/lib_srl_fifo_v1_0_2
vlib activehdl/axi_uartlite_v2_0_22
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_register_slice_v2_1_18
vlib activehdl/fifo_generator_v13_2_3
vlib activehdl/axi_data_fifo_v2_1_17
vlib activehdl/axi_crossbar_v2_1_19
vlib activehdl/interrupt_control_v3_1_4
vlib activehdl/axi_gpio_v2_0_20
vlib activehdl/axi_intc_v4_1_12
vlib activehdl/xlconcat_v2_1_1
vlib activehdl/axi_timer_v2_0_20
vlib activehdl/dist_mem_gen_v8_0_12
vlib activehdl/lib_fifo_v1_0_12
vlib activehdl/axi_quad_spi_v3_2_17
vlib activehdl/gigantic_mux
vlib activehdl/axi_protocol_converter_v2_1_18

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap microblaze_v11_0_0 activehdl/microblaze_v11_0_0
vmap lmb_v10_v3_0_9 activehdl/lmb_v10_v3_0_9
vmap lmb_bram_if_cntlr_v4_0_15 activehdl/lmb_bram_if_cntlr_v4_0_15
vmap blk_mem_gen_v8_4_2 activehdl/blk_mem_gen_v8_4_2
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap mdm_v3_2_15 activehdl/mdm_v3_2_15
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap lib_pkg_v1_0_2 activehdl/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 activehdl/lib_srl_fifo_v1_0_2
vmap axi_uartlite_v2_0_22 activehdl/axi_uartlite_v2_0_22
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_18 activehdl/axi_register_slice_v2_1_18
vmap fifo_generator_v13_2_3 activehdl/fifo_generator_v13_2_3
vmap axi_data_fifo_v2_1_17 activehdl/axi_data_fifo_v2_1_17
vmap axi_crossbar_v2_1_19 activehdl/axi_crossbar_v2_1_19
vmap interrupt_control_v3_1_4 activehdl/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_20 activehdl/axi_gpio_v2_0_20
vmap axi_intc_v4_1_12 activehdl/axi_intc_v4_1_12
vmap xlconcat_v2_1_1 activehdl/xlconcat_v2_1_1
vmap axi_timer_v2_0_20 activehdl/axi_timer_v2_0_20
vmap dist_mem_gen_v8_0_12 activehdl/dist_mem_gen_v8_0_12
vmap lib_fifo_v1_0_12 activehdl/lib_fifo_v1_0_12
vmap axi_quad_spi_v3_2_17 activehdl/axi_quad_spi_v3_2_17
vmap gigantic_mux activehdl/gigantic_mux
vmap axi_protocol_converter_v2_1_18 activehdl/axi_protocol_converter_v2_1_18

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/85a3" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/ec67/hdl" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/122e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/c45e/hdl/verilog" \
"D:/vivado_2018_03/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/vivado_2018_03/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/vivado_2018_03/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/vivado_2018_03/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_0 -93 \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/2ed1/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_mb/ip/design_mb_microblaze_0_0/sim/design_mb_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_9 -93 \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_mb/ip/design_mb_dlmb_v10_0/sim/design_mb_dlmb_v10_0.vhd" \
"../../../bd/design_mb/ip/design_mb_ilmb_v10_0/sim/design_mb_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_15 -93 \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/92fd/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_mb/ip/design_mb_dlmb_bram_if_cntlr_0/sim/design_mb_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/design_mb/ip/design_mb_ilmb_bram_if_cntlr_0/sim/design_mb_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_2  -v2k5 "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/85a3" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/ec67/hdl" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/122e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/c45e/hdl/verilog" \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/37c2/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/85a3" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/ec67/hdl" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/122e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/c45e/hdl/verilog" \
"../../../bd/design_mb/ip/design_mb_lmb_bram_0/sim/design_mb_lmb_bram_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mdm_v3_2_15 -93 \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/41ef/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_mb/ip/design_mb_mdm_1_0/sim/design_mb_mdm_1_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/85a3" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/ec67/hdl" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/122e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/c45e/hdl/verilog" \
"../../../bd/design_mb/ip/design_mb_clk_wiz_1_0/design_mb_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/design_mb/ip/design_mb_clk_wiz_1_0/design_mb_clk_wiz_1_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_mb/ip/design_mb_rst_clk_wiz_1_100M_0/sim/design_mb_rst_clk_wiz_1_100M_0.vhd" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_22 -93 \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/7371/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_mb/ip/design_mb_axi_uartlite_0_0/sim/design_mb_axi_uartlite_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/85a3" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/ec67/hdl" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/122e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/c45e/hdl/verilog" \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/85a3" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/ec67/hdl" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/122e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/c45e/hdl/verilog" \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_18  -v2k5 "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/85a3" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/ec67/hdl" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/122e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/c45e/hdl/verilog" \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_3  -v2k5 "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/85a3" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/ec67/hdl" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/122e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/c45e/hdl/verilog" \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_3 -93 \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_3  -v2k5 "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/85a3" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/ec67/hdl" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/122e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/c45e/hdl/verilog" \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_17  -v2k5 "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/85a3" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/ec67/hdl" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/122e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/c45e/hdl/verilog" \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_19  -v2k5 "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/85a3" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/ec67/hdl" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/122e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/c45e/hdl/verilog" \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/6c9d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/85a3" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/ec67/hdl" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/122e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/c45e/hdl/verilog" \
"../../../bd/design_mb/ip/design_mb_xbar_0/sim/design_mb_xbar_0.v" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_20 -93 \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/a7c9/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_mb/ip/design_mb_axi_gpio_0_0/sim/design_mb_axi_gpio_0_0.vhd" \
"../../../bd/design_mb/ip/design_mb_axi_gpio_1_0/sim/design_mb_axi_gpio_1_0.vhd" \
"../../../bd/design_mb/ip/design_mb_axi_gpio_2_0/sim/design_mb_axi_gpio_2_0.vhd" \

vcom -work axi_intc_v4_1_12 -93 \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/31e4/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_mb/ip/design_mb_axi_intc_0_0/sim/design_mb_axi_intc_0_0.vhd" \

vlog -work xlconcat_v2_1_1  -v2k5 "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/85a3" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/ec67/hdl" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/122e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/c45e/hdl/verilog" \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/85a3" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/ec67/hdl" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/122e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/c45e/hdl/verilog" \
"../../../bd/design_mb/ip/design_mb_xlconcat_0_0/sim/design_mb_xlconcat_0_0.v" \

vcom -work axi_timer_v2_0_20 -93 \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/e9c1/hdl/axi_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_mb/ip/design_mb_axi_timer_0_0/sim/design_mb_axi_timer_0_0.vhd" \
"../../../bd/design_mb/ip/design_mb_axi_uartlite_1_1/sim/design_mb_axi_uartlite_1_1.vhd" \
"../../../bd/design_mb/ip/design_mb_axi_uartlite_2_1/sim/design_mb_axi_uartlite_2_1.vhd" \

vlog -work dist_mem_gen_v8_0_12  -v2k5 "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/85a3" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/ec67/hdl" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/122e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/c45e/hdl/verilog" \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/d46a/simulation/dist_mem_gen_v8_0.v" \

vcom -work lib_fifo_v1_0_12 -93 \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/544a/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work axi_quad_spi_v3_2_17 -93 \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/c3d3/hdl/axi_quad_spi_v3_2_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_mb/ip/design_mb_axi_quad_spi_0_0/sim/design_mb_axi_quad_spi_0_0.vhd" \
"../../../bd/design_mb/ip/design_mb_axi_quad_spi_1_0/sim/design_mb_axi_quad_spi_1_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/85a3" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/ec67/hdl" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/122e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/c45e/hdl/verilog" \
"../../../bd/design_mb/ip/design_mb_system_ila_0_0/bd_0/ip/ip_0/sim/bd_fc76_ila_lib_0.v" \

vlog -work gigantic_mux  -v2k5 "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/85a3" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/ec67/hdl" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/122e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/c45e/hdl/verilog" \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/d322/hdl/gigantic_mux_v1_0_cntr.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/85a3" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/ec67/hdl" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/122e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/c45e/hdl/verilog" \
"../../../bd/design_mb/ip/design_mb_system_ila_0_0/bd_0/ip/ip_1/bd_fc76_g_inst_0_gigantic_mux.v" \
"../../../bd/design_mb/ip/design_mb_system_ila_0_0/bd_0/ip/ip_1/sim/bd_fc76_g_inst_0.v" \
"../../../bd/design_mb/ip/design_mb_system_ila_0_0/bd_0/ip/ip_2/sim/bd_fc76_slot_1_aw_0.v" \
"../../../bd/design_mb/ip/design_mb_system_ila_0_0/bd_0/ip/ip_3/sim/bd_fc76_slot_1_w_0.v" \
"../../../bd/design_mb/ip/design_mb_system_ila_0_0/bd_0/ip/ip_4/sim/bd_fc76_slot_1_b_0.v" \
"../../../bd/design_mb/ip/design_mb_system_ila_0_0/bd_0/ip/ip_5/sim/bd_fc76_slot_1_ar_0.v" \
"../../../bd/design_mb/ip/design_mb_system_ila_0_0/bd_0/ip/ip_6/sim/bd_fc76_slot_1_r_0.v" \
"../../../bd/design_mb/ip/design_mb_system_ila_0_0/bd_0/sim/bd_fc76.v" \
"../../../bd/design_mb/ip/design_mb_system_ila_0_0/sim/design_mb_system_ila_0_0.v" \

vlog -work axi_protocol_converter_v2_1_18  -v2k5 "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/85a3" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/ec67/hdl" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/122e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/c45e/hdl/verilog" \
"../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/7a04/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/85a3" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/ec67/hdl" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/122e/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/7d3c/hdl/verilog" "+incdir+../../../../Mini_IO.srcs/sources_1/bd/design_mb/ipshared/c45e/hdl/verilog" \
"../../../bd/design_mb/ip/design_mb_auto_pc_0/sim/design_mb_auto_pc_0.v" \
"../../../bd/design_mb/sim/design_mb.v" \

vlog -work xil_defaultlib \
"glbl.v"

