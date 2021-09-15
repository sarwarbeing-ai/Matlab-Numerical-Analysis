% define the right hand side of the ode as function handle
f=@(x,y) exp(x)-y/x;% right hand side of the ode(eg:dy/dx=f(x,y)

y(1)=2;% solution of y at x=x0

x0=1; % initial value for x
h=0.2;% step size

x1=1.4; % final value for x

% vector of x values
xvec=x0:h:x1; % with step size h

% for loop to calculate approximate value of y
% for all x values
for i=2:length(xvec)
k1=f(xvec(i-1),y(i-1));% k1 is the slope value at (x(i),y(i)) ,

k2=f(xvec(i-1)+h/2,y(i-1)+h*k1/2);% k2 is the slope at midpoint ,modified from k1

k3=f(xvec(i-1)+h/2,y(i-1)+h*k2/2);% again slope but modified from k2

k4=f(xvec(i-1)+h,y(i-1)+h*k3); % modified slope

y(i)=y(i-1)+(1/6)*h*(k1+2*k2+2*k3+k4);% next approximate value of y ( basically average of all the slope values)
end

% display tht solution at x=1.4 to the command window
% the solution at x=1.4 is nothing but the last value in y
y_x14=y(end);
disp("The solution at x=1.4 is "),y_x14