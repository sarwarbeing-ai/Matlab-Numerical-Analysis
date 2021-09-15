% read the image
img=imread("parrots.jpeg");% img is a 3D matrix
% extract the R,G and B part from img
R=img(:,:,1);
G=img(:,:,2);
B=img(:,:,3);

% 2.Uniform Quantization
% inorder to convert R,G ,and B into  3-bits,3-bits and 2-bits respectively
% you need to divide R and G by 32 as 256/2^3=32 and B by 64 as 256/2^2
% why 256?? because there are total 256 possible a pixel can take

R=R/32;
G=G/32;
B=B/64;

% in order to plot the quantized image you need to construct the 3D back
I=zeros(size(img));
I(:,:,1)=R; % assign the R part
I(:,:,2)=G;% assign the G part
I(:,:,3)=B; % assign the B part

% In order to have a good looking plot you need convert back the image into
% the range [0 255]

I=255*I;

% 3. plot the image
subplot(2,1,1)
imshow(I)
title("Quantized image")
subplot(2,1,2)
imshow(img)
title("Original Image")

% save the image in .png format
imwrite(I,"parrots1.png")