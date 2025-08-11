# DUAL-PORT-ROM
DUAL-PORT ROM RTL designed in Verilog and verified it with the help of Testbench
Project Overview
The Dual-Port ROM (Read Only Memory) design allows two separate ports to access the memory block concurrently. Each port can perform read independently, enabling high throughput and parallelism in memory transactions.


Files Description
design.v:
RTL description of Dual-Port ROM with parameterized data width and depth. Handles simultaneous access, conflict conditions, and synchronous read-write operations.

testbench.v:
Stimulus generation and monitoring for verifying the Dual-Port ROM design. Simulates various scenarios such as simultaneous, address conflicts, and sequential accesses.

How to Run
Compile the design and testbench:
iverilog -o dual_port_rom_tb design.v testbench.v

Run the simulation:
vvp dual_port_rom_tb

(Optional) View waveform using GTKWave:
gtkwave dump.vcd

Skills Demonstrated
Memory Design (ROM Architecture).
Multi-port Memory Handling.
Conflict Resolution in Memory Access.
Writing Verification Testbenches for Concurrent Systems.
Simulation & Debugging with Icarus Verilog and GTKWave.



