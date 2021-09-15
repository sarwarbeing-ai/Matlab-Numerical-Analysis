clc;clear;close all;
A=[9,8,9,2;5,2,7,3;6,4,3,6;8,2,5,6];
disp("The coefficient matrix :")
disp(A)

b=[42;45;53;63];

% call the function gaussnaive
x=gaussnaive(A,b);
fprintf("The solution vector by Naive Gauss:[");
fprintf("%g ",x);
fprintf(']\n');

% solution by finding the inverse of A
sol=inv(A)*b;
fprintf("The solution vector by using inverse of A:[");
fprintf("%g ",sol);
fprintf(']\n');

% determinant of A
dt=det(A);
fprintf("The determiant of the matrix A is %d",dt);
fprintf("\n")

% sum of the diagonal elements of the upper triangualar matrix
% forward elimination
[~,n]=size(A);

for k=1:n-1
    for i=k+1:n
        factor=A(i,k)/A(k,k);
        for j=k:n
            A(i,j)=A(i,j)-factor*A(k,j);
        end
    end
    
end

% sum
sum=0;
for i=1:n
    sum=sum+A(i,i);
end

fprintf("The sum of the diagonal elements of the upper triangular matrix obtained from A is %d",sum);
fprintf("\n")
function [x]=gaussnaive(A,b)
% inputs
% A=coefficient matrix
% b=right hand side matrix
% output
% x=solution vector
[m,n]=size(A);
if m~=n
    error("Matrix A must be square");
end

% forward elimination
for k=1:n-1
    for i=k+1:n
        factor=A(i,k)/A(k,k);
        for j=k+1:n
            A(i,j)=A(i,j)-factor*A(k,j);
        end
        b(i)=b(i)-factor*b(k);
    end
    
end

% back substitution
x(n)=b(n)/A(n,n);
for i=n-1:-1:1
    sum=0;
    for j=i+1:n
        sum=sum+A(i,j)*x(j);
    end
    x(i)=(b(i)-sum)/A(i,i);
end
end
