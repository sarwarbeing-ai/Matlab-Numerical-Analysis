clc;clear;close all;

% part b))
h=10; % step size
t=1950:h:2000;
p0=2555; % initial value

p=[]; % create a vector of populations,will be filled later
p(1)=p0; % the first value is the initial value

% n starts from 2 as the first value is the initial value
for n=2:length(t)
    
    % Heun's Method
    % p_tildan+1=pn+h*dpdt(pn) euler method(predictor)
    
    % pn+1=pn+h/2[dpdt(pn)+dpdt(p_ildan+1)] % corrector 
    
    % since the right hand side of the ode dp/dt does not contain
    % any t therefore you can ignore it
    
    % calculate p_tilda
    p_tilda=p(n-1)+h*dpdt(p(n-1));
    
    % corrector value
    p_next=p(n-1)+h*(dpdt(p(n-1))+dpdt(p_tilda))/2;
    
    p(n)=p_next; % n+1 as at index 1 the intial value(2555) occupied
    
    
    
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% part c))
% tn=1960
% since t1=1950 and h=10
% therefore at n=2 tn=1960=1950+10

p2=p(2); % value at tn=t2=1960

fprintf("The value of the population at tn=1960 is %d",p2);




% define the function dpdt ,will be useful to calculate the solution 
% of the differential equation of population growth
function dp=dpdt(x)
% x is population value
% output:
% return the value of dp/dt at p=x

k=0.026; % growth rate
px=12000; % carrying capacity
dp=k*(1-x/px)*x;

end