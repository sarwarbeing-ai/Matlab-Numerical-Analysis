function I=midpoint(a,b,n,f)
% find integral of f in the interval [a,b] with n equally width sub-intervals
% unifromly partitioned the interval [ab]
% f is a function handle(should be implemented in vectorize way)
% eg: f=@(x) x.^2; % .^ is the element by element power

% find deltax
h=(b-a)/n; % step size

% modpoints
% in order to have n sub-intervals you need to have n+1 points
vec=linspace(a,b,n+1); % equally spaced n+1  points(uniform) from a to b

% now find the midpoints of all the points in the vector vec
midpoints=zeros(1,n); % initialize with zeros ,will be filled later

for i=1:n
    midpoints(i)=(vec(i)+vec(i+1))/2;
end


% get the rectangle heights
heights=f(midpoints);

% get the area of each rectangle
areas=h*heights;

% get the integral value
I=sum(areas);
end