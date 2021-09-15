% initial consitions
y0=[0;1;1];
tspan=[0 10];

% get the solution
% ode45 function accepts function handle or function with @
% as first argument
[t,y]=ode45(@system,tspan,y0); % y will be a matrix such that
                               % y(:,1)=y1.y(:,2)=y2,and y(:,3)=y3
                               

         
                      
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% plot
hold on % to plot multiple graphs
plot(t,y(:,1),'-r','LineWidth',2)
plot(t,y(:,2),'-b','LineWidth',2)
plot(t,y(:,3),'-k','LineWidth',2)

xlabel("t")
ylabel("y")
legend("y1","y2","y3") % plot the legend

hold off






% define a function called system
function dy1dy2dy3=system(t,y)
% y is a vector such that y(1)=y1,y(2)=y2,y(3)=y3
% dy1dy2dy3 will also be a vector such that
% dy1dy2dy3(1)=f1,dy1dy2dy3(2)=f2,dy1dy2dy3(3)=f3
% where f1 ,f2,and f3 are the right hand side of 
% dy1/dt,dy2/dt,dy3/dt respectively

dy1dy2dy3=[y(2)*y(3)*t;-y(1)*y(3);-0.8*y(1)*y(2)];
end