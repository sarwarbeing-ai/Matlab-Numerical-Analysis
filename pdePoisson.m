% part i))
% define f and g as function handles
f=@(x,y) 4*pi*cos(pi*(x.^2+y.^2));
g=@(x,y) 4*pi*(x.^2+y.^2);

% define bx0,bxf,by0,byf as function handles
bx0=@(y) sin(pi*y.^2);
bxf=@(y) sin(pi*(y.^2+1));

by0=@(x) sin(pi*x.^2);
byf=@(x) sin(pi*(x.^2+1));

% define Mx and My
Mx=10;
My=10;

D=[0,1,0,1]; % 0<=x<=1 and 0<=y<=1

tol=10^-6; % tolerance

MaxIter=100; % maximum iterations

% get the solution
[u1,x1,y1] = poisson(f,g,bx0,bxf,by0,byf,D,Mx,My,tol,MaxIter);
figure;
plot3(x1,y1,u1)
xlabel("x")
ylabel("y")
zlabel("u")


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% part ii))
% change Mx and My
Mx=40;
My=40;
[u2,x2,y2] = poisson(f,g,bx0,bxf,by0,byf,D,Mx,My,tol,MaxIter);
figure;
plot3(x2,y2,u2)
xlabel("x")
ylabel("y")
zlabel("u")




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function [u,x,y] = poisson(f,g,bx0,bxf,by0,byf,D,Mx,My,tol,MaxIter)
%solve u_xx + u_yy + g(x,y)u = f(x,y)
% over the region D = [x0,xf,y0,yf] = {(x,y) |x0 <= x <= xf, y0 <= y <= yf}
% with the boundary Conditions:
% u(x0,y) = bx0(y), u(xf,y) = bxf(y)
% u(x,y0) = by0(x), u(x,yf) = byf(x)
% Mx = # of subintervals along x axis
% My = # of subintervals along y axis
% tol : error tolerance
% MaxIter: the maximum # of iterations
x0 = D(1); xf = D(2); y0 = D(3); yf = D(4);
dx = (xf - x0)/Mx; x = x0 + (0:Mx)*dx;
dy = (yf - y0)/My; y = y0 + (0:My)'*dy;
Mx1 = Mx + 1; My1 = My + 1;
%Boundary conditions

for m = 1:My1
    u(m,[1 Mx1])=[bx0(y(m)) bxf(y(m))]; 
end %left/right side

for n = 1:Mx1
    u([1 My1],n) = [by0(x(n)); byf(x(n))]; 
end %bottom/top

%initialize as the average of boundary values
sum_of_bv = sum(sum([u(2:My,[1 Mx1]) u([1 My1],2:Mx)']));
u(2:My,2:Mx) = sum_of_bv/(2*(Mx + My - 2));

for i = 1:My
    for j = 1:Mx
        F(i,j) = f(x(j),y(i)); G(i,j) = g(x(j),y(i));
    end
end
dx2 = dx*dx; dy2 = dy*dy; dxy2 = 2*(dx2 + dy2);
rx = dx2/dxy2; ry = dy2/dxy2; rxy = rx*dy2;

for itr = 1:MaxIter
     for j = 2:Mx
         for i = 2:My
              u(i,j) = ry*(u(i,j + 1)+u(i,j - 1)) + rx*(u(i + 1,j)+u(i - 1,j))...
              + rxy*(G(i,j)*u(i,j)- F(i,j)); %Eq.(9.1.5a)
          end
     end
if itr > 1 && max(max(abs(u - u0))) < tol
    break; 
end
   u0 = u;
end
end
