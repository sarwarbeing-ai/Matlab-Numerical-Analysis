function bimg=from_gray_to_binary(imgfile,threshold)
    img=imread(imgfile); % read the image file into pixel values
    if (length(size(img))==3) %if image is rgb then convert to grayscale

    grayScale=rgb2gray(img);
    else
    grayScale=img;
    end

    BW=grayScale>=threshold; % converts the grayscale image to Binary
    %image of ones and zero .1 if pixel_value>=threshold otherwise 0 
    
    %there is no need to use im2bw() function as this function accepts
    %threhold level to be in the range [0,1]
    
    
    % clearing the background
    BWc=imclearborder(BW) ;
    
    %removing small objects(connected components) that have fewer than P
    %pixel values
     %syntax: bwareaopen(BW,P) BW=binbary image and P=maximum number of
     %pixels in objects
     
     bimg=bwareaopen(BWc,50);
    


end

 %save the image in working directory

imgfile='image1.jpeg';
BW_100=from_gray_to_binary(imgfile,100);
BW_200=from_gray_to_binary(imgfile,200);
BW_150=from_gray_to_binary(imgfile,150);

img=imread(imgfile);
grayscale=rgb2gray(img); % img was in rgb

subplot(2,2,1), imshow(grayscale)
subplot(2,2,2), imshow(BW_100)
subplot(2,2,3), imshow(BW_150)
subplot(2,2,4), imshow(BW_200)

end