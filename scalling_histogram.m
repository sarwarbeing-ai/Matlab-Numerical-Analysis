
original = imread('cameraman.jpg'); % read the image into matrix

% define all the new ranges for the new image 

% range1 of 76 points with equal spacing between points
% as the range of the  first part of the histogram of 
% the original image is 0-75
range1 = linspace(0, 100, 76); 

% similarly for range2 there are 75 points as the range 76-150 consists of 75
% points
range2 = linspace(50, 150, 75); % for second part

range3 = linspace(100, 200, 50); % third range for third part of histogram

range4 = linspace(50, 240, 55); % for the 4th subpart part of the original histogram



% the function intlut in matlab converts the values of the array(img)
% accroding to the look up table(second argument of the fucntion intlut)
% the look up table is a one dimensional array consists of total
% 256 values(0-255) 
% intlut works in the following ways:
% 1. indexing of the look up table starts from 0
% 2. original(alpha) replaced by lut(alpha+1) where alpha is the index
% lut is the look up table
modified_image =intlut(original ,[range1 range2 range3 range4]);


% plot the histogram of the original image and new modified image side by
% side

subplot(1,2,1)
imhist(original) % histogram of the original image
title("The original image")

subplot(1,2,2)
imhist(modified_image)
title("The modifeid image")