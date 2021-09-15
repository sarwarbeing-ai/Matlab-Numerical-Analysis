% ask the user for delay values
n0=input("Enter the value of first delay ");

n1=input("Enter the value of second delay ");

% construct the time index
time=-10:1:10;

% construct the signal
% u[n]=1 if n>=0 and 0 if n<0
u=((time-n0)>=0)-((time-n1)>=0);

plot(time,u)
grid on