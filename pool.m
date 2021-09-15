% ask the user for length
length=input("Length: ");

width=input("Width: "); % width 

average_depth=input("Depth: "); % depth

% calculate length*width and length+width
l_w=length+width;
lw=length*width;

% calculate perimeter
perimeter=2*l_w;

volume=lw*average_depth; % volume

% surface area
area=2*l_w*average_depth+lw;

% display all the results
% [] concatenate strings
disp(['Perimeter=',num2str(perimeter)])

disp(['Volume=',num2str(volume)])

disp(['Underground Surface Area=',num2str(area)])




