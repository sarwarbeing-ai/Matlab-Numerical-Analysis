% define f as function handle
f=@(x) exp(-0.5*x).*(4-x)-2; % .* is the element by element multiplication

% define the derivative of f as function handle
df=@(x) -exp(-0.5*x)-0.5*exp(-0.5*x).*(4-x); % derivative of 
                                          % d(u(x)v(x))=u(x)*d(v(x))+v(x)*d(u(x))
                                          % here u(x)=exp(-0.5*x) and
                                          % v(x)=4-x
                                          
maxIter=50;
x0=2;
root1=newton(f,df,x0,maxIter);
disp(['root=',num2str(root1),' with x0=',num2str(x0)])

x0=4;
root2=newton(f,df,x0,maxIter);

disp(['root=',num2str(root2),' with x0=',num2str(x0)])


x0=6;
root3=newton(f,df,x0,maxIter);
disp(['root=',num2str(root3),' with x0=',num2str(x0)])


x0=8;
root4=newton(f,df,x0,maxIter);

disp(['root=',num2str(root4),' with x0=',num2str(x0)])


% plot the function
x=-10:0.1:20; % vector from -10 to 20 with step size 0.1,taken to plot the function f

hold on
plot(x,f(x),'-r')
plot(root1,f(root1),'.g','MarkerSize',15) % mark the root1

plot(root2,f(root2),'.b','MarkerSize',15) % mark the root2

plot(root3,f(root3),'.m','MarkerSize',15) % mark the root3

plot(root4,f(root4),'.k','MarkerSize',15) % mark the root4

xlabel("x")
ylabel("f(x)")
legend("f(x)","root with x0=2","root with x0=4","root with x0=6","root with x0=8",'Interpreter','latex') % annotate the graph and roots

hold off

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% define a function called newton
function root=newton(f,df,x0,maxIter)
    % input:
    % f: function handle
    % df: function handle,derivative of f
    % x0: is the initial guess
    % maxIter:maximum iterations allowed
   
    %output:
    % root of the function f
   
for i=1:maxIter
   
    x=x0-f(x0)/df(x0); %newton's formula,get next root approximation
   
 
   x0=x; % update the initial guess for the next iteration
end
root=x0; % return the root
end
