function VDPDemo(mu)
% solve an ODE using Runge-Kutta 4/5:
[t,X]=ode45(@dXdt, [0,100],[0:1]);
% plot the resulting phase plane trajectory:
plot(X(:,1),X(:,2))
% Here we define the derivative function.
% By nesting this function inside the main one, we get access to the
% variable mu, defined in the outer function
function dX=dXdt(t,X)
x=X(1);
v=X(2);
dx=v;
dv=-x+mu*(1-x^2)*v;
dX=[dx; dv];
end % of dxdtg
end % of VDPDemo
% Were the function dXdt defined here, (after the end keyword that closes
% the VDPDemo function) the variable mu would be undefined and the code
% would not run.
