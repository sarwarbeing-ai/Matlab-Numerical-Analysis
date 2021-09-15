clc;
clear all;
X = [-1 1 1]'; % Initial guess,it should be three for x1,x2,and x3
step = 1;
fprintf('Step            xl               x2            x3            fl         f2         f3        Residual \n')

while step <=10
    % compute function value and Jacobian
    f = [X(1)^2-3*X(2)^2+X(3)^2+5  2*X(1)^2+X(2)^2+X(3)^2-4  X(1)^3+2*X(2)^2-3*X(3)^2-2]';
    
    % you did wrong in Jacobian
    % J=[df1/dx1,df1/dx2.df1/dx3;df2/dx1,df2/dx2,df2/dx3;df3/dx1,df3/dx2,df3/dx3];
    % where d is the partial derivative f1,f2,and f3 are the first ,second
    % ,and third equation in the system
    
    J = [2*X(1),-6*X(2),2*X(3);4*X(1),2*X(2),2*X(3);3*X(1),4*X(2),-6*X(3)];
    s = J\(-f); % dx computation
    XNEW = X + s; %  Update vector X
    RelError = XNEW-X;
    
    Residual = norm(RelError, 2);
    fprintf('%10d | %10.4f | %10.4f | %10.4f | %10.4f | %10.4f | %10.4f | %10.4d |\n', step, X(1), X(2), X(3), f(1), f(2), f(3), Residual);

    X = XNEW; % update initial guess

    step = step + 1; % increment by 1
end