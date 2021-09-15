function mat=nmMatrix(n,m)
% check if m is even and n is odd
if rem(m,2)~=0  % rem is the remainder function
    error("Number of columns must be even!!")
end

if rem(n,2)~=1
    error("Number of rows must be odd!!")
end


% prepare the matrix
% first create a matrix whose first column is ones and second column
% is [0,2,0,..]
first=ones(n,1); % vector of ones of length n
second1=repmat([0;2],fix(n/2),1); % repmat function repeats a matrix 
                                 % p times in the row and q times in the
                                 % column
                                 % where p,q are arguments in repmat(A,p,q)
                                 % eg: A=[0;2] it is a matrix of 2 rows and
                                 % 1 column
                                 % repmat(A,2,1) will return [0;2;0;2]
                                 % fix(n/2) will remove fraction part from
                                 % n/2
                                 % second vector will be a vector of
                                 % length=n-1
                                 % suppose if n=5
                                 % then fix(n/2)=2
                                 % repmat([0;2],2,1)=[0;2;0;2]
                                 % but you need a length of n 
                                 % follow the below code
                                 
second=[second1;0]; % the second column will always ends in 0 as n is odd
                    % it starts with 0
                   
A=[ones(n,1),second];

% now repeat the matrix A  1 time by row ,m/2 times by column
% Note: the ouput matrix whose last column will always be [0,2,0,...]
% as m is even
mat=repmat(A,1,m/2); % required output
                     % if A repeated m/2 times by column then mat will have
                     % m columns as A has 2 columns
end
