% part 1))
% resistance values
R1=119.8;
R2=120.5;
R3=121.2;
R4=119.3;

c=R2/R1;
d=R3/R4;

% calculate Vab
V=15; % voltage value

Vab=V*(c-d)/((c+1)*(d+1));

% [] use to concatenate strings
disp(['Vab=',num2str(Vab),' volt'])



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% part 2))
V=80; % voltage value

L=400*10^-3;
f=50; % frequency

omega=2*pi*f;

R=6; % resistance value
C=40*10^-6;


% current value
I=V/sqrt(R^2+(omega*L-1/omega*C)^2);

disp(['Current in RCL circuit is ',num2str(I),' Amp'])