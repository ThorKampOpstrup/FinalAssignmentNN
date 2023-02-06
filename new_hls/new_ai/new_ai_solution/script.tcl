############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project new_ai
set_top nn_inference
add_files matmul.cpp
add_files matmul.hpp
add_files -tb matmul_tb.cpp
open_solution "new_ai_solution" -flow_target vivado
set_part {xczu3eg-sbva484-1-i}
create_clock -period 10 -name default
config_export -format ip_catalog -output /home/thops19/Documents/7.Semester/final/FinalAssignmentNN/new_hls/nn_inference.zip -rtl vhdl
#source "./new_ai/new_ai_solution/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl vhdl -format ip_catalog -output /home/thops19/Documents/7.Semester/final/FinalAssignmentNN/new_hls/nn_inference.zip
