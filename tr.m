% define the equation using function handle @
% .^ element by element power
% this is useful if x is a vector
% that means the below equation will works for both
% scalar as well as vector
y=@(x) x.^3+2*x.^2-x+3;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
deltax=0.1;

% create a vector x
x=-1:deltax:1;

% Note:
% the integration of a function f on [a,b] is same as
% sum of all the integral values on the subintervals
% [x0,x1],[x1,x2],....,[xn-1,xn]
% where x0=-1 and xn=1

E=0; % initialize to zero
% use a for loop to calculate the integral of y
for i=1:(length(x)-1)
    % (b-a)*(y(a)+y(b))/2; % simple trapezoidal rule
    % where a and b are lower and upper limit of the integral
    E=E+(x(i+1)-x(i))*(y(x(i))+y(x(i+1)))/2; % simple trapezoidal rule
end
disp("The value of integral using trapezoidal rule is")
disp(E)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% error
A=22/3;
err=((A-E)/A)*100;
disp('The error between definite and trapezoidal rule is')
disp(err)



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

