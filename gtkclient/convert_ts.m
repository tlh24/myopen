file = 'Mango_20111211_RHA123_RHL1'; 
load([file '.mat']); 

% convert spike_ts to real units (wall clock)
% the bridge timestamps packets when they are recieved. 
% given the packetization, might want to apply a variable 
% delay based on where in the frame it is. 
% e.g. first packet in a frame will be delayed by almost a full frame time;
% last will be delayed by frame time * frame duty-cycle.
% will have to record packet number ...
BRIDGE_CLOCK  = 9155.2734375;
brtime = double(mstimer) / BRIDGE_CLOCK; % in seconds.
% now, to convert brtime to time (wall clock, synced with the BMI) likely
% will need a linear regression.
b2 = brtime - brtime(1); 
start_time = time(1); 
t = time - time(1); 
slope = mean(t ./ b2);

walltime = b2 * slope; 
% walltime should be synced with the BMI, but is based on the more accurate
% hardware clock on the bridge. 
% now put the spikes in walltime.
sts = spike_ts(spike_ts <= length(walltime)); 
spike_ts_wt = walltime(sts+1); 

% alright ... now our trick is to figure out the waveforms for units. 

fid = fopen([file '.chn']); 
chan = fread(fid, inf, 'uint8=>uint8'); 
chan = reshape(chan', 4, length(chan)/4); 
fclose(fid); 

fid = fopen([file '.nlg']); 
analog = fread(fid, inf, 'int8=>int8'); 
analog = reshape(analog', 4, length(analog)/4); 
fclose(fid); 

c = 6;
u = 1;
% only accept spikes that occurred when the channel was transmitted (obvi)
% channel is indexed by spike_ts, fortunately.
% unfortunately the channel can occur on any of the 4 transmitted. 
selector = chan == c; 
f = sum(selector, 1);
f = f(spike_ts+1); 
f = f'; 
ts = spike_ts(spike_ch == c & (f>0)); 
wanalog = sum(double(analog) .* selector2, 1); 
% not real sure how to do this -- align to the peak? 
wf = zeros(32, length(ts)); 
for i = 1:length(ts)
    tts = ts(i) * 6; 
    if(tts > 50 & tts < length(wanalog))
        seg = wanalog(tts-36:tts); 
        [~,indx] = max(seg); 
        offset = tts-37+indx;
        wf(:,i) = wanalog(offset - 15 : offset + 16); 
    end
end
plot(wf);   
% ts indexes the analog trace. but which one? 
% need to expand selector by 6 samples. 
selector2 = zeros(4, size(selector,2)*6); 
for i=1:6
    selector2(:,i:6:end) = selector; 
end

wanalog = reshape(wanalog, 6, length(wanalog)/6); 
wanalog2 = zeros(48, size(wanalog, 2)); 
wanalog2(1:6, 4:end) = wanalog(:, 1:end-3); 
wanalog2(7:12, 3:end) = wanalog(:, 1:end-2); 
wanalog2(13:18, 2:end) = wanalog(:, 1:end-1); 
wanalog2(19:24, 1:end) = wanalog(:, 1:end); 
wanalog2(25:30, 1:end-1) = wanalog(:, 2:end); 
wanalog2(31:36, 1:end-2) = wanalog(:, 3:end); 
wanalog2(37:42, 1:end-3) = wanalog(:, 4:end); 
wanalog2(43:48, 1:end-4) = wanalog(:, 5:end); 

wf = wanalog2(:, ts); 
plot(wf);




% sorting based on the 'old' method: threshold and PCA. 
for j = 1:4
	trace = double(analog(j, :));
	% filter it to make it look more awesome. 
	[B,A] = butter(2, 0.5); 
	trace = filtfilt(B,A,trace); 
    hit = trace > (std(trace)*3 + mean(trace));   
    dhit = diff(hit);
    ts = find(dhit > 0);
    wf = zeros(32, length(ts));
    for i = 1:length(ts)
        tts = ts(i); 
        wf(:, i) = trace(tts - 15 : tts + 16); 
    end
    c = cov(wf');
	pca = pcacov(c); 
    x = wf' * pca(:,1);
    y = wf' * pca(:,2);
	figure
    plot(x,y,'o')
    h = impoly;
    inside = inpoly([x y], h.getPosition);
    hold on
    plot(x(inside > 0),y(inside>0),'ro')
    hold off

	fname = ['wf' num2str(j) '.mat']; 
	save(fname, 'wf'); 
	unix(['./wf_plot ' fname]); 
    % figure
	% subplot(2,2,j); 
	wwf{j} = wf; 
    %plot(wf(:, inside > 0), 'k'); 
end

figure
stem(ts/6, ones(size(ts)))
hold on
ch6ts = spike_ts(spike_ch == 6);
stem(ch6ts, -1*ones(size(ch6ts)))
axis([0 1e5 -1.5 1.5])