% find the three integers with equal spacing 6 such that
% their product is 20944
% let x be an integer such that
% x*(x+6)*(x+12)=20944
% so if the root of the above equation found then
% other two numbers will be easily found

% define the function using function @
f=@(x) x*(x+6)*(x+12)-20944; 

% the job is to find the root of the function f

% fzero finds the root and 10 is the initial guess
root=fzero(f,10); 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% print
fprintf("The three integers are: %d, %d, and %d",root,root+6,root+12)
