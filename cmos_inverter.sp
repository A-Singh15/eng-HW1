* CMOS Inverter SPICE Netlist (14nm Technology)
* Follows HW1 requirements (with output capacitor and accurate transistor sizes)

.subckt cmos_inverter VIN VOUT VDD GND

* NMOS transistor: L = 16 nm, W = 1 um
MN VOUT VIN GND GND NMOS L=16n W=1u

* PMOS transistor: L = 16 nm, W = 2 um
MP VOUT VIN VDD VDD PMOS L=16n W=2u

* Load capacitor
Cload VOUT GND 30f

.ends

* Power supply
VDD VDD 0 DC 0.8

* Input pulse source for transient simulation
VIN VIN 0 PULSE(0 0.8 0 1n 1n 10n 20n)

* Analysis commands
.dc VIN 0 0.8 0.01     * DC sweep to get Vout vs. Vin (voltage transfer characteristic)
.tran 1n 100n          * Transient simulation to measure propagation delays
.end
