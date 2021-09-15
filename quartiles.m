% randi function generates integer from given range [0,100]
data=randi([0,100],1,51);% a vector of size 1*51

[Q1,Q2,Q3,inter_quartile]=fn_quartiles(data);

fprintf('The data is [ ')
fprintf('%g ',sort(data)) % %g in g format to display vector
fprintf(']\n')
fprintf('Q1=%d',Q1) % decimal format
fprintf('\n') % for new line

fprintf('Q2=%d',Q2)
fprintf('\n') % for new line

fprintf('Q3=%d',Q3)
fprintf('\n') % for new line

fprintf('Inter quartile is %d',inter_quartile)
fprintf('\n') % for new line



% define the quartile function
function [Q1,Q2,Q3,inter_quartile]=fn_quartiles(data)
    % Procedures:
    % 1. sort the vector data in ascending order
    % 2. calculate the median of the lower half
    % of the sorted vector with respect to median(Q2) of the "data"
    % this becomes Q1
    % and median of the upper half of the sorted vector
    % with respect to median of the "data"----this becomes Q3
  
    % get the length of the vector
    n=length(data);
  
  
    % sort the vector in ascending order
    data=sort(data);
  
    % check if n is even
    if rem(n,2)==0
        % get the lower half end index and upper half starting index
        l=n/2; % for the lower half 
        u=n/2+1; % for the upper half
    
        % calculate the median of the sorted vector data
        Q2=median(data);
        
        % calculate Q1
        Q1=median(data(1:l)); % median of lower half vector
        Q3=median(data(u:end));% median of upper half vector
   
    else
        % if n is odd
        l=(n+1)/2-1;
        u=(n+1)/2 +1;
    
        Q1=median(data(1:l));
        Q2=median(data);
        Q3=median(data(u:end));
    end
    
    
    % find the inter quartile range
    inter_quartile=Q3-Q1;
end
