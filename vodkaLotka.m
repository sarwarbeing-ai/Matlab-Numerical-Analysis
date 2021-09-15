clc;clear; % clear command window,workspace
p0=[100;5]; % population of snow hares and lynxes at t=0
tYears=0:0.25:100; % t vectror

% all other constants
a=0.48;
b=0.025;
c=0.68;
d=0.02;

[tYeras,ppPop]=ode45(@(t,p) volta_lotka(t,p,a,b,c,d),tYears,p0);

% display the population of snow hares
disp("The population of snow hares is ")
disp(ppPop(:,1))

% display the population of lynxes
disp("The population oflynxes is ")
disp(ppPop(:,2))



% define the system of odes
function dpdt=volta_lotka(t,p,a,b,c,d)
% t is a time
% p is vector of p1 and p2
dpdt=[a*p(1)-b*p(1)*p(2);d*p(1)*p(2)-c*p(2)];
end