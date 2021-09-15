clc;close all;clear;

% demonstration
imgfile='parrots.jpeg';
img=imread(imgfile);
col=[255,0,255]; % yellow
tol=220;

% call the function
M=match(img,col,tol)

function M=match(X,col,tol)
  % X is any true color image
  % col is a color value that is col is vector of length 3
  % eg: col=[255,0,255] this is yellow color
  % tol is a scalar tolerance
  
  % output:
  % M is boolean matrix
  
  Size=size(X);
  col=double(col); % convert to double values this is done to have a compatible data type
  
  Esqr=zeros(Size(1:2)); % a dummy matrix
  
  % traverse to every channel
  for k=1:Size(3)
    Y=double(X(:,:,k)); % extract kth channel from X and then convert to double
    
    
    % for k=1,you will have Y belongs to red channel
    % so (Y-col(1)).^2 is nothing but the first term in mismatch E expression
    
    % similarly for k=2
    % you will have Y belongs to green channel
    % so (Y-col(2)).^2 is the second term in mismatch expression
    
    % for k=3,you will have Y belongs to blue channel
    % so (Y-col(3)).^2 is the third term in mismatch expression
    
    % when this loop gets over the Esqr becomes the mismatch E for every color
    
    
    %%% Esqr=Esqr+(Y-col(k)).^2; this is nothing but the formula used in  Mismatch expression
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Anwer : option (d)
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % uncomment one option at a time run the fucntion 
    % you will get error for options b and e but not for d,a,c
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    % Esqr=Esqr+(Y(k)-col(k))^2;  % option (a)
   
    % Esqr=Esqr+(Y-col(k))^2;  % option (b)
    % Esqr=Esqr+(Y(k)-col(k)).^2;  % option (c)
    Esqr=Esqr+(Y-col(k)).^2;  % option (d)
    % Esqr=Esqr+dot(Y-col);  % option (e)
     
    
  end
  M=sqrt(Esqr)<=tol;
end
