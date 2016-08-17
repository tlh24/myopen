% pulserates.m

n_pos = 8;
n_vel = 8;

pd = linspace(0, 2*pi - 2*pi/n_pos, n_pos); 

f_min = 10;
f_max = 300;
f_range = f_max - f_min;

d = 0.75;    % distance from center (0 to 1)
theta = pi; % angle (0 to 2*pi)

% Pick some random frequencies and initial phase
F1  = 1/2 + (d./2).*cos(theta-pd); % 0 to 1
F1 = f_range .* F1 + f_min;
F1 = floor(F1);

d = 0.5;     % velocity wrt max vel (0 to 1)
theta = 0; % angle (0 to 2*pi)

f_min = 0;
f_max = 300;
f_range = f_max - f_min;

% Pick some random frequencies and initial phase
F2  =  d.*cos(theta-pd); % -1 to 1
F2(F2 < 0) = 0;
F2 = f_range .* F2 + f_min;
F2 = floor(F2);

F = [F1 F2];