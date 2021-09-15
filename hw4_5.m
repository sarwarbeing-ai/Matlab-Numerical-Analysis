% use euler method to solve the initial value problem
sol=[]; % solution vector
% the initial value for y
y0=0;

% store the initial solution for y in the sol vector
sol(1)=y0;

% euler method need a step size 
h=0.1; % you can chnage it if you want

% create a vcetor t
t=0:h:10; % equally speced vcetor with step size h

for i=1:length(t)
    
    % Euler Method
    % yn+1=yn+h*f(tn,yn) where f(tn,yn) is the right
    % hand side of the ode dy/dt=f(t,y)
    % and yn+1 is a solution for tn+1
    % where 1-sol[i]^3 is the right hand side of the ode
    % dy/dt=1-y^3
    next_y=sol(i)+h*(1-sol(i)^3);
    
    % store the next_y in the vector sol
    sol(i+1)=next_y;
end

% the last element in the sol vector is a solution
% for t=10+h
% so drop it
sol=sol(1:length(t));

disp('The solution vector is ')
disp(sol)
