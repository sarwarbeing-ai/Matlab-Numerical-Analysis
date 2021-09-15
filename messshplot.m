% create vector x and y
x=linspace(-5,5,200); % equally spaced 200 points
y=linspace(-5,5,200);

% create a meshgrid from the vectors x and y which is nothing but
% a 2D coordinates
[X,Y]=meshgrid(x,y); % here X is a matrix whose each row is x
                      % Y is a matrix whose each column is y
                     

Z=5*sin(X).*cos(Y);% .* is a element by element multiplication 

ax=figure("Name","Mesh plot");
subplot(1,3,1) % 1 row and 3 columns ,third argument is the index of the current active axes
% part a)) mesh plot
mesh (X,Y,Z) % mesh plot
xlabel("X values")
ylabel("Y values")
zlabel("Z values")
title("3D plot of the function")


% part b))   
subplot(1,3,2)% plot X vs Z
plot(Z,X)
xlabel("Z values")
ylabel("X values")
title("plot of X versus Z")


% part c))
subplot(1,3,3)% plot Z vs Y
plot(Y,Z)
xlabel("Y values")
ylabel("Z values")
title(" plot of Z versus Y")




