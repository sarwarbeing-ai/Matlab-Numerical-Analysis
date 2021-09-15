function y=Heun_method(x,h,es)
y = zeros(size(x));  % allocate the result y
y(1) = 1;  % the initial y value that is at x=0

%the formula for the heun's method with iteration
% yn+1 = yn + (1/2) h (f(xn, yn) + f(xn + h, yn +  h f(xn, yn)))

%the formula for Heun's method without iteration is just calculating the 
% average slopes once that is (f(xn, yn)+f(xn + h, yn +  h f(xn, yn))/2 

%as in the question the es(estimated slope) is given  so in place of 
% (f(xn, yn)+f(xn + h, yn +  h f(xn, yn))/2 we will substitute es

% The formula becomes yn+1 = yn + h*es for heun's method without iteration

n = numel(y);  % the number of y values
% The loop to solve the DE
 for i=1:n-1
    y(i+1)= y(i) + h *es;
 end
 
end