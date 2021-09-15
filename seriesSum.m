clc;clear; % clear command window,workspce

% n-values
n1=10; 
n2=10^5;
n3=10^9;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% smallest to largest

% now calculate the sum
n1_sum_sl=0;
n2_sum_sl=0;
n3_sum_sl=0;
for i=1:n1
    n1_sum_sl=n1_sum_sl+1/(i*(i+2));
end

for i=1:n2
    n2_sum_sl=n2_sum_sl+1/(i*(i+2));
end

for i=1:n3
    n3_sum_sl=n3_sum_sl+1/(i*(i+2));
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% largest to smallest
% now calculate the sum
n1_sum_ls=0;
n2_sum_ls=0;
n3_sum_ls=0;
for i=n1:-1:1
    n1_sum_ls=n1_sum_ls+1/(i*(i+2));
end

for i=n2:-1:1
    n2_sum_ls=n2_sum_ls+1/(i*(i+2));
end

for i=n3:-1:1
    n3_sum_ls=n3_sum_ls+1/(i*(i+2));
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% now compare
n1_actual=3/4-(2*10+3)/(2*(10+1)*(10+2));
n2_actual=3/4-(2*10^5+3)/(2*(10^5+1)*(10^5+2));
n3_actual=3/4-(2*10^9+3)/(2*(10^9+1)*(10^9+2));

disp("The differences:")
disp("Smallest to largest:")
fprintf('n=10 %f,n=10^5 %f,n=10^9 %f',n1_actual-n1_sum_sl,n2_actual-n2_sum_sl,n3_actual-n3_sum_sl)
fprintf('\n')
disp("*********************************************************************")
disp("The differences:")
disp("Largest to smallest:")
fprintf('n=10 %f,n=10^5 %f,n=10^9 %f',n1_actual-n1_sum_ls,n2_actual-n2_sum_ls,n3_actual-n3_sum_ls)
fprintf('\n')

