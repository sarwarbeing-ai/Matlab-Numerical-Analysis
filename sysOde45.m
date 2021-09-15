% x''+c*x'+k*x=0.....second order differential eqaution
% Convert the ode into two first order odes as follows:
% let f1=x
% f2=x'

% then f2'=x''

% now put the value of x,x',x'' in the second order ode ,obtained
% f2'+c*f2+k*f1=0
% f2'=-c*f2-k*f1

% putting everything together ,obtained
% f1'=f2 as f1'=x'=f2
% f2'=-c*f2-k*f1

% initial conditions
% f1(0)=5
% f2(0)=-1

% part 1))
% define the function handle shm as a column vector 
shm=@(t,f,c,k) [f(2);-c*f(2)-k*f(1)]; % this is also called a parameterized 
% function with parameters c and k


% part 2))
% define the initial conditions
f0=[5;-1];

tspan=[0,10];


% part 3))
hold on % to plot multiple graphs on the same plot
for c=[1,2]
    for k=[1,2,3]
        
        % Note: ode45 function accepts function with only two arguments
        % namely t and f
        % so what to do on c and k
        % follow the procedure:
        % there are two ways :
        % 1. pass @(t,f) shm(t,f,c,k)  to the function ode45 
        % 2. create another function handle and pass to the ode45 function
        % shm1=@(t,f) shm(t,f,c,k)  this is a function of two arguments
        % only
        % We will use 1
        
        [t,f]=ode45(@(t,f)shm(t,f,c,k),tspan,f0);
        
        % get the solution for x
        % since f1=x and f(:,1)=f1 as f is a matrix which has two columns
        % ,first one corresponds to f1 and second one corresponds to f2
        
        x=f(:,1);
        
        % plot
        plot(t,x)
        
    end
end

legend("c=1,k=1","c=1,k=2","c=1,k=3","c=2,k=1","c=2,k=2","c=2,k=3") % annotate the plot with legend

title("Damped Single Harmonic Motion")
xlabel("t[s]")
ylabel("x[m]")

hold off % detach from the plot



