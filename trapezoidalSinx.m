format short
% creat vector x
x_dummy=linspace(0,1,1000); % first create vector from 0 to 1
x=pi*x_dummy;

y=sin(x);
area=mytrapz(x,y) % area under the curve sin(x)

% plotting time
p03=figure;

plot(x,y,'-g','LineWidth',2)




% fill the area with red color
fill(x,y,'r')

t = text; % plot text

t.Position = [ 0.2 0.5 0 ]; % x coordinate 0.5,y coordinate 0.5 and z coordinate 0
t.String = sprintf('Aprroximating Area by Trapezoids \nArea=%s',num2str(area));
t.FontSize = 14;

saveas(p03,'p03.svg')

hold off







function A=mytrapz(x,y)
% x and y are row vectors of xycoords

A=0; % initialize to zero

i=2; % start at 2 
while i<=length(x)
    
    % get b1
    b1=y(i-1);
    b2=y(i);
    h=x(i)-x(i-1);
    
    % area
    A=A+h*(b1+b2)/2;
    
    % increment i by 1
    i=i+1;

end
end
