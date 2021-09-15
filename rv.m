clc;clear;close all; % clear command window,workspace,close all figures

% set the seed
rng(12345); % change this according to your Id

% define the function G(u) where G is the inverse of the distribution
% function of the probability distribution p(x)
% and u is an standard uniform random variable
G=@(u) tan(2*atan(pi/4)*(u-1/2));

% generate 10000 uniform random variables 
u=rand(1,10000);

% generate the random variables in the range -pi/4<x<pi/4
v=G(u);

% draw the histogram of the newly generated random numbers

histogram(v)
