
% there are multiple ways to solve this system of linear equations
format long
% using linsolve function from matlab to solve system of linear equations
A=[1.001,1;1,1];
b=[2;1];
disp("Solve by linsolve function")
x=linsolve(A,b)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% using pinv where pinv calculate the pseudoinverse of the coefficient
% matrix

disp("Solved by first finding pseudoinverse of A")
x=pinv(A)*b

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% using backslash operator
disp("The system solved using backslash operator \")

x=b\A
