
% Note: symbolic package has been used here
syms x % define x as symbol

% define f
f(x)=atan(x/2); % atan is the inverse of tan 

g=diff(f,x); % derivative of f with respect to x

% part i))
slope=eval(g(3)); % g(3) will return a symbolic value ,to convert into floating
                  % point representation use eval 
disp(['Slope of the trangent is ',num2str(slope)]) % [] use for concatenation of strings
                                                   % num2str() converts number to string
                                                   
                                                   
% part ii))
% slope of the normal is nothing but -1/slope of the tangent

slope_normal=-1/slope;
disp(['Slope of the normal is ',num2str(slope_normal)])



% part iii))

% get the y value at x=3
y0=eval(f(3));
% equation of the normal is y-y0=slope_normal*(x-x0) where x0=3 and f(x0)=y0
% y=y0+slope_normal*(x-x0)
x0=3;

eqnn(x)=y0+slope_normal*(x-x0); % NORMAL EQUATION


% equation of the tangent
eqnt(x)=y0+slope*(x-x0);


% iv))
% take a vector x from -20 to 20 to plot f
x=linspace(-20,20,100); % eqaully spaced 100 points from -20 to 20

% evaluate f
y=eval(f(x));

% evaluate normal equation at x=-5,5
n1=eval(eqnn(-5));
n2=eval(eqnn(5));

% similarly evluate tangent eqation at x=-5,5
tangent1=eval(eqnt(-5));
tangent2=eval(eqnt(5));

hold on
plot(x,y,'-r');
plot([-5,5],[n1,n2],'-g')
plot([-5,5],[tangent1,tangent2],'-b')

% ste the x-axis and y-axis limit to have a good looking plot
xlim([-20 20]) 
ylim([min(y) max(y)])
legend("f(x)","normal","tangent") % annotate the graphs
hold off


