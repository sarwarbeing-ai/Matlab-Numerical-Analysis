
% approximate  integral with a=0 and b=2
a=0;
b=2;
f=@(x) sqrt(1+cos(x)^2); % function handle
sim=10000;% number of simulations

I=monteCarlo(f,a,b,sim);
disp('Monte Carlo Integration'),I



function I=monteCarlo(f,a,b,sim)
    % f is a function habdle
    % a and b are the lower and upper limit of the integrand
    % sim- number of simulations
    
total=0;
for i=1:sim
    x=a+(b-a)*rand;% uniform random number in [a,b)
    total=total+f(x);
end

I=(b-a)*total/sim; % monte Carlo integration
end