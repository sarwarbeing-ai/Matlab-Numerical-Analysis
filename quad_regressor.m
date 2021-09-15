
function [b,R2a,AIC]=quad_regressor(x,y)
% x and y are n*1 vectors

% in order to derive the coefficients b1,b2 ,and b3
% you can use closed form solution

% construct a matrix Z whose first column is 1's
% second column is x, adn third column is x^2
Z=[ones(length(x),1),x,x.^2];

% the vector b is given by 
% Z' is the inverse of the matrix Z
% inv is the inverse function in matlab
b=inv(Z'*Z)*Z'*y;

% predicted value of y
y_pred=b(1)+b(2)*x+b(3)*x.^2;

% calculate the R2 score first
% formula:1-sum((y-y_pred)^2)/sum((y-mean(y))^2)
R2=1-(sum((y-y_pred).^2)/sum((y-mean(y)).^2));

% the adjusted R2 is given by
n=length(x); % number of data points
p=2; % number of regressors (x,x^2)
R2a=1-(1-R2)*(n-1)/(n-p-1);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% now calculate the AIC(Akaike Information Criteria)
% formula:n*log(sigma^2)+2*k where n is the number of data points
% k is the number of parameters(here 3 ,b1,b2,b3)
% sigma^2 is the estimated variance of the error

% find the error
err=y_pred-y;

% find the variance of err
sigma=sum(err.^2)/length(y);
k=4;

AIC=n*log(sigma)+2*k;

end