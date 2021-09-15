function out=matnumbers(num,m,varargin)
% num is a number 
% m is another number
% varargin used to accept variable number of arguments
% that is after passing first two inputs it's your choice
% you could pass 3,or 4 or 5 arguments and so on 
% output:
% out - matrix which stores the number num
% it's order depend on the second and third argument
% if third argument is empty then 
% out will of order m*m

% check if the function has atleast two input arguments
if nargin<2
error("Function requires atleast 2 input arguments")

end
disp(inputname(1))
% check if the third argument present
if ~isempty(varargin)
    % construct the matrix out
    
    % extract the third argument from varargin
    n=varargin{1};
    
    % rpeat the element num m times(row)
    % and n times(column)
    out=repmat([num],m,n); 
else
    out=repmat([num],m,m); 
    
end
end
