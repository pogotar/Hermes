%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% this function does the cubic motion curve
%
% intput:
%   x = dimensionless time (csi in the slides)
%   par = generic parameter
%   
% output:
%   pos = displacement
%   vel = speed
%   acc = acceleration
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [acc, vel, pos] = MCM_cubic(x,par)

app = par; % to call the main in the function in the same way

% formulas on the slides
acc = 6*(1-2*x);
vel = 6*x*(1-x);
pos = x*(3*x-2*x^2);


end


