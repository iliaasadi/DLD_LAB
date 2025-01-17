
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name adder -dir "D:/ummm/adder/planAhead_run_5" -part xc3s400pq208-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/ummm/adder/finalFulladder.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/ummm/adder} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "finalFulladder.ucf" [current_fileset -constrset]
add_files [list {finalFulladder.ucf}] -fileset [get_property constrset [current_run]]
link_design
