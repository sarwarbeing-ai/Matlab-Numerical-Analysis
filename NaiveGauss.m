clc;clear;close all;
% construct the coefficient matrix
A=[1,4,1,0;1,1,1,1;1,2,0,1;2,3,1,0];
disp("The coefficient matrix is ")
disp(A)

% construct the right hand vector 
b=[32;43;28;43];

% call the function GaussElimination
% this is a function for Gauss Elimination
out=GaussElimination(A,b);
fprintf("The solution vector by Gauss Elimination is [")
fprintf('%g ',out)
fprintf(']\n')


% get the solution using backslash operator in matlab(left division)
sol=A\b;
fprintf("The solution vector by left division is [")
fprintf('%g ',sol)
fprintf(']\n')

function out=GaussElimination(A,b)
% b is the vector in Ax=b
% A is a n*n order matrix
% output:
% out is the solution vector of the system Ax=b


[m,~]=size(b);
if m==1
    b=b'; % transpose b to be a column vector
end

% dimension of A
[m,n]=size(A);
if m~=n
    error("Matrix A must be square")
end

%  construct a matrix of size n*(n+1)
A=[A b]; % this will be useful for the construction of augmented matrix

% Gauss Elimination Algorithm

% forward elimination
[m,n]=size(A);
for j=1:m-1
    for i=j+1:m
        % A(j,j) is the pivot element
        multiplier=A(i,j)/A(j,j);
        
        % for ith row make all the columns to be zero
        A(i,j:n)=A(i,j:n)-multiplier*A(j,j:n);
    end
end


% backward substitution
out=zeros(m,1);
out(m)=A(m,n)/A(m,m);
for i=m-1:-1:1
    out(i)=(A(i,n)-A(i,i+1:m)*out(i+1:m))/A(i,i);
end
end

