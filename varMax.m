%  demonstration
A=[10,5,4,8;6,7,10,8;5,2,1,7;11,5,4,8];
[maxelt,variance]=maxvar_oppdiag(A);
disp("Max element is ")
disp(maxelt)
disp("The variance is ")
disp(variance)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp('Operation on ranodm integer matrix')
A=randi(10,5); % 5*5 order matrix if integers in the range [1,10]
disp("Random Matrix:")
disp(A)
[maxelt,variance]=maxvar_oppdiag(A);
disp("Max element is ")
disp(maxelt)
disp("The variance is ")
disp(variance)

function [maxelt,variance]=maxvar_oppdiag(A)
% A is a squre matrix 
% output:
% maxelt-is the maximum element of from evene numbers in the opposie
% diagonal of A
% variance-is the variance of even numbers

% get the size of the matrix A
[m,n]=size(A);
if m~=n
    error("A must be a square matrix")
end

opp=[]; % opp diagonal elements will be stored

% iterate throw columns and rows to extract 
% the elements of the opposite diagonal of the
% matrix A

% travel from the last column
for j=n:-1:1
    
    % you may have noticed that the sum of ith index and jth index is 
    % is equal n+1 eg: suppose A is a matrix of order 5*5
    % then (1+5)=6 first row and 5th column index
    %(2+4)=6
    % (3+3)=6
    
    % check for the even elements
    % mod returns remainder
    if mod(A(n+1-j,j),2)==0
        opp=[opp A(n+1-j,j)]; % n+1-j+j=n+1
    end
    maxelt=max(opp);
    variance=var(opp);
end

end