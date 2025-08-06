# DUAL-PORT-RAM
DUAL-PORT RAM RTL designed in Verilog and verified it with the help of Testbench
Project Overview
The Dual-Port RAM (Random Access Memory) design allows two separate ports to access the memory block concurrently. Each port can perform read or write operations independently, enabling high throughput and parallelism in memory transactions.

Key Features:
Supports simultaneous read and write operations on two different addresses.
Separate address, data, and control lines for each port.
Synchronous design based on a common clock.
Write Enable and Read Enable control per port.
Simple testbench to verify concurrent accesses.

Files Description
design.v:
RTL description of Dual-Port RAM with parameterized data width and depth. Handles simultaneous access, conflict conditions, and synchronous read-write operations.

testbench.v:
Stimulus generation and monitoring for verifying the Dual-Port RAM design. Simulates various scenarios such as simultaneous read/write, address conflicts, and sequential accesses.

How to Run
Compile the design and testbench:
iverilog -o dual_port_ram_tb design.v testbench.v

Run the simulation:
vvp dual_port_ram_tb

(Optional) View waveform using GTKWave:
gtkwave dump.vcd

Skills Demonstrated
Memory Design (RAM Architecture).
Multi-port Memory Handling.
Conflict Resolution in Memory Access.
Writing Verification Testbenches for Concurrent Systems.
Simulation & Debugging with Icarus Verilog and GTKWave.

Future Enhancements
Add conflict detection for simultaneous write to the same address.
Implement asynchronous dual-port RAM.
Parameterize for byte-enable functionality.

