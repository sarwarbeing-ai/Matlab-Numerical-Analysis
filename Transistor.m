% generate ib,ic,ie,vce,vcb

% all the constants
beta=140;
vbe=0.7;
vbb=5;
vcc=10;

% create the vector rb
% equally spaced vector
rb=linspace(10000,11000,6); % 6 points from 10k to 11k

% create the vector rc
rc=linspace(100,200,6);

% calculate ib,ic,ie,vce,and vcb
ib=(vbb-vbe)./rb; % ./ is the element by element division

% create ic
ic=beta*ib;

% create vce
vce=vcc-(ic.*rc); % .* is the element by element multilication

% create vcb
vcb=vce-vbe;


% now create a table of all the above values
transistor=table(ib,ic,ie,vce,vcb,'VariableNames',{'ib','ic','ie','vce','vcb'});
disp(transistor)


