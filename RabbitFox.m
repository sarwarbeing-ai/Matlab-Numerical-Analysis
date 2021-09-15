% you can solve the system of odes using ode45 function
% ode45 function accepts function handle with two paramters
% namely t,y 
% since the function RabbitFox has more than two paramters
% you need to be smart reduced it two 
% How to reduce it two
% way:
% define another function as function handle and wrapped the 
% function RabbitsFoxes as follows

% part a))
k1=0.02;
k2=0.00004;
k3=0.0004;
k4=0.04;

system=@(t,z) RabbitsFoxes(t,z,k1,k2,k3,k4);

% initial population
z0=[500;200];
tspan=[0 500];

% get the solution
[t,z]=ode45(system,tspan,z0); % z(:,1)=x and z(:,2)=y


% plot
figure; % create a figure 
plot(t,z(:,1),'-r')
hold on
plot(t,z(:,2),'-g')

% plot the legend
legend('Rabbits','Foxes')
title("Part a")
hold off

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% part b))

k1=0.02;
k2=0.00004;
k3=0.00004;
k4=0.04;

system=@(t,z) RabbitsFoxes(t,z,k1,k2,k3,k4);

% initial population
z0=[500;200];
tspan=[0 800];

% get the solution
[t,z]=ode45(system,tspan,z0); % z(:,1)=x and z(:,2)=y


% plot
figure; % create a figure 
plot(t,z(:,1),'-r')
hold on
plot(t,z(:,2),'-g')

% plot the legend
legend('Rabbits','Foxes')
title("Part b")
hold off

% figure 3,rabbits vs fox
figure;
plot(z(:,1),z(:,2),'-m')
xlabel("Rabbits")
ylabel("Foxes")
title("Rabbits vs Foxes")

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% to get the solution for the system of odes you need to define
% a function which comprises the whole system
function dxdy=RabbitsFoxes(t,z,k1,k2,k3,k4)
% t is time
% z is a vector such that z(1)=x and z(2)=y
% k1,k2,k3,k4 are the constants

dxdy=[k1*z(1)-k2*z(1)*z(2);k3*z(1)*z(2)-k4*z(2)];
end