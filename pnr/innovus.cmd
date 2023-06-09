#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Sun Mar 19 16:31:42 2023                
#                                                     
#######################################################

#@(#)CDS: Innovus v19.17-s077_1 (64bit) 12/01/2020 11:09 (Linux 2.6.32-431.11.2.el6.x86_64)
#@(#)CDS: NanoRoute 19.17-s077_1 NR201130-0207/19_17-UB (database version 18.20, 510.7.1) {superthreading v1.53}
#@(#)CDS: AAE 19.17-s018 (64bit) 12/01/2020 (Linux 2.6.32-431.11.2.el6.x86_64)
#@(#)CDS: CTE 19.17-s022_1 () Nov 18 2020 03:10:35 ( )
#@(#)CDS: SYNTECH 19.17-s005_1 () Oct 28 2020 05:12:49 ( )
#@(#)CDS: CPE v19.17-s044
#@(#)CDS: IQuantus/TQuantus 19.1.3-s268 (64bit) Mon Aug 10 22:57:12 PDT 2020 (Linux 2.6.32-431.11.2.el6.x86_64)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
win
set init_pwr_net VDD
set init_gnd_net VSS
set init_verilog ./netlist/fullchip.out.v
set init_design_netlisttype Verilog
set init_design_settop 1
set init_top_cell fullchip
set init_lef_file /home/linux/ieng6/ee260bwi23/public/PDKdata/lef/tcbn65gplus_8lmT2.lef
create_library_set -name WC_LIB -timing $worst_timing_lib
create_library_set -name BC_LIB -timing $best_timing_lib
create_rc_corner -name Cmax -cap_table $worst_captbl -T 125
create_rc_corner -name Cmin -cap_table $best_captbl -T -40
create_delay_corner -name WC -library_set WC_LIB -rc_corner Cmax
create_delay_corner -name BC -library_set BC_LIB -rc_corner Cmin
create_constraint_mode -name CON -sdc_file [list $sdc]
create_analysis_view -name WC_VIEW -delay_corner WC -constraint_mode CON
create_analysis_view -name BC_VIEW -delay_corner BC -constraint_mode CON
init_design -setup WC_VIEW -hold BC_VIEW
set_interactive_constraint_modes {CON}
setDesignMode -process 65
setDrawView fplan
panPage -1 0
panPage -1 0
panPage 1 0
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site core -r 0.999752278387 0.5 0.0 0.0 0.0 0.0
uiSetTool select
getIoFlowFlag
fit
panPage -1 0
uiSetTool move
setObjFPlanBox Module core_instance -453.76100 0.00000 0.00000 396.16250
setObjFPlanBox Module core_instance -453.76100 0.00000 -16.69800 396.16250
setObjFPlanBox Module core_instance -453.76100 0.00000 -16.69800 407.31800
setObjFPlanBox Module core_instance -453.76100 0.00000 -27.85350 407.31800
selectObject Module core_instance
setObjFPlanBox Module core_instance 3.619 4.0565 429.5265 411.3745
setDrawView place
setDrawView fplan
floorPlan -site core -r 1 0.50 10.0 10.0 10.0 10.0
timeDesign -preplace -prefix preplace
globalNetConnect VDD -type pgpin -pin VDD -inst * -verbose
globalNetConnect VSS -type pgpin -pin VSS -inst * -verbose
addRing -spacing {top 2 bottom 2 left 2 right 2} -width {top 3 bottom 3 left 3 right 3} -layer {top M1 bottom M1 left M2 right M2} -center 1 -type core_rings -nets {VSS  VDD}
setAddStripeMode -break_at block_ring
addStripe -number_of_sets 2 -spacing 6 -layer M4 -width 2 -nets { VSS VDD }
sroute
uiSetTool select
panPage 1 0
set ptngSprNoRefreshPins 1
setPtnPinStatus -cell fullchip -pin clk -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {inst[0]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {inst[1]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {inst[2]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {inst[3]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {inst[4]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {inst[5]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {inst[6]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {inst[7]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {inst[8]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {inst[9]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {inst[10]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {inst[11]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {inst[12]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {inst[13]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {inst[14]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {inst[15]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {inst[16]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[0]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[1]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[2]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[3]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[4]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[5]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[6]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[7]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[8]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[9]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[10]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[11]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[12]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[13]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[14]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[15]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[16]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[17]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[18]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[19]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[20]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[21]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[22]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[23]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[24]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[25]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[26]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[27]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[28]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[29]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[30]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[31]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[32]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[33]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[34]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[35]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[36]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[37]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[38]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[39]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[40]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[41]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[42]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[43]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[44]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[45]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[46]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[47]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[48]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[49]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[50]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[51]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[52]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[53]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[54]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[55]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[56]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[57]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[58]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[59]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[60]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[61]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[62]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin {mem_in[63]} -status unplaced -silent
setPtnPinStatus -cell fullchip -pin reset -status unplaced -silent
set ptngSprNoRefreshPins 0
ptnSprRefreshPinsAndBlockages
zoomBox -112.36000 71.03450 824.79000 431.53300
zoomBox 111.09900 138.74300 788.19050 399.20350
zoomBox 198.36900 165.18600 773.89700 386.57750
zoomBox 234.68200 188.94500 723.88150 377.12800
zoomBox -182.40150 -171.38700 1612.89200 519.21850
zoomBox -283.21800 -258.82750 1828.89200 553.64950
zoomBox -541.36500 -482.72350 2381.97150 641.81250
zoomBox -705.52800 -625.10550 2733.69150 697.87800
zoomBox -898.66150 -792.61400 3147.47950 763.83750
zoomBox -1094.61400 -993.03250 3665.55250 838.08700
zoomBox -927.69200 -795.40550 3118.44950 761.04600
zoomBox -785.80800 -627.42300 2653.41200 695.56100
zoomBox -664.80450 -484.63750 2258.53350 639.89900
zoomBox -561.60750 -361.89850 1923.22950 593.95750
zoomBox -495.74650 -235.13100 1616.36500 577.34650
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -fixOverlap 1 -unit MICRON -spreadDirection clockwise -edge 0 -layer 3 -spreadType start -spacing 5.0 -offsetStart 10 -pin {clk {inst[0]} {inst[1]} {inst[2]} {inst[3]} {inst[4]} {inst[5]} {inst[6]} {inst[7]} {inst[8]} {inst[9]} {inst[10]} {inst[11]} {inst[12]} {inst[13]} {inst[14]} {inst[15]} {inst[16]} {mem_in[0]} {mem_in[1]} {mem_in[2]} {mem_in[3]} {mem_in[4]} {mem_in[5]} {mem_in[6]} {mem_in[7]} {mem_in[8]} {mem_in[9]} {mem_in[10]} {mem_in[11]} {mem_in[12]} {mem_in[13]} {mem_in[14]} {mem_in[15]} {mem_in[16]} {mem_in[17]} {mem_in[18]} {mem_in[19]} {mem_in[20]} {mem_in[21]} {mem_in[22]} {mem_in[23]} {mem_in[24]} {mem_in[25]} {mem_in[26]} {mem_in[27]} {mem_in[28]} {mem_in[29]} {mem_in[30]} {mem_in[31]} {mem_in[32]} {mem_in[33]} {mem_in[34]} {mem_in[35]} {mem_in[36]} {mem_in[37]} {mem_in[38]} {mem_in[39]} {mem_in[40]} {mem_in[41]} {mem_in[42]} {mem_in[43]} {mem_in[44]} {mem_in[45]} {mem_in[46]} {mem_in[47]} {mem_in[48]} {mem_in[49]} {mem_in[50]} {mem_in[51]} {mem_in[52]} {mem_in[53]} {mem_in[54]} {mem_in[55]} {mem_in[56]} {mem_in[57]} {mem_in[58]} {mem_in[59]} {mem_in[60]} {mem_in[61]} {mem_in[62]} {mem_in[63]} reset}
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -fixOverlap 1 -unit MICRON -spreadDirection clockwise -edge 3 -layer 3 -spreadType start -spacing 3.0 -offsetStart 10 -pin {{out[0]} {out[1]} {out[2]} {out[3]} {out[4]} {out[5]} {out[6]} {out[7]} {out[8]} {out[9]} {out[10]} {out[11]} {out[12]} {out[13]} {out[14]} {out[15]} {out[16]} {out[17]} {out[18]} {out[19]} {out[20]} {out[21]} {out[22]} {out[23]} {out[24]} {out[25]} {out[26]} {out[27]} {out[28]} {out[29]} {out[30]} {out[31]} {out[32]} {out[33]} {out[34]} {out[35]} {out[36]} {out[37]} {out[38]} {out[39]} {out[40]} {out[41]} {out[42]} {out[43]} {out[44]} {out[45]} {out[46]} {out[47]} {out[48]} {out[49]} {out[50]} {out[51]} {out[52]} {out[53]} {out[54]} {out[55]} {out[56]} {out[57]} {out[58]} {out[59]} {out[60]} {out[61]} {out[62]} {out[63]} {out[64]} {out[65]} {out[66]} {out[67]} {out[68]} {out[69]} {out[70]} {out[71]} {out[72]} {out[73]} {out[74]} {out[75]} {out[76]} {out[77]} {out[78]} {out[79]} {out[80]} {out[81]} {out[82]} {out[83]} {out[84]} {out[85]} {out[86]} {out[87]} {out[88]} {out[89]} {out[90]} {out[91]} {out[92]} {out[93]} {out[94]} {out[95]} {sum_out[0]} {sum_out[1]} {sum_out[2]} {sum_out[3]} {sum_out[4]} {sum_out[5]} {sum_out[6]} {sum_out[7]} {sum_out[8]} {sum_out[9]} {sum_out[10]} {sum_out[11]} {sum_out[12]} {sum_out[13]} {sum_out[14]} {sum_out[15]}}
setPinAssignMode -pinEditInBatch false
deselectAll
checkPinAssignment
legalizePin
checkPinAssignment
saveDesign floorplan.enc
setPlaceMode -timingDriven true -reorderScan false -congEffort medium -modulePlan false
setOptMode -effort high -powerEffort high -leakageToDynamicRatio 0.5 -fixFanoutLoad true -restruct true -verbose true
place_opt_design
saveDesign placement.enc
