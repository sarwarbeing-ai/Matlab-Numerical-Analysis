% RK2 method
% define the right hand side of the odes as function handle
f1=@(t,y1,y2) -0.02*y1+0.02*y2;
f2=@(t,y1,y2) 0.02*y1-0.02*y2;

y0=[1.50,0]; % inital value for y1 and y2

% create a time vector
tvec=0:1:100; % with step size 1

y=zeros(length(tvec),2); % to store the solution y1 and y2,first column is for y1 and second column for y2
h=1; % step size

% store the initial solution to the matrix y
y(1,1)=y0(1); % y1
y(1,2)=y0(2); % y2

for i=2:length(tvec)
    % RK2 method
    % for y1
    k1=h*f1(tvec(i-1),y(i-1,1),y(i-1,2));
    k2=h*f1(tvec(i-1)+h/2,y(i-1,1)+k1/2,y(i-1,2)+k1/2);
    
    % get the next solution for y1
    y1_next=y(i-1,1)+k2;
    
    % store the solution y1_next into y
    y(i,1)=y1_next;
    
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % for y2
    k1=h*f2(tvec(i-1),y(i-1,1),y(i-1,2));
    k2=h*f2(tvec(i-1)+h/2,y(i-1,1)+k1/2,y(i-1,2)+k1/2);
    
    % get the next solution for y2
    y2_next=y(i-1,2)+k2;
    
    % store the solution y2_next into y
    y(i,2)=y2_next;
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% part 2))
y1=y(:,1); % extract y1 from y
y2=y(:,2); % y2 as second column

plot(tvec,y1,'-r',tvec,y2,'-g') % plot both y1 and y2 on the same graph
legend("y1","y2") % plot the legend


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% part 3))

% get the value at 75 seconds

% first get the index of 75 seconds in the vector tvec
idx=find(tvec==75);

% y1 value at 75 seconds
y175=y1(idx);
y275=y2(idx);

% display the result to the commmand windwo
% [] to concatenate strings

disp(['y1 at 75 seconds is ',num2str(y175)]);
disp(['y2 at 75 seconds is ',num2str(y275)]);

