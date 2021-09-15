% 2)) define a vector t1
t1=0:0.1:30; % t1 vector with step size 0.1

% initialize v1 with zeros
v1=zeros(size(t1));

% filled vector v1 with necessary values
for i=1:length(t1)
    v1(i)=rocketVelocity(t1(i));
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 3)) plotting time
plot(t1,v1,'-b','LineWidth',2)
xlabel("Time")
ylabel("Rocket Velocity")
title("The Rocket Velocity as a function of time")
grid on % make grid visible



% 1)) user defined function
function v=rocketVelocity(t)
    % t is the time
    % check if the function has one input argument
    if nargin<1
        error("The function takes 1 input argument!!")
    end
    
    % first condtion 0=<t<8
    if (t>=0 && t<8)
        v=10*t^2-5*t;
    % second condition 9=<t<16
    elseif (t>=8 && t<16)
        v=624-5*t;
        
    % third condition 16=<t<26
    elseif (t>=16 && t<26)
        v=36*t+12*(t-16)^2;
        
    % 4th condition 26=<t
    elseif t>=26
        v=2136*exp(-0.1*(t-26));
        
    % last condition
    else
        v=0;
    end
   
    
end