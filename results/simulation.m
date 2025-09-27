%% simulation.m
% Script to simulate the DC motor with PID model and generate data for plots
clear; clc; close all;

% Add the model folder to the MATLAB path
addpath('../model/');

% Load parameters
parameters;  % motore_dc_pid.slx will use these variables

% Simulation time
T_sim = 100;  % seconds

% Load the model (without opening the GUI)
load_system('dc_engine_pid');

% Set simulation stop time
set_param('dc_engine_pid','StopTime',num2str(T_sim));

% Run the simulation
simOut = sim('dc_engine_pid','ReturnWorkspaceOutputs','on');

% Extract signal values
velocity = simOut.w_sim.signals.values;
current = simOut.i_sim.signals.values;

% Extract time vector
time = simOut.tout;

% Save data for plotting
save('simulation_data.mat','time','velocity','current');

% Close the model without saving changes
close_system('dc_engine_pid',0);

disp('Simulation completed. Data saved in simulation_data.mat');

