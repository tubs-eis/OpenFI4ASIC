set_property PACKAGE_PIN T22 [get_ports {LED[0]}];  # "LD0"
set_property PACKAGE_PIN T21 [get_ports {LED[1]}];  # "LD1"
set_property PACKAGE_PIN U22 [get_ports {LED[2]}];  # "LD2"
set_property PACKAGE_PIN U21 [get_ports {LED[3]}];  # "LD3"
set_property PACKAGE_PIN V22 [get_ports {LED[4]}];  # "LD4"
set_property PACKAGE_PIN W22 [get_ports {LED[5]}];  # "LD5"
set_property PACKAGE_PIN U19 [get_ports {LED[6]}];  # "LD6"
set_property PACKAGE_PIN U14 [get_ports {LED[7]}];  # "LD7"

set_property IOSTANDARD LVCMOS33 [get_ports {LED[0]}];  # "LD0"
set_property IOSTANDARD LVCMOS33 [get_ports {LED[1]}];  # "LD1"
set_property IOSTANDARD LVCMOS33 [get_ports {LED[2]}];  # "LD2"
set_property IOSTANDARD LVCMOS33 [get_ports {LED[3]}];  # "LD3"
set_property IOSTANDARD LVCMOS33 [get_ports {LED[4]}];  # "LD4"
set_property IOSTANDARD LVCMOS33 [get_ports {LED[5]}];  # "LD5"
set_property IOSTANDARD LVCMOS33 [get_ports {LED[6]}];  # "LD6"
set_property IOSTANDARD LVCMOS33 [get_ports {LED[7]}];  # "LD7"

set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 33]];

# Set the bank voltage for IO Bank 34 to 1.8V by default.
# set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 34]];
# set_property IOSTANDARD LVCMOS25 [get_ports -of_objects [get_iobanks 34]];
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 34]];

# Set the bank voltage for IO Bank 35 to 1.8V by default.
# set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 35]];
# set_property IOSTANDARD LVCMOS25 [get_ports -of_objects [get_iobanks 35]];
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 35]];

# Note that the bank voltage for IO Bank 13 is fixed to 3.3V on ZedBoard. 
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 13]];