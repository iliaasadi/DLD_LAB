
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name comparator -dir "D:/ilck/comparator/planAhead_run_1" -part xc3s400pq208-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/ilck/comparator/comparatoeB.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/ilck/comparator} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "comparatoeB.ucf" [current_fileset -constrset]
add_files [list {comparatoeB.ucf}] -fileset [get_property constrset [current_run]]
link_design
