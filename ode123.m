% define the right hamd side of the ode as function handle
% dy/dx= exp(y*sin(x)+cos(y))/(4*x*y)
dydx=@(x,y) exp(y*sin(x)+cos(y))/(4*x*y); % function handle
y0=1.6; % at x=20
tstart=20;
tend=70;

% part a))
[xode45,yode45]=ode45(dydx,tstart:0.001:tend,y0);

% plot part a
hold on % to have multiple plots on the same graph
plot(xode45,yode45,'-g')

% part b))
% use for loop to get the solution for each h
h=[1.0,0.5,0.1];
for i=1:length(h)
    [xm,ym]=midpoint(dydx,[tstart tend],y0,h(i));
    plot(xm,ym)
end

legend('Ode45 solution','h=1.0','h=0.5','h=0.1') % plot the legend
hold off % detach from the figure



% define the function midpoint
function [xm,ym]=midpoint(dydx,tspan,y0,h)
% dydx is the right hand side f(x,y) of the ode dy/dx=f(x,y)
% dydx should be a function handle
% tspan is the interval on which the solution of the ode dy/dx would be
% found
% y0 is the initial solution
% h is the step size

% output:
% ym is the solution vector and xm is the corresponding x-vector 

% Note: midpoint method also called Runge Kutta Method of order 2

% get the vector xm on which the solution would be found
xm=tspan(1):h:tspan(2); % equally spaced points

% store the initial solution y0 into ym vector
ym(1)=y0;

% Midpoint method:
% yn+1=yn+k2
% k2=h*f(xn+h/2,yn+k1/2),
% k1=h*f(xn,yn)
% yn+1 is the solution at xn+1

% use for loop to find the rest of the solutions
for i=2:length(xm)
    k1=h*dydx(xm(i-1),ym(i-1));
    k2=h*dydx(xm(i-1)+h/2,ym(i-1)+k1/2);
    
    y_next=ym(i-1)+k2;
    
    % store the solution in ym
    ym(i)=y_next;
end
end
