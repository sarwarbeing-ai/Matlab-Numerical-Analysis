P=magic(3); %in this matrix the sum of each row is 15,each column is 15 and the diagonal is also 15

T=[16,49,4]; % row vector

% part a))
A_withoutSQRT=diag(T);% will create a diagonal matrix ,diagonal entries are from T and rest are zero

A=sqrt(A_withoutSQRT); % matrix A

% part b))

% first initialize B with zeros
B=zeros(size(A)); % same size as A

% traverse each column of A and sort it in descending order
[m,n]=size(A);

for j=1:n
    B(:,j)=sort(A(:,j),'descend');
end
% Note: there is a short cut way to sort each column of a matrix in
% descending order just use sort(A,'descend')


% part c))

C=P*B(3,:).'; % .' sort cut way to transpose a vector



% part d))
% for this part use the matlab function repmat()

D=repmat(C,3,2); % 3 times of rows and double amount of columns of C



% part e))

mean_T=mean(T);

% find row and column indices of D such that each element of D is less than
% mean of T
[row_index,col_index]=find(D<mean_T);
fprintf("The rows index of D where each each element is less than mean of T:\n")
disp(row_index)

fprintf("The corresponding column  index of D where each each element is less than mean of T:\n");
disp(col_index)