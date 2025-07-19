
# "4-bit Up Counter using SystemVerilog"

This is a simple 4-bit up counter written in SystemVerilog. It includes both the main counter module and a testbench to verify its functionality.


## 📁 Files Included

- `upcounter.sv` – RTL design of the 4-bit counter
- `tb_upcounter.sv` – Testbench to simulate the counter
- `waveform.png` – Simulation waveform screenshot
- `README.md` – Project explanation


## 🔧 Design Description

The counter increases its value on every positive clock edge, **only when `enable` is high**. If `rst_n` (active-low reset) is low, the counter resets to 0.

### Port Summary:

| Signal   | Type   | Description               |
|----------|--------|---------------------------|
| clk      | input  | Clock signal              |
| rst_n    | input  | Active-low asynchronous reset |
| enable   | input  | Enable counting when high |
| count[3:0] | output | 4-bit counter output     |


## 🧪 Testbench Overview

- Generates a 10ns clock (`always #5 clk = ~clk`)
- Initializes `rst_n = 0` and `enable = 0`
- Deasserts reset after 15ns
- Randomizes the enable signal using `$urandom_range(0,1)`
- Monitors the values using `$display` and `$monitor`


## 📊 Waveform Explanation

The waveform shows:
- Counter starting from 0 after reset
- Incrementing only on `enable = 1` and clock rising edge
- `count[3:0]` bits updating as expected

Indexes like `[3]`, `[2]`, `[1]` , `[0]` . indicate the **individual bits** of the 4-bit count output.


## 💻 Tools Used

- Language: SystemVerilog
- Simulator: EDA Playground 


## ✅ How to Run

1. Open both `.sv` files in a simulator
2. Set the top module to `tb_upcounter`
3. Run the simulation and observe the waveform


