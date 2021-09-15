x=[0.2,0.4,0.6,0.8,1,2,4,6,8];
y=[-80,-30,-20,-15,-20,0,20,40,80];

% first plot the data 
figure % figure1
plot(x,y,'.r','MarkerSize',16)

hold on % to plot multiple grsphd on the same plot

% plot polynomial fitted curve of order 1,2,3,4,5,6,7,8,9 as there are only
% 9 data points
% to get an idea what order polynomial fitting the data completely
for n=1:9
    % get the coefficients of the polynomial using polyfit function
    p=polyfit(x,y,n); % fit the polynomial of order n,p is a vector of
                      % coefficients
                      
   % calculate the predicted value of y
   y_pred=polyval(p,x);
   
   % plot the fitted curve
   plot(x,y_pred)
end

% legend
legend('data','n=1','n=2','n=3','n=4','n=5','n=6','n=7','n=8','n=9')

hold off % detach from the current graph




% Note  : from the plot it seems to be that the the polynomial of order 9
% fitted the data completely
% separate plot

figure % figure 2
plot(x,y,'.r','MarkerSize',16)

hold on
p=polyfit(x,y,9); % fit the polynomial of order 9,p is a vector of
                      % coefficients
                      % polyfit function returns polynomial coefficients
                      % in decreasing order
                      % eg: an*x^n+an-1*x^n-1 + ...+a0
                      
% calculate the predicted value of y
y_pred=polyval(p,x);
   
% plot the fitted curve
plot(x,y_pred,'-g')

legend('data','Polynomial of degree 9','Location',"northeast")
hold off




% display the 9th order polynomial
disp('9th order polynomial')
% [] used to concatenate strings and num2str conver number to string
fprintf('(%d)*x^9 + (%d)*x^8 +(%d)*x^7 + (%d)*x^6 + (%d)*x^5 + (%d)*x^4 + (%d)*x^3 + (%d)*x^2 + (%d)*x + (%d)\n', ...
    p(1),p(2),p(3),p(4),p(5),p(6),p(7),p(8),p(9),p(10))






% part 2))
% to fit the function g(x)=a/x+b*x^2
% you need to mormal equation to obtain the coefficients a and b

% create a matrix whose first column is 1/x and second column is x^2

X=[(1./x)'  (x.^2)']; % here transpose operator ' has been used as x was a row vector
                      % ./ is element by element division
                      % .^ element by element power
                      
                      
% calculate the coefficients using normal equation
% normal equation
% C=inv((X'*X))*X'*y' ; inv is the inverse function
% C(1)=a and C(2)=b

C=inv(X'*X)*X'*y';

a=C(1) % value of a
b=C(2)



% part 3))
% calculate the predicted value of y
y_pred=a./x+b*x.^2;

figure  % create a figure
plot(x,y,'.m','MarkerSize',16)

hold on
plot(x,y_pred,'-b')
xlabel('x')
ylabel('y')
title('Data vs fitted curve')
% [] use to concatenate strings
legend('data',['g(x)=',num2str(a),'*1/x + ',num2str(b),'*x'])
hold off




% part d))

% total residual square
resTotal=sum((y-y_pred).^2)

