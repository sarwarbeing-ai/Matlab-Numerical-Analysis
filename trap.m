% composite trapezoidal rule
a=0; % lower limit of integration
b=6; % upper limit of integration

% step size
% formula for step size h=(b-a)/N where N is the number of subintervals
h=2;
% so N will be
N=(b-a)/h;

% the vector of coordinates of all subintervals
x=a:h:b;

% define the function using function handle @
fun=@(x) x-sin(x)+cos(x)+4;

% function value at the vector x
fval=fun(x);


% integral value
% fval(1)=f(x0)
% fval(N+1)=f(b)
I=h*(fval(1)+fval(N+1)+2*sum(fval(2:N)))/2;
disp("The value of the integration is ")
disp(I)