% create the coefficient matrix A
A=[2,3,-3;1,-1,0;2,0,1];

% create the vector b
b=[0,2,18]';

% to find whether the system of equations has unique solution or not
% procdecure:
% 1. if the rank of A and [A b] is different then the system
% has no solution(here [A b] is the augmented matrix)

% 2. if the rank of both the matrices is same  and rank is equal
% to the number of unknowns then the system has unique solution

% 3. if the rank is same but less than number of unknowns then the system
% has infinitely many solutions


% construct the augmented  matrix
aug=[A b];

r1=rank(A); % rank of A
r2=rank(aug); % rank of aug

% check if the system Ax=b has unique solution
% there are three unknowns namely x,y,and z
if (r1==r2) && (r1==3)
    disp("The system has unique solution")
    
    % find the unique solution
    sol=A\b; % \ backslash operator
    
   fprintf("The unique solution is [ ")
   fprintf('%g ',sol)
   fprintf(']\n')
    
elseif (r1~=r2)
    % tell the user that the system has no solution as an error
    error("The system has no solution") 
else
    disp("The system has infinitely many solutions")
end


