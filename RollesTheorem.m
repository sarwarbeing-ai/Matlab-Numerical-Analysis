f=@(x) cos(x)-x;
a=0;
b=1;
c=(a+b)/2; % mid point of a and b

for i=1:15
    % condition in Rolle's theorem
    if f(a)*f(c)<0
        % root is in (a,c)
        
        % the right end point is 
        b=c;
        
        % Note: If the above condition satisfied then the value of a is
        % unaltered wherease the value of b changed to c
        
    elseif f(c)*f(b)<0
        % root is in (c,b)
        
        % left end point
        a=c;
        % Note: If the above condition satisfied then the value of b is
        % unaltered wherease the value of a changed to c
        
    else
        % have found root
        a=c;
        b=c;
        break;
    end
    
    % find the mid point of the new interval
    c=(a+b)/2; % new interval mid point,the new estimate of the root
end
% the max possible error could be abs(f(c)) or (b-a)/2
maxerr=max([(b-a)/2,abs(f(c))]); % return the max
fprintf('Your final root estimate is %f.\nThe maximum possible error is %f.',c,maxerr);
