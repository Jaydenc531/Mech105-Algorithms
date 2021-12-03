
% A = [10, 2, -1; 
%     -3, -6, 2;
%     1, 1, 5];
    
A = [4,5,4;2,6,2;1,9,8];
% Set up b
b = [27; -61.5; -21.5];
% Solve for x
x = A\b;
%   [L,U,P]=lu(A)
[L, U, P] = luFactor(A)

% 
[m,n] = size(A);    %error message
if m ~= n 
 msg = "n x n Matrix Required";   
 error(msg)
end