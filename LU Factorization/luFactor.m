function [L, U, P] = luFactor(A)
% luFactor(A)
%	LU decomposition with pivotiing
% inputs:
%	A = coefficient matrix
% outputs:
%	L = lower triangular matrix
%	U = upper triangular matrix
%       P = the permutation matrix



%set up
P = eye(size(A)); %identity matrix
r = 1;  % max number of pivots = m-1
c = 1;
L = zeros(size(A));
[n,m] = size(A)
SpareA = A;
x=0;
L1 = eye(size(A));
%pivot
while r < n
Max = max(A(r:n,c));
[row,col] = find(A==Max);
S1 = A(x+1,:); S2 = A(row,:);
P1 = P(x+1,:); P2 = P(row,:);
L_1 = L(x+1,:); L_2 = L(row,:);
if A(x,c) < (A(row,c))
   A(r,:) = S2; A(row,:) = S1;
   P(r,:) = P2; P(row,:) = P1;
   L(r,:) = L_2; L(row,:) = L_1;
end
while r < n
r = r+1;
K = A(r,c) / A(c,c);
A(r,:) = A(r,:) - (A(c,:)*K);
L(r,c)=K;

end
c = c+1;
r = c;
x = c;

end
U = A;
L = L1 + L








% 
% if row > r && itr ~=2
%    A(r,:) = S2;
%    A(row,:) = S1;
%    P(r,:) = P2;
%    P(row,:) = P1; 
%    lsub(r,c) = L2;
%    lsub(r,c) = L1;
% end
% 
% 
% K = A(r,c)/A(c,c);
% lsub(r,c) = K;
% A_1(r+1,:) = A(r,:) - (A(c,:) .* K);
% r = r+1;
% itr = itr+1;
% 
% if r > m 
%     c = c + 1;
%     r = n;
% A = A_1;
% itr = 1;
% end
% 
% end
% 
% 
% L = L + lsub;
% U = A_1;




end