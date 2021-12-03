% Define problem constants
g = 9.81;
mu = 0.55;
F = 150;
m = 25;
format long

%func = ((mu * m * g) / (cos(angle)+ mu * sin(angle)) - F    % Define the function to be solved for. Is the angle specified in radians or degrees?
%12345678.12345678.12345678.12345678.12345678.123456789
fm =  @(angle) ((mu.*m.*g) ./ (cosd(angle) + (mu.*(sind(angle)))))-F;
[angle fx ea iter] = bisect(fm,1,90)
% THINK, what makes range sense for angle?


theta = angle;  
theta = [0:90];
plot(theta,fm(theta))
fprintf('The root found is at %f\n converged with %f iterations \n' , angle, iter)
fprintf('Approximate error is %f\n and function at root is %f' , ea, fx)
% Plot your function. Does plotting give you an idea about where the root is?

% Finaly solve for the root using the bisection script given to you, which can be called as:
%[root, fx, ea, iter] = bisect(func, lower_bound, upper_bound);

% These variables will be checked for your final answer:
%angle =  % the angle in degree that solves this problem
%fx =     % the function value at your solved angle
%ea =     % the bisection error estimate
%iter =   % the number of bisection iterations