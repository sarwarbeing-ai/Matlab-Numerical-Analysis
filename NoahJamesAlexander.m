
% main script
% ask the person for name
name=input("Please enter your name ",'s'); % accept as a string

% convert the name into lower case letter,just for convention
name=lower(name);

% check if name is not in the database
% ~ is the negation operator
if ~ismember(name,["james","noah","alexander"])
    
    % display names in the database
    disp("The name database is "),["james","noah","alexander"]
    
    % calling error function,the rest code will not be evaluated
    error("You have entered wrong name! ")
end

% check if name='noah
if name=="noah"
    
    % vector x
    x=[9,6,7,8,4,3,2,11,1];
    
    % call the function Noah
    y=Noah(x);
    
    % [] use to concatenate strings
    disp(['Work of ',name,' is ']),y
    
elseif name=="james"
    % vector t
    t=[9,6,7,8,4,3,2,11,1];
    
    % call the function James
    y=James(t);
    disp(['Work of ',name,' is ']),y
else
    n=20;
    
    % call the function Alexander
    y=Alexander(n);
    disp(['Work of ',name,' is ']),y
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% define three fucntions namely Noah,James,Alexander to calculate 
% their work
function y=Noah(x)
% x is a vector
% .* element by element multiplication
% .^ element by element power
% ./ element by element division
y=(x-3).*(x.^2+3)./(x.^2); % vectorized implementation,
                           % element -by-element operation
end


% define the James fucntion
function y=James(t)
% t is a vector
y=20*t.^(2/3)./(t+1)-(t+1).^2./(exp(0.3*t+5))+2./(t+1);
end


% define Alexander
function y=Alexander(n)
sumA=0; % initiaze to zero

% i goes from 0 to n
for i=0:n
    sumA=sumA+(-3)^(-i)/(2*i+1);
end

% now multiply sum by sqrt(12)
y=sumA*sqrt(12);
end