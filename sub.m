x=0:9;y=[4 6.10 8.30 9.90 12.00 14.30 15.70 17.40 19.80 22.30]; % vector x and y
y2=2*x.^2;y3=y.^3;

% first subplot
% syntax: subplot(row,col,index) where row is the number of rows
% col is the number of columns and index is the index of the current axe
subplot(1,3,1) 
plot(x,y,'ro');hold on ;xlabel("x axis");ylabel("y axis");title("plot1");hold off;

% plot 2
subplot(1,3,2)
plot(x,y2,'b*');hold on ;xlabel("x axis");ylabel("y axis");title("plot2");hold off;


% plot3
subplot(1,3,3)
plot(x,y2,'k');hold on ;xlabel("x axis");ylabel("y axis");title("plot3");hold off;
