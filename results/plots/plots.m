%% plots.m
% Script to generate plots from simulation data

clear; clc; close all;

% Load simulation data
load('../simulation_data.mat');

% Velocity plot
figure;
plot(time, velocity, 'LineWidth', 2);
grid on;
xlabel('Time [s]');
ylabel('Velocity [rad/s]');
title('DC Motor Velocity');
saveas(gcf,'velocity.png');

% Current plot
figure;
plot(time, current, 'LineWidth', 2, 'Color', [0.8500 0.3250 0.0980]);
grid on;
xlabel('Time [s]');
ylabel('Current [A]');
title('DC Motor Current');
saveas(gcf,'current.png');

disp('Plots saved in PNG format');
