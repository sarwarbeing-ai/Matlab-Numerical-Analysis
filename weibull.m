% define the right hand side of the ode dS/dt 
% using function handle @ inside ode45 function

s0=0; % initial value of S
tspan=[0 300]; % time range

[t,s]=ode45(@(t,s)-10*t.^1.5,tspan,s0);
% now plot 
plot(t,s,'-g','LineWidth',1.5)
