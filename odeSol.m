
% define the right hand side of the ode
% as function handle 
f=@(x,y) y/(x+y^3);

y0=1;% initial condition


% ode45 need a range for x values 
% lets take the range to be 0=<x<=0.5

xspan=[0 0.5];

[x,y]=ode45(f,xspan,y0);


plot(x,y) % plot the solutions 
xlabel('x')
ylabel('y')



% part b

% the solution for x=0.5 is nothing 
% but the last point in the vector y
% as xspan=[0 0.5]

y05=y(end);
fprintf('y(0.5)=%f',y05);
