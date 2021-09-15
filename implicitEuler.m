% define the system of odes in vector form using function handle @
f=@(t,x) [1999*x(1)+2999*x(2),-2000*x(1)-3000*x(2)];

% step size
h=0.02;
t=0:h:0.2;

% define a matrix x of order (length(t)+1)*2
% where first column corresponds to x1 and second column corresponds to x2
x=zeros(length(t)+1,2);

% store the intial solution of x1 and x2 in x
x(1,:)=[1,1];
for i=1:length(t)
    
    % implicit euler's method
    next_sol=x(i,:)+h*f(t(i),x(i,:));
    
    % store the next solution in x
    % this is the solution at t(i+1)
    x(i+1,:)=next_sol;
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% plotting time
hold on
% since the for loop calculating an extra solution 
% namely at i=length(t)+1 the solution is x(length(t)+1,:)
% but you need to plot the solution from x(1,:) to x(length(t),:)

% therefore you need to drop that solution for plot
plot(t,x(1:length(t),1),'-r','LineWidth',1.2) % plot for x1
plot(t,x(1:length(t),2),'-g','LineWidth',1.2) % plot for x2
legend("x1","x2",'Location',"north")
hold off
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
