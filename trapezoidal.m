%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% define the integrand as function handle
f=@(x) log(x-1);
a=5; % lower limit of the integrand
b=10; % upper limit

n=10; %number of parts

% calculate step size
h=(10-5)/n;

% create a vector of x values using
% a,b and h
x=a:h:b; % h is the increment size
    
% function value at x
fval=f(x);
    
% integral value
% composite trapezoidal rule

% fval(1)=f(a)
% fval(n+1)=f(b) as x is a vector of size n+1
    
 I=h*(fval(1)+fval(n+1))/2+h*sum(fval(2:n)) % composite trap rule

