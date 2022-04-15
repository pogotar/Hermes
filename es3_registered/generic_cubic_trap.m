clear all;  close all;  clc;

%% general cubic curve display
i=1;
par = 0;    % we have no parameters for this motion curve
for x = 0:0.001:1
    [a(i), v(i), p(i)]= MCM_cubic(x,par);  % <-------   result of the cubic given
    t(i) = x;   % to have all the time
    i = i+1;
end

figure(1)
subplot(3,1,1);  plot(t,p,'Color', [0.9290 0.6940 0.1250],'LineWidth',2);  grid;  title('generic cubic curve display')
subplot(3,1,2);  plot(t,v,'Color', [0 0.4470 0.7410], 'LineWidth',2);  grid
subplot(3,1,3);  plot(t,a,'r', 'LineWidth',2); grid


%% generic trapezoidal curve display
clear all;

alpha_par.v = 1/3;   % fine acc costante positiva
alpha_par.w = 1.5/3;   % inizio acc costante negativa

i=1;
par = 0;    % we have no parameters for this motion curve
for x = 0:0.001:1
    [a(i), v(i), p(i)]= MCM_sshape(x,alpha_par);  % <-------   result of the trapezoidal given
    t(i) = x;   % to have all the time
    i = i+1;
end

figure(2);  
subplot(3,1,1);  plot(t,p,'Color', [0.9290 0.6940 0.1250],'LineWidth',2);  grid;  title('generic trapezoidal curve display')
subplot(3,1,2);  plot(t,v,'Color', [0 0.4470 0.7410], 'LineWidth',2);  grid
subplot(3,1,3);  plot(t,a,'r', 'LineWidth',2); grid