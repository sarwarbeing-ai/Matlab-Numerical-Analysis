function prod=product(arr)
% arr is an array

% Base case
% check if arr is of length 1
if length(arr)==1
    prod=arr(1); % the product is the array element itself
else
    
    prod=product(arr(1))*product(arr(2:end)); % call the function product here
     
end
end
