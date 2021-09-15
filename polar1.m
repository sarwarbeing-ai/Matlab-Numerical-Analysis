clc;clear;close all; % clear command window,workspce,all figures

% create a vector of 60points
theta=linspace(0,2*pi,60);

% y(theta)
y=sin(theta)+cos(theta);
% create a figure 1
figure;
hold on
plot(theta,y,'.r','MarkerSize',10)
plot(theta,sin(theta),'-b','LineWidth',1.2)
plot(theta,cos(theta),'-g','LineWidth',1.2)
legend("cos(theta)+sin(theta)","sin(theta)","cos(theta)")
hold off


% plot the image in polar coordinate
figure; % figure 2
polarplot(theta,y)