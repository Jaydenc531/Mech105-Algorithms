% Function parameters
q0 = 10;
R = 60;
L = 9;
C = 0.00005;

% Use linspace to create an array of 100 points between 0 and 0.8
t = linspace(0,0.8,100)
x = 1:100;
for i = 1:100
  j = t(i);
    x(i) = (q0*exp((-(R).*j)/(2*L))*(cos(sqrt(1/(L*C)-((R/(2*L))*(R/(2*L)))).*j)));

end
q = x
% Calculate the values of q

%q = (q0*exp((-(R).*t)/(2*L))*(cos(sqrt(1/(L*C)-((R/(2*L))*(R/(2*L))).*t))))

% Plot q vs t
subplot(1,2,1);
plot(t,q)
title('Charge on Capacitor vs Time');
xlabel('Time (s)');
ylabel('Charge (c)');



%axis([0 .08 -10 10])
% Make the capacitor 10x bigger
C = C*10

for i = 1:100
  j = t(i);
    x(i) = (q0*exp((-(R).*j)/(2*L))*(cos(sqrt(1/(L*C)-((R/(2*L))*(R/(2*L)))).*j)));

end
q2 = x
% Plot q2 vs t
subplot(1,2,2);
plot(t,q2)
title('Charge on 10x Capacitor vs Time');
xlabel('Time (s)');
ylabel('Charge (c)');
