function [maxH,Timpact]=Projectile(v0,theta,y0)
    % v0 is the initial velocity
    % theta is the launch angle(in degrees)
    % y0 is the initial height
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % check if the function has 3 input arguments
    if nargin<3
        error("The thee input arguments are required")
    end
    
    % check for the validity of the input arguments
    if v0<0 || y0<0
        error("The initial velocity and the initial height should be non-negative")

    end
    if theta<0 || theta>90
        error("The launch angle must be between 0 and 90")
    end
    g=9.81; % acceleration due to gravity
    % convert the launch angle into radians
    theta=pi*theta/180;
    
    % first find the Tmax
    Tmax=v0*sin(theta)/g;
    
    % maximum height
    maxH=-g*Tmax^2/2+v0*sin(theta)*Tmax+y0;
    
    % impact time
    Timpact=v0*sin(theta)/g +sqrt((v0*sin(theta))^2+2*g*y0)/g;
    
    
    % 1-D array from 0 to Timpact
    arr_time=0:0.1:Timpact; % create vector with step size 0.1
    
    % projectile height array
    pro_arr=zeros(1,length(arr_time));
    
    for i=1:length(arr_time)
        pro_arr(i)=-g*arr_time(i)^2/2+v0*sin(theta)*arr_time(i)+y0;
    end
    
    % plotting time    
    plot(arr_time(1),pro_arr(1),'bo','MarkerSize',10,'MarkerFaceColor','r')
    xlabel("Time in seconds") % change x label
    ylabel("Height in meter") % change y label
    title("The projectile curve")
    xlim([0 Timpact]) % limit of x-axis
    ylim([0 maxH]) % limit of the y-axis
    hold on
    for i=2:length(arr_time)
        plot(arr_time(i),pro_arr(i),'bo')
        pause(1) % pause for 1 second
    end
    hold off
     
end