
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name CarryLookAhead -dir "C:/Users/Kampi/Desktop/CarryLookAhead/planAhead_run_4" -part xc3s700anfgg484-4
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "C:/Users/Kampi/Desktop/CarryLookAhead/Top.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/Kampi/Desktop/CarryLookAhead} }
set_property target_constrs_file "Top.ucf" [current_fileset -constrset]
add_files [list {Top.ucf}] -fileset [get_property constrset [current_run]]
link_design
read_xdl -file "C:/Users/Kampi/Desktop/CarryLookAhead/Top.xdl"
if {[catch {read_twx -name results_1 -file "C:/Users/Kampi/Desktop/CarryLookAhead/Top.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"C:/Users/Kampi/Desktop/CarryLookAhead/Top.twx\": $eInfo"
}
