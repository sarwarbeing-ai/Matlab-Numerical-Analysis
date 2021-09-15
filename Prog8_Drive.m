
clear;clc;close all;
% define the vector d
d=[8 13 19 22 28 33 37 56 63 76];

% call function 1
figure; % figure1
usingFind(d)

% call function 2
figure; % figure2
usingLoop(d)







% function2
function usingLoop(d)
% d is the distance array
% output:
% no output


% define the variable v an array of velocities
v=zeros(1,length(d));

for i=1:length(d)
    
    % check if the distanc is less than equal to 25
    if d(i)<=25
        % use the equation velocity=0.625+0.12d-0.00025d^2
        v(i)=0.625+0.12*d(i)-0.00025*d(i)^2;
      
    else
        % use the equation velocity=0.425+0.00175d^2
         v(i)=0.425+0.00175*d(i).^2;
    end
end


% plotting time
plot(d,v,'k--^','MarkerEdgeColor','r') % dashed line with triangle marker
xlabel('distance',"Position",[40,-1]) % position of the xlabel (x,y) coordinate
ylabel("velocity","Position",[-3,6])
title("Distance vs Velocity")
legend("Using Loop",'Location','northwest') % location of the legend is northwest

end








% function1
function usingFind(d)
% d is the distance array
% output:
% no output

% use find function to find the indices in the array d at which the
% elements are less than or equal to 25
indices=find(d<=25);

% define the variable v an array of velocities
v=zeros(1,length(d));

% use the equation velocity=0.625+0.12d-0.00025d^2
v(indices)=0.625+0.12*d(indices)-0.00025*d(indices).^2;


% find the indices at which the elements are greater than
% 25
indices=find(d>25);
% use the equation velocity=0.425+0.00175d^2
v(indices)=0.425+0.00175*d(indices).^2;

% plotting time
plot(d,v,'r-.s','MarkerEdgeColor','b') % dash dotted line with square markers
xlabel('distance',"Position",[40,-1])
ylabel("velocity","Position",[-3,6])
title("Distance vs Velocity")
legend("Using find",'Location','northwest')



end