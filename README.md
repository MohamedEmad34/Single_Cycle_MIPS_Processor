# Single_Cycle_MIPS_Processor
You are required to implement a 32-bit single-cycle microarchitecture MIPS processor. The single
cycle executes an entire instruction in one cycle. In other words, instruction fetch, instruction
decode, execute, write back, and program counter update occurs within a single clock cycle.
The objective is to write the RTL Verilog files for all sub-modules of the MIPS processor
(Instruction memory, data memory, ALU, etc.) then implementing the top module of MIPS
processor.
Complete single-cycle MIPS processor. (from David M. Harris, Sarah L. Harris - Digital Design and
Computer Architecture)

# Features
Single-cycle architecture: The processor follows a single-cycle design, where each instruction is executed within a single clock cycle.
Instruction set support: The processor supports a subset of the MIPS ISA, allowing for the execution of common instructions used in MIPS assembly programs.
Modular design: The Verilog code is organized into separate modules for different functional units, such as the instruction fetch, decode, execute, memory, and write-back stages, making it easy to understand and modify.
