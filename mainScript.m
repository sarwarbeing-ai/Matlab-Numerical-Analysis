% check if the function works
vec=[2,4,1]
maxRightDiff(vec)
vec=[10]
maxRightDiff(vec)

vec=[1,2,3,1,23,3,4,5,23,1,5,6,3,6,3,6,2,25,6783,56,356,73,6,84,789,4,6784,3421,123,23,34,23,45,6,5]
maxRightDiff(vec)


function themaxdiff=maxRightDiff(vec)
    
    % check if the function got one input arguments
    if nargin<1
        error("The function takes 1 input argument ");
    end
    
    % check if the length of the input vector is 1
    if length(vec)==1
        themaxdiff=0;
    else
        % do the following
        themaxdiff=-inf; % initialize the "themaxdiff" to be negative infinity
        
        % length(vec)-1 taken so that the loop should not reach the end 
        % of the given input "vec" as the right difference defined to be 
        % a number subtracted from the number right to it.
        for i=1:length(vec)-1
            
            % right difference calculated at once and then get the maximum
            dummy_max=max(vec(i)-vec(i+1:end)); % get the maximum from the subtracted vector
            
            % check if dummy_max <themaxdiff
            if themaxdiff<dummy_max
                themaxdiff=dummy_max; % update the themaxdiff
            end
            
        end
    end
    
    
        
end