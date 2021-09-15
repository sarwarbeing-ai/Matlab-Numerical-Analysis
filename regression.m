clc;clear;close all;

format long g % to print the output in long format

% 1. Visualize the Population Change Over Time
% Plot the population data against the year.
years = (1900:10:2020);

% Time interval
pop = [0.812 1.037 1.246 1.477 1.669 ... 
1.880 2.272 2.813 3.205 3.473 3.842 4.362 5.012]; % Population Data


plot(years,pop ,'o')
title('Population Change Over Time');
ylabel('Years');
xlabel('Population')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 2. Linear Regression Model

x = (years-1900)/10+1; % This redefines the years so 1900 -> 1, 1910 -> 2, etc, making calculation easy
% The linear regression model
% y=a*x+b you need to find the slope a and intercept b by using ordinary least squares

% The least square estimates for a and b are as follows

% the covariance between x and pop
cov_least=sum((x-mean(x)).*(pop-mean(pop)))/(length(x)-1);
a=cov_least/var(x); 
b=mean(pop)-a*mean(x);

% the fitted regression line will be a*x+b
lin=a*x+b ;%After setting things up, calculate the prediced population values for each x value
hold on
plot(years, lin, 'o')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 3. Fitting the Data with Other Regression Models
% find coefficients for all polynomial regression fits up to order 7
coef1 =polyfit(x,pop,1) % linear
coef2 = polyfit(x,pop,2) % quadratic

coef3 =polyfit(x,pop,3) % 3rd order
coef4 = polyfit(x,pop,4) % 4th order

coef5 =polyfit(x,pop,5) % 5th order
coef6 = polyfit(x,pop,6) % 6th order

coef7 =polyfit(x,pop,7) % 7th order

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 4. Plotting the Curves

pred1 = polyval(coef1,x); % linear 
pred2 = polyval(coef2,x); % quadratic
pred3 = polyval(coef3,x); % 3rd order
pred4 = polyval(coef4,x); % 4th order 
pred5 = polyval(coef5,x); % 5th order
pred6 = polyval(coef6,x); % 6th order
pred7 = polyval(coef7,x); % 7th order

% Plot the predicted values for each polynomial.
hold on
plot(years, pred1) % linear
plot(years, pred2) % quadratic
plot(years, pred3) % 3rd order
plot(years, pred4) % 4th order
plot(years, pred5) % 5th order
plot(years, pred6) % 6th order
plot(years, pred7) % 7th order
legend('Data','Least','Linear','Quad','3rd Order','4th order','5th order','6th order','7th order','Location','bestoutside')
hold off

% 5. Extrapolating the data
% scalled the value of 2030 so that it would be represented as an integer like 5
scaled=(2030-1900)/10+1; % this is done as the regressor for all the fitted models is in the range 1,2,3,4,so on

pop_2030_least=a*scaled+b; % using least square regression 
fprintf("The predicted population for the year 2030 of New Zealand using least square regreesion is %d",pop_2030_least);
fprintf('\n');

% linear 
pop_2030_1=polyval(coef1,scaled); % linear
fprintf("The predicted population for the year 2030 of New Zealand using linear regreesion is %d",pop_2030_1);
fprintf('\n');

% quadratic
pop_2030_2=polyval(coef2,scaled); % quadratic
fprintf("The predicted population for the year 2030 of New Zealand using quadratic polynomial is %d",pop_2030_2);
fprintf('\n');

% 3rd order
pop_2030_3=polyval(coef3,scaled); % 3rd order
fprintf("The predicted population for the year 2030 of New Zealand using 3rd order polynomial is %d",pop_2030_3);
fprintf('\n');

% 4th order
pop_2030_4=polyval(coef4,scaled); % 4th order
fprintf("The predicted population for the year 2030 of New Zealand using 4th order polynomial is %d",pop_2030_4);
fprintf('\n');

% 5th order
pop_2030_5=polyval(coef5,scaled); % 5th order
fprintf("The predicted population for the year 2030 of New Zealand using 5th order polynomial is %d",pop_2030_5);
fprintf('\n');

% 6th order
pop_2030_6=polyval(coef6,scaled); % 6th order
fprintf("The predicted population for the year 2030 of New Zealand using 6th order polynomial is %d",pop_2030_6);
fprintf('\n');

% 7th order
pop_2030_7=polyval(coef7,scaled); % 7th order
fprintf("The predicted population for the year 2030 of New Zealand using 7th order polynomial is %d",pop_2030_7);
fprintf('\n');



