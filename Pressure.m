% main script
T=(255:2:315)'; % temperature column vector
                % ' is the tranpose operator to make the vector
                % a column vector
                
Vm=25.35;
Tc_hy=33.2; % hydrogen
Tc_ni=126.0;% nytrogen
Pc_hy=12.8;
Pc_ni=33.5;

% call the function
P_hy=VanderWaals(T,Vm,Tc_hy,Pc_hy); % hydrogen
P_ni=VanderWaals(T,Vm,Tc_ni,Pc_ni); % nitrogen

% create the table
van=table(T,P_ni,P_hy,'VariableNames',{'T','PressureNitrogen','PressureHydrogen'});

% write the table to a file
writetable(van); % file name will van.txt
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function P=VanderWaals(T,Vm,Tc,Pc)

% define R
R=0.08206; % gas constant

% calculate Vc
Vc=R*Tc/Pc;

% calculate a
a=3*Pc*Vc;

% calculate b
b=Vc/3;

% now caluclate gas pressure
P=R*T/(Vm-b)-a/Vm^2;

end