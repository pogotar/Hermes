% funzione for the cycloidal curve

function [a, v, p] = MC_01_cycloidal(alpha) %alpha is the master angle
% parameters
h = 0.3;  % rise for the motio curve mc_01
a1 = 80;  % angles in which the moton curve change behaviour
a2 = 360; %
in = [0 a1 a2];  % hermes suggests to create this vector which contains the time 
                 % or angle instants in which my motion curve changes
                 % behaviour
xv_1 = 0; % parametro da passare a MCM_cubic che per ora è zero

% rise phase
if (alpha >= in(1)  && alpha < in(2)) 
    da = in(2) - in(1);   % calculate the range of my interval
    alpha_ad = (alpha-in(1))/da;  % adimensional value of alpha (I have to feed a function 
                                  % which always starts from zero)
    [a, v, p] = MCM_cycloidal(alpha_ad, xv_1);  % <-------- function
    p = h.*p;                   % ritrasformo in qualcosa di dimensionale
    v = h/deg2rad(da).*v;       %
    a = h/deg2rad(da)^2.*a;     % 

% dwell   this time we don't use a function
else if (alpha >= in(2)  && alpha < in(3))
     da = in(3) - in(2);
     alpha_ad = (alpha-in(2))/da;
     p = h;
     v = 0;
     a = 0;

     %return into position
else
    da = 0;
    alpha_ad = 0;
    p = 0;
    v = 0;
    a = 0;
end


end

