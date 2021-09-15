function str=tidyup(str1)
% str1 is a character array 
% output:
% str is the character array without trailing and leading white space

% first split the str1 into cell array
str1_cell=split(str1,','); % splitting with respect to comma

cell={}; % initialize to empty cell

% use for loop to traverse the cell array str1
for i=1:length(str1_cell)
    s=str1_cell{i}; % extract the ith element from the cell array
    
    
    s=strip(s,"left",'{'); % remove { from left
    
    % again remove } from right
    s=strip(s,'right','}');
    
    % now remove whitespace(left and right whitespaces) from s
    s=strip(s);
    
    % concatenate s with { and }
    s=strcat('{',s);
    s=strcat(s,'}');
        
    cell{i}=s; % store the string into cell array
    
    
end

% now join each element of the array cell using comma
str=strjoin(cell,',');
end
