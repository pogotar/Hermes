% lezione 6
clear all; close all; clc;
%------------------------------
omega=100*2*pi/60; % velocity of master angle rad/s
                   % because I have to produce 100 pieces/min
R=0.134;           % radius of the wheel in conctact
Cr=500*R;          % esternal torque
Jtot=4*0.284 + 4*0.007;     %total inertia simplified

i=1;
for x=0:0.01:360    % one turn
    res1=MC_01(x);
    t(i)=x;         % angle time
    time(i)=deg2rad(x)/omega; % second time
    % motion curve is referred to the movement of the wire
    % if I divide by R I get the angular displacement of the cilinder
    p1(i)=res1.pos/R;         
    v1(i)=res1.vel/R*omega;
    a1(i)=res1.acc/R*omega^2;
    
    if(v1(i)>0) % we are moving and so my torque  is 
        Cm(i)=Cr+Jtot*a1(i);
    else
        Cm(i)=0;
    end
    
    i=i+1;
end

figure;
subplot(4,1,1); plot(time,p1,'Color',[0.9290 0.6940 0.1250],'LineWidth',1);grid
subplot(4,1,2); plot(time,v1,'b','LineWidth',1);grid
subplot(4,1,3); plot(time,a1,'r','LineWidth',1);grid
% coppia sperimentata dal componente
subplot(4,1,4); plot(time,Cm,'Color',[0.4660 0.6740 0.1880],'LineWidth',1);grid

figure;
plot(v1*60/(2*pi),Cm,'k','LineWidth',1);grid;
