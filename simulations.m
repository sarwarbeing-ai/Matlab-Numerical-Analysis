clc;clear;close all; % clear command window,workspace,and all figures
% create a 1000 simulations 

% initialize as zeros vector will be filled later
count_vector=zeros(1,1000); 

for i=1:1000
    
    % draw 500 normal random variables
    vec_500=normrnd(110,2,[1,500]); % mean=2 and sd=2=sigma
    
    % calculate the average
    avg=mean(vec_500);
    
    % check for how many random variables in vec_500>avg
    % there is a shorcut to do this without using for loop
    % by using find function
    
    % here the find fucntion will return all the indices of those
    % elements in vec_500 that are greater than avg
    indices=find(vec_500>avg); 
    
    % get the vector of those elements
    vec_greater_avg=vec_500(indices);
    
    % now count the number of elements in vec_greater_avg
    count=length(vec_greater_avg);
    
    % store the count in the vector count_vector
    count_vector(i)=count;
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% plotting time
plot(1:1000,count_vector,'-g','LineWidth',2)
xlabel("simulations")
ylabel("count")
title("count of samples greater than it's average")