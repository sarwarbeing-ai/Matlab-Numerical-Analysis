% define the sigmoid function as function handle
f=@(x,a) 1./(1+exp(-a*x)); % there is a mistake the sigmoid function is 1/(1+exp(-z))

% create a vector for x values
x=linspace(-25,25,100); % 100 equally spaced points from -25 to 25

% now plot
hold on % to plot mulitple graphs
a=2;
plot(x,f(x,a),'-.r') % red dashed dotted line

a=1;
plot(x,f(x,a),'-g') % green solid line

a=0.5;
plot(x,f(x,a),'-.+b')% blue dashed dotted with plus marker

a=0.25;
plot(x,f(x,a),'-.om') % magenta dashed dotted line with circle marker

xlabel('x')
ylabel('1/(1+exp(-ax))')
legend('a=2','a=1','a=0.5','a=0.25','Interpretor','latex')
xlim([-25 25])
title('Sigmoid Plot')
grid on
hold off
