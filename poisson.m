clc; % clear command window
lambda=4;
x=linspace(1,2*lambda,8); % equallly spaced points
% .* element by element multiplication
% ./ element by element division
% .^ element by element power
P=(lambda.^x).*exp(-lambda)./factorial(x) % vectorized implementation
