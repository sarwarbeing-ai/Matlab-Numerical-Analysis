

% deifne two vectors for t
t1=-4*pi:0.1:0;
t2=0:0.1:4*pi;

f1=@(t) cos(t).^2;
f2=@(t) sin(t).*cos(t);
f3=@(t) sin(t);

% plot 3D parametric curve
fplot3(f1,f2,f3,[-4*pi 0],'Color','r','Marker','*','MarkerSize',7)
hold on
fplot3(f1,f2,f3,t2,'-dk','LineWidth',1.2,'MarkerSize',7)
grid on
hold off




