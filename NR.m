% at the intersection the y value will be same 
% in other words find x such that the difference of the function d and f
% is zero that is g(x)-f(x)=0

% let h=g(x)-f(x)
% Using Newton Raphson method we will find the root of the function h

% define h as function handle
h=@(x) exp(3*x)-3*x;

% define the derivative of h as function handle
dh=@(x) 3*exp(3*x)-3;

x0=1; % initial guess

% header of the table
fprintf('iter            X_n                         relative_error_approximation\n')
fprintf('%d              %f                              %f\n',0,x0,NaN) % NaN is the not a number

for iter=1:10
    
    % get the next guess
    next=x0-h(x0)/dh(x0); % newton's formula
    
    % get the error
    err=(next-x0)/next;
    
    fprintf('%d              %.15f              %.15f\n',iter,next,err) 
    
    % update the initial guess
    x0=next;

    
end