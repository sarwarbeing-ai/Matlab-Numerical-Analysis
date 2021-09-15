% student number: 11042864
% constant value from your student number
h=4;
g=6;
d=4;
b=1;
e=2;
% construct the matrix H
% first row of is hg+evc1
% second row he+vec2
% db+vec3
% where vec1,vec2 and vec3 are all row vectors

% construct vec1
vec1=linspace(0,1.50,7); % equally spaced 7 points from 0 to 1.50
vec2=linspace(1.8333,12.8331,7);

vec3=linspace(0,-30,7);


H=[h*g+vec1;h*e+vec2;d*b+vec3];

disp("The matrix H is")
disp(H)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% part a))
G=zeros(2,5); % initialize with zeros
G(1,1:3)=H(1,1:3); % first three element of H from first row
G(1,4:5)=H(1,6:7); % last two eleemnt

G(2,:)=H(3,3:7); % third row of H ,last five elements
disp("the matrix G is")
disp(G)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% part b))
% convert G into a vector
row=reshape(G',1,[]); % G' transpose use so that G would be converted row wise

E=row(4:9)+2;

disp("The vector E is")
disp(E)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% part c))
F=G(:,[4,2,1,5]); 
disp("The maatrix F is")
disp(F)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% part d))
G(2,4)=((5.9^2-2.4^2)/3)+(log10(12890)/exp(0.3))^2; % change the fourth element of G

S=G(2,4); % copy 4th element of the second row of G to S

disp("The scalar S is")
disp(S)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% part e))
% delete second row of G
G(2,:)=[]; % deleted second row

% delete third,first,fifth columns of the matrix G
G(:,[3,1,5])=[];

L=G; % copy G to L
disp("The matrix L is ")
disp(L)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% part f))
K=zeros(4,3); % initialize with zeros

% ' transpose use to convert column vector to row vector
K(1,:)=H(:,2)'; % second column of H becomes first row of K 

K(2,:)=H(:,3)';
K(3,:)=H(:,5)';
K(4,:)=H(:,7);
disp("The matrix K is")
disp(K)