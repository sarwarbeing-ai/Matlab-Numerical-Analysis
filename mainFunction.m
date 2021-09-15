% main function
function mainFunction
% ask the user for a real number in the range 0<x<10
x=input('Enter a number in the range 0<x<10: ');

tol=input('Enter a tolerance(eg:10^-4): ');

% check if the user has entered corrected input
if x<=0 || x>=10
    error("You have entered the wrong value of x")
end

% call the user defined function
[lnx,Nterms]=userLog(x,tol);

% print
fprintf('%d terms required to determine ln(%f)=%f within the error %d ',Nterms,x,lnx,tol)
end






function [lnx,Nterms]=userLog(x,tol)
% x is a real number in the range (0,10)
% tol is the error tolerance

% output:
% value of natural logarithm at x
% terms is the number of terms needed to get the value of log(x) within
% tolerance tol

lnsum=0; % initialize the sum to be zero
Nterms=0;

tol=abs(tol); % just to make sure that if the user entered a tolerance value less than 0

while abs(lnsum-log(x))>=tol
    
    % increment the sum
    lnsum=lnsum+((-1)^(Nterms+2)/(Nterms+1))*(x-1)^(Nterms+1); % here n starts from 0
    
    % increment the terms by 1
    Nterms=Nterms+1;
    
end

% output the value of log(x)
lnx=lnsum;
end
