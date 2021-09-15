function grayImage = grayscale(rgbImage)
    
  [rows, col, numberOfColorChannels] = size(rgbImage);
  if numberOfColorChannels  == 3
      % It's color, need to convert it to grayscale.
      redChannel = rgbImage(:, :, 1);
      greenChannel = rgbImage(:, :, 2);
      blueChannel = rgbImage(:, :, 3);
      % Do the average
      grayImage = (double(redChannel) +double(greenChannel) +double(blueChannel))/3;
      % convert it back to uint8 so we can display it.
      grayImage = uint8(grayImage);
  else
      % It's already gray scale.
      grayImage = rgbImage;  % Input image is not really RGB color.
  end
end
