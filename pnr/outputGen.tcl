set output_dir "./outputGenerated/"
set design "fullchip"
streamOut ${output_dir}/${design}.gds2
write_lef_abstract ${output_dir}/${design}.lef
defOut -netlist -routing ${output_dir}/${design}.def
saveNetlist ${output_dir}/${design}.pnr.v

setAnalysisMode -setup
set_analysis_view -setup WC_VIEW -hold WC_VIEW
do_extract_model -view WC_VIEW -format dotlib ${output_dir}/${design}_WC.lib
write_sdf -view WC_VIEW ${output_dir}/${design}_WC.sdf

setAnalysisMode -hold
set_analysis_view -setup BC_VIEW -hold BC_VIEW
do_extract_model -view BC_VIEW -format dotlib ${output_dir}/${design}_BC.lib
write_sdf -view BC_VIEW ${output_dir}/${design}_BC.sdf
