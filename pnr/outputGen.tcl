# Load design
set desdir 		"/home/linux/ieng6/ee260bwi23/public/DESIGNdata"
set libdir 		"/home/linux/ieng6/ee260bwi23/public/PDKdata"
set design 		"fullchip"
set netlist 		"./netlist/$design.out.v"
set sdc 		"./constraints/$design.sdc"
set best_timing_lib 	"$libdir/lib/tcbn65gplusbc.lib"
set worst_timing_lib 	"$libdir/lib/tcbn65gpluswc.lib"
set lef 		"$libdir/lef/tcbn65gplus_8lmT2.lef"
set best_captbl 	"$libdir/captbl/cln65g+_1p08m+alrdl_top2_cbest.captable"
set worst_captbl 	"$libdir/captbl/cln65g+_1p08m+alrdl_top2_cworst.captable"
set output_dir "./outputGenerated/"
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
