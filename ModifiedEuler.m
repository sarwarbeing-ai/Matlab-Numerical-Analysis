% modified Euler method

% define the right hand side of the odes as function handle 
f1=@(t,ca,cb) -4*ca+cb;

f2=@(t,ca,cb) 4*ca-cb;

% initial consitions 
CA(1)=1; % CA is a vector
CB(1)=0; % similarly CB

tspan=0:0.1:5; % t vector

deltat=0.1;

% loop goes from 2
for i=2:length(tspan)
    ca_eu=CA(i-1)+deltat*f1(tspan(i-1),CA(i-1),CB(i-1));
    cb_eu=CB(i-1)+deltat*f2(tspan(i-1),CA(i-1),CB(i-1));
    
    % get the modified value
    ca=CA(i-1)+deltat*(f1(tspan(i-1),CA(i-1),CB(i-1))+f1(tspan(i),ca_eu,cb_eu))/2;
    cb=CB(i-1)+deltat*(f2(tspan(i-1),CA(i-1),CB(i-1))+f2(tspan(i),ca_eu,cb_eu))/2;
    
    % now store the value in the vectors CA and CB
    CA(i)=ca;
    CB(i)=cb;
    
end

% plotting time
figure; % figure1
plot(tspan,CA(1:end-1),'-r',tspan,CB(1:end-1),'-g')
title("Modified Euler")
legend('CA','CB','Interpreter','latex')
xlabel('Time')
ylabel('Concentration')





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%% using built in function
% initial condition
C0=[1;0]; % initial condition vector
tspan=[0 10];

% use ode45 built in solver
[t,C]=ode45(@systemCon,tspan,C0); % C will be a two columns matrix
                                  % such that C(:,1)=CA and C(:,2)=CB
                                  
                                 
 % plot
 figure; % figure2
 plot(t,C(:,1),'-r',t,C(:,2),'-g')
 title('Built-In Solver')
 legend('CA','CB','Interpreter','latex')
 xlabel('Time')
 ylabel('Concentration')


% define the right hand side of the ode as follows
function Cout=systemCon(t,Cin)
% Cin is a vector such that Cin(1)=Ca,Cin(2)=Cb
Cout=[-4*Cin(1)+Cin(2);4*Cin(1)-Cin(2)];
end