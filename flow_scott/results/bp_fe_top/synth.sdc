set sdc_version 2.0
set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
create_clock [get_ports clk_i]  -name CLK  -period 5.4  -waveform {0 2.7}
