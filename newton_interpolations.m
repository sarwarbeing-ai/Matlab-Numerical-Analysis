clear;clc;close all;
% define the vector x
x=linspace(-4,4,15); % total 15 points with equal spaced

% define the tanh(x) function using function handle
f=@(x) tanh(x);

% corresponding y-values
y=f(x);

n=length(x); % length of the vector x ,will be used to construct the divided difference table

% initialize the divided difference table(forward difference) 
coef=zeros(n,n);

% the first column of coef matrix is y
coef(:,1)=y;

% now fill rest part of the coef matrix
for j=2:n-1
    for i=1:n-j
        
        % this will calculate the next divided difference
        coef(i,j)=(coef(i+1,j-1)-coef(i,j-1))/(x(i+j)-x(i));
    end
    
end

% the first row of the coef matrix is the set of coefficients of the
% Newton's polynomial(a0,a1,a2,a3,---,an)

disp("coefficient matrix")
disp(coef)
p=coef(n,:); % the last row of the matrix coef

% the value of the function tanhx using newton's interpolation
for j=2:n-1
    p=coef(n-j,:)+(x-x(n-j)).*p;
end

   

%plotting time
subplot(1,2,1)
plot(x,y,'-b','LineWidth',1.5)
title("Original data Points")

subplot(1,2,2)
plot(x,p,'-r','LineWidth',2)
title("The Newton's polynomial")

% error
error=max(abs(y-p))


