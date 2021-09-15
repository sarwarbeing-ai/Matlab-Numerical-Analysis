% demonstration
R=5; % sphere radius
r=2; % hole radius
[V,A]=SphereVA(R);
disp(['The volume of the sphere is ',num2str(V)])
disp(['The area of the sphere is ',num2str(A)])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
V=Donut(r,R);
disp(['The volume of the donut is ',num2str(V)])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [V,A]=SphereVA(r)
% r is the radius of a sphere
% V and A are the volume and surface area of a sphere

% .^ and ./ are element by element power and division
% this is very helpful if r is a vector then A and V will also be
% vectors
% if r is a scalar then V and A will also be a scalar
% this is called vectorized solution
% it handles both vector as well as scalar
% find the volume
V=4*pi*r.^3./3;

% surface area
A=4*pi*r.^2;

end


% define the function Donut
function V=Donut(r,R)
% r is the radius of the cylindrical hole
% R is the radius of the sphere
% V is the volume of the portion obtained after having a cylindrical
% hole on the sphere

% the volume of the cylinder is pi*r^2*h where h is the height of the cylinder
% so what would be the height of the cylinder,it is nothing but twice of
% R because the drilled was done through the sphere

% handle the case  if r>R
% if r>R , then hole will engulf the sphere so it will defeat the purpose of
% making a donut, therefore tell the user that they should provide the
% radius should be less than R
if r>R
    % using the function error() rest of the code of this function will not
    % be evaluated,it will halt the execution of the program
    error("The hole radius must be less than the sphere radius")
end

% find the volume of donut
% the volume of the donut is nothing but the volume of the sphere minus the
% volume of the cylinder
h=2*R;
V=4*pi*R.^3/3-pi*r.^2.*h;
end