%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% You can use the below codes to generate the required table
L=[25,25,30,30,30]'; % length stored in a column vector,' is the traspose operator
W=[10,10,12,12,12]'; 
D=[5.0,5.5,5.5,5.0,6.5]';
disp(L(1))
P=[]; % perimeter vector
V=[]; % volume vector

A=[]; % area vector

for i=1:length(L)
    P(i)=2*(L(i)+W(i)); % perimter
    disp('s')
    V(i)=L(i)*W(i)*D(i); % volume
    
    A(i)=2*(L(i)+W(i))*D(i)+L(i)*W(i); % undergraound surface area
end


% table
T=table; % an empty table

% Now store all the fields
T.Length=L;
T.Width=W;
T.Depth=D;
T.Perimeter=P';
T.Volume=V';
T.Underground_Surface_Area=A';

disp("The table is "),T