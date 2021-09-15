clc;clear;close all;
% create matrix of size 256*256
image=zeros(256,256,'logical');
for i=50:200
    for j=50:200
        image(i,j)=1;
    end
end


% calculate the FFT 
fftimage=fft(image);

% Adding zero padding the matrix image to make its size 1024*1024
% then calculate the DFT(discrete fourier transform)
img_pad=zeros(1024,1024,'logical');
img_pad(390:390+255,390:390+255)=image; % kept the image in the center

% calculate the dft using fft
image2=fft(img_pad);


% change display of the zero frequency coefficient to be in the 
% center of spectrum

image3=fftshift(image2); % shifting the zero frequecy component to the center


%  display the image3
% calculate the fft spectrum it's just the square root of the fft times
% its complex conjugate
fft_spectrum=sqrt(image3.*conj(image3));
x=-5:0.01:5;
x=meshgrid(x,x);
imagesc(fft_spectrum)
colormap(x)