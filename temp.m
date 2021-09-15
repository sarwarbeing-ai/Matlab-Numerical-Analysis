% 1)) Temperature ranges from 0 to 20 ,increment 2
% create a vector with step size 2
% syntax: start:step:end
Temp=0:2:20 

% 2)) Angle changes from 45 to 270 with 51 uniform spaced points
% it would be very difficult to create such a vector using the procedure
% used in (1) as the step size is unknown
% short cut to create a vector of angles ranges from 45 to 270 degress with
% 51 uniform spaced points
% syntax:linspace(start,end,n) where n is the number of points
angle=linspace(45,270,51) % this will create a vector of 51 points with uniform spaced


% 3))
% The logical 'and' in Matlab is &&

% let x=7
x=7;
if x>=4 && x<=9
    % fprintf used to format the output
    % here 'd' stands for decimal
    % if you use disp command to print then you would not be able to have
    % the output as you like
    
    fprintf("x=%d",x);
end