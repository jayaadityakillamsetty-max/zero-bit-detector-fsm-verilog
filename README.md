# Zero Pattern Detector using FSM (Verilog)

This project implements a digital circuit that detects two consecutive zeros (`00`) in a serial input stream using a Finite State Machine (FSM). The design is written in Verilog and simulated to observe how the circuit behaves for different input patterns.

The detector uses **overlapping pattern detection**, which means the circuit can detect patterns that share bits with the previous match. For example, in the input sequence `000`, the pattern `00` is detected twice.

## Working Principle

The detector uses three states to track the input stream. When the first zero is detected, the FSM moves to the next state. If another zero appears immediately after, the circuit recognizes the pattern `00` and the output `detected` becomes high.

## Features

- Detection of two consecutive zeros (`00`)
- **Overlapping pattern detection**
- FSM based sequential circuit design  
- Implemented using Verilog HDL  
- Testbench verification through simulation  

## Simulation Waveform

![Waveform](waveform.png)

## Project Files

- `zero_pattern_detector.v` – Verilog design file  
- `zero_pattern_detector_tb.v` – Testbench used for simulation  
- `waveform.png` – Simulation waveform showing the detection output
