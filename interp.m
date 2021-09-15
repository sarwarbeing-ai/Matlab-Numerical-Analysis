t=0:2:14; % vcetor t
R=[0,2.9,4.8,5.8,5.9,5.1,3.2,0.4]; % rain drop size

% now make the step size from 2 minutes to 30 seconds
% the new t vector is 
% since 30 seconds is equal to 30/60=0.2 minutes
new_t=0:0.2:14;

% use the cubic interpolation to evaludate the rain drop size 
% at the values in new_t
interpolated_value=interp1(t,R,new_t,'cubic');

plot(new_t,interpolated_value)
xlim([0 14])
xlabel('time,t(minutes)')
ylabel("Rain drop,R(mm)")

