% ask the user for length
length1=[25 25 30 30 30];

width=[10 10 12 12 12]; % width 

average_depth=[5.0 5.5 5.5 5.0 6.5]; % depth
area=[];
volume=[];
perimeter=[];
for i=1:length(length1)
    % calculate length*width and length+width
l_w=length1(i)+width(i);
lw=length1(i)*width(i);

% calculate perimeter
perimeter=[perimeter 2*l_w];

volume=[volume lw*average_depth(i)]; % volume

% surface area
area=[area 2*l_w*average_depth(i)+lw];
    
end

T=table;
T.Length=length1';
T.Width=width';
T.Depth=average_depth';
T.Perimeter=perimeter';
T.Volume=volume';
T.Underground_Surface_Area=area';

