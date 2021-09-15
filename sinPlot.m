% define the vector x to plot the graphs
x=0:0.1:6; % vector from 0 to 6.5 with step size 0.1

hold on
plot(x,sin(exp(x)),':^r') % red dotted line with triangle marker 
plot(x,sin(x+2*pi/3),'xb') % blue vertical line
plot(x,sin(x-2*pi/3),'--ok') % dashed black line with circle marker
axis on
grid off
hold off

