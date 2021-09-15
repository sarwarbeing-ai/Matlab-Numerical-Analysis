
function I=sinx2int(a,b,n)
% a and b are lower and upper limit of the
% integral such that a<b
% n is the number of samples in monte carlo simulation
% procedure:
% monte carlo integration
% I=(sum(sin(xi^2))/n)*dx where where xi's are uniformly distributed random
% numbers in the interval [a,b]
% dx=b-a
% sum goes from i=1 to n

% check if a>b
if a>b
    error("a must be less than b")
end

dx=(b-a);

% draw n uniformly random samples in the interval [a,b]
% rand() function draws random numbers in the interval [0,1]
% so in order to draw samples in the interval [a,b]
% use a+(b-a)*rand(1,n)
samples=a+(b-a)*rand(1,n); 

% evaluate function value at all the samples
fval=sin(samples.^2); % .^ element by element power

% integration
I=dx*sum(fval)/n;
end

