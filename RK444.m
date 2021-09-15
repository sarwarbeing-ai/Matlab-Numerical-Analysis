% Note: It's a Runge Kutta method of order 4
% use to solve ordinary differential equations

clc % clear command window
clear all % clear all workspace variables
syms f(t,y) % symbolic function with symbolic variables t and y

f(t,y)=(t-y)/(1+t);% right hand side of the ode(eg:dy/dt=f(t,y)

w(1)=1;% solution of y at t=a

a=0; % initial value for t
h=0.2;% step size 

t0=1; % final value for t

n=(t0-a)/h; % number of t values on which the value of y will be evaluated

% for loop to calculate the successive value of t
for i=1:n+1
t(i)=double(a+h*(i-1);% value of t and convert to double precision of floating pointvalues
end

% for loop to calculate approximate value of y
% for all t values
for i=1:n
k1=double(h*f(t(i),w(i)));% k1 is the slope value at (t(i),w(i)) ,

k2=double(h*f(t(i)+h/2,w(i)+k1/2));% k2 is the slope at midpoint ,modified from k1

K3=double(h*f(t(i)+h/2,w(i)+k2/2));% again slope but modified from k2

k4=double(h*f(t(i+1),w(i)+k3)); % modified slope

w(i+1)=double(w(i)+(1/6)*(k1+2*k2+2*k3+k4));% next approximate value of y ( basically average of all the slope values)
end
