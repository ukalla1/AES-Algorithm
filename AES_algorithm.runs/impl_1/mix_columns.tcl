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

set_msg_config -id {Common 17-41} -limit 10000000
set_msg_config  -ruleid {1}  -id {Synth 8-6026}  -string {{WARNING: [Synth 8-6026] Ignoring keep related attribute (keep/mark_debug/dont_touch) applied on memory [C:/Users/uttej/Desktop/VivadoProjs/learn_hw/AES_algorithm/AES_algorithm.srcs/sources_1/new/mem.v:37]}}  -suppress 
set_msg_config  -ruleid {10}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[101]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {100}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[68]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {101}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[69]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {102}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[6]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {103}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[70]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {104}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[71]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {105}  -id {Project 1-19}  -string {{CRITICAL WARNING: [Project 1-19] Could not find the file 'C:/Users/uttej/Desktop/VivadoProjs/learn_hw/AES_algorithm/AES_algorithm.srcs/sim_1/new/bit_8_crypto_mul.v'.}}  -suppress 
set_msg_config  -ruleid {11}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[102]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {12}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[103]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {13}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[104]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {14}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[105]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {15}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[106]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {16}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[107]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {17}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[108]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {18}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[109]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {19}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[10]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {2}  -id {Place 30-415}  -string {{ERROR: [Place 30-415] IO Placement failed due to overutilization. This design contains 261 I/O ports
 while the target  device: 7a50t package: csg325, contains only 150 available user I/O. The target device has 150 usable I/O pins of which 0 are already occupied by user-locked I/Os.
 To rectify this issue:
 1. Ensure you are targeting the correct device and package.  Select a larger device or different package if necessary.
 2. Check the top-level ports of the design to ensure the correct number of ports are specified.
 3. Consider design changes to reduce the number of I/Os necessary.}}  -suppress 
set_msg_config  -ruleid {20}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[110]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {21}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[111]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {22}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[112]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {23}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[113]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {24}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[114]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {25}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[115]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {26}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[116]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {27}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[117]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {28}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[118]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {29}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[119]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {3}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance begin_shifting_IBUF_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {30}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[11]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {31}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[120]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {32}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[121]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {33}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[122]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {34}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[123]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {35}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[124]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {36}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[125]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {37}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[126]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {38}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[127]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {39}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[12]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {4}  -id {Place 30-99}  -string {{ERROR: [Place 30-99] Placer failed with error: 'IO Clock Placer failed'
Please review all ERROR, CRITICAL WARNING, and WARNING messages during placement to understand the cause for failure.}}  -suppress 
set_msg_config  -ruleid {40}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[13]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {41}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[14]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {42}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[15]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {43}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[16]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {44}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[17]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {45}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[18]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {46}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[19]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {47}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[1]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {48}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[20]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {49}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[21]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {5}  -id {Common 17-69}  -string {{ERROR: [Common 17-69] Command failed: Placer could not place all instances}}  -suppress 
set_msg_config  -ruleid {50}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[22]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {51}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[23]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {52}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[24]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {53}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[25]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {54}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[26]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {55}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[27]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {56}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[28]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {57}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[29]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {58}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[2]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {59}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[30]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {6}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance clk_IBUF_BUFG_inst (BUFG) is not placed}}  -suppress 
set_msg_config  -ruleid {60}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[31]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {61}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[32]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {62}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[33]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {63}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[34]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {64}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[35]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {65}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[36]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {66}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[37]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {67}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[38]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {68}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[39]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {69}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[3]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {7}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance clk_IBUF_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {70}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[40]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {71}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[41]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {72}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[42]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {73}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[43]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {74}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[44]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {75}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[45]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {76}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[46]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {77}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[47]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {78}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[48]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {79}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[49]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {8}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[0]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {80}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[4]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {81}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[50]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {82}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[51]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {83}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[52]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {84}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[53]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {85}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[54]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {86}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[55]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {87}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[56]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {88}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[57]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {89}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[58]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {9}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[100]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {90}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[59]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {91}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[5]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {92}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[60]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {93}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[61]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {94}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[62]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {95}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[63]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {96}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[64]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {97}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[65]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {98}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[66]_inst (IBUF) is not placed}}  -suppress 
set_msg_config  -ruleid {99}  -id {Place 30-68}  -string {{ERROR: [Place 30-68] Instance data_in_IBUF[67]_inst (IBUF) is not placed}}  -suppress 

start_step init_design
set ACTIVE_STEP init_design
set rc [catch {
  create_msg_db init_design.pb
  create_project -in_memory -part xc7a50tcsg325-1
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir C:/Users/uttej/Desktop/VivadoProjs/learn_hw/AES_algorithm/AES_algorithm.cache/wt [current_project]
  set_property parent.project_path C:/Users/uttej/Desktop/VivadoProjs/learn_hw/AES_algorithm/AES_algorithm.xpr [current_project]
  set_property ip_output_repo C:/Users/uttej/Desktop/VivadoProjs/learn_hw/AES_algorithm/AES_algorithm.cache/ip [current_project]
  set_property ip_cache_permissions {read write} [current_project]
  add_files -quiet C:/Users/uttej/Desktop/VivadoProjs/learn_hw/AES_algorithm/AES_algorithm.runs/synth_1/mix_columns.dcp
  read_xdc C:/Users/uttej/Desktop/VivadoProjs/learn_hw/AES_algorithm/AES_algorithm.srcs/constrs_1/new/tim.xdc
  link_design -top mix_columns -part xc7a50tcsg325-1
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
  opt_design 
  write_checkpoint -force mix_columns_opt.dcp
  create_report "impl_1_opt_report_drc_0" "report_drc -file mix_columns_drc_opted.rpt -pb bit_32_crypto_mul_drc_opted.pb -rpx bit_32_crypto_mul_drc_opted.rpx"
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
  implement_debug_core 
  place_design 
  write_checkpoint -force mix_columns_placed.dcp
  create_report "impl_1_place_report_io_0" "report_io -file mix_columns_io_placed.rpt"
  create_report "impl_1_place_report_utilization_0" "report_utilization -file mix_columns_utilization_placed.rpt -pb bit_32_crypto_mul_utilization_placed.pb"
  create_report "impl_1_place_report_control_sets_0" "report_control_sets -file mix_columns_control_sets_placed.rpt"
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
  unset ACTIVE_STEP 
}

start_step route_design
set ACTIVE_STEP route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force mix_columns_routed.dcp
  create_report "impl_1_route_report_drc_0" "report_drc -file mix_columns_drc_routed.rpt -pb bit_32_crypto_mul_drc_routed.pb -rpx bit_32_crypto_mul_drc_routed.rpx"
  create_report "impl_1_route_report_methodology_0" "report_methodology -file mix_columns_methodology_drc_routed.rpt -pb bit_32_crypto_mul_methodology_drc_routed.pb -rpx bit_32_crypto_mul_methodology_drc_routed.rpx"
  create_report "impl_1_route_report_power_0" "report_power -file mix_columns_power_routed.rpt -pb bit_32_crypto_mul_power_summary_routed.pb -rpx bit_32_crypto_mul_power_routed.rpx"
  create_report "impl_1_route_report_route_status_0" "report_route_status -file mix_columns_route_status.rpt -pb bit_32_crypto_mul_route_status.pb"
  create_report "impl_1_route_report_timing_summary_0" "report_timing_summary -file mix_columns_timing_summary_routed.rpt -warn_on_violation  -rpx bit_32_crypto_mul_timing_summary_routed.rpx"
  create_report "impl_1_route_report_incremental_reuse_0" "report_incremental_reuse -file mix_columns_incremental_reuse_routed.rpt"
  create_report "impl_1_route_report_clock_utilization_0" "report_clock_utilization -file mix_columns_clock_utilization_routed.rpt"
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force mix_columns_routed_error.dcp
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
  unset ACTIVE_STEP 
}

