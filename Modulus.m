
function main
% define comZ vector
comZ=[1+2i,3-5i,6+10i]; % by default i is the imaginery unit in Matlab
modulus=myModulus(comZ);
a=modulus(1);
b=modulus(2);
c=modulus(3);


% check if the two numbers is equal and both are greater than the third
if (a==b) && (a>c)
    disp("The largest one is ")
    disp(a)
elseif (a==c) && (c>b)
    disp("The largest one is ")
    disp(c)
elseif (b==c) && (b>a)
    disp("The largest one is ")
    disp(b)
elseif (a==b)&&(b==c)&&(a==c)
    disp("The largest one is ")
    disp(b)
else
    disp("The largest one is ")
    disp(max(modulus))
end
    
end

function modulus=myModulus(comZ)
% comZ is a vector of three complex numbers
% modulus is a vector containing the modulus of three
% complex numbers

modulus(1)=mySubMod(comZ(1));

modulus(2)=mySubMod(comZ(2));

modulus(3)=mySubMod(comZ(3));
end


function mod=mySubMod(z)
% z is a complex number 
% mod is the modulus of the complex number z

% extract the real part from z
a=real(z);
b=imag(z);
mod=sqrt(a^2+b^2);
end