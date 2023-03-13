# Clock tree synthesis
set desdir 		"./"
set design 		"fullchip" 
set_ccopt_property -update_io_latency false
create_ccopt_clock_tree_spec -file $desdir/constraints/$design.ccopt
ccopt_design

# Use actual clock network
set_propagated_clock [all_clocks]

# Post-CTS timing optimization
optDesign -postCTS -hold
saveDesign cts.enc
