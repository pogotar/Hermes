function ris=MC_01(alpha)
% Parameters
h=0.3; %m
a1=80; a2=360;
in=[0 a1 a2];
%xv1=0.7; xv2=0.3;
par.v=0.2; par.w=0.6;

if(alpha>=in(1) && alpha<in(2))
    da=in(2)-in(1);
    alpha_ad=(alpha-in(1))/da;
    %out=AccCosAsim(alpha_ad,xv1);
    out=MCM_sshape(alpha_ad,par);
    ris.pos=h*out.pos;
    ris.vel=h/deg2rad(da)*out.vel;
    ris.acc=h/deg2rad(da)^2*out.acc;
    
elseif(alpha>=in(2) && alpha<in(3)) %dwell
    da=in(3)-in(2);
    alpha_ad=(alpha-in(2))/da;
    %out=AccCosAsim(alpha_ad,xv1);
    ris.pos=h;
    ris.vel=0;
    ris.acc=0;
     
else
    da=0;
    ris.pos=0;
    ris.vel=0;
    ris.acc=0; 
end
end