function dist=standard_deviation_distance(v,x)

% calculate the mean
mu=mean(v);

sd=std(v); % standard deviation

% Note:
% standard deviation distance is the number of multiples of standard
% deviation such that the numebr x falls from the mean of the dataset
% v


difference=x-mu; % distance between mean and x,will be +ve if x>mu otherwise negative
    
% now get standard deviation distnace
% this is nothing but n*sd=difference
% where n is the number of multiples of standard deviation
dist=difference/sd;

end