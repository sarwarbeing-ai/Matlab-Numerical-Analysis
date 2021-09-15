% create the matrix A
A=[1,0,0,0]; % matrix of order 1 by 4

% create the matrix B of order 2 by 2
B=[0,1;0,0]; % here semicolon used in order to create columns
% Note: use semicolon to create column ,otherwise use , for row
% here first row is 0,1 and second row is 0,0

% create the matrix C
C=[0,0,0]; % 1 by 3

% create the matrix D
D=[0;0;1]; % D is a matrix of order 3 by 1

% create E
E=[0;1]; % matrix of order 2 by 1


% create F
% in order to create F you need to carry some steps
% step1: combine B and E
BE=[B E]; % BE will be a matrix of order 2*3

% step 2: combine BE and C
BEC=[BE;C]; % BEC will be a matrix of order 3*3

% step 3: combine BEC and D
BECD=[BEC D]; % this is a matrix of order 3*4

% now create F
F=[A;BECD]


% part b))
vec5to11=5:0.3:11 % syntax:  start:step:end


% part c))
% you can't use step  size in linspace ,you have to use how many
% points you want ,so that the difference between successive point is 0.3
n=(11-5)/0.3; % number of points

vecLinespace=linspace(5,11,n+1) % here n+1 taken so that 11 will be included otherwise not

