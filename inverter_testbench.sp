* Testbench for CMOS Inverter
* Input pulse source with power supply connected

VDD VDD 0 DC 0.8
VIN VIN 0 PULSE(0 0.8 0 1n 1n 10n 20n)
Cload VOUT 0 30f

XINV VIN VOUT VDD GND cmos_inverter

* Analysis
.tran 1n 100n
.end
