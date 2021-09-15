% first define the function f as function handle
f=@(x) 0.2*(-x.^5+2*x.^3-x);

% define the first derivative as function handle
df=@(x) 0.2*(-5*x.^4+2*3*x.^2-1);

% get the second derivative
ddf=@(x) 0.2*(-5*4*x.^3+2*3*2*x);


% Procedure:
% 1. first find the root of the equation f(x)=0 using bisection method
% within tolerance 10^-3
% 2. then use that root as the initial guess for maximum ,for Newton
% Raphson method

tol=10^-3;

% initial end points of the interval
a=0;
b=1;

% Bisectiob method goes here
% use infinite while loop
while 1
    c=(a+b)/2; % mid point 
    
    % check if abs(b-a)<tol
    if abs(b-a)<tol
        break % break the while loop
    end
    
    % check for the sign of f(a) and f(c)
    if sign(f(a))==sign(f(c))
        a=c; % change a to c
    else
        b=c;
    end
end



% now use the value of c(obtained through bisection method as starting
% point) for Newton Method

x0=c; % initial guess for Newton Method

while 1
    next=x0-df(x0)/ddf(x0); % Newton Method for finding maximum point
    
    % check if relative error satisfies tolerance
    if abs((next-x0)/next)<tol
        sol=x0;
        break % break the loop
    else
        x0=next; % update initial guess
        
    end
end


% Now get the maximum of f at x=sol
% [] use  to concatenate strings
disp(['Maximum value of f found at x=',num2str(sol),' is',num2str(f(sol))]) 