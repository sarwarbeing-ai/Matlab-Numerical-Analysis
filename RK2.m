function y_rk2=RK2()
h=0.5;                                             % step size
x = 0:h:2.5;                                         
y_rk2 = zeros(1,length(x)); 
y_rk2(1) = 3;                                          % initial condition
                  
for i=1:(length(x)-1)   
    f = h*(6*x(i)-3*(y_rk2(i)) + 5);                       
    k_1 = f;                                           % h*F_xy(x(i),y(i));
    k_2 = h*(6*(x(i)+i*h)-3*(y_rk2(i)+k_1) + 5);       %F_xy(x(i)+i*h,y(i)+k_1);
   
    y_rk2(i+1) = y_rk2(i) + (k_1+k_2)/2;  % main equation
end
end