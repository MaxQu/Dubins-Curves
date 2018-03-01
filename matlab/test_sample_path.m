
clear all;
addpath('build');
addpath('src');
input.q0 = [0, 0, pi/8];
input.q1 = [6, 6, -pi/2];

input.rho = 1;
input.stepSize = 0.2;

path = dubins_wrapper(input);

figOpt.fignum = 111;
figOpt.figsize = [1,1,5,4];
figOpt.headLen = 0.1;
plot_path(path,figOpt);
