
% define the vector t
t=0.01:0.01:1000;
DT=50;

heat_transfer(200,50); % heat_transfer called with t=200sec to get the q_large and q_small
global q_small
q_small
global q_large
q_large

% call the heat_transfer fucntion
heat_transfer(t,DT); % here heat_transfer called on the vector t


% main function
function heat_transfer(t,DT)
    
    % decalare q_small global so that it could be retrieved outside of heat_transfer function
    global q_small 
    % call the function Small
    q_small=Small(t,DT);
    
    
    global q_large
    % call the Large fucntion
    q_large=Large(t,DT);
    
    %plot the q_small and q_large as function of time
    % semiolgy similar to plot but y-axis logscaled
    semilogy(t,q_small,"-b",t,q_large,'-g') % semilogy convert y-axis to logscale and left x-axis to linear scale.
    title("The heat transfer rate for small as well as large object ")
    xlabel("'Time in second")
    ylabel("Heat transfer rate")
    legend('Heat transfer rate for small object','heat transfer rate for large object')

end

function q_small=Small(t,DT)
    % t is the time variable
    % DT is the temeprature change at the surface
    
    q_small=(1*750)*DT*exp(-t/750); % m=1,cp=750,T=750
end

function q_large=Large(t,DT)
    q_large=1*DT./sqrt(t*pi*5.5e-7); % K=1,a=5.5e-7
end

