N=input("Enter how many simulations you want\n");


% part a))
%
% Using simple monte carlo integration
% in this case the formula to evaluate the integration of 
% f=xy^2
% the aproximated integration would be 
% I=area*sum(x.*y.^2)/N where area is the area of the rectange 
% that is area=(2-0)*(1/2-0) and N is the number of simulation
% here x and y are random vectors draw from U(0,1/2) and U(0,2) respectively
% U is the uniform random variable
% rand function generates uniform distribution in U(0,1)
% to generate in U(a,b) do a+(b-a)*U(0,1)

I=0; %initial value
for i=1:N
  x=0+(2-0)*rand; 
  y=0+(0.5-0)*rand;
  I=I+x*(y^2);
  
end
area=(2-0)*(0.5-0);
I=area*I/N;
disp(sprintf("The integration of f=xy^2 using simple MC simulation is %d",I))



% part b)) Using antithetic methods:
%
%
% the idea are behind this method are as follows:
% estimating a parameter θ ≈ X¯ ,where X is the random variable
% and if Var(X) is reduced then the simulation will be much more efficient and 
% robust as compared to simple MC
%
% the idea is if X1 and X2 are two random variables than
% Var((X1+X2)/2)=Var(X1)+Var(X2)+2Cov(X1,X2) will reduced 
% if cov(X1,X2)<=0 
% Hence the combined estimator for  θ is (X1+X2)/2
% Here X1=h(U1,U2,----,Un) and X2=h(1-U1,1-U2,---,1-Un) for some function h and 
% U is a uniform random variable and X2 is called antithetic part of X1
%
% In order to approximate the double integral do the following:
% 1.draw x from U(a,b) and x*=1-U(a,b)
% 2.similarly for y draw from U(c,d) and y*=1-U(c,d)
% 3. estimate the integral as (area/N)*(f(x,y)+f(x*,y*))/2


% You might have noticed I have taken N/2 not N 
% Reason:   half of N obervations will be for x,y and the other half would be 
% for x*,y* as x*=1-U(a,b) and y*=1-U(c,d)
I=0;
for i=1:N/2
  x=0+(2-0)*rand;
  y=0+(0.5-0)*rand;
  x_star=1-x;
  y_star=1-y;
  
  I=I+(x*(y^2)+x_star*(y_star^2))/2;
  
end

I=area*I/N;
disp(sprintf("The integration of f=xy^2 using antithetic MC simulation is %d",I))

