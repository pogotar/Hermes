%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% this function does the cycloidal
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

function [acc, vel, pos] = MCM_cycloidal(x,par)

app = par; % to call the main in the function in the same way

% formulas on the slides
acc = 2*pi*sin(2*pi*x);
vel = 1-cos(2*pi*x);
pos = x-1/(2*pi)*sin(2*pi*x);


end

