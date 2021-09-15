function C=Interpolate3(X)

% extract the vector x from X
x=X(:,1); % first column

% similarly extract y
y=X(:,2);

% represent the polynomial in matrix form
% [1,x,x^2,x^3]*C=y where  C is the coefficient vector such that
% C=[c1,c2,c3,c4]

% the least square solution to the above equation is in the normal form 
% as follows
% let M=[1,x,x^2,x^3]
% the C=inv(M'*M)*M'*y where M' is the transpose of M and  inv inv is the
% inverse

% create matrix M
M=[ones(length(x),1),x,x.^2,x.^4]; % .^ is the element by element power and ones(length(x),1)
                                        % is the vector of ones which
                                        % happens to be the first column
                                        % and this column corresponds to
                                        % the coefficient c1 which is also
                                        % called bias term in regression
                                        % so M would be matrix of order
                                        % N by 4
                                       
 % get the solution
 C=(M'*M)\(M'*y); % \ is called backslash operator
                  % such that  a system Ax=b can be solved as follows
                  %  x=A\b
                  %  this is very much efficient in terms of computation
                  %  rather using inv function
                  
                  % Note: (M'*M)\(M'*y) this is equivalent of solving
                  % inv(M'*M)*M'*Y

end