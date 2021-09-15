% generate the vector x with increment 0.1
x=0:0.1:15;
w=15; % omega
y=exp(-0.7*x).*sin(w*x); % .* element by element multiplication
                         % this is called vectorized implementation
                         
% plot
plot(x,y,'-r') % red solid line
xlabel("x")
ylabel("y")
title("y(x)=exp(-0.7*x)*sin(w*x)")
