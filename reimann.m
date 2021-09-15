% demonstration
% part a))

% define the function T using function handle @
T=@(theta) 1./sqrt(cos(theta)-cos(0.7));
theta=0; % lower limit
theta0=0.7; % upper limit

n=100; 

I=rsums(T,theta,theta0,n); % integration

l=1;
g=9.8;
period=I*4*sqrt(l/(2*g));
disp("Period is")
disp(period)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% part b))
% check true/false 
% Answer: True
% example
f=@(x) 1./(x+1); % this function is decreasing on the interval [1,2] as x+1 is increasing

% get the value of the right hand side of the express in (ii)
% the right hand side is nothing but left reimann sum
a=1;
b=2;
n=100;
I=rsums(f,a,b,n);

% actual value of the integration is
actual=log(b+1)-log(a+1);        % integration of 1/x+1 is log(x+1)

if actual<=I
    disp('The inequality is true')
else
    disp('The inequality is false')
    
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% define a function rsums
function I=rsums(f,a,b,n)
% compute reimman sums in the interval [a,b]
% with equally partitioned data
% n is the number of subintervals
% Note: this function calculates left reimmann sum
% that is the integral is approximated by the value at
% left end 

h=(b-a)/n; % step size

% create a vector of partition 
vec=a:h:b-h; % here b is not included in left reimann sum

% evaluate the funciton value
fval=f(vec);

I=h*sum(fval); % integral value of f in the interval [a,b]
end