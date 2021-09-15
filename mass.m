clear

format long;

format compact

hold off

g=9.81;c=16;v=36;t=7;%8e

f=@(m) g*m/c.*(1-exp(-c./m*t))-v;

[ma fmass]=fzero(f,60); 
xmin = 60;

xmax =90;

x = linspace(xmin,xmax,200);

y = f(x);

set(gcf,'Position',[400 400 800 400])

plot(x,y)

hold on

plot(ma,0,'mo','MarkerFaceColor','m')

set(gca, 'XAxisLocation','origin','YAxisLocation','origin','XMinorTick','on');

xlabel('mass, m (kg) \rightarrow')

ylabel('f(x) \rightarrow')

title('Graphical root finding f(x) = gm/c*(1 - e^{-c/m*t}) - v')

shg

saveas(gcf,'ch7p11.jpg')