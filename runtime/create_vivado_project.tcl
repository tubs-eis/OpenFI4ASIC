# Check args
if { ![info exists ::env(EISV_FLT_NETLIST)] } {
    puts "ERROR: EISV_FLT_NETLIST has to be set to the instrumented eisv netlist location."
    exit 1
}

if { ![info exists ::env(EISV_INFO_FILE)] } {
    puts "ERROR: EISV_INFO_FILE has to be set to eisv_info file location."
    exit 1
}

set fh [open $env(EISV_INFO_FILE) r]
while {[gets $fh line] >= 0} {
    if {[regexp {IMEM_DELAY\s*(\d+)} $line match imem_val]} {
        set imem_async [expr {$imem_val == 0 ? "TRUE" : "FALSE"}]
    }
    if {[regexp {DMEM_DELAY\s*(\d+)} $line match dmem_val]} {
        set dmem_async [expr {$dmem_val == 0 ? "TRUE" : "FALSE"}]
    }
}
close $fh

create_project OpenFI4ASICSystem vivado/OpenFI4ASICSystem -part xc7z020clg484-1
set_property board_part digilentinc.com:zedboard:part0:1.1 [current_project]

# Import files
add_files [glob rtl/*.vhd]

set_property file_type {VHDL 2008} [get_files {*/rtl/*.vhd}]
set_property library fault_injection [get_files {*/rtl/*.vhd}]
set_property file_type {VHDL} [get_files {*/rtl/openfi4asic_pl.vhd}]

set_property PATH_MODE {RelativeOnly} [get_files {*/rtl/*.vhd}]

add_files [glob ../lib/NANGATE/*.vhd]

set_property PATH_MODE {RelativeOnly} [get_files {*/lib/NANGATE/*.vhd}]
set_property file_type {VHDL 2008} [get_files {*/lib/NANGATE/*.vhd}]

add_files /modules_opt/ASIClibs/FreePDK/NanGate_45nm_OCL_v2010_12_OpenFI4ASIC/pdk_v1.3_v2010_12/NangateOpenCellLibrary_PDKv1_3_v2010_12/Front_End/Vital/NangateOpenCellLibrary_components.vhd
add_files /modules_opt/ASIClibs/FreePDK/NanGate_45nm_OCL_v2010_12_OpenFI4ASIC/pdk_v1.3_v2010_12/NangateOpenCellLibrary_PDKv1_3_v2010_12/Front_End/Vital/NangateOpenCellLibrary_tables.vhd
add_files /modules_opt/ASIClibs/FreePDK/NanGate_45nm_OCL_v2010_12_OpenFI4ASIC/pdk_v1.3_v2010_12/NangateOpenCellLibrary_PDKv1_3_v2010_12/Front_End/Vital/NangateOpenCellLibrary_attribute.vhd

set_property PATH_MODE {AbsoluteOnly} [get_files {/modules_opt/ASIClibs/FreePDK/NanGate_45nm_OCL_v2010_12_OpenFI4ASIC/pdk_v1.3_v2010_12/NangateOpenCellLibrary_PDKv1_3_v2010_12/Front_End/Vital/*.vhd}]
set_property library NangateOpenCellLibrary [get_files {/modules_opt/ASIClibs/FreePDK/NanGate_45nm_OCL_v2010_12_OpenFI4ASIC/pdk_v1.3_v2010_12/NangateOpenCellLibrary_PDKv1_3_v2010_12/Front_End/Vital/*.vhd}]

add_files $env(EISV_FLT_NETLIST)

set_property PATH_MODE {RelativeOnly} [get_files $env(EISV_FLT_NETLIST)]
set_property library fault_injection [get_files $env(EISV_FLT_NETLIST)]

# Setup block design
create_bd_design "design_1"

create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0
apply_bd_automation -rule xilinx.com:bd_rule:processing_system7 -config {make_external "FIXED_IO, DDR" apply_board_preset "1" Master "Disable" Slave "Disable" }  [get_bd_cells processing_system7_0]
set_property CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {50} [get_bd_cells processing_system7_0]

create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.1 axi_bram_ctrl_0
set_property CONFIG.SINGLE_PORT_BRAM {1} [get_bd_cells axi_bram_ctrl_0]

create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.1 axi_bram_ctrl_1
set_property CONFIG.SINGLE_PORT_BRAM {1} [get_bd_cells axi_bram_ctrl_1]

create_bd_cell -type module -reference openfi4asic_pl openfi4asic_pl_0

set_property CONFIG.ASYNC_IMEM $imem_async [get_bd_cells openfi4asic_pl_0]
set_property CONFIG.ASYNC_DMEM $dmem_async [get_bd_cells openfi4asic_pl_0]
set_property CONFIG.MEM_ADDR_WORDS_LOG2 {9} [get_bd_cells openfi4asic_pl_0]

connect_bd_intf_net [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTA] [get_bd_intf_pins openfi4asic_pl_0/IMEM_PORTA]
connect_bd_intf_net [get_bd_intf_pins axi_bram_ctrl_1/BRAM_PORTA] [get_bd_intf_pins openfi4asic_pl_0/DMEM_PORTA]

apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config { Clk_master {Auto} Clk_slave {Auto} Clk_xbar {Auto} Master {/processing_system7_0/M_AXI_GP0} Slave {/openfi4asic_pl_0/main_clk_gate_S_AXI} ddr_seg {Auto} intc_ip {New AXI SmartConnect} master_apm {0}} [get_bd_intf_pins openfi4asic_pl_0/main_clk_gate_S_AXI]
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config { Clk_master {Auto} Clk_slave {Auto} Clk_xbar {Auto} Master {/processing_system7_0/M_AXI_GP0} Slave {/axi_bram_ctrl_0/S_AXI} ddr_seg {Auto} intc_ip {New AXI SmartConnect} master_apm {0}} [get_bd_intf_pins axi_bram_ctrl_0/S_AXI]
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config { Clk_master {Auto} Clk_slave {Auto} Clk_xbar {Auto} Master {/processing_system7_0/M_AXI_GP0} Slave {/axi_bram_ctrl_1/S_AXI} ddr_seg {Auto} intc_ip {New AXI SmartConnect} master_apm {0}} [get_bd_intf_pins axi_bram_ctrl_1/S_AXI]
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config { Clk_master {Auto} Clk_slave {Auto} Clk_xbar {Auto} Master {/processing_system7_0/M_AXI_GP0} Slave {/openfi4asic_pl_0/scan_clk_gate_S_AXI} ddr_seg {Auto} intc_ip {New AXI SmartConnect} master_apm {0}} [get_bd_intf_pins openfi4asic_pl_0/scan_clk_gate_S_AXI]
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config { Clk_master {Auto} Clk_slave {Auto} Clk_xbar {Auto} Master {/processing_system7_0/M_AXI_GP0} Slave {/openfi4asic_pl_0/scan_chain_S_AXI} ddr_seg {Auto} intc_ip {New AXI SmartConnect} master_apm {0}} [get_bd_intf_pins openfi4asic_pl_0/scan_chain_S_AXI]
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config { Clk_master {Auto} Clk_slave {Auto} Clk_xbar {Auto} Master {/processing_system7_0/M_AXI_GP0} Slave {/openfi4asic_pl_0/r3s3t_S_AXI} ddr_seg {Auto} intc_ip {New AXI SmartConnect} master_apm {0}} [get_bd_intf_pins openfi4asic_pl_0/r3s3t_S_AXI]
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config { Clk_master {Auto} Clk_slave {Auto} Clk_xbar {Auto} Master {/processing_system7_0/M_AXI_GP0} Slave {/openfi4asic_pl_0/pc_monitor_S_AXI} ddr_seg {Auto} intc_ip {New AXI SmartConnect} master_apm {0}} [get_bd_intf_pins openfi4asic_pl_0/pc_monitor_S_AXI]

delete_bd_objs [get_bd_addr_segs] [get_bd_addr_segs -excluded]

assign_bd_address -offset 0x40000000 -range 4K [get_bd_addr_segs openfi4asic_pl_0/main_clk_gate_S_AXI/reg0]
assign_bd_address -offset 0x42000000 -range 8K [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0]
assign_bd_address -offset 0x44000000 -range 8K [get_bd_addr_segs axi_bram_ctrl_1/S_AXI/Mem0]
assign_bd_address -offset 0x40001000 -range 4K [get_bd_addr_segs openfi4asic_pl_0/scan_clk_gate_S_AXI/reg0]
assign_bd_address -offset 0x40002000 -range 4K [get_bd_addr_segs openfi4asic_pl_0/scan_chain_S_AXI/reg0]
assign_bd_address -offset 0x40003000 -range 4K [get_bd_addr_segs openfi4asic_pl_0/r3s3t_S_AXI/reg0]
assign_bd_address -offset 0x40004000 -range 4K [get_bd_addr_segs openfi4asic_pl_0/pc_monitor_S_AXI/reg0]

save_bd_design "design_1"

make_wrapper -import -files [get_files design_1.bd] -top
set_property top design_1_wrapper [current_fileset]
