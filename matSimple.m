% part a))
% matrix A1
even=50:-2:2; % will create a vector from 50 to 2 with step size -2
A1=[even;even;even;even]; % this will create a matrix with 4 rows

% part b))
v1=A1(1,10:25); % selected row 1

disp("v1="),v1 % will display the value of v1 in the command window

% part c))
v1length=length(v1); % length of v1

% part d))
[rows,cols]=size(A1); % size will return the dimension of the matrix A1

A1cols=cols;
disp("number of columns of A1 is:"),A1cols 

% part e))
A2=A1(2:4,5:15); % will select row 2nd to row 4th and col 5th to 15th
disp("A2="),A2


% part f))
A3=A2'; % ' is the transpose operator in matlab
disp("A3="),A3

% part g))
A1div=A1(3,20)/A1(4,15);

% part h))
A1col12=A1(:,12); % this select the entire 12th column

% part i))
A1col12p=prod(A1col12); % prod function calculates the product of an array element

% part j))
A1c=cos(A1); % will calculate cosine of each element of the matrix A1

% part k))
A1cmax=max(A1c,[],'all'); % the "all" and [] arguments are necessary otherwise max function
                         % will calculate maximum of each column
                         % to calculate maximum value of a matrix use "all"
                         % and []
disp("maximum value in A1c is:"),A1cmax 
