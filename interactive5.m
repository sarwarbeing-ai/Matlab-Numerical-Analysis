clear all;
% 1. create a 1*m array of a random number between -5 to 10
% ask the user for the value of m
% use while loop if the user enters some wrong input then the program will
% ask again
while true
  m=input("Enter a number between 500 and 1000 \n");
  if m<500 || m>1000
      disp("You have entered a wrong input try again!")
  else
      break % break out of the while loop
  
  end
end

% to generate random numbers between [a,b] use a+(b-a)*rand(1,m)

R1DA=-5+(10+5)*rand(1,m);

% 3. call the function MSD1DA
[MN,SD]=MSD1DA(R1DA);

% 4. plotting time
figure; % create a figure
% repmat is used to replicate the vector [MN] 1 time by row and m times by
% column that is repmat(2,1,4)=[2 2 2 2]
% SD+MN will be at the right side of mean and MN-SD will be in the left
% side 
plot(1:m,R1DA,'r.',1:m,repmat(MN,1,m),'b-',1:m,repmat(SD+MN,1,m),'g-',1:m,repmat(MN-SD,1,m),'g-')
%set the x-axis and y-axis limit
axis([1 m -6 13])
xlabel("Number of Elements")
ylabel("Element Value")
title("The scatter plot of a rando vector along with its mean and sd")
% in order to plot the legend just write according to different plots
% first scatter plot,second mean and third SD
legend("Element Value","Mean","SD w.r.t mean")

% 2. create the function MSD1DA
function [MN,SD]=MSD1DA(vec)
    MN=mean(vec);% mean of vec
    SD=std(vec); % standard deviation of vec
end
