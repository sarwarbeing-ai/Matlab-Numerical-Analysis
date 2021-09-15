Gamma=0.99;
R_0=1.85; % initial  recovered rate
Beta=1.831683;
N=150; % number of days
Pop=7000; % number of population
U=zeros(N,3); % matrix to store susceptibles,infectious and recovered for 150 days

% initial conditions
U(1,3)=1.85; % U(t,3)=Rt ,recovered
U(1,2)=0.003; % U(t,2)=It,Infectious

% susceptibles rate is the rate at which individuals will likely be
% affected,so you need to subtract recovered  and infectious to get the
% intial susceptible rate
U(1,1)=1-U(1,3)-U(1,2); % intial susceptibles,U(t,1)=St

for t=1:N
    U(t+1,1)=U(t,1)-Beta*U(t,1)*U(t,2);
    U(t+1,2)=U(t,2)+(Beta*U(t,1)*U(t,2))-Gamma*U(t,2);
    U(t+1,3)=U(t,3)+Gamma*U(t,2);
    
end

% plotting time
hold on
plot(1:N+1,U(:,1),'-r','LineWidth',1)
plot(1:N+1,U(:,2),'-k','LineWidth',1)
plot(1:N+1,U(:,3),'-b','LineWidth',1)
title("SIR model")
xlabel("Time")
ylabel("SIR Populations")
legend("S","I","R")
hold off
