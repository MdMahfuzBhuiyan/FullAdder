# 1-Bit Full Adder Using NAND Gates

This project implements a **1-bit Full Adder using universal NAND gates** in VHDL and Xilinx ISE.

## Objectives

- Design basic gates (NAND, AND, OR, XOR) using NAND gates.
- Implement a Half Adder using AND and XOR gates.
- Implement a 1-bit Full Adder using two Half Adders and an OR gate.
- Generate and verify RTL schematics using Xilinx ISE.
- Verify all 8 input combinations using an ISim VHDL testbench.

## Project Files

- `NAND_gate.vhd` – Basic NAND gate
- `AND_gate.vhd` – AND gate using NAND gates
- `OR_gate.vhd` – OR gate using NAND gates
- `XOR_gate.vhd` – XOR gate using NAND gates
- `Half_Adder.vhd` – Half Adder module
- `Full_Adder.vhd` – Top-level Full Adder module
- `Full_Adder_tb.vhd` – Testbench for Full Adder

## Simulation

The Full Adder was tested for all **8 possible input combinations** of `A`, `B`, and `Cin`.

### Full Adder Outputs

| A | B | Cin | Sum | Cout |
|---|---|-----|-----|------|
| 0 | 0 | 0   | 0   | 0    |
| 0 | 0 | 1   | 1   | 0    |
| 0 | 1 | 0   | 1   | 0    |
| 0 | 1 | 1   | 0   | 1    |
| 1 | 0 | 0   | 1   | 0    |
| 1 | 0 | 1   | 0   | 1    |
| 1 | 1 | 0   | 0   | 1    |
| 1 | 1 | 1   | 1   | 1    |

## Tools Used

- Xilinx ISE Design Suite
- ISim Simulator
- VHDL

## Conclusion

The 1-bit Full Adder was successfully designed using NAND gates and verified through RTL schematic generation and functional simulation.
