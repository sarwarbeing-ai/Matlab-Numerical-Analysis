
% you can use dsolve to solve  the system of ordinary differential equations
syms v(t) x(t) % symbolic functions

% to solve using dsolve do the follwings:
% 1. define symbolic functions
% 2.use diff command to reperesnt ode
% 3. use == operator to define ode
% 4. put differential of v and x into a vector
% 5. use initial conditions

ode_v=diff(v,t)==(0.5*1.2*0.71*v.^2)/1100;
ode_x=diff(x,t)==v;

cond_v=v(0)==0;
cond_x=x(0)==0;

% wrapp both differential equation into  vector
ode=[ode_v;ode_x];

% similarly the condition vector
cond=[cond_v;cond_x];

% solve the differential equations

sol=dsolve(ode,cond);

% extract the v and x part from respectively

v(t)=sol.v;
x(t)=sol.x;

% plotting time
t=0:0.1:20;

v=v(t);
x=x(t);

plot(t,v,'-b',t,x,'-g')

title("The velocity and distance in terms of time")
xlabel("time in second")
ylabel(" Values of v(t) and x(t)")
legend('Velocity with respect to time','Distance with respect to time')

