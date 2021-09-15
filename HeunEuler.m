% main program
% define the right hand side of the ode as function handle
f=@(t,y) 5*y-log(y)-1.6*y.*t.^2; % vectorized implementation
h=0.05; % step size
tspan=[0 1.2];
y0=1; % solution at t=0

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Heun's method
[t,y]=Heun(f,y0,tspan,h);
disp("The solution vector obtained by Heun's method:")
disp(y)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Explicit Euler method
[t,y]=Euler(f,y0,tspan,h);
disp("The solution vector obtained by Euler's method:")
disp(y)



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Heun's Method
function [t,y]=Heun(f,y0,tspan,h)
% f is the function handle of the right hand side of the ode
% y0 is the initial solution t=t0
% tspan is a vector of two elements
% such that tspan(1)=t0 and tspan(2)=t_final
% h is the step size
% output:
% y is the solution of a first order ode
% t is the time vector


% calculate t
t=tspan(1):h:tspan(2); % time vector

y=zeros(1,length(t)); % initialize to zeros

y(1)=y0; % store solution y0(t=t0)

% n starts from 2 as the first value is the solution y0 at t=t0
for n=2:length(t)
    
    % Heun's Method
    % y_tildan+1=yn+h*f(tn,yn) euler method(predictor)
    
    % yn+1=yn+h/2[f(tn,yn)+f(tn+1,y_tildan+1)] % corrector 
    
    
    % calculate y_tilda
    y_tilda=y(n-1)+h*f(t(n-1),y(n-1));
    
    % corrector value
    y_next=y(n-1)+h*(f(t(n-1),y(n-1))+f(t(n),y_tilda))/2;
    
    y(n)=y_next; % solution at t=tn
    
    
    
end

end




% Explicit Euler method
function [t,y]=Euler(f,y0,tspan,h)

% f is the function handle of the right hand side of the ode
% y0 is the initial solution t=t0
% tspan is a vector of two elements
% such that tspan(1)=t0 and tspan(2)=t_final
% h is the step size
% output:
% y is the solution of an first order ode
% t is the time vector


% calculate the t
t=tspan(1):h:tspan(2); % time vector

y=zeros(1,length(t)); % initialize to zeros

y(1)=y0; % store solution y0(t=t0)


for n=2:length(t)
    next_val=y(n-1)+h*f(t(n-1),y(n-1)); % Explicit Euler's method
    
    % store the next_val into the vector y
    y(n)=next_val; % solution at t=tn
    
end
end
