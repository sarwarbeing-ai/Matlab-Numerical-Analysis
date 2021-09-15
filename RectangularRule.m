% Rectangular rule also known as Midpoint rule
% calculate integral values for different N
N=[5,10,20,50,100,200,500,1000];

% part b))
% define the function f as function handle
f=@(x) exp(-x)./sqrt(x); % ./ element by element division

% limits of the integral
a=0;
b=1;

Int_b=zeros(1,length(N)); % will store the integral values
for i=1:length(N)
    
    I=rectangularInt(a,b,N(i),f); % function rectangularInt
    
    % store the integral value into Int_b
    Int_b(i)=I;
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% part c))
% change of variable x=t^2
% dx=2*tdt
% the integral becomes exp(-t^2)/t and limits are a=0 and b=1
% define the fucntion obtained through change of variable
g=@(t) exp(-t.^2)./t;
a=0;
b=1;

Int_c=zeros(1,length(N)); % will store the integral values
for i=1:length(N)
    
    I=rectangularInt(a,b,N(i),g); % function rectangularInt
    
    % store the integral value into Int_b
    Int_c(i)=I;
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% exact solution obtained through wolframalpha
exact=1.4936482656248540507989348722;

% absolute error for part b))
error_b=abs(exact-Int_b);

% error part c))
error_c=abs(exact-Int_c);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% plotting time
plot(N,error_b,'-r',N,error_c,'-g')
xlabel("No of Panels",'Fontsize',15)
ylabel("Absolute error","FontSize",15)
title("Absolute Integration error of exp(-x)/sqrt(x) in [0,1]")
legend("Without Change of variable","With change of variable")

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function I=rectangularInt(a,b,n,f)
% find integral of f in the interval [a,b] with n equally width rectangles
% f is a function handle


% find deltax(step size)
deltax=(b-a)/n;

% modpoints
% in order to have n ractanges(panels) you need to have n+1 points
vec=linspace(a,b,n+1); % equally spaced points

% now find the midpoints of all the points in the vector vec
midpoints=zeros(1,n); % initialize with zeros ,will be filled later
for i=1:n
    midpoints(i)=(vec(i)+vec(i+1))/2;
end


% get the rectangle(panel) heights
heights=f(midpoints);

% get the area of each rectangle
areas=deltax*heights;

% get the integral value
I=sum(areas);
end