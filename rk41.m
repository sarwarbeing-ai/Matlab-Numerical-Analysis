format long % to have output in long format
y_rk4=[]; % vector to store the solution of the ode    
y_rk4(1) = 100;% initial value for y  at t=0

% define the right hand side of the ode uising function handle @
F_ty=@(t,y) 50-0.01*y;

% define the vector t
t=[]; % will be filled more later and t starts at 0
t(1)=0; % initial time

h=0.1; % step size

% maxiter
maxIter=(5-0)/h; % upto t=5 the value of ode is calculated

% use for loop to find the solution
for i=1:maxIter      
    
    % classical RK4 method
    k_1 = F_ty(t(i),y_rk4(i));                       %F_ty(t(i),y(i));
    k_2 = F_ty(t(i)+0.5*h,y_rk4(i)+0.5*h*k_1);       %F_ty(t(i)+0.5*h,y(i)+0.5*h*k_1);
    k_3 = F_ty(t(i)+0.5*h,y_rk4(i)+0.5*h*k_2);       %F_ty((t(i)+0.5*h),(y(i)+0.5*h*k_2));
    k_4 = F_ty(t(i)+h,y_rk4(i)+h*k_3);               %F_ty((t(i)+h),(y(i)+k_3*h));
    
    t(i+1)=t(i)+h; % fill the next value of t
    
    % the next solution of the ode
    y_rk4(i+1) = y_rk4(i) + (1/6)*(k_1+2*k_2+2*k_3+k_4)*h;  % main equation
    
end

% after 5 minutes the salt content is 
% the last value in y_rk4 is the solution after 5 minutes
fprintf("After 5 minutes the salt content is=%0.10f pounds\n",y_rk4(end))