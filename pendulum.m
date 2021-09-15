

% if y1=theta
% by assumption y1'=y2 and y1'=0 at t=0 that is y2=0 at t=0
% and y1=theta0=pi/6 
% so y=[pi/6;0]

% the mistake that you have done is c/m*L is not equivalent to 
% c/(m*L)
[x,y]=ode45(@nate,[0 10],[pi/6;0]);


function dydt=nate(t,y)
c=0.2;
m=0.3;
L=1;
g=9.81;
dydt=[y(2);(-g/L)*sin(y(1))-(c/(m*L))*y(2)];

end

