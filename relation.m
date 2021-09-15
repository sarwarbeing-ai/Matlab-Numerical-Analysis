% construct E finitely ,this is just for demosntration purpose only
% E will be a struct 
% struct is a data structure look like a dictionary
% eg: {'a',[1,2,3,4]} where 'a' is the field and the value is the
% associated value

vector_m=[];
vector_n=[];
for m=-100:100
    for n=-100:100
        flag=relationE_on_Z(m,n);
        if flag==1
            vector_m=[vector_m m]; % filled the vector_m
            vector_n=[vector_n n];
            
        end
    end
end

% construct E
field1='m';
field2='n';

E=struct(field1,vector_m,field2,vector_n);


function flag=relationE_on_Z(m,n)
       % m and n are two integers
       % flag will tell whether (m,n) belongs to relation E or not
       % you need to check whether (m,n) belongs to E or not
       % (m,n) belongs to E iff m-n is odd
       
       % absolute value taken just for mathematical convenience
       if mod(abs(m-n),2)==1
           flag=1;
       else
           flag=0;
       end
       
           
end