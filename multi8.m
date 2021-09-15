N=8; % number of times the figure 8 will be plot
r=0.25; % maximum radius
figure; % create a figure
hold on
for i=1:N
    t=-2*pi:0.1:2*pi; % here -2*pi to 2*pi taken as to plot the left side and side of the figure 8 from center
    
    th=i*2*pi/N; % theta value
    
    TT=[cos(th),-sin(th),r*cos(th);sin(th),cos(th),r*sin(-th);0,0,1]; % transformation matrix
    
   x=2*cos(t*2*pi/N); % the parametric x vector of figure 8 with phi=2*pi/N which is the phase
   
   y=sin(t*2*2*pi/N); % similarly the parametric y-vector
   ne=ones(1,length(t)); % vector ones of the same length as t
   mat=[x;y;ne]; % matrix where first row is the x-vector and the second is the y-vector and third row is the vector with ones
   V=TT*mat; %vector x and y are transformed
   Y=V(2,:); % the transformed Y vector
   X=V(1,:); % the transformed X vector
   
   plot(X,Y,'o','MarkerSize',10)
   % used to have waiting time of 1 second between successive plots ,it is used to make code less verbose otherwise 
   % you have to use plot command as many times as N
   pause(1); 
    
end
title("The plot of the figure 8 repeated 8 times")
hold off