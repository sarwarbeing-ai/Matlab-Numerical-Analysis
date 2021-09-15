% derive a gormula for R
% alpha= 90-theta
% the angle will be 90 at the tangent on earth surface
% now apply sin formula
% sin(alpha)=(opposite side)/hypotenuse
% hypotenuse=R+h
% opposite side=R

% so sin(alpha)=R/(R+h)
% sin(alpha)*(R+h)=R
% sin(alpha)*R-R=-h*sin(alpha)
% R-sin(alpha)*R=h*sin(alpha)
% R(1-sin(alpha))=h*sin(alpha)
% R= h*sin(alpha)/(1-sin(alpha))


% store all the heights in a vector
h=[3,6,9,12,15,18,21,24,27,30];

theta=[1.9,2.6,3.0,3.5,4.1,4.5,4.9,5.3,5.7,6.1];



R=zeros(1,length(h)); % initialize as zero vector

for i=1:length(h)
    alpha=90-theta(i);
    
    r= h(i)*sind(alpha)/(1-sind(alpha)); % sind calculate sin value for angle given in degree
    
    % now store the value into the vector R
    R(i)=r;
end

% average earth radius
avgR=mean(R);

disp('The vector R is')
disp(R)

disp('The average earth radius is ')
disp(avgR)

