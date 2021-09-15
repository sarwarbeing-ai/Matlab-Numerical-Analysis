% current variable I
I=[-2,-1.5,-1,-0.5,0,0.5,1,1.5,2];

% voltage variable
V=[-41.66,-28.62,-19.36,-10.20,0,10.26,19.16,30.76,40.26];

% part i))
% use interp1 function from matlab to do interpolation

% query points
qs=[-0.25,0.75]; % at these points the voltage will be found

voltage_pred=interp1(I,V,qs,"spline"); % using spline method the interpolation
                                       % carried out
                                       
                                      
% voltage at I=-0.25 and I=0.75
disp(['V=',num2str(voltage_pred(1)),' at I=-0.25 ']) % [] use to concatenate strings
                                                     % num2str convert
                                                     % number to string
                                                     
disp(['V=',num2str(voltage_pred(2)),' at I=0.75 ']) 






% part ii)
% polyfit function returns the coefficient of the polynomial in 
% decreasing order i.e if p(x)=an*x^n+an-1*x^n-1+...+a0
% then P=polyfit() ,P(1)=an,P(2)=an-1 ,etc

P=polyfit(I,V,1); % where 1 is the degree of the polynomial fitted to the
                  % data I and V ,i.e simple linear regression
                  % P is a vector such that P(1)=a and P(2)=b where the
                  % simple linear regression is a*x+b
                  
                
                  
% the formula for R is I=V/R
% so R=V/I
% the equation of the simple linear regression is V=a*I+b
% So, R=(a*I+b)/I

% display the equation in the command window
a=P(1);
b=P(2);

disp(['R=','(',num2str(a),'*I+',num2str(b),')/I'])


% also find R using prediced value of V and I
R=(a*I+b)./I % ./ element by elment division



% part iii))
% you can use polyval function to evaluate voltage on the given current
% values
Vnew=polyval(P,I);

hold on
plot(I,V,'--*') % star markers with dashed line
plot(I,Vnew) % solid line

xlabel("I")
ylabel("Voltage")
title("Voltage vs I")
legend('Data','Fitted line')

hold off


% part iv))
% find the maximum absolute error
VmaxError=max(abs(V-Vnew));

% find the value of I using simple linear regression that obtained using
% polyfit
% V=a*I+b
% I=(V-b)/a

I_maxError=(VmaxError-b)/a



 
