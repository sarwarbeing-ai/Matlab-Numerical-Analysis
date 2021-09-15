t=linspace(0,600*10^(-6),50); % 52 data points as '110100' in decimal equal to 52

% generate the vectors x_1 to x_6
x_1=(pi*(t-0.00005))/10^(-4); 
x_2=(pi*(t-0.00015))/10^(-4); 
x_3=(pi*(t-0.00025))/10^(-4); 
x_4=(pi*(t-0.00035))/10^(-4); 
x_5=(pi*(t-0.00045))/10^(-4); 
x_6=(pi*(t-0.00055))/10^(-4); 

% now apply sinc to each x_1,x_2,---,x_6
% use function handle to define sinc
sinc=@(x) sin(x)./x; % ./ taken as x can be vector ,by doing this every element of sin(x) will be divided element wise

% find p1,p2,p3,---,p6
p1=sinc(x_1);
p2=sinc(x_2);
p3=sinc(x_3);
p4=sinc(x_4);
p5=sinc(x_5);
p6=sinc(x_6);

% evaluate s as sum of p1,p2,---,p6
s=p1+p2+p3+p4+p5+p6;


% plotting time
ax=figure;
plot(t,s,'-k','LineWidth',2)
title("The waveform corresponding to the data sequence '110100'")
xlabel("Time")
ylabel("Volts")
ax.XAxisLocation={'origin'};
grid on
