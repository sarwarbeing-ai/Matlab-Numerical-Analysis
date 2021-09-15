% testing
u=[1,2]
v=[4,5,6]
A=[2,3,4;5,6,7]
p=scalar(u,A,v)

u=[1,2,4]
v=[4,5,6]
A=[2,3,4;5,6,7]
p=scalar(u,A,v)




function p=scalar(u,A,v)
% if v has dimension 1*8 then v is a row vector
% if v has dimension 8*1 then it is a column vector
% here this function takes v as a row vector
% and u  is alos a row vector 
% Note: length(v) will return 8

% check if the length of v and number of columns of A are same
% if not
if length(v)~=size(A,2) % size(A,2) will return number of columns in A       
    error("vector v and matrix A has mismatched dimension i.e number of columns of A and length of v must be same")
end

% check if the length of u and number of rows of A are same
% if not
if length(u)~=size(A,1)
    error("length of u and number of rows of A must be same")
end


% get the scalar product
for i=1:size(A,1)
    Q(i)=sum(A(i,:).*v); % Calculate A*v, Q is a vector
                        % A(i,:) is the ith row of A
                        % .* is the element by element multiplication
end

p=sum(u.*Q); % return the scalar product .* element by element multiplication

end
