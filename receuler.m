% Euler's method
% yn+1=yn+h*f(xn,yn) where f is right hand side of the
% ode dy/dx=f(x,y)

% initial condition for y at x=-2 is 2
y1=2; %  y(x1)=y1

% you need to find y2 at x=x2
h=0.31; % step size

x1=-2;
x2=x1+h;

% the y2 is given by 
y2=y1+h*(1.9*y1); % euler's formula

fprintf('y2=%f at x2=%f obtained through Euler\n',y2,x2);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% use recursive formula to calculate the value of y3

% at i=3
% y3=(4*y2-y1)/(3-3.8*h)

x3=x2+h;
y1=2; % given 

% use y2 obtained in Euler to get the solution for  y3
y3=(4*y2-y1)/(3-3.8*h);

fprintf('y3=%f at x3=%f obtained through recursive\n',y3,x3)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% calculate the absolute relative error for recursive formula
% use the analytical solution for y

ana=2*exp(1.9*(x3+2)); % at x3

err_rel=abs((y3-ana)/ana)*100; % multiply by 100 to convert into percentage
fprintf("The absolute relative error for recursive is %f\n",err_rel);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% absolute relative errror for euler method
ana=2*exp(1.9*(x2+2)); % at x2

err_rel_euler=abs((y2-ana)/ana)*100;
fprintf("The absolute relative error for euler is %f\n",err_rel_euler);



