% since the ode is a second order ode therefore you need to 
% convert into two first order ode
% let y1=y
% let y2=y1'=y' where y' is the derivative of y
% the second order ode is 
% y''+2*y'+2*y=cos(2x)
% put y'=y2 and y''=y2' and y=y1 in the second order ode ,obtained
% y2'+2*y2+2*y1=cos(2x)
% so y2'=cos(2*x)-2*y2-2*y1
% and y1'=y2 as y2=y1'=y'
% now formulate the initial conditions for y1 and y2
% y1(0)=y(0)=0
% y2(0)=y'(0)=0

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% find the solution of the second ode
xspan=[0 10]; % x range

% initial condition
y0=[0;0];

% here y is a matrix whose first column is the solution of y1 in other
% words solution for y as y1=y
% second column is the solution for y2
[x,y]=ode45(@odeSystem,xspan,y0); 


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% plotting time
clf;
plot(x,y(:,1),'-g')
xlabel("x")
ylabel("y")
title("solution of the ode y''+2y'+2y=cos(2x)")

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% define a function namely odeSystem
function dydx=odeSystem(x,y)
% y is a vector such that y(1)=y1 and y(2)=y2
% x is a real number

% return the output
dydx=[y(2);cos(2*x)-2*y(2)-2*y(1)]; % as y2'=cos(2*x)-2*y2-2*y1 and y1'=y2
end