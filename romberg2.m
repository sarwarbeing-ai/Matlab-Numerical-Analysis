% demonstration
% define the integrand using function handle @

% .^ element by element power
fun=@(x) 1-x-4*x.^3+2*x.^5;

a=-2;
b=4;
es=0.1;
maxit=15;
R=romberg(fun,a,b,maxit,es);
disp(R)


% romberg integration
function R=romberg(fun,a,b,maxit,es) 
% fun name of the function to be integrated
% a and b are lower and upper limit of integration
% maximum number of iteration
% es is the tolerance
% output:
%   R is the estimated integration value
n=1;
I(1,1)=trapezoidal(fun,a,b,n);
iter=0;

while 1
    iter=iter+1; % increment the iter by 1
    n=2^iter; % number of subintervals for trapezoidal rule
    I(iter+1,1)=trapezoidal(fun,a,b,n);
    
    % richardson extrapolated values
    for k=2:iter+1
        j=2+iter-k;
        I(j,k)=(4^(k-1)*I(j+1,k-1)-I(j,k-1))/(4^(k-1)-1);
    end
    
    % check for the tolerance
    ea=abs((I(1,iter+1)-I(2,iter))/I(1,iter+1))*100;
    
    if (iter>=maxit || ea<=es)
        break % break the while loop
    end
    
end

% integrated values
R=I(1,iter+1);
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

if N==1
    I=(b-a)*(fun(a)+fun(b))/2; % simple trapezoidal rule
else
    % step size
    h=(b-a)/N;

    % the vector of end points of all subintervals
    x=a:h:b;


    % function value at x
    fval=fun(x);


    % integral value
    I=h*(fval(1)+fval(N+1))/2+h*sum(fval(2:N)); % composite trap rule
end

end