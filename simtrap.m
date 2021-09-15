% deinne the function f1 using function handle @
f1=@(x) 4*x.^3+5*x.^2+x-2;
a=1;
b=5;
disp("Table for simpson for the function f1")
fprintf('N         I                  err')
fprintf('\n')
for N=[2,5,10,50,100]
    
    % exact value
    dx=(b-a)/N; % step size
    x=a:dx:b;
    exact=sum(f1(x))*dx;
    
    % call the function simpson
    I=simpson(f1,a,b,N);
    err=I-exact;
    fprintf('%d      %f         %f',N,I,err)
    fprintf('\n')
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% deinne the function f2 using function handle @
f2=@(x) x.^2./(2*x.^3+3);
a=2;
b=20;
disp("Table for simpson for the function f2")
fprintf('N         I                  err')
fprintf('\n')
for N=[2,5,10,50,100]
    
    % exact value
    dx=(b-a)/N; % step size
    x=a:dx:b;
    exact=sum(f2(x))*dx;
    
    % call the function simpson
    I=simpson(f2,a,b,N);
    err=I-exact;
    fprintf('%d      %f         %f',N,I,err)
    fprintf('\n')
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% deinne the function f3 using function handle @
f3=@(x) 2*x.^2.*exp(-x);
a=0;
b=4;
disp("Table for simpson for the funtion f3")
fprintf('N         I                  err')
fprintf('\n')
for N=[2,5,10,50,100]
    
    % exact value
    dx=(b-a)/N; % step size
    x=a:dx:b;
    exact=sum(f3(x))*dx;
    
    % call the function simpson
    I=simpson(f3,a,b,N);
    err=I-exact;
    fprintf('%d      %f         %f',N,I,err)
    fprintf('\n')
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp('************************************')
disp('************************************')
% deine the function f1 using function handle @
f1=@(x) 4*x.^3+5*x.^2+x-2;
a=1;
b=5;
disp("Table for trapezoidal for the function f1")
fprintf('N         I                  err')
fprintf('\n')
for N=[2,5,10,50,100]
    
    % exact value
    dx=(b-a)/N; % step size
    x=a:dx:b;
    exact=sum(f1(x))*dx;
    
    % call the function trapezoidal
    I=trapezoidal(f1,a,b,N);
    err=I-exact;
    fprintf('%d      %f         %f',N,I,err)
    fprintf('\n')
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% deinne the function f2 using function handle @
f2=@(x) x.^2./(2*x.^3+3);
a=2;
b=20;
disp("Table for trapezoidal for the function f2")
fprintf('N         I                  err')
fprintf('\n')
for N=[2,5,10,50,100]
    
    % exact value
    dx=(b-a)/N; % step size
    x=a:dx:b;
    exact=sum(f2(x))*dx;
    
    % call the function trapezoidal
    I=trapezoidal(f2,a,b,N);
    err=I-exact;
    fprintf('%d      %f         %f',N,I,err)
    fprintf('\n')
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% deinne the function f3 using function handle @
f3=@(x) 2*x.^2.*exp(-x);
a=0;
b=4;
disp("Table for trapezoidal for the funtion f3")
fprintf('N         I                  err')
fprintf('\n')
for N=[2,5,10,50,100]
    
    % exact value
    dx=(b-a)/N; % step size
    x=a:dx:b;
    exact=sum(f3(x))*dx;
    
    % call the function trapezoidal
    I=trapezoidal(f3,a,b,N);
    err=I-exact;
    fprintf('%d      %f         %f',N,I,err)
    fprintf('\n')
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function I=simpson(fun,a,b,N)
% fun function to be integrated and it should be written with point-wise
% calculation
% a  lower limit of integration
% b  upper limit of integration
% N  number of subintervals
%output:
% I  value of the integral

if N<1
    error('N must be greater than equal to 1')
end
if N==1
    I=(b-a)*(fun(a)+4*fun((a+b)/2)+fun(b))/6; % simple simpson 1/3 rule
else
    % step size
    h=(b-a)/N;

    % the vector of end points of all subintervals
    x=a:h:b;


    % function value at x
    fval=fun(x);
     
   %calculate all the indices
   % at index 1,f(a) is located
   % and at index length(x) the value f(b) located 
   % hence you need to exclude these
   odd=3:2:(length(x)-1); % with step size 2
   % calculate all the even indices
   even=2:2:(length(x)-1);
   

    % integral value
    % composite simpson's 1/3 rule
    % fval(N+1) is the value at x=b
    % fval(1) is the value at x=a
    I=h*(fval(1)+2*sum(fval(even))+4*sum(fval(odd))+fval(N+1))/3; 
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

if N<1
    error('N must be greater than equal to 1')
end

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