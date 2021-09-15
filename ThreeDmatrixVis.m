A = [2 0 0;
0 cos(pi/12) -sin(pi/12);
0 sin(pi/12) cos(pi/12)];

figure; % figure1
visMatrixNorms3D(A, 1);

figure; % figure2
visMatrixNorms3D(A, 3/2);

figure; % figure3
visMatrixNorms3D(A, 2);

figure; % figure
visMatrixNorms3D(A, 4);


function norm_A = visMatrixNorms3D(A, p)
%% Basic checks
if size(A,1)~=3 || size(A,2)~=3
error('A must be a 3-by-3 matrix.')
elseif p < 1
error('p must be >= 1.')
end

%% Step 1: Initialization
nr_th = 41; nr_ph = 31;
th = linspace(0, 2*pi, nr_th);
ph = linspace(0, pi, nr_ph);
[T, P] = meshgrid(th, ph);
x1 = cos(T).*sin(P);
x2 = sin(T).*sin(P);
x3 = cos(P);
X = [x1(:), x2(:), x3(:)]';

disp(size(X))
%% Step 2: [FILL IN] Normalize columns of X into unit vectors
% use for loop to iterate over the columns of X
for j=1:size(X,2)
    % get the norm of jth column
    norm_jth=(sum(abs(X(:,j)).^p))^(1/p); % p-norm of each column
    
    % modify the matrix X
    X(:,j)=X(:,j)./norm_jth; % ./ element by element division
end

%% Step 3: [FILL IN] Form Y = A*X and then calculate norms of columns of Y
Y=A*X;

norms_Y=sum(abs(Y).^p,1); % sum of the matrix Y.^p along first dimension
                     % that is sum of each column
                     % .^ element by element power
                     
norms_Y=norms_Y.^(1/p); % p-norm
disp(size(Y))
%% Step 4: [FILL IN] Calculate p-norm of A (approximate)
% p-norm of A is nothing but the max of the vector norms_Y
norm_A=max(norms_Y);

%% Step 5: [FILL IN] Generate surface plots
% surface plot
subplot(1,2,1) % 2 panels, third argument is the index of the current panel
surf(X) % unit sphere

subplot(1,2,2)
surf(Y) % image of X
end