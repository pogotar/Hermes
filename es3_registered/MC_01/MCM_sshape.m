%% Asymmetric trapezoidal speed profile (s-shape)
%    see slides

function [a, v, p] = MCM_sshape(alpha,alpha_par)

alpha_v = alpha_par.v;   % time instants in wich the acceleration changes
alpha_w = alpha_par.w;   % i extract them from par

% in dimensionless version h=1,   alpha_s = 1
A = 2/(alpha_v*(1-alpha_v+alpha_w));      % max value of positive acceleration
B = 2/((1-alpha_w)*(1-alpha_v+alpha_w));  % min value of negative acceleration
cv = A*alpha_v; % max value of velocity (see on slides **)

if(alpha <= alpha_v)  % positive constant acceleration
    a = A;
    v = A*alpha;
    p = 0.5*A*alpha^2;
elseif(alpha > alpha_v && alpha < alpha_w) % zero constant acceleration
    a = 0;
    v = A*alpha_v;
    p = A*alpha_v*(alpha-alpha_v/2); % negative constant acceleration
else
    a = -B;
    v = A*alpha_v-B*(alpha-alpha_w);
    p = A*alpha_v*(alpha-alpha_v/2)-B/2*(alpha-alpha_w)^2;

end

