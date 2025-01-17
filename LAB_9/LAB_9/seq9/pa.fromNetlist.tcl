
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name seq9 -dir "D:/ilck/seq91/seq91/seq9/planAhead_run_2" -part xc3s400pq208-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/ilck/seq91/seq91/seq9/main.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/ilck/seq91/seq91/seq9} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "main.ucf" [current_fileset -constrset]
add_files [list {main.ucf}] -fileset [get_property constrset [current_run]]
link_design
