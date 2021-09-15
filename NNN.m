% the derivative of the function f is 
% -7sin(x)exp(-x)+7cos(x)exp(-x) ,as d(uv)=udv+vdu
x(1)=0.3;
err(1)=NaN; % store the NaN value at index 1
for i=1:3
    
    % Newton-Raphson method:
    % xn+1=xn-f(xn)/f'(xn)
    x(i+1)=x(i)-(7*sin(x(i))*exp(-x(i))-1)/(-7*sin(x(i))*exp(-x(i))+7*cos(x(i))*exp(-x(i)));
    
    % calculate approximate error
    err(i+1)=abs((x(i+1)-x(i))/x(i+1)); % relative error
end

T=table; % table

% add content to T 
T.Iterations=(0:3)'; % ' is the tranpose operator,transpose to make it a column vector
T.x_i=x';

T.ApproximateError=err';

disp(T)
