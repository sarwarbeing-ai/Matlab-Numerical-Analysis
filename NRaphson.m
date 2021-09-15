% define the equation as function handle
f=@(x) exp(-0.9*(2*x-2.9015)^2)-1;

% define the derivative of the equation
% derivative of exp(ax^2)= a*2*(ax-b)*exp((ax-b)^2)
df=@(x) -0.9*2*2*(2*x-2.9105)*exp(-0.9*(2*x-2.9015)^2);

% define the tolerance
tol=10^-6;

x0=1.305675; % initial guess


% get teh root value
root=newton(f,df,x0,tol)

%%‰%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function root=newton(f,df,x0,tol)
    % input:
    % f: function handle
    % df: function handle,derivative of f
    % x0: is the initial guess
    % tol: tolerance
    
    %output:
    % root of the function f
    
% use while loop untill the relative error is less than
% tolerance
while true 
    
    x=x0-f(x0)/df(x0); %newton's formula,get next root approximation
    
    rel_error=abs((x-x0)/x); % relative error
    
    % check if relative error is less than tolerance
   if rel_error<tol
    root=x0; % return the root
    break; % break the while loop
    
   else
      x0=x; % update the initial guess for the next iteration
   end
   
end
end




