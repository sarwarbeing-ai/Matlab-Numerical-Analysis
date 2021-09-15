% let f1=h
%f2=dh/dv
% then f1'=h'=f2

% now f2'=d^2h/dv^2=h''
% from the second order ode,obtained
% 5*f2'=-3*f1^2*f2
% f2'=-3*f1*f2/5
% hence
% f1'=f2
% f2'=-3*f1*f2/5



% define the anonymous function diffeq
% as f(2)=f2 and f(1)=f1 ,f2 is the right hand side of f1' and 
% -3*f(1)^2*f(2)/5 is the right hand side of f2'
diffeq=@(v,f) [f(2); -3*f(1)^2*f(2)/5]; 

% define the initial conditions
vspan=[-2,2];
f0=[-1;1]; % as f1=h and f2=dh/dv

% find the solution of the ode
% here f is a matrix of order length(vspan)*2
% first column of f corresponds to the solution of f1 i.e h
% second column corresponds to the solution f2

[v,f]=ode45(diffeq,vspan,f0); 


% plot
plot(v,f(:,1),'-r')
xlabel("v")
ylabel("h")
title("solution of the ode 3h^2dh/dv+5d^2h/dv^2")
