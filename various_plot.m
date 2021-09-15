clear;clc;close all;
% Q.1))

% plot the functions in four windows you need to use subplot 
% basically subplot divides the current figure into nrow*ncol
% after that you can iterate through each window using indices

% define the vector t
t=0:0.1:2*pi; % vector with spacing 0.1 between successive elements

nrow=2;
ncol=2;

% sin(x)^2
subplot(nrow,ncol,1) % first window

% .^ to calculate power point wise
plot(t,sin(t).^2,'-b','LineWidth',2) % -b solid line with color blue
title("sin^2(x)")


% cos(x)^2
subplot(nrow,ncol,2) % second window
plot(t,cos(t).^2,'-r','LineWidth',2) % -r solid line with color red
title("cos^2(x)")


% sin^2(x)*cos^2(x)
subplot(nrow,ncol,3) % third  window
% .* point wise multiplication
plot(t,(sin(t).*cos(t)).^2,'-g','LineWidth',2) % -g solid line with color green
title("sin^2(x)cos^2(x)")


% 
% cos^2(x)/sin^2(x)
subplot(nrow,ncol,4) % third  window
% .* point wise multiplication
plot(t,(cos(t)./sin(t)).^2,'-m','LineWidth',2) % -m solid line with color magenta
title("cos^2(x)/sin^2(x)")



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 2))

grades=input("Enter three grades of a student enclosed in bracket like [1 2 3]: ");

% 1)) total score
total_score=sum(grades);
fprintf("Total score: %d",total_score);
fprintf('\n');

% 2)) average score
avg_score=mean(grades);
fprintf("Average score: %d",avg_score);
fprintf('\n');


% 3)) heighest score

heighest_score=max(grades);
fprintf("Heighest score: %d",heighest_score);
fprintf('\n');

% 4)) smallest score
smallest_score=min(grades);
fprintf("Smallest score: %d",smallest_score);
fprintf('\n');




