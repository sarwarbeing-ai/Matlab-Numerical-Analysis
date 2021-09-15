% demonstration
% define the function f using function handle @
f=@(t) 1./log(t);
t0=4;
t1=10;
n=20; % you can take different value if you want
I=rsums(f,t0,t1,n);
disp("Reimann sum is")
disp(I)


% define a function rsums
function I=rsums(f,a,b,n)
% compute reimman sums in the interval [a,b]
% with equally partitioned data
% n is the number of subintervals
% Note: this function calculates right reimmann sum
% that is the integral is approximated by the value at
% right end

h=(b-a)/n; % step size

% create a vector of partition 
vec=a+h:h:b; % here a is not included in right reimann sum

% evaluate the funciton value
fval=f(vec);

I=h*sum(fval); % integral value of f in the interval [a,b]
end