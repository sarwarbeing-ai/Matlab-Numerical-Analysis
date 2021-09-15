% plot the function
function poly_plot()
    
 x=-5:0.5:50; %step size is 0.5
 
y=x.^3-x.^2-x-1;

plot(x,y,"-r")

xlim([-5 50])
xlabel("x")
ylabel("y")

end