%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% this function does the cubic motion curve
%
% intput:
%   x = dimensionless time (csi in the slides)
%   par = generic parameter
%   
% output:
%   ris.pos = displacement
%   ris.vel = speed
%   ris.acc = acceleration
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function ris = MCM_cubic(x,par)

app = par; % to call the main in the function in the same way

% formulas on the slides
ris.acc = 6*(1-2*x);
ris.vel = 6*x*(1-x);
ris.pos = x*(3*x-2*x^2);
  

end

