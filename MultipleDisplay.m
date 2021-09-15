% Q .2))
function MultipleDisplay()
% since this function does not return anything therefore
% no need to use =
% like function y=something()

var1=10*pi; % var1 variable

% [] use to concatenate strings
disp(['var1=',num2str(var1)]);
disp(['var1=',int2str(var1)]);

fprintf('var1=%e\n',var1); % display var1 in scientific e notation
fprintf('var1=%f\n',var1); % as floating point
fprintf('var1=%g\n',var1); % print with 5 fixed digits
fprintf('var1=%12.4f\n',var1);% 16 digits but if the number var1
                              % has less than 12 digits before decimal
                              % point then there will be multiple
                              % space before decimal point
end