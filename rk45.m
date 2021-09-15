% convert the ode into three first order odes
% y'''+yy''=0,y(0)=0,y'(0)=0,y''(0)=1

%let y1=y
% y2=y' ,y' is the first derivative of y
% y3=y''

% now y2'=y''=y3 as y2=y' and y3=y''
% y1'=y2 as y2=y'
% y3'=y'''
%
%
% put the value of y''' ,y and y'' in the ode,obtained
% y3'+y1*y3=0
% y3'=-y1*y3

% again,
% y1(0)=0 as y1=y
% y2(0)=0 as y2=y'
% y3(0)=1 as y3=y''

% putting everything together we obtained three first order odes
% y1'=y2 ,y1(0)=0
% y2'=y3 ,y2(0)=0
% y3'=-y1*y3,y3(0)=1

% solution
xspan=[0,5];
y0=[0,0,1];

N=50;


% define the system of odes  as function handle
f=@(x,y) [ y(2),y(3),-y(1)*y(3)]; % first element is the right hand function of y1'
                                  % second one is the function of y2' 
                                  % third one is of y3' 

% call the function RK4system to get the solution
[x,y] = RK4system(f,xspan,y0,N);



% get the solution of y' which is nothing
% but y(:,2) as y2=y'

y_prime= y(:,2);

plot(x,y_prime)
title(" plot of y prime")






function [x,y] = RK4system(f,xspan,y0,N)
   % function to solve system of n linear first order ODEs using the Runge-Kutta 4th order method
   % INPUTS:
   % f: RHS of ODE system (passed as a function handle)
   % xspan: [x0 xf] x0 and xf are the initial and final x values
   % y0: a row vector of initial values
   % N: the number of subintervals
   % OUTPUTs:
   % x: a (N + 1) × 1 column vector
   % y: an (N + 1) × n matrix

   n = length(y0); % number of ODEs in the system
   x = linspace(xspan(1),xspan(2),N+1)'; % Creating the x vector
   y = zeros(N+1,n); % initilizing the y vector
   y(1,:) = y0; %adding initial condition to y
   h = abs(x(2)-x(1)); % delta x value
   for j = 1:N
        % RK fourth-order formula
        k1 = h*f(x(j),y(j,:));
        k2 = h*f(x(j)+0.5*h,y(j,:)+0.5*k1);
        k3 = h*f(x(j)+0.5*h,y(j,:)+0.5*k2);
        k4 = h*f(x(j)+h,y(j,:)+k3);
        y(j+1,:) = y(j,:) +k1./6+k2./3+k3./3+k4./6;
   end
end