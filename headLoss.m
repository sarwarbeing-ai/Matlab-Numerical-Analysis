% ask the user for velovity v2
V2=input("Enter velocity V2 in m/s: ");

g=9.81; % acceleration due to gravity


d2=10/100; % d2 was in cm ,converted into meter

d1=linspace(15,20,10); % equally spaced 10 values
d1=d1/100; % converted into meter


% Calculate A1
A1=(pi/4)*d1.^2; % cross sectional area A1
                 % .^ element by element power as d1 is a vector
                 % so A1 will also be a vector

A2=(pi/4)*d2^2;

% calculate the headloss
hL=(V2^2/(2*g))*(A2./A1-1).^2; % ./ element by elment division as A1 is a vector

% now plot
plot(d1,hL,'-ko') % black solid line with cirlce marker


% make another plot 
d1=20/100; % d1 was in cm ,converted into meter

d2=linspace(10,5,10); % equally spaced 10 values
d2=d2/100; % converted into meter


% Calculate A1
A1=(pi/4)*d1^2; % cross sectional area A1
                

A2=(pi/4)*d2.^2; % here d2 is a vector

% calculate the headloss
hL=(V2^2/(2*g))*(A2./A1-1).^2; % ./ element by elment division as A2 is a vector


hold on % to plot multiple graphs on the same figure
plot(d2,hL,'--rd') % red dashed line with diamond markers

xlabel("Diamter[meters]")
ylabel("Head Loss")
title("Head loss of fluid flowing in a pipe")
hold off % detach from the graph


