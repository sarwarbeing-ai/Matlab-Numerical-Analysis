% gray level streching with clipping at both ends
% let {0,1,2,3,4,...,L-1} be the gray levels in the original 
% iamge
% then in streching the algorithm transforms the original 
% gray level using some linear transformation
% clipping both ends means at certain threshold clip the lower
% gray level to zero ,some transformation on the middle
% gray levels and upper part clip to 255
% eg:
% let i be a gray level
% then T(i)=0 if i<threshold1
%          = 255(i-threshold1)/100 if threshold1<=i<=threshold2
%          = 255 if i>threshold2

% ask the user for an image
imgfile=input("Enter image file (like 'parrots.jpg')",'s');

% read the image into a matrix
img=imread(imgfile);

% transform the the image into gray
img_gray=rgb2gray(img);

% threshold1
thresh1=70; % if you want you can take different values
thresh2=160;


% stretching with clipping at both ends
stretch_img=zeros(size(img_gray)); % initialize with zeros
[m,n]=size(img_gray);

for i=1:m
    for j=1:n
        level=img_gray(i,j);
        if level<thresh1
            stretch_img(i,j)=0;
            
        elseif (thresh1<=level) && (level<=thresh2)
            stretch_img(i,j)=255*(level-thresh1)/100;
        else
            stretch_img(i,j)=255;
            
        end
    end
end

% plot both the original image and stretched image
figure;
subplot(1,2,1)
imshow(img_gray)
title("Original Image")
subplot(1,2,2)
imshow(stretch_img)
title("Stretched image")


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% create an image negative
% procedure:
% get the maximum level from the image let's say L be the max level
% the negative of an image is given by
% T(i)=L-i; T is a transformation

% ask the user for an image
imgfile=input("Enter image file (like 'parrots.jpg')",'s');

% read the image into a matrix
img=imread(imgfile);

% transform the the image into gray
img_gray=rgb2gray(img);

% max function returns maximum of each column ,to get the max level
% from the image use max two times
maxlevel=max(max(img_gray)); % maxlevel

transformed=zeros(size(img_gray)); % initialize with zeros

[m,n]=size(img_gray);
for i=1:m
    for j=1:n
        transformed(i,j)=maxlevel-img_gray(i,j);
    end
end


% plot
figure; % create a figure
subplot(1,2,1)
imshow(img_gray)
title("Original Image")
subplot(1,2,2)
imshow(transformed)
title("Negative Image")

