% Note: half life is the life such that x0 becomes half
% so from the equation x(t)=x0*exp(-k*t),you need to find t such that
% x(t)=x0/2
% the equation becomes
% 1/2=exp(-k*t)
% exp(-k*t)-1/2=0
% so in order to find t(the age of the sample ),you need to find the root
 % of the above equation i.e find t such that exp(-k*t)-1/2 becomes zero
 
 
 % define the expression exp(-k*t)-1/2  as function handle
 f=@(t) exp(-0.000200100*t)-1/2;
 
 % now use fzero to find the root of the function f
 t0=0; % initial value for the root,you can take different if you want
 
 % now use fzero function from Matlab to find the root of the function f
 root=fzero(f,t0);

 
 % get the age of the sample
 age=round(root); % rounded to nearest inetger so that age would be displayed in whole numbrs
                  % if you do not to round ,remove round
                  
% display the age to the command window
disp(['Age of the sample is ',num2str(age),' years']) % [] use to concatenate strings
                                                       % num2str will
                                                       % convert number to
                                                       % string
                                                       
                                                       

 
 
 