function [c_linear,c_quadratic,c_degree3]=polynomialfit(X,Y)
    % X  is the data.In X the first column is containing 1,
    % second column is the first feature and so on,
    
    
    %In the given question X has only one feature namely the distance
    
    
    % Y is the output
    % the polynomial will be look like p(x)=c1+c2*x+c3*x^2+---cn*x^n of 
    %degree n polynomial
    
    
    %You need to solve a system like Xc=y using least square
    % Now in order to solve the system using least square 
    % you need to multiply both sides of the system Xc=y with X'
    %X' is the transpose of X
    %that is you need to solve X'*X*c=X'*y
    
    % then c=inv(X'*X)*X'*y
     % here c is the coefficients vector
     
    
     %Question a
     
     
     c_linear=inv(X'*X)*X'*Y;
     
     
     
     
     %Question b
     
     % For this part you need to expand the X that is adding one more
     % column(square of the second column)
     
     new_col=X(:,2);
     % taking square of the elements of new_col
     
     new_col=new_col.^2;
     %reshape the new_col to be a column vector
     
     new_col=reshape(new_col,length(new_col),1);
     
     % add the new_col to the existing matrix X
     X1=[X new_col];
     
     c_quadratic=inv(X1'*X1)*X1'*Y;
     
     
     
     
     
     %Question c
     
     % for this part you need add one column to the existing matrix X1(got
     % in part b) that is cube of the second column of X1
     
     new_col_3=X(:,2);
     new_col_3=reshape(new_col_3,length(new_col_3),1);
     
     new_col_3=new_col_3.^3;
     
     X2=[X1 new_col_3];
     
     c_degree3=inv(X2'*X2)*X2'*Y;
     
     
 %plotting the graphs

 %Demonstrating how X and Y look like
 
%Y=[3.0495642E-02;2.7594421E-02;2.5538733E-02;2.2997760E-02;2.1340250E-02;2.0604664E-02;1.7475806E-02;1.7344306E-02;1.5904310E-02;1.5559922E-02;1.5389207E-02];
%ones_1=ones(11,1);
%feature=reshape(1:0.1:2,11,1);
%X=[ones_1 feature];


x=X(:,2); % the data point(only one feature namely distance)

% the output of the  linear fit
linear_output=X*c_linear;

% output of the quadratic fit

quadratic_output=X1*c_quadratic;

% output of the degree 3 polynomial fit
degree3_output=X2*c_degree3;

% error commited by linear fit

error_linear=linear_output-Y;

%error commited by quadratic fit

error_quadratic=quadratic_output-Y;

% error commited by degree 3 polynomial fit

error_degree3=degree3_output-Y;


 fprintf("The error commited by Linear fit: [");
 fprintf('%g ', error_linear);
 fprintf("]\n");
 

 fprintf("The error commited by Quadratic fit: [");
fprintf("%g ", error_quadratic);
fprintf("]\n");

 fprintf("The error commited by degree 3 polynomial fit: [");
 fprintf("%g ",error_degree3);
 fprintf("]\n");
     
hold on
plot(x,Y,'V-r') % plotting the data
title('Combine Plots')




plot(x,linear_output,'V-m')

plot(x,quadratic_output,'V-k')
plot(x,degree3_output,'V-b')

legend('Data points','Linear fit','Quadratic fit','Degree3 fit')
hold off

end