clear all;
% the below codes are to create .txt file from a matrix as 
% .txt file not available
% this is has been done as to demonstrate how to open a .txt file and
% manipulate it there by
data=[0.179836637         9.272635093
0.046819868         1.968290635
0.919199638         2.051443241
-0.520067091    3.737577697
-0.721118716    6.403730881
0.830594797         6.598998374
0.525560538         5.978498944
-0.267499834    8.781302258
-0.226030348    5.096534353
0.81569467          0.7617883
0.758939749         1.699059773
-0.227575167    5.714953673
-0.586852368    3.759641652
-0.813484894    3.948303176
-0.579554412    1.371464678
0.817433742         0.781401453
-0.650826388    4.660613595
0.106075339         8.370439544
0.66390898          3.534876028
-0.575713683    7.663929407
-0.00912042         3.421997945
-0.128037282    6.72291178
-0.591719204    0.461822916
0.96989519          9.298836454
-0.607966654    3.399095571
-0.380891313    6.430459834
0.59696804          1.731449974
0.53727792          6.390592683
-0.619987656    8.445550615
-0.494465496    6.47233923
0.966408033         8.019133222
-0.22040543         8.933009817
-0.026857876    4.854443987
0.114910849         8.012797382
0.836011056         3.948304058
-0.141596863    4.456719298
-0.484863971    0.096175606
0.908458665         0.344220714
-0.434839821    3.027013245
-0.895114741    4.957783882];

[m,n]=size(data);
fild = fopen( 'data.txt', 'w' );
 for i=1:m
     for j=1:n
         fprintf( fild, '%.9f ', data(i,j));
     end
     fprintf(fild,'\n');
 end
 fclose(fild);
 
 
 % you can ignore the above codes and can continue from here
 % use importdata function from matlab to load the .txt data into a matrix
 data=importdata('data.txt');
 
 % create the column vector t
 t=data(:,1); % first column vector
 x=data(:,2); % second column vector
 
 sum=0; % initialize the sum variable
 for i=1:length(x)
     sum=sum+x(i);
 end
 sum1=0; % intialize the sum1 variable
 
 % the last two digits of the ID
 c=0;
 d=8;
 for i=1:length(x)
     
     % if conditional
     if x(i)<=(c+d)/3
         
         sum1=sum1+x(i);
     end
     
 end
 
 % display the values of t,x and sum and sum1
 % if you do not want the below codes you can ignore it
 disp("The column vector x")
 disp(x)
 
 disp("The column vector t")
 disp(t)
 
 fprintf('sum=%.9f',sum);
 fprintf("\n")
 
 fprintf('sum1=%.9f',sum1);
 fprintf("\n")
 
 