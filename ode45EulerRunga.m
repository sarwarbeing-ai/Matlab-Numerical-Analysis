% define the right hand side of the ode dy/dx as function handle
f=@(t,y) exp(t)-t;
y0=1; % initial solution at t=0


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% tspan
tspan=[0,2];

% get the solution using ode45
[t,y_ode45]=ode45(f,tspan,y0);



% Euler method
h=0.1; % step size

% create a vector of t values
tvec=0:0.1:2; % with step size 0.1


y_eu=zeros(1,length(tvec)); % initialized to zeros

y_eu(1)=y0;  % store the initial soluton  into y_eu


for i=2:length(tvec)
    y_eu(i)=y_eu(i-1)+h*f(tvec(i-1),y_eu(i-1)); % Euler's formula
    
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% get the solution using RK4(Runga Kutta method of order 4)
h=0.1; % step size

% create a vector of t values from 0 to 2 with step size 0.1
tvec=0:0.1:2;

y_run=zeros(1,length(tvec)); 

y0=1; % solution at t=0

y_run(1)=y0;

for j = 2:length(tvec)
        % RK fourth-order formula
        k1 = h*f(tvec(j-1),y_run(j-1));
        k2 = h*f(tvec(j-1)+0.5*h,y_run(j-1)+0.5*k1);
        k3 = h*f(tvec(j-1)+0.5*h,y_run(j-1)+0.5*k2);
        k4 = h*f(tvec(j-1)+h,y_run(j-1)+k3);
        y_run(j) = y_run(j-1) +k1/6+k2/3+k3/3+k4/6;
 end

 
 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 % analytical solution
 % integrating both side of the ode dy/dx,obtained
 % y=exp(t)-t^2/2+c where c is an integration constant
 % put t=0 with y=1
 % 1=exp(0)-0+c
 % c=0
 % so y=exp(t)-t^2/2
 
 % create a vetor of t values from 0 to 2
 x=linspace(0,2,50); % 50 points
 
 y_ana=exp(x)-x.^2./2;
 
 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 % plot
 hold on
 plot(t,y_ode45,'k-o') % black circles
 plot(tvec,y_eu,'r-d'); % red diamonds
 plot(tvec,y_run,'g-*') % green astericks
 plot(x,y_ana,'b') % blue line
 
 legend("ode45","Euler","RK","Analytical") % legend
 hold off