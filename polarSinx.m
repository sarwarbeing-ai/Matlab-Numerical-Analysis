% part 1))

% create a vcetor x
x=linspace(-10,10,100); % 100 equally spaced points from -10 to 10

% .^ is element by elment power
% ./ is the element by element division
y=(x.^2-x+2)./(x.^3+x.^2+1)+exp(-0.05*x)-sin(2*x)-cos(3*x); % vectorized implemention

figure; % figure1
plot(x,y,'-g')


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% part 2))

% create a vector theta
theta=linspace(0,6*pi,100); % 100 equally spaced points

% get r1,r2,r3,and r4
r1=2+2*sin(theta);

r2=2-2*sin(theta);

r3=2+2*cos(theta);

r4=2-2*cos(theta);

figure;
% use subplot to plot multiple graphs on the same graph
subplot(2,2,1) % two rows and 2 columns ,third argument is the index of the current axe
polarplot(theta,r1,'k-d')

subplot(2,2,2)
polarplot(theta,r2,'g-s')

subplot(2,2,3)
polarplot(theta,r3,'c-o')

subplot(2,2,4)
polarplot(theta,r4,'r-*')

