% time vector
time=[0.5 1:15];

% velocity vector
velocity=[4.6,9.1,16.5,23.2,28,32.7,36.1,40.6,43.6,47,49.2,51.6,53,55.8,57.2,59.1];

% saturation growth model
% v=a*t/(b+t)
% linearize the saturation growth model
% 1/v=(b+t)/(a*t)=b/(a*t)+1/a

% let 1/v=y and 1/t=x
% then y=(b/a)*x+1/a which is a linear model, a simple linear regression

% let (b/a)=beta and 1/a=alpha
% then y=beta*x+alpha


% caluclate x and y
y=1./velocity; % ./ element by element division

x=1./time;

% now fit a simple linear regression
p=polyfit(x,y,1); % polyfit fucntion returns vector of coefficients
                  % of the polynomial in decreasing order i.e
                  % if p(x)=an*x^n+an-1*x^n-1+....+a0
                  % then p(1)=an,p(2)=an-1, and so on
                  
                  
 % get the beta and alpha value
 alpha=p(2);
 beta=p(1);
 
 % calculate the value of a and b
 a=1/alpha  % alpha=1/a
 
 b=a*beta % as (b/a)=beta
 
 
 
 
 % part b))
 Terminal_velocity=a*15/(b+15) % terminal velocity
 
 
 
 % part c))
 v=300*1000/3600; % velocity in m/s
 

 % v=a*t/(b+t)=
 % 1/v=1/a+b/(a*t) 
 % 1/v-1/a=b/(a*t)
 % a*t=b/(1/v-1/a)
 % t=b/(a*(1/v-1/a))
 
 qualifying_time=b/(a*(1/v-1/a))
 
 
 
 
 