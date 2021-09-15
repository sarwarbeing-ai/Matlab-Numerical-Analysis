vD=20:4:44; % vector with step size 4
vE=50:3:71; % vector with step size 3

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% part a))
% create the vector vDE

% vector of with elements from vD(2nd to 5th)
 % and vE(4th to 7th)
 % 2:5 will create a vector [2,3,4,5]
 % so indexing with multiple values
 % vD([2,3,4,5]) will select elements at index 2,3,4,and 5
 % similarly for vE(4:7)
 % the element from vD(2:5) and vE(4:7) will be concatenated
 % into a single vector
vDE=[vD(2:5) vE(4:7)]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% part b))
% Note 6:-1:2 will create a vector [6,5,4,3,2] with step size -1
% similarly 4:-1:1 will create a vector [4,3,2,1]

% create the vector vED
vED=[vE(6:-1:2) vD(4:-1:1)];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% extra code
% display both vectors to command window
disp("The vector vDE")
disp(vDE)
disp("The vector vED")
disp(vED)
