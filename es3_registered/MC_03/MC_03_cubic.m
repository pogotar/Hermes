% funzione per il motion curve MC01

function [a, v, p] = MC_03_cubic(alpha) %alpha is the master angle
% parameters
h = 0.08;  % rise for the motio curve mc_01
a1 = 145;  % angles in which the moton curve change behaviour
a2 = 225; %
a3 = 235;
a4 = 295;
a5 = 360;
in = [0 a1 a2 a3 a4 a5];  % hermes suggests to create this vector which contains the time 
                 % or angle instants in which my motion curve changes
                 % behaviour
xv_1.v = 0.5; % parametro per regolare l'accelerazione
xv_1.w = 0.9; % parametro per regolare l'accelerazione


% dwell phase
if (alpha >= in(1)  && alpha < in(2)) 
    da = in(2) - in(1);   % calculate the range of my interval
    alpha_ad = (alpha-in(1))/da;  % adimensional value of alpha (I have to feed a function 
    p = 0;                   % ritrasformo in qualcosa di dimensionale
    v = 0;      
    a = 0;     
elseif (alpha >= in(2)  && alpha < in(3))% dwell   this time we don't use a function
     da = in(3) - in(2); % delta angle
     alpha_ad = (alpha-in(2))/da;
     [a, v, p] = MCM_cubic(alpha_ad, 0);  % <----- functiom
     p = h.*p;                   % ritrasformo in qualcosa di dimensionale
     v = h/deg2rad(da).*v;       %
     a = h/deg2rad(da)^2.*a;     %
elseif (alpha >= in(3)  && alpha < in(4))
     p = h;                   % ritrasformo in qualcosa di dimensionale
     v = 0;       %
     a = 0;     %
elseif (alpha >= in(4)  && alpha < in(5))
     da = in(5) - in(4); % delta angle
     alpha_ad = (alpha-in(4))/da;
     [a, v, p] = MCM_cubic(alpha_ad, 0);  % <----- functiom
     p = h-h.*p;                   % ritrasformo in qualcosa di dimensionale
     v = -h/deg2rad(da).*v;       %
     a = -h/deg2rad(da)^2.*a;     %
elseif (alpha >= in(5)  && alpha < in(6))
     p = 0;                   % ritrasformo in qualcosa di dimensionale
     v = 0;       %
     a = 0;     %
else
    da = 0;
    alpha_ad = 0;
    p = 0;
    v = 0;
    a = 0;

end

end

