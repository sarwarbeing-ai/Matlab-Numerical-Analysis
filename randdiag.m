% Exercise 2:
function d=randdiag(n,low,high)

% create a vector of random integers from low to high 
vec=randi([low,high],1,n); % a vector of length n

% return the diagonal matrix
d=diag(vec); % diag function will construct diagonal matrix
end