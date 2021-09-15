function y_rk4 = Runge_kutta4(x,h)
    
y_rk4 = zeros(1,length(x)); 
y_rk4(1) = 1;                                          % initial condition
                  
for i=1:(length(x)-1)                         
    k_1 = f(x(i),y_rk4(i));                                           %F_xy(x(i),y(i));
    k_2 = f(x(i)+0.5*h,y_rk4(i)+0.5*h*k_1);       %F_xy(x(i)+0.5*h,y(i)+0.5*h*k_1);
    k_3 = f(x(i)+0.5*h,y_rk4(i)+0.5*h*k_2);       %F_xy((x(i)+0.5*h),(y(i)+0.5*h*k_2));
    k_4 = f(x(i)+h,y_rk4(i)+h*k_3);             %F_xy((x(i)+h),(y(i)+k_3*h));

    y_rk4(i+1) = y_rk4(i) + (1/6)*(k_1+2*k_2+2*k_3+k_4)*h;  % main equation
end
end
