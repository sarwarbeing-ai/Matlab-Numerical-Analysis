% create a vector x with step size 0.1
x=0:0.1:1;
 
% Note why x was created?
% Answer: if you want you can use 0:0.1:8*pi
% but the last point of the vector would be different from
% 8*pi as due to numerical precision of pi

% now create the vector t
t=8*pi*x; % just multiply by 8*pi

% ./ element by element division
y1=(sin(0.4*t)+sin(1.6*t))./(2*sin(t));


y2=cos(0.6*t);

% simultaneous plot
plot(t,y1,t,y2)
legend('(sin(0.4*t)+sin(1.6*t))./(2*sin(t))','cos(0.6*t)')


