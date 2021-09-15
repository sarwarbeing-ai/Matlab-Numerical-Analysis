% first define the transformation as function 
% handle
T=@(x) [x(1)+x(2);-2*x(3)]; % x is a vector of length 3

% ordered basis B
u1=[1;0;1];
u2=[0;-3;2];
u3=[4;1;0];

% ordered bases C
v1=[3;-1];
v2=[2;5];

% images of u1,u2,and u3
img_u1=T(u1);

img_u2=T(u2);

img_u3=T(u3);



% create the augmented matrix D
% whose columns are the ordered basis of C
% followed by the image of the ordered
% basis of B
D=[v1 v2 img_u1 img_u2 img_u3];

% row reduce the augmented matrix to get 
% [I| T_BtoC]
% Use format rat to view values as rational
% numbers ,if desired
temp=rref(D);

format rat

% store the transformation matrix
% T_BtoC
% dimension of T_BtoC would be 
% 2 by 3 as T is a tranaformation
% R^3 to R^2
T_BtoC=temp(:,3:end) % the first two columns
                      % of temp corresponding to
                      % identity matrix of order 2
                      % hence from column 3 to last columns
                      % will be T_BtoC matrix
                      
                      
