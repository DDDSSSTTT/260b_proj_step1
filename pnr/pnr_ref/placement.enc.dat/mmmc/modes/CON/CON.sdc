###############################################################
#  Generated by:      Cadence Innovus 19.17-s077_1
#  OS:                Linux x86_64(Host ID ieng6-ece-07.ucsd.edu)
#  Generated on:      Mon Feb 20 13:57:04 2023
#  Design:            add
#  Command:           saveDesign placement.enc
###############################################################
current_design add
create_clock [get_ports {clk}]  -name clk -period 1.200000 -waveform {0.000000 0.600000}
set_input_delay -add_delay 0.2 -clock [get_clocks {clk}] [get_ports {y[2]}]
set_input_delay -add_delay 0.2 -clock [get_clocks {clk}] [get_ports {y[0]}]
set_input_delay -add_delay 0.2 -clock [get_clocks {clk}] [get_ports {x[3]}]
set_input_delay -add_delay 0.2 -clock [get_clocks {clk}] [get_ports {x[1]}]
set_input_delay -add_delay 0.2 -clock [get_clocks {clk}] [get_ports {z[2]}]
set_input_delay -add_delay 0.2 -clock [get_clocks {clk}] [get_ports {z[0]}]
set_input_delay -add_delay 0.2 -clock [get_clocks {clk}] [get_ports {y[3]}]
set_input_delay -add_delay 0.2 -clock [get_clocks {clk}] [get_ports {y[1]}]
set_input_delay -add_delay 0.2 -clock [get_clocks {clk}] [get_ports {x[2]}]
set_input_delay -add_delay 0.2 -clock [get_clocks {clk}] [get_ports {z[3]}]
set_input_delay -add_delay 0.2 -clock [get_clocks {clk}] [get_ports {x[0]}]
set_input_delay -add_delay 0.2 -clock [get_clocks {clk}] [get_ports {z[1]}]
set_output_delay -add_delay 0.2 -clock [get_clocks {clk}] [get_ports {out[4]}]
set_output_delay -add_delay 0.2 -clock [get_clocks {clk}] [get_ports {out[2]}]
set_output_delay -add_delay 0.2 -clock [get_clocks {clk}] [get_ports {out[0]}]
set_output_delay -add_delay 0.2 -clock [get_clocks {clk}] [get_ports {out[5]}]
set_output_delay -add_delay 0.2 -clock [get_clocks {clk}] [get_ports {out[3]}]
set_output_delay -add_delay 0.2 -clock [get_clocks {clk}] [get_ports {out[1]}]
