% Specify the variables needed to solve this problem (ie. height of each section, diameter, radiaus, ...)
%   It is alwasy easier to work with variables (diameter_cyl = 25) than to use numbers everywhere, since a 
%   diameter indicates something specific but the number 25 could mean anything
h = 20
Cyl_D = 25;
Cyl_H = 19;               %Cylinder Max Volume
Cyl_R = Cyl_D/2;
V_CylMax = pi * ((Cyl_R)^2 * Cyl_H); 
%Cylinder Current Volume if > 19
V_Cyl = V_CylMax - (pi * (Cyl_R)^2 * h);
% cone max
VC_DT = 46;
VC_DL = 25;
VC_RT = VC_DT / 2;
VC_RL = VC_DL / 2;
VC_H = 14; 
VC = (pi * VC_H / 3) * ((VC_RT)^2 + (VC_RL)^2 + (VC_RT * VC_RL));
% Cone if less than 33 and greater than 19
VR_n = (VC_RT - VC_RL) * ((h - 19) / VC_H) + (VC_RL);
%VC_new = VC - ((pi * 13 / 3) * ((VR_n^2 + VC_RT^2) + (VR_n * VC_RT)));
Vs = pi * (h - Cyl_H) /3 *(VR_n^2 + VC_RL^2 + VR_n * VC_RL)
% Specify the height of the water
h = 20
% You can comment / uncomment lines below for testing. This will overwrite the previous line for h = 20.
% For submission, make sure all of the following lines are commented out and h = 20! (OR IT IS MARKED AS WRONG)
%h = 5
%h = 19
%h = 47
%h = -1
if h == 19 
    v = V_CylMax;
elseif h < 19 
    v = V_Cyl
elseif h == 23
        v = V_CylMax + VC
elseif h > 19 && h < 23
    v = Vs + V_CylMax
else
    disp('Error: Outside Demensions')
end
% Now compute the volume. Using conditional statments you will want to first check the height makes sense,
% and then solve the volume depending on what portion of the tank has been filled.
% Make sure that your volume is stored in the variable v! (OR IT WILL BE MARKED AS WRONG)
% You may find it more convenient to move v around in you code, it is only given here to indicate what variable to use.
fprintf('Cubic Meters of water %5.2f',v)
disp(VR_n)
disp(V_CylMax)
disp(Vs)