  
% create an interesting surface
[X,Y] = meshgrid(-15:0.5:10,-10:0.5:10);
Z= (X.^2-Y.^2);
% find saddle points
indices=saddle(Z)
% plot surface
surf(Z);
hold on
% mark saddle points with red dots in the same figure
for ii = 1:size(indices,1)
h = scatter3(indices(ii,2), indices(ii,1),Z(indices(ii,1), indices(ii,2)), 'red', 'filled');
h.SizeData = 120;
end
% adjust viewpoint
view(-115, 14);
hold off



function indices=saddle(M)
  
  % get the size of the matrix M
  [m,n]=size(M);
  
  indices=cell(m,2);
  
  for i=1:m
    idx_row=0; % initialize to zero
    
    for j=1:n
      
      s1=sum(M(i,:)<=M(i,j)); % if sum==n then every element is less than equal to M(i,j)
      s2=sum(M(:,j)>=M(i,j)); % if sum=m then every element in its column is greater than M(i,j)

      if s1==n && s2==m
          idx_row=i;
          indices(i,:)={i,j};  % insert the index i and j
        break; % break the inner loop, no need to go further
      end
    end
    % if idx_row=0 then the location M(i,:) has not been filledso filled
    % with empty array
   % if idx_row==0
      %indices(i,:)=; 
    %end
  end
end

