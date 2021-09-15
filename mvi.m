x=1.2;
hold on;
for k=1:32
    y=x*sin(x-k*pi/8);
    set(hplot1,'YData',y);
    M(k)=getframe;
    
end
hold off;
Movie(M,4,24)
