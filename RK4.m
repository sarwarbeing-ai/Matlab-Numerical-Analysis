N_rk4=[];    
N_rk4(1) = 4136;% initial number of cells

% define the right hand side of the ode uising function handle
F_tN=@(t,N) 0.616*(log(16.87+33000/N))*sqrt(N);

% define the vector t
t=[0]; % will be filled more later and t starts at 0
h=0.2; % step size

% maxiter
maxIter=500;

% use for loop to find number of months taken to grow 13000 cells
for i=1:maxIter                       
    k_1 = F_tN(t(i),N_rk4(i));                       %F_tN(t(i),N(i));
    k_2 = F_tN(t(i)+0.5*h,N_rk4(i)+0.5*h*k_1);       %F_tN(t(i)+0.5*h,N(i)+0.5*h*k_1);
    k_3 = F_tN(t(i)+0.5*h,N_rk4(i)+0.5*h*k_2);       %F_tN((t(i)+0.5*h),(N(i)+0.5*h*k_2));
    k_4 = F_tN(t(i)+h,N_rk4(i)+h*k_3);               %F_tN((t(i)+h),(N(i)+k_3*h));
    t(i+1)=t(i)+h; % fill the next value of t
    N_rk4(i+1) = N_rk4(i) + (1/6)*(k_1+2*k_2+2*k_3+k_4)*h;  % main equation
    
    if N_rk4(i+1)>=13000
        break; % break the loop
    end
end


% display the number of months taken to grow 13000 cells
 Nmonths=t(end);
 disp("The number of months taken to grow 13000 cells is ")
 disp(Nmonths)
 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 % plot t vs N
 plot(t,N_rk4,'-g','LineWidth',2)
 xlabel("month")
 ylabel("Number of cells")
 title("Cancer cell growth ")
