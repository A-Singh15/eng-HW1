* CMOS Inverter Simulation - HW1 ENGR848
* Transistor parameters
* VDD = 0.8V, CL = 30fF, NMOS and PMOS with nfin = 1, L = 16nm

VDD VDD 0 DC 0.8V
VIN IN 0 PULSE(0 0.8 0ns 1ns 1ns 10ns 20ns)
MP OUT IN VDD VDD PMOS L=16nm W=Wp
MN OUT IN 0 0 NMOS L=16nm W=Wn
CL OUT 0 30fF

* .MEAS commands for extracting key parameters (to be added later as needed)
.END
