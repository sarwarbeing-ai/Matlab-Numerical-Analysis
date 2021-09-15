% testing time
f=@(x,y) [y(2);-y(1)]; % ode function

x0=0;h=0.1;nsteps=100;y0=[1;0];

[x,y]=odeHeun(f,x0,h,nsteps,y0);

plot(x,y) % plot both the solution y1 and y2
legend({'$\mathbf{y}_1$','$\mathbf{y}_2$'},'Interpreter','latex','FontSize',16)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function [x,y]=odeHeun(f,x0,h,nsteps,y0)

% initialize the output solution arrays
m=length(y0);
x=zeros(1,nsteps+1);
y=zeros(m,nsteps+1);
x(1)=x0;
y(:,1)=y0;

% compute x and y
for i=1:nsteps
    % get the next x value
    x_next=x(i)+h;
    
    x(i+1)=x_next; % store the next value of x into the vector x
    
    % Heun's Method
    k1=f(x_next,y(:,i));
    k2=f(x_next+h,y(:,i)+k1*h);
    
    phi=(k1+k2)/2;
    
    y(:,i+1)=y(:,i)+phi*h;
end
end
