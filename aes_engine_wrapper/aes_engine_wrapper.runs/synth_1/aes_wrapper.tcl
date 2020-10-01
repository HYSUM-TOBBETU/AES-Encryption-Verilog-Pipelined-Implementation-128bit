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
set_msg_config  -id {Synth 8-6014}  -string {{WARNING: [Synth 8-6014] Unused sequential element islem1ilecarpma1_reg[13] was removed.  [C:/Users/SHC/vivado/aes_engine_wrapper/aes_engine_wrapper.srcs/sources_1/new/sutun_karistirma.v:20]}}  -suppress 
set_msg_config  -id {Synth 8-6014}  -string {{WARNING: [Synth 8-6014] Unused sequential element islem1ilecarpma2_reg[14] was removed.  [C:/Users/SHC/vivado/aes_engine_wrapper/aes_engine_wrapper.srcs/sources_1/new/sutun_karistirma.v:21]}}  -suppress 
set_msg_config  -id {Synth 8-6014}  -string {{WARNING: [Synth 8-6014] Unused sequential element islem1ilecarpma2_reg[12] was removed.  [C:/Users/SHC/vivado/aes_engine_wrapper/aes_engine_wrapper.srcs/sources_1/new/sutun_karistirma.v:21]}}  -suppress 
set_msg_config  -id {Synth 8-6014}  -string {{WARNING: [Synth 8-6014] Unused sequential element islem1ilecarpma2_reg[11] was removed.  [C:/Users/SHC/vivado/aes_engine_wrapper/aes_engine_wrapper.srcs/sources_1/new/sutun_karistirma.v:21]}}  -suppress 
set_msg_config  -id {Synth 8-6014}  -string {{WARNING: [Synth 8-6014] Unused sequential element islem1ilecarpma2_reg[10] was removed.  [C:/Users/SHC/vivado/aes_engine_wrapper/aes_engine_wrapper.srcs/sources_1/new/sutun_karistirma.v:21]}}  -suppress 
set_msg_config  -id {Synth 8-6014}  -string {{WARNING: [Synth 8-6014] Unused sequential element islem1ilecarpma2_reg[8] was removed.  [C:/Users/SHC/vivado/aes_engine_wrapper/aes_engine_wrapper.srcs/sources_1/new/sutun_karistirma.v:21]}}  -suppress 
set_msg_config  -id {Synth 8-6014}  -string {{WARNING: [Synth 8-6014] Unused sequential element islem1ilecarpma2_reg[7] was removed.  [C:/Users/SHC/vivado/aes_engine_wrapper/aes_engine_wrapper.srcs/sources_1/new/sutun_karistirma.v:21]}}  -suppress 
set_msg_config  -id {Synth 8-6014}  -string {{WARNING: [Synth 8-6014] Unused sequential element islem1ilecarpma2_reg[6] was removed.  [C:/Users/SHC/vivado/aes_engine_wrapper/aes_engine_wrapper.srcs/sources_1/new/sutun_karistirma.v:21]}}  -suppress 
set_msg_config  -id {Synth 8-6014}  -string {{WARNING: [Synth 8-6014] Unused sequential element islem1ilecarpma2_reg[4] was removed.  [C:/Users/SHC/vivado/aes_engine_wrapper/aes_engine_wrapper.srcs/sources_1/new/sutun_karistirma.v:21]}}  -suppress 
set_msg_config  -id {Synth 8-6014}  -string {{WARNING: [Synth 8-6014] Unused sequential element islem1ilecarpma2_reg[3] was removed.  [C:/Users/SHC/vivado/aes_engine_wrapper/aes_engine_wrapper.srcs/sources_1/new/sutun_karistirma.v:21]}}  -suppress 
set_msg_config  -id {Synth 8-6014}  -string {{WARNING: [Synth 8-6014] Unused sequential element islem1ilecarpma2_reg[2] was removed.  [C:/Users/SHC/vivado/aes_engine_wrapper/aes_engine_wrapper.srcs/sources_1/new/sutun_karistirma.v:21]}}  -suppress 
set_msg_config  -id {Synth 8-6014}  -string {{WARNING: [Synth 8-6014] Unused sequential element islem1ilecarpma1_reg[9] was removed.  [C:/Users/SHC/vivado/aes_engine_wrapper/aes_engine_wrapper.srcs/sources_1/new/sutun_karistirma.v:20]}}  -suppress 
set_msg_config  -id {Synth 8-6014}  -string {{WARNING: [Synth 8-6014] Unused sequential element islem1ilecarpma2_reg[0] was removed.  [C:/Users/SHC/vivado/aes_engine_wrapper/aes_engine_wrapper.srcs/sources_1/new/sutun_karistirma.v:21]}}  -suppress 
set_msg_config  -id {Route 35-39}  -string {{CRITICAL WARNING: [Route 35-39] The design did not meet timing requirements. Please run report_timing_summary for detailed reports.
Resolution: Verify that the timing was met or had small violations at all previous steps (synthesis, placement, power_opt, and phys_opt). Run report_timing_summary and analyze individual timing paths.}}  -suppress 
set_msg_config  -id {Synth 8-3917}  -string {{WARNING: [Synth 8-3917] design bayt_degistirme__GBM6 has port bayt_degistirilmis_matris1[1] driven by constant 0}}  -suppress 
set_msg_config  -id {Synth 8-3917}  -string {{WARNING: [Synth 8-3917] design bayt_degistirme__GBM6 has port bayt_degistirilmis_matris1[0] driven by constant 0}}  -suppress 
set_msg_config  -id {Synth 8-3917}  -string {{WARNING: [Synth 8-3917] design bayt_degistirme__GBM6 has port O76[2] driven by constant 0}}  -suppress 
set_msg_config  -id {Synth 8-3917}  -string {{WARNING: [Synth 8-3917] design bayt_degistirme__GBM6 has port O76[1] driven by constant 0}}  -suppress 
set_msg_config  -id {Synth 8-6014}  -string {{WARNING: [Synth 8-6014] Unused sequential element islem1ilecarpma1_reg[5] was removed.  [C:/Users/SHC/vivado/aes_engine_wrapper/aes_engine_wrapper.srcs/sources_1/new/sutun_karistirma.v:20]}}  -suppress 
set_msg_config  -id {Synth 8-6014}  -string {{WARNING: [Synth 8-6014] Unused sequential element islem1ilecarpma1_reg[1] was removed.  [C:/Users/SHC/vivado/aes_engine_wrapper/aes_engine_wrapper.srcs/sources_1/new/sutun_karistirma.v:20]}}  -suppress 
set_msg_config  -id {Synth 8-6014}  -string {{WARNING: [Synth 8-6014] Unused sequential element islem1ilecarpma2_reg[15] was removed.  [C:/Users/SHC/vivado/aes_engine_wrapper/aes_engine_wrapper.srcs/sources_1/new/sutun_karistirma.v:21]}}  -suppress 
create_project -in_memory -part xc7z020clg484-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/SHC/vivado/aes_engine_wrapper/aes_engine_wrapper.cache/wt [current_project]
set_property parent.project_path C:/Users/SHC/vivado/aes_engine_wrapper/aes_engine_wrapper.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part em.avnet.com:zed:part0:1.3 [current_project]
set_property ip_cache_permissions disable [current_project]
read_verilog -library xil_defaultlib {
  C:/Users/SHC/vivado/aes_engine_wrapper/aes_engine_wrapper.srcs/sources_1/new/aes_engine.v
  C:/Users/SHC/vivado/aes_engine_wrapper/aes_engine_wrapper.srcs/sources_1/new/bayt_degistirme.v
  C:/Users/SHC/vivado/aes_engine_wrapper/aes_engine_wrapper.srcs/sources_1/new/satir_kaydirma.v
  C:/Users/SHC/vivado/aes_engine_wrapper/aes_engine_wrapper.srcs/sources_1/new/sutun_karistirma.v
  C:/Users/SHC/vivado/aes_engine_wrapper/aes_engine_wrapper.srcs/sources_1/new/tur_anahtari.v
  C:/Users/SHC/vivado/aes_engine_wrapper/aes_engine_wrapper.srcs/sources_1/new/tur_anahtari_ile_toplama.v
  C:/Users/SHC/vivado/aes_engine_wrapper/aes_engine_wrapper.srcs/sources_1/new/aes_wrapper.v
}
read_ip -quiet C:/Users/SHC/vivado/aes_engine_wrapper/aes_engine_wrapper.srcs/sources_1/ip/clk_wiz/clk_wiz.xci
set_property used_in_implementation false [get_files -all c:/Users/SHC/vivado/aes_engine_wrapper/aes_engine_wrapper.srcs/sources_1/ip/clk_wiz/clk_wiz_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/SHC/vivado/aes_engine_wrapper/aes_engine_wrapper.srcs/sources_1/ip/clk_wiz/clk_wiz.xdc]
set_property used_in_implementation false [get_files -all c:/Users/SHC/vivado/aes_engine_wrapper/aes_engine_wrapper.srcs/sources_1/ip/clk_wiz/clk_wiz_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/SHC/vivado/aes_engine_wrapper/aes_engine_wrapper.srcs/constrs_1/new/project.xdc
set_property used_in_implementation false [get_files C:/Users/SHC/vivado/aes_engine_wrapper/aes_engine_wrapper.srcs/constrs_1/new/project.xdc]

set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top aes_wrapper -part xc7z020clg484-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef aes_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file aes_wrapper_utilization_synth.rpt -pb aes_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]