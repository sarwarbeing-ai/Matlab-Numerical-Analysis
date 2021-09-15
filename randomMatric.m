% create a random integer matrix of order
% 90 by 50

mat=randi([-8,7],[90,50]);% first vector is the range for the values
                          % second vector is the size of the matrix
                          
% Note:Since range for integers [-8,7]
% therefore the matrix mat might
% contain integer 0

% create a logical matrix
log_mat=mat>=0; % log_mat is a matrix of 0's and 1's
               % 1 indicates numbers 
               % which are non-negative integers
               % 0 otherwise
               

 % calculate number of positive integers
 Npos=sum(log_mat,'all');% all means add all
                         % the numbers in the matrix log_mat
 
                         
                         
  % similarly do for negative
  % if you take negation of 
 % of the mattix log_mat
 % then 1 will indicate negative integers
 % and 0 for positive integer in the matrix log1_mat
 
 log1_mat=~log_mat;
 
 Nneg=sum(log1_mat,'all');
 
 
 % [] used yo concatenate strings
 % num2str will convert number to string
 
 disp(['Number of positive integers is ',num2str(Npos)])
 disp(['Number of negative integers is ',num2str(Nneg)])
 
 
 
 
                         