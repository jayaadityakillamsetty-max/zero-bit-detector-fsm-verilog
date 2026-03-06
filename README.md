# consecutive-zero-bit-detector-fsm-verilog
Zero Bit Detector implemented using Finite State Machine in verilog 
This project implements a digital circuit that detects two consecutive zeros (00) in a serial input stream using a Finite State Machine (FSM). The design is written in Verilog and simulated to observe how the circuit behaves for different input patterns.
When two zeros appear one after another in the input sequence, the output signal detected becomes high. A testbench is used to apply different input combinations and verify the working of the circuit.
Working Principle
The detector uses three states to track the input stream. The FSM moves from the initial state to the next state when a zero is detected, and once two consecutive zeros occur, the detector output becomes high.
Features
Detection of two consecutive zeros (00)
FSM based sequential circuit design
Implemented using Verilog HDL
Testbench verification through simulation
Project Files
zero_pattern_detector.v – Verilog design file
zero_pattern_detector_tb.v – Testbench used for simulation
waveform.png – Simulation waveform showing the detection output
