
%% PT1_Tt Unit Step Response in Time Domain
% Define Parameters
K = 2; % DC gain
tau = 0.7; % Time constant in s
T_t = 1; % Time delay in s
par_PT1_Tt = [K tau T_t ];

% Calculate Unit Step Response
t = 0:0.01:10; % Time vector in s
y = unit_step_PT1_Tt ( par_PT1_Tt , t);

% Plot Unit Step Response
plot ([0 0 t(end )] ,[0 1 1], 'k--',t,y,'k-')
axis ([t(1) t(end ) min(y) 1.1* max(y)])
h_xlabel = xlabel ({'$t$ \,/\ s'});
set ( h_xlabel ,'Interpreter','latex');
legend ('Input', 'Output')
grid on

function h = unit_step_PT1_Tt(par_PT1_Tt,t)
K = par_PT1_Tt(1);
tau = par_PT1_Tt(2);
T_t=par_PT1_Tt(3);
y= K*(1-exp(-((t-T_t)/tau)));

% make all the negative values to be zeros
% i.e merge all negative values to zero
log_vec=y<0; % a logical vector of 0's and 1's
             % log_vec is of o's and 1's,o's corresponds 
             % to the non-negative values while
             % 1's corresponds to negative values
             
% now make all the negative values to be zeros
y(log_vec)=0; % all the negative values merged to zero
              % non-negative values will remains same

h=y; % return output

end