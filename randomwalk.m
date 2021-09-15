% demonstration
% for demosntration only one values used
% you can run the function for all values and get the x and y vectors
% if you wish you could plot the random walk also
 
[xx,yy]=randomWalk(100);

% run the function for each random walk steps 
% store all the values in .doc file
% since .doc file is not allowed in chegg therefore only one value 
% of random walk steps used here

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% additional code for plot
plot(xx,yy)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [xx,yy]=randomWalk(steps)
rng(123); % set the seed for reproducibility
% steps -number of steps in random walk
% output:
% xx and yy are the vectors in x and y direction resp.

% Note: random walk step is taken to be unit step
% initial position for x and y
x=0;
y=0;
xx=zeros(1,steps); % to store the x-values in x direction
yy=zeros(1,steps);% to store the y-values in y direction

yv=rand(1,steps); % generate random values between 0 and 1
for i=1:steps
    if yv(i)<0.25
        y=y+1; % walk to north
    elseif (yv(i)>=0.25 ) && (yv(i)<0.5)
        x=x+1; % walk to east
    elseif (yv(i)>=0.5 ) && (yv(i)<0.75)
        y=y-1; % walk to south
    else
        x=x-1; % walk to west
    end
    yy(i)=y;
    xx(i)=x;
end
end

