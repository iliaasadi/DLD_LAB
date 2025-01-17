
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name verilog7 -dir "D:/ilck/veilog7/verilog7/planAhead_run_1" -part xc3s400pq208-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/ilck/veilog7/verilog7/verilog77.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/ilck/veilog7/verilog7} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "verilog77.ucf" [current_fileset -constrset]
add_files [list {verilog77.ucf}] -fileset [get_property constrset [current_run]]
link_design
