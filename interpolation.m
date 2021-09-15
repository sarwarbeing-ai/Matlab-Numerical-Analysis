function y = hitTheSpot(v0,theta)
Cd = 0.5;
dxdt = @(t,x) [x(3:4);(-1/2*1*pi*(0.1^2)*Cd*norm(x(3:4))*x(3:4)-[0;9.81])];
if size(v0) == size(theta)
[m,n] = size(v0);
y = zeros(m,n);
for i = 1:m
for j = 1:n
[t,x] = ode45(dxdt,[0,2*v0(i,j)*sind(theta(i,j))/9.81],[0;0;v0(i,j)*cosd(theta(i,j));v0(i,j)*sind(theta(i,j))]);
% figure
% plot(x(:,1),x(:,2))
% hold on
% plot(v0*cosd(theta)*t,v0*sind(theta)*t-1/2*9.81*t.^2)
% set(gca,'ylim',[0,inf])
[~,b] = max(x(:,2));
y(i,j) = interp1(x(b:end,2),x(b:end,1),0,'pchip');
end
end
elseif size(v0) == [1,1]
[m,n] = size(theta);
y = zeros(m,n);
for i = 1:m
for j = 1:n
[t,x] = ode45(dxdt,[0,2*v0*sind(theta(i,j))/9.81],[0;0;v0*cosd(theta(i,j));v0*sind(theta(i,j))]);
% figure
% plot(x(:,1),x(:,2))
% hold on
% plot(v0*cosd(theta)*t,v0*sind(theta)*t-1/2*9.81*t.^2)
% set(gca,'ylim',[0,inf])
[~,b] = max(x(:,2));
y(i,j) = interp1(x(b:end,2),x(b:end,1),0,'pchip');
end
end
elseif size(theta) == [1,1]
[m,n] = size(v0);
y = zeros(m,n);
for i = 1:m
for j = 1:n
[t,x] = ode45(dxdt,[0,2*v0(i,j)*sind(theta)/9.81],[0;0;v0(i,j)*cosd(theta);v0(i,j)*sind(theta)]);
% figure
% plot(x(:,1),x(:,2))
% hold on
% plot(v0*cosd(theta)*t,v0*sind(theta)*t-1/2*9.81*t.^2)
% set(gca,'ylim',[0,inf])
[~,b] = max(x(:,2));
y(i,j) = interp1(x(b:end,2),x(b:end,1),0,'pchip');
end
end
end