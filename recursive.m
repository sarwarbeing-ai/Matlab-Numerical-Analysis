% Demosntration
clc;clear; % clear command window,workspace

% convert to integer otherwise Matlab stores everything as double 
vec1=int32([2 3 4]); 
prod=wrapProd(vec1)

vec2=int32([1 -2 5 8]);
prod=wrapProd(vec2)

vec3=[3.2 5];
prod=wrapProd(vec3)

vec4=[-2 0 3 pi];
prod=wrapProd(vec4)


% warpper function
function prod=wrapProd(vec)
% vec is a vector of integers
% prod is the product of the elements of the vector vec
if ~isinteger(vec)
    disp("Error:The vector is  not of integer type")
    prod='Error';
else
    prod=Prod(vec); % call the recursive function
end
end


% recursive function
function prod=Prod(vec)

% check if the vector vec has length 0
% base case
if isempty(vec)
    prod=1;
else
    % delete the first element from vec
    first=vec;
    first(1)=[];
    
    prod=vec(1)*Prod(first);
    
end
end

