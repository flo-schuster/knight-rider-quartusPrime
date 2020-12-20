## 'Knight Rider'-like LEDs in Verilog, with Quartus Prime
This repository contains a 'Knight Rider'-like effect for the 8 LEDs on the Trenz CYC1000 Board. As its main component it contains a shift register.

### IDE & Board
- HDL: Verilog
- IDE: Quartus Prime Lite 18.1.0
- Devide Family: Intel Cyclone 10 LP
- Device: 10CL025YU256C8G
- Board: Trenz CYC1000 (TEI0003)
  - Resources + Datasheet: https://wiki.trenz-electronic.de/display/PD/TEI0003+Resources

### How to setup the project
1. Open the file `knight_rider.qpf` in Quartus Prime
2. Run the script `setup_knight_rider.tcl` to initialy configure the project