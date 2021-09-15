% vector field
% first create x and y coordinates
[X,Y]=meshgrid(0:0.1:4,0:0.1:4); % 0:0.1:4 is a vector of x values
                                  % X and Y are matrices of x and y coordinates
                                  % such that each row of X corresponds to the 
                                  % copy of x and each column of Y
                                  % corresponds to the copy of y
             
                                  
                                  
% get the directional vectors these are nothing but dx/dt and dy/dt
dxdt=X.*(2-X-Y);

dydt=Y.*(X-Y);

% plot the vector field
figure("Name","Vector Field")
quiver(X,Y,dxdt,dydt)
xlim([0 4])
ylim([0 4])
