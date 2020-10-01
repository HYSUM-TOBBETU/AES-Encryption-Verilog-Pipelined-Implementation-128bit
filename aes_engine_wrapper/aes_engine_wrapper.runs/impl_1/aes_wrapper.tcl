# 
# Report generation script generated by Vivado
# 

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
proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
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

start_step init_design
set ACTIVE_STEP init_design
set rc [catch {
  create_msg_db init_design.pb
  create_project -in_memory -part xc7z020clg484-1
  set_property board_part em.avnet.com:zed:part0:1.3 [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir C:/Users/SHC/vivado/aes_engine_wrapper/aes_engine_wrapper.cache/wt [current_project]
  set_property parent.project_path C:/Users/SHC/vivado/aes_engine_wrapper/aes_engine_wrapper.xpr [current_project]
  set_property ip_cache_permissions disable [current_project]
  set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
  add_files -quiet C:/Users/SHC/vivado/aes_engine_wrapper/aes_engine_wrapper.runs/synth_1/aes_wrapper.dcp
  read_ip -quiet C:/Users/SHC/vivado/aes_engine_wrapper/aes_engine_wrapper.srcs/sources_1/ip/clk_wiz/clk_wiz.xci
  read_xdc C:/Users/SHC/vivado/aes_engine_wrapper/aes_engine_wrapper.srcs/constrs_1/new/project.xdc
  link_design -top aes_wrapper -part xc7z020clg484-1
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
  unset ACTIVE_STEP 
}

start_step opt_design
set ACTIVE_STEP opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design -directive Explore
  write_checkpoint -force aes_wrapper_opt.dcp
  create_report "impl_1_opt_report_drc_0" "report_drc -file aes_wrapper_drc_opted.rpt -pb aes_wrapper_drc_opted.pb -rpx aes_wrapper_drc_opted.rpx"
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
  unset ACTIVE_STEP 
}

start_step place_design
set ACTIVE_STEP place_design
set rc [catch {
  create_msg_db place_design.pb
  if { [llength [get_debug_cores -quiet] ] > 0 }  { 
    implement_debug_core 
  } 
  place_design -directive Explore
  write_checkpoint -force aes_wrapper_placed.dcp
  create_report "impl_1_place_report_io_0" "report_io -file aes_wrapper_io_placed.rpt"
  create_report "impl_1_place_report_utilization_0" "report_utilization -file aes_wrapper_utilization_placed.rpt -pb aes_wrapper_utilization_placed.pb"
  create_report "impl_1_place_report_control_sets_0" "report_control_sets -verbose -file aes_wrapper_control_sets_placed.rpt"
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
  unset ACTIVE_STEP 
}

start_step phys_opt_design
set ACTIVE_STEP phys_opt_design
set rc [catch {
  create_msg_db phys_opt_design.pb
  phys_opt_design -directive Explore
  write_checkpoint -force aes_wrapper_physopt.dcp
  close_msg_db -file phys_opt_design.pb
} RESULT]
if {$rc} {
  step_failed phys_opt_design
  return -code error $RESULT
} else {
  end_step phys_opt_design
  unset ACTIVE_STEP 
}

  set_msg_config -source 4 -id {Route 35-39} -severity "critical warning" -new_severity warning
start_step route_design
set ACTIVE_STEP route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design -directive Explore -tns_cleanup
  write_checkpoint -force aes_wrapper_routed.dcp
  create_report "impl_1_route_report_drc_0" "report_drc -file aes_wrapper_drc_routed.rpt -pb aes_wrapper_drc_routed.pb -rpx aes_wrapper_drc_routed.rpx"
  create_report "impl_1_route_report_methodology_0" "report_methodology -file aes_wrapper_methodology_drc_routed.rpt -pb aes_wrapper_methodology_drc_routed.pb -rpx aes_wrapper_methodology_drc_routed.rpx"
  create_report "impl_1_route_report_power_0" "report_power -file aes_wrapper_power_routed.rpt -pb aes_wrapper_power_summary_routed.pb -rpx aes_wrapper_power_routed.rpx"
  create_report "impl_1_route_report_route_status_0" "report_route_status -file aes_wrapper_route_status.rpt -pb aes_wrapper_route_status.pb"
  create_report "impl_1_route_report_timing_summary_0" "report_timing_summary -max_paths 10 -file aes_wrapper_timing_summary_routed.rpt -pb aes_wrapper_timing_summary_routed.pb -rpx aes_wrapper_timing_summary_routed.rpx"
  create_report "impl_1_route_report_incremental_reuse_0" "report_incremental_reuse -file aes_wrapper_incremental_reuse_routed.rpt"
  create_report "impl_1_route_report_clock_utilization_0" "report_clock_utilization -file aes_wrapper_clock_utilization_routed.rpt"
  create_report "impl_1_route_report_bus_skew_0" "report_bus_skew -warn_on_violation -file aes_wrapper_bus_skew_routed.rpt -pb aes_wrapper_bus_skew_routed.pb -rpx aes_wrapper_bus_skew_routed.rpx"
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force aes_wrapper_routed_error.dcp
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
  unset ACTIVE_STEP 
}

start_step post_route_phys_opt_design
set ACTIVE_STEP post_route_phys_opt_design
set rc [catch {
  set tool_flow [get_property TOOL_FLOW [current_project]]
  if {$tool_flow eq {SDx}} {send_msg_id {101-1} {status} {Starting optional post-route physical design optimization.} }
  create_msg_db post_route_phys_opt_design.pb
  phys_opt_design -directive Explore
  write_checkpoint -force aes_wrapper_postroute_physopt.dcp
  create_report "impl_1_post_route_phys_opt_report_timing_summary_0" "report_timing_summary -max_paths 10 -warn_on_violation -file aes_wrapper_timing_summary_postroute_physopted.rpt -pb aes_wrapper_timing_summary_postroute_physopted.pb -rpx aes_wrapper_timing_summary_postroute_physopted.rpx"
  create_report "impl_1_post_route_phys_opt_report_bus_skew_0" "report_bus_skew -warn_on_violation -file aes_wrapper_bus_skew_postroute_physopted.rpt -pb aes_wrapper_bus_skew_postroute_physopted.pb -rpx aes_wrapper_bus_skew_postroute_physopted.rpx"
  close_msg_db -file post_route_phys_opt_design.pb
  set tool_flow [get_property TOOL_FLOW [current_project]]
  if {$tool_flow eq {SDx}} {send_msg_id {101-1} {status} {Finished optional post-route physical design optimization.} }
} RESULT]
if {$rc} {
  step_failed post_route_phys_opt_design
  return -code error $RESULT
} else {
  end_step post_route_phys_opt_design
  unset ACTIVE_STEP 
}
