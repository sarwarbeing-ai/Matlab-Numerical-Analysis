clear all;
img=imread('grayscale.jpg'); % read the image into a 3D matrix
[rows,cols,dims]=size(img);

%output
output=zeros(size(img)); % 3D matrix with zeros entries of the same size as img

% you see if you add a scalar to a vector or matrix or 3D matrix the
% scalar added to each and every element of the vector or matrix or 3D
% matrix
% so 
output=img+50; % each pixel values of the "img" matrix will be increased by 55

figure;% create an empty figure
subplot(1,2,1)
imshow(img);
title("The original image")

subplot(1,2,2)
imshow(uint8(output)) % convert to uint8 encoding otheriwise it wound be displayed in image form

title("The sharp image")
