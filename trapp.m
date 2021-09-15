% define the functions f1,f2,and f3 using functiuon handle @
f1=@(x) 4*x.^3+5*x.^2+x-2;
f2=@(x) x.^2./(2*x.^3+3);

f3=@(x) 2*x.^2.*exp(-x);

N=[5,10,50,100,1000]';
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% integrate f1
disp("Integration of f1")
a=1;
b=5;
% analytical integration of f1 is (x^4+(5/3)*x^3+x^2/2-2*x)
actual=(b^4+(5/3)*b^3+b^2/2-2*b)-(a^4+(5/3)*a^3+a^2/2-2*a);

I=[]; % integration vector

for n=1:length(N)
    Int=trapezoidal(f1,a,b,N(n));
    I(n)=Int;
    
end
Err=(I-actual)';
I=I'; % transpose I to make it a column vector

% table for f1
table(N,I,Err)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% integrate f2
disp("Integration of f2")
a=2;
b=20;
% analytical integration of f2 is log(2*x^3+3)/6
actual=log(2*b^3+3)/6-log(2*a^3+3)/6;

I=[];

for n=1:length(N)
    Int=trapezoidal(f2,a,b,N(n));
    I(n)=Int;
end

Err=(I-actual)';
I=I'; % transpose I to make it a column vector

% table for f3
table(N,I,Err)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% integrate f3
disp("Integration of f3")
a=0;
b=4;
% analytical integration of f3 is (-2*x^2-4*x-4)*exp(-x)
actual=(-2*b^2-4*b-4)*exp(-b)-(-2*a^2-4*a-4)*exp(-a);


I=[];

for n=1:length(N)
    Int=trapezoidal(f3,a,b,N(n));
    I(n)=Int;
end

Err=(I-actual)';
I=I'; % transpose I to make it a column vector

% table for f3
table(N,I,Err)




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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