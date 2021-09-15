rng(1);

x = 10 * rand(1,1000) - 5;
y = 10 * rand(1,1000) - 5;

% Note you can't add numbers to an empty vector
% adding number to an empty vector will lead to an empty vector
% after all b,h,c,m are counts
% therefore initialize with zero
b =0;
h = 0;
c = 0;
m = 0;

i = 1;
n = length(x);

p03 = figure;
hold on;

% Note: The legend is used inside the loop as
% if you use legend at the outside of the loop then the legend of last
% plot(Miss)
% will be shown only
while(i <= n)
d = sqrt(x(i)^2 + y(i)^2);
% p03a data
if d <= 1.0
b = b + i;
% use [] for concatenation of strings
p = plot(x(i),y(i),'DisplayName',['Bullseye ',num2str(b)]);
p.Marker = 'o';
p.MarkerFaceColor = [ 1 0 0 ];
p.MarkerEdgeColor = [ 0 0 0 ];

% p03b data
elseif d <= 2.0
h = h + i;
p = plot(x(i),y(i),'DisplayName',['Hit ',num2str(h)]);
p.Marker = 'o';
p.MarkerFaceColor = [ 0 1 0 ];
p.MarkerEdgeColor = [ 0 0 0 ];

% p03c data
elseif d <= 3.0
c = c + i;
p = plot(x(i),y(i),'DisplayName',['Close ',num2str(c)]);
p.Marker = 'o';
p.MarkerFaceColor = [ 0 0 1 ];
p.MarkerEdgeColor = [ 0 0 0 ];

% p03d data
else
m = m + i;
p = plot(x(i),y(i),'DisplayName',['Miss ',num2str(m)]);
p.Marker = 'o';
p.MarkerFaceColor = [ 1 1 0 ];
p.MarkerEdgeColor = [ 0 0 0 ];

end
i = i + 1;

% to show changes in each iteration use legend('off')
% if you won't do this on every iteration the legend will be plotted for
% every iteration
%legend('show')
pause(0.002); % pause for 2 miliseconds
legend('off')
end

% finally when loop overs show the legend
legend('show') % display the legend

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
t.FontSize = 12;
t.FontWeight = 'bold';

title("p03 Your name") % chnage Your name

% save the image
saveas(p03,'lab06p03.png')
hold off
