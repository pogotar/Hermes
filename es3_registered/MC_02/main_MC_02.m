clear all;  close all;  clc;

%% motion curve 02 cubic-cubic

i=1;

for x = 0:0.1:360
    [a(i), v(i), p(i)] = MC_02_cubic(x);  % <----- function
    t(i) = x; % degrees
    i = i+1;
end

figure(1)
                plot(t,p,'Color', [0.9290 0.6940 0.1250],'LineWidth',2);  grid;  title('motion curve 02 cubic');
hold on;        plot(t,v,'Color', [0 0.4470 0.7410], 'LineWidth',2);  grid;
hold on;        plot(t,a,'r', 'LineWidth',2);  grid;

