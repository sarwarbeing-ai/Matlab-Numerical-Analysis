% paramters
beta=15;
T=1.25;
k=7.525;

% create a vector t
% equally spaced points with step size 0.05
t=0:0.05:25; % 0.05 sec intervals of t 

% get the voltage value
% .* is an element by element multiplication
% since t is a vector therefore sin(2*pi*t/T) will be a vector
% and exp(-t/k) will also be a vector
% so, sin(2*pi*t/T) and exp(-t/k) will be multiplied point wise
% .* is called vectorized implementation
% you can calculate voltage value without using for loop
v=beta*sin(2*pi*t/T).*exp(-t/k);

% plotting time
plot(t,v,'-r') % red solid line
xlabel("t[sec]")
ylabel('v[volt]')
title("Voltage response of a circuit")

% create a matrix 
% ' is the transpose operator
data=[t' v']; % matrix whose first column is time and second column is voltage

% now convert the matrix into .txt format
writematrix(data,'ECE105WK4L2OutData.txt'); % it will save the matrix into the file 'ECE105WK4L2OutData.txt'
