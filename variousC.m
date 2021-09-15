% create a vector of t values
t=linspace(0.2,10,100); % 100 equally spaced points from 0.2 to 10
c1=0.6;
c2=0.7;
c3=1.3;
c4=8.7;
alpha=0.5;

% y values for different value of c
y1=C(t,alpha,c1);
y2=C(t,alpha,c2);
y3=C(t,alpha,c3);
y4=C(t,alpha,c4);

% plotting everything on the same figure
hold on
plot(t,y1,'-r')
plot(t,y2,'-g')
plot(t,y3,'-b')
plot(t,y4,'-m')
legend("c1=0.6","c2=0.7","c3=1.3","c4=8.7") % text corresponding to each plot
hold off

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% to get the plot of y 
% you need range of values for t,alpha value and c1 value
% define a function called C
function y=C(t,alpha,c1)
  % it takes three arguments
  % t is a vector,alpha is a scalar such that 0<alpha<1
  % and c1 any real value 
  
  % check if value of t are all positive
  if ~all(t>0) % if not
    error(" t values must be positive")
  end
  
  % check if alpha is in (0,1)
  if alpha<0 || alpha>1
    error("alpha must be in the range (0,1) excluding both ends")
  end
  
  % get the value of y
  y=c1*t.^(alpha-1)./gamma(alpha); % .^ element by element by power
                                   % ./ element by elment division
end

