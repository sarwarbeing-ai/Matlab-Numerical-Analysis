clc;clear; % clear command window,workspace
y0=0; % at t=0 % initial condition
tVec=0:0.05:10; % t vectror



[tVec,y]=ode45(@(t,y) ode(t,y),tVec,y0);

% plot 
plot(tVec,y,'-r','LineWidth',1.2)
xlabel('t')
ylabel('y')
title("The solution of the ode y'=-y+8*(H(t-3)-H(t-4.7)")

% define the  ode
function dpdt=ode(t,y)
% t is a time
% y is a function of t
dpdt=-y+8*(H(t-3)-H(t-4.7));
end

% define the step function
function x=H(t)
if t>0
    x=1;
else
    x=0;
end
end