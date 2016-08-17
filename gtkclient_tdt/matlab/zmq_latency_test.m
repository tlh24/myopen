% check zmq single computer vs hop-out and hop-back latency
%

x = load('../latency_local.txt');

local_data  = x(x(:,1) == 0, :);
remote_data = x(x(:,1) == 1, :);

ticks = unique(x(:,2));

dt = nan(size(ticks));

for i=1:length(ticks)

    i1 = local_data(:,2)  == ticks(i);
    i2 = remote_data(:,2) == ticks(i);

    if sum(i1) == 1 && sum(i2) == 1
        dt(i) = (remote_data(i2, 3) - local_data(i1, 3)) .* 1e3;
    end
end

data.local = dt;

x = load('../latency_network.txt');

local_data  = x(x(:,1) == 0, :);
remote_data = x(x(:,1) == 1, :);

ticks = unique(x(:,2));

dt = nan(size(ticks));

for i=1:length(ticks)

    i1 = local_data(:,2)  == ticks(i);
    i2 = remote_data(:,2) == ticks(i);

    if sum(i1) == 1 && sum(i2) == 1
        dt(i) = (remote_data(i2, 3) - local_data(i1, 3)) .* 1e3;
    end
end

data.network = dt;

nhist(data, 'linewidth', 1);
g = gca;
g.TickDir = 'out';
g.Box = 'off';
set(gcf, 'Color', 'w');
xlabel('latency (ms)');

export_fig('latency_local_network.pdf', gcf);