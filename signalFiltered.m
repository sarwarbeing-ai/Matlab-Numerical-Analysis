clc; % clear the command window
%close all; % close all the previous figure
% clear; % clear the workspace

% chnage the image according to your's
% save the image in working directory and change it
% if you wish
E=imread('chesss.png'); % load the image into a matrix

% extract the row 50
xx50=E(50,:); % row 50



% subplot(m,n,index) where m is the is the number 
% of rows and n is the number columns and index is the index of 
% the current axes
% here the figure will be divided by 1 row ,2 columns
subplot(1,2,1) 
% plot the signal
plot(xx50)
ylim([-0.1 1.1])
title("Signal")

% filtered signal
h1=ones(1,7)/7;
y1=conv(xx50,h1);
subplot(1,2,2)
plot(y1)
ylim([-0.1 1.1])
title("Filtered signal")