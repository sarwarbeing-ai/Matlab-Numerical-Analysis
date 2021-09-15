% vectors x and y
x=-1:0.1:1; % with step size 0.1
y=-1:0.1:1;

% create a 2d grids of x and y
% here X is a matrix where each row is x
% and Y is a matrix whose each column is y
[X,Y]=meshgrid(x,y);


% evaluate phi in X and Y
Z=sin(pi*X).*cos(pi*Y); % .* element by element multiplication

% mesh plot
subplot(3,1,1) % 3 rows and 1 column ,1 is the index of the current axe
mesh(X,Y,Z);
title("mesh plot")

% contour plot
subplot(3,1,2)
contour(X,Y,Z)
title("contour plot")

% gradient 
[dx,dy]=gradient(Z,0.1,0.1); % 0.1 is the spacing ,one for x and other for y ((f(x)-f(x+h))/h)


% vector  field plot
subplot(3,1,3)
quiver(x,y,dx,dy)
title("gradient plot")
