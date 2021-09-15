function mat=reshape_12(m)
   
    [p,q]=size(m); % find the size of m
    
    if p==3 % if m is 3*4
        mat=m;
    elseif q==12 | p==12  % check if m is 1*12 or 12*1
        A=nan(4,3); %a matrix of order 4*3 with nan value
        A(:)=m; %assign m to A
        mat=transpose(A); % transpose to get the required matrix
    elseif p==2 | q==2 % if m is 2*6 or 6*2
        A=nan(4,3);
        A(:)=transpose(m);
        mat=transpose(A);
    else 
        A=nan(4,3);
        A(:)=transpose(m);
        mat=transpose(A); % if m is 4*3
    end
         
end
