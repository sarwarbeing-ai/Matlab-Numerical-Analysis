format long e % to have output in long format with scientific notation
num=1; % take 1 as initial number

nums=[]; % a vector to contain the values of possible smallest postive number
nums(1)=num;

% use while loop
while num>0
    num=num/2; % divide the number by 2
    nums=[nums num]; % store in the vector
end

% Note: The second last number in the vector nums will be the smallest
% positive real number as with last value in the vector the loop will break

disp(nums(end-1)) % second last value