% in order to calculate the total mass you need to evaluate 
% the integral
% You can use Reimann sum to evaluate the integral
rho=[4.00,3.95,3.89,3.80,3.60,3.41,3.30];
Ac=[100,103,106,110,120,133,150];

x=[0,4,6,8,12,16,20];

% convert the length into cm
x=x*100;

m=0; % intialize to zero

for i=1:length(x)
    m=m+rho(i)*Ac(i); 
end