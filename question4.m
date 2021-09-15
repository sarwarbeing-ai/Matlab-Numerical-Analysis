function [best_R,best_L,min_cost]=question4(area,cost_straight,cost_curve,R1,R2,h)
% R1 and R2 are the limits for radius R
% h is the step size

% create a vector for R
R=R1:h:R2;

cost_vec=zeros(1,length(R)); % initialized with zeros
L_vec=zeros(1,length(R));

for i=1:length(R)
    % get the length of the rectangle
    % area=l*b+pi*r^2 where l*b is the area of the rectangle and pi*r^2 is
    % the area of the two semicircles(joining two semicircle will form a
    % circle)
    
    % l=(area-pi*r^2)/b length of the ractangle
    
    L=(area-pi*R(i)^2)/(2*R(i)); %  2R is the with of the rectangle
    
    % get the total fence length of the rectangle
    p=2*L; 
    
    % get the perimeter of the two curves
    c=2*pi*R(i); % 2*pi*r is the perimeter of a circle,since joing two curves will form a circle
                 % therefore ,the total perimeter of the two curves will be
                 % the perimeter of a whole circle with readius R(i)
    % get the cost
    cost=c*cost_curve+p*cost_straight;
    
    % store cost,L in the respective vector
    cost_vec(i)=cost;
    L_vec(i)=L;
    
end


%now get the minimum cost as well as best R and L

idx_best=find(cost_vec==min(cost_vec)); % get the index of minimum cost value

best_R=R(idx_best);
best_L=L_vec(idx_best);
min_cost=cost_vec(idx_best);

