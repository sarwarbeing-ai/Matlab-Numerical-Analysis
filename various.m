% create a 3*3 matrix A
% matrix of order 3*3 with zeros only
% will be filled later
A=zeros(3,3);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[m,n]=size(A); % get the dimension of A
% m is the number of rows and n is the number of columns
% use for loop to add the numbers in that column

% fill the matrix with random integers
for i=1:m
    for j=1:n
        % generate a random integer between 1 and 40
        int=randi([1,40]);
        
        A(i,j)=int; % filled


    end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[m,n]=size(A); % get the dimension of A
% m is the number of rows and n is the number of columns
% use for loop to add the numbers in that column

% create a vector to store the sum of all columns
col=[];
% traverse each column
for j=1:n
    % add each numbers in that column
    add=0;
    for i=1:m
        add=add+A(i,j);
        
    end
    
    % store the sum in the vector col
    col=[col add];
end
   

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[m,n]=size(A); % get the dimension of A
% m is the number of rows and n is the number of columns
% use for loop to add the numbers in that column

% create a vector to store the sum of all rows
row=[];
% traverse each row
for i=1:m
    % add each numbers in that row
    add=0;
    for j=1:n
        add=add+A(i,j);
        
    end
    
    % store the sum in the vector col
   row=[row add];
end
   
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% use loop to add the elements of the diagonal
% indices of the diagonal elements are (1,1),(2,2),(3,3) ,and so on 
diag=0;
for i=1:3
    diag=diag+A(i,i);
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% extra code
% display all the result
disp("The matrix A is")
disp(A)
disp("The sum of each column of A is")
disp(col)

disp("The sum of each row of A is")
disp(row)

disp("The sum of diagonal elements of A is")
disp(diag)