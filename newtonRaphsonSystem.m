clc;clear;
% define the Jacobian matrix using function handle @
% where each row corresponds to the derivative of each equation
% with respect to each variable
% eg: J=[df1/dx,df1,dx2;df2/dx1,df2/dx2] here df1/dx is the partial
% derivative 
% f1(x,y,z)=x^3-x^2+z*sin(pi*y)=0
% f2(x,y,z)=x*y^3-cos(pi*z)-z=0
% f3(x,y,z)=x+z*cos(pi(x-z))-2*z*exp(y)=0

J=@(x,y,z)[3*x^2-2*x,z*pi*cos(pi*y),sin(pi*y);
    y^3,3*x*y^2,pi*sin(pi*z)-1;
    1-z*pi*sin(pi*(x-z)),-2*z*exp(y),cos(pi*(x-z))+z*pi*sin(pi*(x-z))-2*exp(y)];


initial_guess=[0.1;0.2;0.15];

% define the function f as vector of eqn1,eqn2,eqn3
f=@(x,y,z) [x^3-x^2+z*sin(pi*y);x*y^3-cos(pi*z)-z;x+z*cos(pi*(x-z))-2*z*exp(y)];

iter=0;
while 1
    x=initial_guess(1);
    y=initial_guess(2);
    z=initial_guess(3);
    
    % calculate the next guess
    next_guess=initial_guess-inv(J(x,y,z))*f(x,y,z);
    
    % calculate the error
    err=norm(next_guess-initial_guess);
    if err<0.001
        sol=initial_guess;
        break % break the loop
    end
    
    % update the iteration
    iter=iter+1;
    
    % update the initial_guess
    initial_guess=next_guess;
end


disp("The solution vector is ")
disp(initial_guess)
disp("The iterations needed to get error less than 0.001 is ")
disp(iter)