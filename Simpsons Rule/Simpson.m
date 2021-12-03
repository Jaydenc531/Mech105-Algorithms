function [I] = Simpson(x, y)
% Numerical evaluation of integral by Simpson's 1/3 Rule
% Inputs
%   x = the vector of equally spaced independent variable
%   y = the vector of function values with respect to x
% Outputs:
%   I = the numerical integral calculated
prompt1 = 'Same Length Vectors required';
prompt2 = ' x must be equally spaced';
szX = size(x,2);          % numper of points in x
szY = size(y,2);          % number of points in y
l = szX == szY;           % Does X equal Y?
if l ~= 1                 %If not throw error
error(prompt1)
end
                          % check for equally spaced x
shadowX = zeros(size(x));
b = x(szX);
a = x(1);
h= (b-a)/(szX-1);
shadowX(1)= a;
for t = (2:szX)
    shadowX(t) = a + h;
    a = shadowX(t);
end
test = shadowX/x;
test2 = x/shadowX;
if  test ~= test2
 error('x must be equally spaced');

end                        % end of check



b = x(szX);               % x last point
a = x(1);                 % x first point
h=(b-a);                  % width of points

n = szX;                 % n = number of points


if szX == 2                     % If 2 points use trap rule
    ANS = h/2 * (y(1)+y(szX));     % trap rule
    warning('Trap used')         % warn about trap usage

elseif mod(n,2)==0 %is even 
       odds =  (2:2:n-1);
     evens =  (3:2:n-1);
    ANS = h/(3*2) * (y(1)+y(n)+4*(sum(y(odds)))+2*(sum(y(evens))));

    if mod(n,2)==1 %is even
    ans2 =  h/2 * (y(n-1)+y(n));
   ANS = ANS + ans2;
end

end
    
  




        I = ANS;

end