% slope field
% in order to draw the slope field follow the following procedure
% 1. dy/dx=-x^2-cos(y)
% 2.dy/dx=(-x^2-cos(y))/1
% 3. so dy=-x^2-cos(y)
% 4.dx=1
% 5.create position of the arrow(in slope field)
% i.e x and y coordinates
% 6.use quiver function from matlab


% create x and y coordinates
% meshgrid(x,y) function returns 2D grid coordinates
% from vectors x and y
% here X is a matrix such that each row is x
% and Y is a matrix such that each column is y
% here -3:0.3:3,-15:0.6:15 taken just for plotting purpose
% if you want you can take different
[X,Y]=meshgrid(-3:0.3:3,-15:0.6:15);

% .^ element by element power
dy=-X.^2-cos(Y);
dx=ones(size(dy)); % matrix of 1's same shape as dy

% to make the slope vector of unit length ,normalize dy and dx
dy=dy./sqrt(dy.^2+dx.^2);
dx=dx./sqrt(dy.^2+dx.^2);

hold on % to plot multiple graphs on the same figure

% plot the slope field
quiver(X,Y,dx,dy)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% find three different solutions of the ode 
% you can obtain three different solutions just by taking 
% three initial guess

% Note: if you want you can change the initial guesses

y10=2; % first initial guess
y20=1.5; % second initial guess
y30=1; % second initial guess

xspan=-3:0.5:3; % x vector

% use ode45 function from matlab to find the three solutions
% -x.^2-cos(y) this is the right hand side of the ode
% ode45 function accepts first argument an odefun
% to define the function use @
[x1,y1]=ode45(@(x,y) -x.^2-cos(y),xspan,y10); % first solution


[x2,y2]=ode45(@(x,y) -x.^2-cos(y),xspan,y20); % second solution


[x3,y3]=ode45(@(x,y) -x.^2-cos(y),xspan,y30); % third solution

% now plot all the solutions to the same graph
plot(x1,y1,'-r')
plot(x2,y2,'-g')
plot(x3,y3,'-k')


hold off

