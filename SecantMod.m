% define a parameterized function as function handle
f=@(x,P,L,E,I,v) P*x.^2*(3*L-x)/6-E*I*v; % equation: EIv=Px^2(3*L-x)/6
                                         % f=Px^2(3*L-x)/6-EIv
% paramters
L=5.000*10^3;
I=84.80*10^6;
E=200.0*10^3;
P=45.00*10^3;
v=50;


x0= L/2; % initial guess
perterb=0.1;

precision=0.01;

% define another function of x as function handle
g=@(x) f(x,P,L,E,I,v); % g will be a function of x only whereas 
                      % f is a function x,P,L,E,I,v

% get the root
root=ModifiedSecant(g,perterb,x0,precision);

% round the root to nearest milimeter
root=round(root);
disp(['root=',num2str(root)]) % display the root

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function root=ModifiedSecant(f,perterb,x0,tol)
    % input:
    % f: function to find the root
    % x0: initial guess
    % perterb -a small perturbation
    % tol: tolerance(precision)
    
    % output:
    % root: root of  f
    
    % use while loop to go as per precision
    while 1
        
        x_next=x0-f(x0)*perterb*x0/(f(x0+perterb*x0)-f(x0)); % modified secant's formula ,find next approximate
        
        
        % check if the tolerance satisfied
        if abs(x_next-x0)<tol
            root=x_next;
            break % break the for loop
        else
            % update the initial guess for next iteration
            x0=x_next;
        end
        
    end
end

