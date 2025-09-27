# DC Motor PID Control Simulation

This repository contains a MATLAB/Simulink project to simulate a DC motor controlled by a PID controller. The project includes both the Simulink model and a simplified C code implementation for alternative simulations.

## Project Structure

motore-dc-pid/
│
├── model/
│ ├── motore_dc_pid.slx # Simulink model
│ ├── parameters.m # Motor and PID parameters
│
├── codice_c/
│ ├── motore_dc_pid.c # C implementation of the motor + PID
│ ├── motore_dc_pid.h # Header file
│ ├── motore_dc_pid_data.c # Motor and PID constants
│ └── ert_main.c # Demonstrative main with printed output
│
├── results/
│ ├── simulation.m # MATLAB script to simulate the model and generate data
│ └── plots.m # MATLAB script to generate plots from simulation data
│ └── plots/ # PNG images of velocity and current
│
├── README.md
└── .gitignore


## Description

### Simulink Model

- `motore_dc_pid.slx` implements a DC motor with a discrete PID controller.
- The simulation reference is set to **100 rad/s**.
- The `parameters.m` file defines all motor and PID parameters.

### MATLAB Scripts

- `simulation.m`: Simulates the Simulink model, extracts velocity and current signals, and saves the data for plotting.
- `plots.m`: Generates velocity and current plots from the saved simulation data.

### C Code

The C code in `codice_c/` provides a **simplified, compilable implementation** of the motor and PID controller.  

**Important notes:**

- The provided C code is **not ready for microcontroller deployment**.
- For actual embedded deployment, **Simulink Embedded Coder** is required, which generates more complex code with additional real-time parameters, solver configurations, and hardware-specific optimizations.
- The purpose of the provided C files is mainly **for an alternative simulation** with compilable code, not for real-time control on hardware.

### Results

The simulation generates:

- `plots/velocity.png`: Motor velocity over time
- `plots/current.png`: Motor current over time

The plots show the system response for a step reference of 100 rad/s.  

You can extend the README by including **mathematical descriptions** of the motor dynamics and PID equations:

Motor: J * dω/dt + b*ω = K*i
Electrical: L * di/dt + R*i = V - K*ω
PID: u(t) = Kp*e(t) + Ki*∫e(t) dt + Kd*de(t)/dt

Where ω is the angular velocity, i is the armature current, e(t) is the control error, and u(t) is the PID output (voltage of DC engine).

### Usage

1. Open MATLAB and navigate to the `results/` folder.
2. Run `simulation.m` to simulate the model.
3. Run `plots.m` to generate the graphs.
4. All plots are saved in `results/plots/`.