#-- Lattice Semiconductor Corporation Ltd.
#-- Synplify OEM project file C:/pproj/lSerial/lSerial/launch_synplify.tcl
#-- Written on Thu Dec 28 17:08:59 2023

project -close
set filename "C:/pproj/lSerial/lSerial/lSerial_syn.prj"
if ([file exists "$filename"]) {
	project -load "$filename"
	project_file -remove *
} else {
	project -new "$filename"
}
set create_new 0

#device options
set_option -technology MACHXO3L
set_option -part LCMXO3L_6900C
set_option -package BG256C
set_option -speed_grade -5

if {$create_new == 1} {
#-- add synthesis options
	set_option -symbolic_fsm_compiler true
	set_option -resource_sharing true
	set_option -vlog_std v2001
	set_option -frequency 100
	set_option -maxfan 1000
	set_option -auto_constrain_io 0
	set_option -disable_io_insertion false
	set_option -retiming false; set_option -pipe true
	set_option -force_gsr false
	set_option -compiler_compatible 0
	set_option -dup false
	
	set_option -default_enum_encoding default
	
	
	
	set_option -write_apr_constraint 1
	set_option -fix_gated_and_generated_clocks 1
	set_option -update_models_cp 0
	set_option -resolve_multiple_driver 0
	
	
	set_option -seqshift_no_replicate 0
	
}
#-- add_file options
set_option -include_path "C:/pproj/lSerial"
add_file -verilog -vlog_std v2001 "C:/pproj/lSerial/lSerial/source/top.v"
add_file -verilog -vlog_std v2001 "C:/pproj/lSerial/lSerial/source/debCom.v"
add_file -verilog -vlog_std v2001 "C:/pproj/lSerial/lSerial/source/uart.v"
add_file -verilog -vlog_std v2001 "C:/pproj/lSerial/lSerial/source/pbEdge.v"
#-- top module name
set_option -top_module {top.v}
project -result_file {C:/pproj/lSerial/lSerial/lSerial.edi}
project -save "$filename"
