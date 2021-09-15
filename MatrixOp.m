% matrix with first and second columns
% are ones and 3rd and 4th columns
% are zeros
x=[ones(3,1) ones(3,1) zeros(3,1) zeros(3,1)];


% part a))

% second row and third column
% modify the element at second row
% and third column of the matrix x
x(2,3)=5; % will modify element at position
           % (2,3)
           
  
           
% part b))
% delete the 4th column of the 
% matrix x
% to delete  a column just pass an empty vector
% to the corresponding column as follows
x(:,4)=[]; % will delete 4th column



% get the determinant of the mosified 
% matrix
% the determinant would be zero
% as first and second columns are 
% same that is vector of ones
% Theorem: If two columns or two rows
% are same then determinant would be zero
det=0

       
       
       
       
       
 % part c))
 % reshape the matrix x into a row vector
 % shortcut way to reshape a matrix into
 % a row vector use colon(:) operator
 col=x(:); % this will reshape the matrix
         % into a column vector
         
  
         
 row=col' % take transpose to make the column vector
          % into a row vector
          
          
          
         
           