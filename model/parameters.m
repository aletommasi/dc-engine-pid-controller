close all;
clear all;
clc;

% DC ENGINE PARAMETERS
R = 1;        % Resistance [Ohm]
L = 0.5;      % Inductance [H]
K_e = 0.01;   % Back-EMF constant [V/(rad/s)]
K_t = 0.01;   % Torque constant [Nm/A]
J = 0.01;     % Inertia [kg*m^2]
B = 0.001;    % Viscous friction [N*m*s/rad]
T_load = 0.02; % Load torque [Nm]

% PID CONTROLLER PARAMETERS
Kp = 10;   % Proportional gain
Ki = 5;    % Integral gain
Kd = 0.1;   % Derivative gain

Ts = 0.01;   % Integration time step
