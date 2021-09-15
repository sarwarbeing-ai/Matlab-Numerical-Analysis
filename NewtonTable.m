% define the function f as function handle
f=@(x) 0.5*exp(2+x)-40;

% derivative of f is 0.5*exp(x+2) as derivative of exp(x+a)=exp(x+a)
df=@(x) 0.5*exp(x+2);

x0=4; % initial value for the root

exact=log(80)-2; % exact root value

% table header 
fprintf("iter    Est.Sol            TRE                  ERE\n")
for i=1:11
    next=x0-f(x0)/df(x0); % newton method
    
    % true relative error
    true_error=abs((exact-x0)/exact);
    
    % estimated error
    est_error=abs((next-x0)/next);
    
    % print the solution
    fprintf("%d      %f            %f            %f",i,x0,true_error,est_error)
    fprintf('\n')
    
    % update the initial guess
    x0=next;
end