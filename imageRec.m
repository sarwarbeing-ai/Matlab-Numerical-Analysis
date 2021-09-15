clc;clear;close all; % clear command window,workspce,all figures
% save the image in current directory
% load the image
g=imread('rec.png');

% the image has the size 285*363*3
% you need to resize the image otherwise you won't be able
% to use the row 512 ,also this image is in rgb so you
% need to convert into a gray image
g=imresize(g,[600,700]); % resize to 600*700*3

% convert to gray scale
g=rgb2gray(g);

% display the image using colormap
figure; % create a figure1
imagesc(g);
colormap("gray") % colormap to be gray
title("original image")
% calculate the row 512 of the image 
figure; % figure2
plot(g(512,:))
title("The row 512 of the image g")

% calculat the discrete fourier transform of the row 512
% using the fft(fast fourier transform) alhgorithm
a=fft(g(512,:));

% plot the magnitude of the fourier transform of the row 512
figure; % figure3
plot(abs(a)) 
title("Magnitude of the Fourier Transform of the row 512")

figure; % figure 4
plot(g(:,512)) % plot the 512th column of the image array g
title("Column 512")

% calculate the dft(discrete fourier transform)
b=fft(g(:,512));
figure; % figure 5
plot(abs(b))
title("The magnitude of the DFT of the column 512 of the image g")

 
% DFT but of the 2D array and returns 2D DFT
F=fft2(g); % this is equivalent to fft(fft(X).').' .' is the shortcut for transpose

figure; % figure 6
imshow(abs(F),[]); % plot the 2D DFT as an image
title("magnitude of the 2D DFT")

% this shifts the zero frequency component of F to the center of the array 
% F
Fc=fftshift(F);
figure; % figure 7
imshow(abs(Fc), []);
title("magnitude of the shifted 2D DFT")

% loagrithim transformation of the shifted DFT Fc
Fc2 = log(1 + abs(Fc));

figure; % figure 8
imshow(abs(Fc2),[]);
title("magnitude of the log transformed shifted DFT")