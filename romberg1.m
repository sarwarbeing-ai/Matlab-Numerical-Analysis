format long
f=@(x) x.^2.*sin(x);
a=0;
b=pi;
n=3;
levels=2;    
R=romberg(f,a,b,n,levels);
disp(R)


% romberg integration
function R=romberg(fun,a,b,N,levels)
% fun name of the function to be integrated
% a and b are lower and upper limit of integration
% N no of subintervals for trapezoidal rule
% levels number of steps in romberg integration
% output:
%   R is the matrix of estimated values of the integral

% create the first column of the matrix R
% using composite trapezoidal rule
for i=1:levels+1
    Nsubintervals=N*2^(i-1); % number of subintervals
    R(i,1)=trapezoidal(fun,a,b,Nsubintervals);
    
end

% richardson extrapolated values
for j=2:levels+1
    for i=1:(levels-j+2)
        R(i,j)=(4^(j-1)*R(i+1,j-1)-R(i,j-1))/(4^(j-1)-1);
    end
end
end



% define the function trapezoidal
% composite trapezoidal rule
function I=trapezoidal(fun,a,b,N)
% fun function to be integrated and it should be written with point-wise
% calculation
% a  lower limit of integration
% b  upper limit of integration
% N  number of subintervals
%output:
% I  value of the integral

% step size
h=(b-a)/N;

% the vector of end points of all subintervals
x=a:h:b;


% function value at x
fval=fun(x);


% integral value
I=h*(fval(1)+fval(N+1))/2+h*sum(fval(2:N));
end