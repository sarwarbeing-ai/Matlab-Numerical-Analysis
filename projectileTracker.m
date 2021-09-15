function[yPosition,percentOfRange]=projectileTracker(v0,theta,y0,x)

% Instead of using sin you can use sind
% where sind evaluates on value given in degree
% similarly tand
% If you want you can convert theta to radian and then use sin,tan,cos
% instead of using sind,tand
% Formula: radian=deg*pi/180

g=9.81; % 

% caluculate yPosition
yPosition=x*tand(theta)-(1/2)*x^2*g/((v0*cosd(theta))^2)+y0;

% calculate d
d=(v0*cosd(theta)/g)*(v0*sind(theta)+sqrt((v0*sind(theta))^2+2*g*y0));

% percentage of the range that the projectile has traveled
percentOfRange=(x/d)*100;
end
