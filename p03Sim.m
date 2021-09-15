rng(1);

x = 10 * rand(1,1000) - 5;
y = 10 * rand(1,1000) - 5;

b = [];
h = [];
c = [];
m = [];

i = 1;
n = length(x);

p03 = figure;
hold on;

while(i <= n)
d = sqrt(x(i)^2 + y(i)^2);
% p03a data
if d <= 1.0
b = b + i;
p = plot(x(i),y(i));
p.Marker = 'o';
p.MarkerFaceColor = [ 1 0 0 ];
p.MarkerEdgeColor = [ 0 0 0 ];

% p03b data
elseif d <= 2.0
h = h + i;
p = plot(x(i),y(i));
p.Marker = 'o';
p.MarkerFaceColor = [ 0 1 0 ];
p.MarkerEdgeColor = [ 0 0 0 ];

% p03c data
elseif d <= 3.0
c = c + i;
p = plot(x(i),y(i));
p.Marker = 'o';
p.MarkerFaceColor = [ 0 0 1 ];
p.MarkerEdgeColor = [ 0 0 0 ];

% p03d data
else
m = m + i;
p = plot(x(i),y(i));
p.Marker = 'o';
p.MarkerFaceColor = [ 1 1 0 ];
p.MarkerEdgeColor = [ 0 0 0 ];

end
i = i + 1;
end

% target circles
r1 = 1;
x0 = 0;
y0 = 0;
theta = linspace(0,2*pi,100);
plot(x0 + r1*cos(theta),y0 + r1*sin(theta),'-r')

r2 = 2;
x0 = 0;
y0 = 0;
theta = linspace(0,2*pi,100);
plot(x0 + r2*cos(theta),y0 + r2*sin(theta),'-g')

r3 = 3;
x0 = 0;
y0 = 0;
theta = linspace(0,2*pi,100);
plot(x0 + r3*cos(theta),y0 + r3*sin(theta),'-b')

% axis
ax = gca;
ax.DataAspectRatio = [1 1 1];
ax.XLim = [ -5 5 ];
ax.YLim = [ -5 5 ];
ax.XTick = -5:1:5;
ax.YTick = -5:1:5;
t = text;
t.Position = [ -2 4 0 ];
t.String = 'Target Practice';
t.FontSize = 16;
t.FontWeight = 'bold';

% How to solve the following?
% legend = ?
% p03a = ?
% p03b = ?
% p03c = ?
% p03d = ?