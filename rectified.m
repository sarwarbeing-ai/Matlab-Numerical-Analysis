x=-2:0.2:2; %x vector with step size 0.2
%you can change the step size as you wish
T=1;
 

%2 terms of the fourier series


y_2=(1/pi)+sin(2*pi*x/T)/2;

%3 terms

y_3=(1/pi)+(sin(2*pi*x/T)/2) - (2*cos(2*2*pi*x/T)/(pi*(2*2-1)));

%4 terms

y_4=(1/pi)+(sin(2*pi*x/T)/2) - (2*cos(2*2*pi*x/T)/(pi*(2*2-1)))-(2*cos(4*2*pi*x/T)/(pi*(4*4-1)));


%plot

hold on
%'-r'  is a solid line with red color
 %'-b'  is a solid line with blue color
%'-k'  is a solid line with black color

plot(x,y_2,'-r','LineWidth',1.5)
plot(x,y_3,'-b','LineWidth',1.5)
plot(x,y_4,'-k','LineWidth',1.5)
xlim([-2 2])
ylim([-0.2 1.4])

xlabel("x")
ylabel("rectified sine wave value")
title("Construction of rectified sinewave")
legend("First 2 terms","First 3 terms","First 4 terms")
grid on % to have grid on the plot

hold off

