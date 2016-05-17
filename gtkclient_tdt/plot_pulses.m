% plot pulses

clear
load t.txt

freqs = [20  40  55  70  90  105  125  140  ...
	160  175  195  210  230  245  260 280];
ipi=1./freqs;
n = length(freqs);

for i=1:n
    r{i} = t( t(:,1) == i, 2);
    f.(sprintf('f%d', freqs(i))) = 1./diff(r{i});
end

%{
clf;
for i=1:n
    plot(r{i}(1:end-1), diff(r{i})*1e3,'o')
    title(sprintf('ch %d; f=%d Hz; ipi=%0.2f ms', ...
        i, freqs(i), 1e3*ipi(i)));
    pause
end
%}

%{
clf;
for i=1:n
    %plot(r{i}(1:end-1), diff(r{i})*1e3,'o')
    plot(r{i}(1:end-1), 1./diff(r{i}),'o')
    title(sprintf('ch %d; f=%d; ipi=%f', i, freqs(i), ipi(i)));
    hline(freqs(i),'r--');
    %hold on
    pause
end
%}


clf;
xxx = nhist(f, 'samebins', 'pdf', 'location', 'NorthEast');
xlabel('Actual Frequency');
yloc = linspace(1.19, 0.51, n);
hold on;
for i=1:n
    plot(freqs(i), yloc(i), 'kv');
end
g = gca;
g.XLim = [0 350];
g.YLim = [0 1.25];
title('Joeys Method');
%title(sprintf('ch %d; f=%d; ipi=%f', i, freqs(i), ipi(i)));
%hold on
%pause
%rasterplot(r, 'k');
%}

%%
%{
tmp = brewermap(16, 'spectral');
for i=1:16
    c{i} = tmp(i,:);
end
rasterplot(r, c);

g = gca;
g.XLim = [5.02 5.04];
vline(5.03, 'k--');
vline(5.03+1e-3,'k--');
%}
