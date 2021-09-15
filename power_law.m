x=[1,5,10,25,50,70,100];
y=[0.2,0.556,0.72,0.86,0.92,0.95,0.96];

% fit a power function to the model
% y=a*x^b
% linearize the above model by taking natural logarithm to both sides
% log(y)=b*log(x)+log(a)

% change y to log(y) and x to log(x)
x_new=log(x);
y_new=log(y);

% fit a linear model to the above data using polyfit function 
% polyfit returns coefficients of the polynomial in the order
% an,an-1,an-2,...,a0
p=polyfit(x_new,y_new,1); % degree 1 polynomial

b=p(1); % parameter b
a=exp(p(2)); % as log(a)=p(2)

% predict the value of y
y_pred=a*x.^b;

% plot
figure; % create an empty figure
hold on
plot(x,y,'.','MarkerSize',13)
plot(x,y_pred,'r')
title("Power model")
hold off


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% again fit a saturation model
% y=a*x/(b+x)

% linearize the model
% y=a/((b/x)+1)
% b/x +1=a/y
% (b/a)*(1/x)+1/a=1/y this is the linearized model

% get the value of modified x and y
x_mod=1./x;

y_mod=1./y;

% fit a simple linear regression
p=polyfit(x_mod,y_mod,1);

% get the paramters value
p1=p(1);
p2=p(2);

a=1/p2; % as 1/a=p2

b=p1*a; % as (b/a)=p1

% get the predicted y value
y_pred=a*x./(x+b);

% plot
figure; % second figure
hold on
plot(x,y,'.','MarkerSize',13)
plot(x,y_pred,'r')
title("saturated model")
hold off



