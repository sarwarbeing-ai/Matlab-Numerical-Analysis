% part i))
x=linspace(-2,2,20);% 20 equally spaced points from -2 to 2
y=linspace(-2,2,20);

% create a 2D coordinates using x and y
[X,Y]=meshgrid(x,y); % Here X is a matrix such that each row of X is a copy of x
                     % and Y is a matrix whose columns are y
                     

% caluclate the value of Z
Z=X.^2+2*(Y-1).^2+(X+1).^2.*Y; % .^ element by element power,.* is the element by element
                               % mulitplication
                               % this is called vectorized implementation                      
                               
                               
% part ii))
figure % figure 1
% contour map
hold on % to plot multiple graphs on the same plot
contour(X,Y,Z)

% get the local minima
% fminsearch needs an initial guess for x and y
t0=[-2,2]; % initial guess

[t,z]=fminsearch(@height,t0); % t will be a vector such that t(1)=x0 and 
                                % t(2)=y0 and z is the local minimum value
                                
% local minima
x0=t(1)
y0=t(2)
height_local=z

% iv)) plot local minima at (x0,y0)
plot3(x0,y0,height_local,'+')

xlabel('x')
ylabel('y')

% plot the legend
legend('Contour map','Local Minima')

hold off


% part v))

figure % figure 2
%plot the surface height for y=0;
x=linspace(-2,2,20);% 20 equally spaced points from -2 to 2

y=zeros(1,length(x)); % vector of zeros of same length as x

[X,Y]=meshgrid(x,y);

Z=X.^2+2*(Y-1).^2+(X+1).^2.*Y; % surface height for y=0

surf(X,Y,Z,'EdgeColor','r') % surface height plot
xlabel('x')
ylabel('y')
zlabel('Surface height')

% part iii))
% define height function
function z=height(t)
z=t(1)^2+2*(t(2)-1)^2+(t(1)+1)^2*t(2);
end