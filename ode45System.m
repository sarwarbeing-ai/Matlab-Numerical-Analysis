% y'''+0.2y''+10*y'+2*y=sin(3*t)
% y(0)=4,y'(0)=-1,y''(0)=-5
% 0<=t<=50
% convert the third order ode into three first order odes as follows:

%let y1=y
% y2=y' 
% y3=y''

% now y2'=y''=y3 as y2=y' and y3=y''
% y1'=y2 as y2=y'
% y3'=y'''
%
%
% put the value of y''' ,y'',y',and y  in the ode,obtained
% y3'+0.2*y3+10*y2+2*y1=sin(3*t)
% y3'=-0.2*y3-10*y2-2*y1+sin(3*t)

% again,
% y1(0)=4 as y1=y
% y2(0)=-1 as y2=y'
% y3(0)=-5 as y3=y''

% putting everything together we obtained three first order odes
% y1'=y2 ,y1(0)=4
% y2'=y3 ,y2(0)=-1
% y3'=-0.2*y3-10*y2-2*y1+sin(3*t),y3(0)=-5

% solution
tspan=[0,50];
y0=[4;-1;-5]; % initial solution(conditions) ,such that y0(1)=y1,y0(2)=y2,y0(3)=y3



% define the system of odes(right hand side of the odes)  as function handle
f=@(t,y) [ y(2);y(3);-0.2*y(3)-10*y(2)-2*y(1)+sin(3*t)]; 


% use ode45 to get the solution
[t,sol]=ode45(f,tspan,y0);% sol is a matrix such that sol(:,1)=y1,sol(:,2)=y2,sol(:,3)=y3

% since y1=y there fore the solutiin the is given by 
y=sol(:,1);

% plotting time
plot(t,y,'-r')

xlabel('x')
ylabel('y')





