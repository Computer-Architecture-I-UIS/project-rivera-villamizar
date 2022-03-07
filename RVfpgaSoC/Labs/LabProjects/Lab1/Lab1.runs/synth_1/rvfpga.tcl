# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_msg_config -id {HDL-1065} -limit 10000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/vladimir/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.cache/wt [current_project]
set_property parent.project_path /home/vladimir/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:nexys-a7-100t:part0:1.2 [current_project]
set_property ip_output_repo /home/vladimir/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
set_property include_dirs {
  /home/vladimir/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.srcs/sources_1/imports/src/SweRVolfSoC/Interconnect/AxiInterconnect/pulp-platform.org__axi_0.25.0/include
  /home/vladimir/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.srcs/sources_1/imports/src/OtherSources/pulp-platform.org__common_cells_1.20.0/include
  /home/vladimir/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/include
} [current_fileset]
read_verilog {
  /home/vladimir/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.srcs/sources_1/imports/src/SweRVolfSoC/Interconnect/AxiInterconnect/pulp-platform.org__axi_0.25.0/include/axi/typedef.svh
  /home/vladimir/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.srcs/sources_1/imports/src/SweRVolfSoC/Interconnect/AxiInterconnect/pulp-platform.org__axi_0.25.0/include/axi/assign.svh
  /home/vladimir/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.srcs/sources_1/imports/src/OtherSources/pulp-platform.org__common_cells_1.20.0/include/common_cells/registers.svh
  /home/vladimir/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/include/common_defines.vh
  /home/vladimir/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.srcs/sources_1/imports/src/LiteDRAM/serv_1.0.2/rtl/serv_params.vh
}
set_property file_type "Verilog Header" [get_files /home/vladimir/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.srcs/sources_1/imports/src/SweRVolfSoC/Interconnect/AxiInterconnect/pulp-platform.org__axi_0.25.0/include/axi/typedef.svh]
set_property is_global_include true [get_files /home/vladimir/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.srcs/sources_1/imports/src/SweRVolfSoC/Interconnect/AxiInterconnect/pulp-platform.org__axi_0.25.0/include/axi/typedef.svh]
set_property file_type "Verilog Header" [get_files /home/vladimir/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.srcs/sources_1/imports/src/SweRVolfSoC/Interconnect/AxiInterconnect/pulp-platform.org__axi_0.25.0/include/axi/assign.svh]
set_property is_global_include true [get_files /home/vladimir/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.srcs/sources_1/imports/src/SweRVolfSoC/Interconnect/AxiInterconnect/pulp-platform.org__axi_0.25.0/include/axi/assign.svh]
set_property file_type "Verilog Header" [get_files /home/vladimir/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.srcs/sources_1/imports/src/OtherSources/pulp-platform.org__common_cells_1.20.0/include/common_cells/registers.svh]
set_property is_global_include true [get_files /home/vladimir/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.srcs/sources_1/imports/src/OtherSources/pulp-platform.org__common_cells_1.20.0/include/common_cells/registers.svh]
set_property is_global_include true [get_files /home/vladimir/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/include/common_defines.vh]
read_mem /home/vladimir/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.srcs/sources_1/imports/sw/boot_main.mem
read_verilog -library xil_defaultlib -sv {
  /home/vladimir/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/include/swerv_types.sv
  /home/vladimir/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/mem.sv
  /home/vladimir/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.srcs/sources_1/imports/src/SweRVolfSoC/Interconnect/AxiInterconnect/pulp-platform.org__axi_0.25.0/src/axi_pkg.sv
  /home/vladimir/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.srcs/sources_1/imports/src/SweRVolfSoC/Interconnect/AxiInterconnect/pulp-platform.org__axi_0.25.0/src/axi_intf.sv
  /home/vladimir/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.srcs/sources_1/imports/src/OtherSources/pulp-platform.org__common_cells_1.20.0/src/spill_register.sv
  /home/vladimir/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.srcs/sources_1/imports/src/SweRVolfSoC/Interconnect/AxiInterconnect/pulp-platform.org__axi_0.25.0/src/axi_cdc.sv
  /home/vladimir/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.srcs/sources_1/imports/src/OtherSources/pulp-platform.org__common_cells_1.20.0/src/binary_to_gray.sv
  /home/vladimir/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.srcs/sources_1/imports/src/OtherSources/bscan_tap.sv
  /home/vladimir/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.srcs/sources_1/imports/src/OtherSources/pulp-platform.org__common_cells_1.20.0/src/cdc_fifo_gray.sv
  /home/vladimir/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.srcs/sources_1/imports/src/OtherSources/pulp-platform.org__common_cells_1.20.0/src/gray_to_binary.sv
  /home/vladimir/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.srcs/sources_1/imports/src/OtherSources/pulp-platform.org__common_cells_1.20.0/src/sync.sv
  /home/vladimir/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.srcs/sources_1/imports/src/rvfpga.sv
}
read_verilog -library xil_defaultlib {
  /home/vladimir/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.srcs/sources_1/bd/BD/hdl/BD_wrapper.v
  /home/vladimir/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.srcs/sources_1/imports/src/OtherSources/clk_gen_nexys.v
  /home/vladimir/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.srcs/sources_1/imports/src/LiteDRAM/litedram_core.v
  /home/vladimir/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.srcs/sources_1/imports/src/LiteDRAM/litedram_top.v
  /home/vladimir/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.srcs/sources_1/imports/src/LiteDRAM/serv_1.0.2/rtl/serv_alu.v
  /home/vladimir/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.srcs/sources_1/imports/src/LiteDRAM/serv_1.0.2/rtl/serv_bufreg.v
  /home/vladimir/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.srcs/sources_1/imports/src/LiteDRAM/serv_1.0.2/rtl/serv_csr.v
  /home/vladimir/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.srcs/sources_1/imports/src/LiteDRAM/serv_1.0.2/rtl/serv_ctrl.v
  /home/vladimir/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.srcs/sources_1/imports/src/LiteDRAM/serv_1.0.2/rtl/serv_decode.v
  /home/vladimir/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.srcs/sources_1/imports/src/LiteDRAM/serv_1.0.2/rtl/serv_mem_if.v
  /home/vladimir/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.srcs/sources_1/imports/src/LiteDRAM/serv_1.0.2/rtl/serv_rf_if.v
  /home/vladimir/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.srcs/sources_1/imports/src/LiteDRAM/serv_1.0.2/rtl/serv_rf_ram.v
  /home/vladimir/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.srcs/sources_1/imports/src/LiteDRAM/serv_1.0.2/rtl/serv_rf_ram_if.v
  /home/vladimir/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.srcs/sources_1/imports/src/LiteDRAM/serv_1.0.2/rtl/serv_rf_top.v
  /home/vladimir/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.srcs/sources_1/imports/src/LiteDRAM/serv_1.0.2/rtl/serv_shift.v
  /home/vladimir/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.srcs/sources_1/imports/src/LiteDRAM/serv_1.0.2/rtl/serv_state.v
  /home/vladimir/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.srcs/sources_1/imports/src/LiteDRAM/serv_1.0.2/rtl/serv_top.v
}
add_files /home/vladimir/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.srcs/sources_1/bd/BD/BD.bd
set_property used_in_implementation false [get_files -all /home/vladimir/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.srcs/sources_1/bd/BD/BD_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/vladimir/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.srcs/constrs_1/imports/src/liteDRAM.xdc
set_property used_in_implementation false [get_files /home/vladimir/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.srcs/constrs_1/imports/src/liteDRAM.xdc]

read_xdc /home/vladimir/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.srcs/constrs_1/imports/src/rvfpga.xdc
set_property used_in_implementation false [get_files /home/vladimir/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.srcs/constrs_1/imports/src/rvfpga.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top rvfpga -part xc7a100tcsg324-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef rvfpga.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file rvfpga_utilization_synth.rpt -pb rvfpga_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
