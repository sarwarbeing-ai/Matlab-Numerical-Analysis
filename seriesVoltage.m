function voltage=seriesVoltage(R1,R2,V)
% R1 and R2 are the resitances of two 
% ideal registers connected in series
% V is the applied voltage accross both of them
% output:
% voltage is a list of voltage droop accross each registor

% since the registors are connected in series
% the net registance is 
Rnet=R1+R2;

% get the current value for the circuit
I=V/Rnet;

% since the registors are ideal as well as they are connected
% in series therefore there is no dissipation of current of among registors
% In other words the current is same for both the registors

% Now get the individual voltage drop
% the voltage supplied in the circuit is equal to the sum of 
% voltage drop for each registors
% V=V1+V2

% uisng Ohm's law
V1=I*R1; % as current is same for both the registor

V2=I*R2;

voltage=[V1,V2]; % return the output
end