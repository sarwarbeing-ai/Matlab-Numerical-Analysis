function [fval,fdrv]=root_function(x)
    fval=exp(2*sin(x))-x; %function value
    fdrv=2*cos(x).*exp(2*sin(x))-1; %function derivative
    
end