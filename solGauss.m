% Exercise 4:
A=[4,-1,0,3,;-2,3,1,-5;1,1,-1,2;3,2,-4,0]; % coefficient matrix

b=[10;-3;2;4];


% Method 1: Using backslash operator
sol=A\b;
disp("Solution using backslash operator: ")
disp(sol)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Method 2 using Gauss Elimination method

sol=GaussElimination(A,b);

disp("Solution using Gauss Elimination Method:")
disp(sol)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Gauss Elimination with pivoting
function out=GaussElimination(A,b)
% b is the vector in Ax=b
% A is a n*n order matrix
% output:
% out is the solution vector of the system A*x=b

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
A=[A b]; % this will be useful for the construction of the augmented matrix

[m,n]=size(A);

for j=1:m-1
    % check if the pivot element is zero
    if A(j,j)==0
       
        % search for the pivot element
        for k=j+1:m
            if A(k,j)~=0
                temp=A(j,:);% temporary vector
                % interchange the row with zero pivot element
                % with rows having non-zero pivot element
                A(j,:)=A(k,:); % change the jth row
                A(k,:)=temp; % chnage the kth row
                break % break the loop if pivot element found ,no need to go further
            end
        end
       
    end
   
    % forward elimination
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