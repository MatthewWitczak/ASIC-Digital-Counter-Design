# Introduction

The goal of this project is the design, verification, and physical implementation of a parameterizable synchronous digital counter realized as an ASIC. The work covers the complete digital integrated circuit design flow, starting from an RTL description and ending with a manufacturable GDSII layout generated using the OpenLane ASIC flow.

The project scope includes specification definition, synthesizable RTL development in Verilog, functional verification at the register-transfer level, logic synthesis, static timing analysis, and full physical design. The design is implemented using a standard-cell–based CMOS methodology and verified using industry-standard digital design and physical verification techniques (DRC/LVS).

The project serves as a compact but complete example of an RTL-to-GDS flow for a basic sequential digital block suitable for integration into larger digital or mixed-signal ASIC systems.

# Specification

| Parameter            | Value                             |
| -------------------- | --------------------------------- |
| Architecture         | Synchronous binary counter         |
| Design style         | Standard-cell–based CMOS ASIC      |
| RTL language         | Verilog HDL                        |
| Counter width        | Parameterizable (default: 8 bits) |
| Counting range       | 0 to 2^WIDTH − 1                   |
| Clocking scheme      | Rising-edge triggered              |
| Reset type           | Active-high asynchronous reset      |
| Physical design flow | OpenLane RTL-to-GDS                |
| Final output         | GDSII layout                       |

# Theoretical Background

A digital counter is a sequential logic circuit that generates a discrete numerical sequence synchronized to a clock signal. In synchronous designs, state transitions occur exclusively on clock edges, ensuring deterministic behavior and simplifying timing analysis. Counters are commonly used for event counting, frequency division, timing control, and state sequencing in digital systems.

From a timing perspective, the maximum operating frequency of a synchronous counter is limited by the longest register-to-register path, which includes the clock-to-Q delay of the source flip-flop, the propagation delay of the combinational increment logic, and the setup time of the destination flip-flop. As the counter width increases, the complexity of the increment logic grows, potentially increasing the critical path delay and affecting achievable clock frequency.

In ASIC implementations, the RTL description is mapped onto a predefined standard-cell library characterized for a specific CMOS technology. Logic synthesis optimizes the design under given timing constraints, while the physical implementation introduces parasitic effects such as interconnect resistance, capacitance, and clock skew. These effects must be accounted for during timing analysis and physical verification to ensure correct operation after fabrication.

# Design Architecture

The counter is implemented as a clocked sequential circuit composed of a register bank and combinational next-state logic. The counter state is updated on the rising edge of the clock, while an active-high asynchronous reset is used to force the register bank into a known initial state independently of the clock.

The register bank stores the current counter value, while the combinational logic computes the next value by incrementing the current state by one. The counter width is defined as a parameter, allowing the same architecture to be synthesized for different bit widths without modifying the RTL structure. After reset deassertion, the counter resumes normal synchronous operation and increments on each rising clock edge.

The architecture is intentionally kept regular and shallow in logic depth to ensure predictable timing behavior and efficient mapping onto standard cells during synthesis and place-and-route.

# RTL Implementation

The design is described in synthesizable Verilog as a parameterizable module with a configurable bit width (`WIDTH`). The module interface consists of a clock input (`clk`), an active-high asynchronous reset (`rst`), and an output vector (`q[WIDTH-1:0]`) representing the current counter state.

The sequential behavior is implemented using a single `always` block sensitive to the rising edge of the clock and the rising edge of the reset signal. When reset is asserted, the counter is immediately cleared to zero. When reset is deasserted, the counter increments by one on each rising clock edge.

Due to the fixed output width, arithmetic overflow results in a natural wrap-around from `2^WIDTH − 1` back to zero, implementing modulo-`2^WIDTH` behavior without additional control logic.

The RTL is written to be fully synthesis-compatible and free of constructs that could lead to unintended latch inference or ambiguous hardware mapping.


<p align="center">
  <img width="645" height="82" alt="Zrzut ekranu 2025-12-14 o 14 14 48" src="https://github.com/user-attachments/assets/ffbd73d6-fc82-4089-9c38-4862430a7154" />
</p>

# Functional Verification

Functional verification was performed using a simple Verilog testbench that instantiates the counter, generates a periodic clock signal, applies an active-high reset, and records the simulation waveform to a VCD file.

The testbench uses a 100 MHz simulation clock, generated with a 10 ns period. After reset deassertion, the counter is allowed to run for a limited simulation time, which is sufficient to observe reset behavior and basic incrementing operation.

The current testbench is waveform-based and is intended as a basic functional sanity check rather than a complete self-checking verification environment. It does not yet include automated assertions, pass/fail checks, constrained stimulus, or exhaustive verification of rollover behavior from the maximum counter value back to zero.

Waveform inspection is used to confirm that the counter leaves the reset state and increments on subsequent clock edges. A more complete verification setup would extend the simulation duration, add a reference model, and automatically check the expected counter value on every clock cycle.

<p align="center">
  <img width="1800" height="1169" alt="Zrzut ekranu 2025-12-14 o 14 23 13" src="https://github.com/user-attachments/assets/a4f3e366-fab8-4bd3-8b18-4b4068b9dad9" />
</p>


# Clock Configuration

The RTL testbench uses a 100 MHz clock for functional simulation, corresponding to a 10 ns clock period. The OpenLane physical implementation flow is constrained with a 20 ns clock period, corresponding to a 50 MHz target frequency.

This means that the functional simulation clock and the physical design timing constraint are not identical in the current version of the project. The simulation demonstrates basic RTL functionality, while the OpenLane constraint defines the target timing requirement used during synthesis, placement, routing, and static timing analysis.

For consistency, a future revision of the project should align the testbench clock period and the OpenLane clock constraint, or explicitly document the reason for using different values.


# Logic Synthesis

Logic synthesis is carried out using Yosys, which converts the RTL description into a gate-level netlist mapped to the target standard-cell library. The synthesis process respects the defined clock and reset constraints and produces a structurally optimized netlist composed of combinational logic gates and edge-triggered flip-flops.

Due to the parameterizable counter width, synthesis automatically scales the number of sequential elements and the complexity of the increment logic. The resulting netlist provides a deterministic and physically realizable representation suitable for downstream physical design.

<p align="center">  
  <img width="301" height="303" alt="Zrzut ekranu 2025-12-14 o 14 25 33" src="https://github.com/user-attachments/assets/0403c7f1-80e3-4e91-95fc-20f43d466cb1" />
</p>


# Timing Analysis

Static timing analysis is performed to verify that all register-to-register paths meet setup and hold time requirements under the specified clock constraints. The critical path is identified through the combinational increment logic between successive counter bits.

The shallow and regular structure of the logic ensures that timing closure is achieved without manual optimization. The design exhibits predictable timing scalability with respect to counter width, making it suitable for reuse in systems with varying performance requirements.

<p align="center">  
  <img width="466" height="374" alt="Zrzut ekranu 2025-12-14 o 14 32 18" src="https://github.com/user-attachments/assets/748b961d-59dd-4e86-847a-5aa89c18d58a" />
</p>


# Physical Design

Physical implementation is performed using the OpenLane ASIC flow, encompassing floorplanning, standard-cell placement, clock tree synthesis, power distribution network generation, and global and detailed routing.

The design is implemented as a standard-cell–based layout compliant with the selected CMOS technology design rules. Clock tree synthesis is applied to control clock skew and insertion delay, while routing ensures correct connectivity and signal integrity across all logic and sequential elements.

# Layout and GDS Overview

The final result of the physical design flow is a GDSII layout representing the complete physical realization of the counter. The layout includes placed standard cells, routed signal interconnects, clock distribution networks, and power rails distributed across multiple metal layers.

The regularity of the counter architecture results in a compact layout with low routing congestion and predictable parasitic characteristics. The generated GDS file constitutes the final manufacturable representation of the design.

- General View
<p align="center">  
  <img width="2698" height="1762" alt="1" src="https://github.com/user-attachments/assets/fc88762d-a30a-44f2-9864-978a472ba059" />
</p>

- Top-Level
<p align="center">  
  <img width="2698" height="1762" alt="2" src="https://github.com/user-attachments/assets/078d3018-d225-4a69-b9b9-4897e954f07f" />
</p>


- Power Distribution Network
<p align="center">  
  <img width="2698" height="1762" alt="3" src="https://github.com/user-attachments/assets/ed266ba3-6cd3-45c8-ba1d-e6194b52689e" />
</p>

- Standard-cell logic
<p align="center">  
  <img width="2698" height="1762" alt="4" src="https://github.com/user-attachments/assets/964655dc-637e-4d00-823f-64a5d1b4233a" />
</p>

- Signal Routing
<p align="center">  
  <img width="2698" height="1762" alt="5" src="https://github.com/user-attachments/assets/a8afb8fe-490a-41b1-bf29-bbbe94620b04" />
</p>

- Transistor-level
<p align="center">  
  <img width="2698" height="1762" alt="9" src="https://github.com/user-attachments/assets/d149eb90-1ac7-4d47-8cc0-7ad1ad9aa344" />
</p>

# Physical Verification (DRC/LVS)

Physical verification is performed to ensure layout correctness and manufacturability. Design Rule Checks (DRC) validate compliance with all geometry and spacing constraints imposed by the CMOS process technology.

Layout Versus Schematic (LVS) verification confirms logical equivalence between the extracted layout netlist and the synthesized gate-level netlist. Successful completion of both checks ensures that the physical implementation accurately reflects the intended RTL behavior.

<p align="center">  
  <img width="338" height="76" alt="Zrzut ekranu 2025-12-14 o 14 49 36" src="https://github.com/user-attachments/assets/4dd5fade-e5db-4dad-aeab-cf080069e770" />
</p>


# Conclusions

This project demonstrates a compact RTL-to-GDS ASIC flow for a simple parameterizable digital counter. The design covers RTL development, basic functional simulation, logic synthesis, timing analysis, physical implementation, and final GDS generation using OpenLane.

Although the circuit itself is intentionally simple, the project illustrates the main stages of a standard-cell–based digital ASIC implementation flow. The current verification setup confirms basic counter operation through waveform inspection, while more advanced self-checking verification and exhaustive rollover testing are left as future improvements.
