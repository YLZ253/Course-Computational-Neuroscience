close all; clear all; clc;
load('c1p8.mat');

sampling_period =2 ; % sampling rate is 500 Hz
num_timesteps =150 ; % window width

sta = compute_sta(stim, rho, num_timesteps);

time = -sampling_period*(num_timesteps-1):sampling_period:0; % in ms

figure(1);
plot(time, sta);
xlabel('Time (ms)');
ylabel('Stimulus');
title('Spike-Triggered Average');
