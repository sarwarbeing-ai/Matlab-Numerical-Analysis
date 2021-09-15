x0=1; % initial guess
% define the function as function handle
f=@(x) x^2-2; % need to solve the equation x^2-2=0,x^2=2

df=@(x) 2*x; % derivative of f(x)=x^2-2

% tolerance
tol=10^-3; % three significant figures

iter=0; % initialize to zero

while 1
    next_x=x0-f(x0)/df(x0); % Newton's formula
    
    % check for the convergence
    if abs(f(x0))<=tol
        root=x0; % output
        break % break the loop
    else
        x0=next_x; % update the initial guess
        iter=iter+1; % increment iteration by 1
    end
end

disp(['root=',num2str(root)]) % [] use to concatenate strings
disp(['iter=',num2str(iter)])