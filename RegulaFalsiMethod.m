% define the equation ln(x^2)-0.75=0 as function handle
f=@(x) log(x.^2)-0.75;

% create a vector to plot f
x=linspace(0.5,4,100); % equally spaced 100 points from 0.5 to 4

% part a))
plot(x,f(x),'-r')


% part b))
% three iterations of bisection method
xl=0.5; % initial lower limit of the interval
xu=2; % upper limit

% necessary condtion for bisection method to work
if f(xl)*f(xu)>=0
    error("Initial end points of the interval must satisfy f(a)*f(b)<0")
end

for i=1:3
    c=(xl+xu)/2; % get the midpoint of xu and xl
    
    % check if the sign of f(xl) is same as sign of f(c)
    if sign(f(c))==sign(f(xl)) % i.e f(xl)*f(c)>0
        xl=c; % change the lower limit to c,so the new interval becomes [c,xu]
    else
        xu=c;  % change xu to c,new interval is [xl,c]
    end
end


disp(['root obtained using bisection method is ',num2str(c)])



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% part c)) Regula Falsi method(aka false position method)
xl=0.5;
xu=2;

% necessary condtion for False Position method to work
if f(xl)*f(xu)>=0
    error("Initial end points of the interval must satisfy f(a)*f(b)<0")
end


for i=1:3
    xns=(xl*f(xu)-xu*f(xl))/(f(xu)-f(xl)); % estimate of the root
    
    % check if the sign of f(xl) is same as sign of f(xns)
    if sign(f(c))==sign(f(xl)) % i.e f(xl)*f(xns)>0
        xl=xns; % change the lower limit to xns,so the new interval becomes [xns,xu]
    else
        xu=xns;  % change xu to c,new interval is [xl,xns]
    end
    
end

disp(['root obtained using false position method is ',num2str(xns)])
