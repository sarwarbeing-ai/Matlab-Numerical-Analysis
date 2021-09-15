x=[4.0691,4.2664,3.9948,5.9387,1.3128]'; % x values
y=[1.3643,1.5988,1.2663,0.6540,1.7621]';% f values


% represent the equation in matrix form
% [sin(x)^2,cos(x)^2]*C=y where C is the coefficient vector such that C=[a,b]'

% the least square solution to the above equation is in the normal form 
% as follows
% let M=[sin(x)^2,cos(x)^2]
% then C=inv(M'*M)*M'*y where M' is the transpose of M and  inv  is the
% inverse of the matrix M'*M

% create matrix M
M=[sin(x).^2,cos(x).^2]; % .^ is the element by element power 
                                        % M would be a matrix of order
                                        % N by 2 where N is the number of data 
                                        % points and here N=5
                                       
 % get the solution
 C=(M'*M)\(M'*y); % \ is called backslash operator
                  % such that  a system Ax=b can be solved as follows
                  %  x=A\b
                  %  this is very much efficient in terms of computation
                  %  rather than using inv function
                  
                  % Note: (M'*M)\(M'*y) is equivalent of solving
                  % inv(M'*M)*M'*Y
                  
% display the solution to the command window 
disp('The coefficient vector is '),C

disp(['a-b=',num2str(C(1)-C(2))])% [] to concatenate strings
