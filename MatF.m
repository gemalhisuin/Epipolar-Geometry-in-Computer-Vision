function F=MatF(x1,x2)
% x1,x2 : vectors of coordinates ...x...

% initialisation
A = [];
N=8;

% Write a martix of homogeneous linear system Af=0
x1=transpose(x1);
x2=transpose(x2);
A=[x1(:,1).*x2(:,1),x1(:,1).*x2(:,2),x1(:,1),x1(:,2).*x2(:,1),x1(:,2).*x2(:,2),x1(:,2),x2(:,1),x2(:,2),ones(length(x1(:,1)),1)];

% ---> TODO <---

% Solving the linear system for the estimate of F by SVD
% Ist step: Linear solution
[U,S,V] = svd(A);
Fest = reshape(V(:,end),3,3);

% 2nd step: Constraint enforcement
Fest=Fest';
[U,S,V] = svd(Fest);
F = U*diag([S(1,1) S(2,2) 0])*V';
