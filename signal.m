%Q.a))

fs = 5; T = 1/fs;
tn = 0:T:2
t=0:0.1:2; % vector of points spacing 0.1 between successive points


%the signal x(t)
x_t=cos(2*pi*t)+cos(8*pi*t)+cos(12*pi*t);


%the signal xa(t) 
xa_t=3*cos(2*pi*t);


%the signal x(tn) sampling with fs=5KHz
xn_t=cos(2*pi*tn)+cos(8*pi*tn)+cos(12*pi*tn);

%print the sample values of x(t) with fs=5KHz
fprintf("the sample values of x(t) with fs=5KHz: [");
 fprintf("%g ",xn_t);
 fprintf("]\n");
 
 

f1=figure; % create a figure window everytime you call this function

hold on % to plot mutiple graphs on the same plot area

%plot the signal x(t)
plot(t,x_t,'-k')
title("signal x(t) and signal xa(t) intersecting at some sample points sampled with fs=5KHz ")

%plot the signal xa(t)
plot(t,xa_t,'-m')


%plot the sample values

plot(tn, xn_t, '.b','MarkerSize',13)

%add legend to identify the graphs
legend('Signal x(t)','Signal xa(t)','Sample points')

hold off 



%% Q.b))


fs = 10; T = 1/fs;
tn = 0:T:2
t=0:0.01:2; % vector of points spacing 0.01 between successive points


%the signal x(t)
x_t=cos(2*pi*t)+cos(8*pi*t)+cos(12*pi*t);


%the signal xa(t) 
xa_t=3*cos(2*pi*t);


%the signal x(tn) sampling with fs=10KHz
xn_t=cos(2*pi*tn)+cos(8*pi*tn)+cos(12*pi*tn);

%print the sample values of x(t) with fs=10KHz
fprintf("the sample values of x(t) with fs=10KHz: [");
 fprintf("%g ",xn_t);
 fprintf("]\n");
 
 

f2=figure; % create a figure window everytime you call it

hold on % to plot mutiple graphs on the same plot area

%plot the signal x(t)
plot(t,x_t,'-k')
title("signal x(t) and signal xa(t) intersecting at some sample points sampled with fs=10KHz ")

%plot the signal xa(t)
plot(t,xa_t,'-m')


%plot the sample values

plot(tn, xn_t, '.b','MarkerSize',13)

legend('Signal x(t)','Signal xa(t)','Sample points')

hold off 

