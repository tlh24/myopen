% simpler version of the matched-filter. 

load 'spike.mat'; 
load 'noise.mat'; % about 5 minutes of data sampled at 24.414 ksps.

% first, test that both template and matched filters work for high SNR. 
% suppose the neuron spikes at 100Hz -- this is 240 samples. 
ll = length(noise)/240; 
sig = [repmat(spike, ll, 1) zeros(ll, 200)]; 

sig = reshape(sig', ll*240, 1);  

x = sig + noise * 100000; 
% first algo -- set the threshold at 3.5 std, template match on that. 
% have to filter off LFP.  
[b,a] = butter(2, 300/12.2e3, 'high'); 
x2 = filter(b,a,x);

thresh = std(x2)*3.5; 
tc = x2 > thresh; 
tc = diff(tc); 
tci = find(tc > 0); 
wf = zeros(numel(tci), 40); 
for i = 1:40
	wf(:,i) = x2(tci - 17 + i); 
end

% sort based on L2 distance from template (known). 
% this way we don't have to do PCA & conventional sorting.
r = repmat(spike, numel(tci), 1); 
d = mean((wf - r).^2, 2); 
% need to set another threshold for optimal sorting -- again can't do this
% in practice, but for testing sorting it's useful.
valid = (mod(tci, 240) > 14) & (mod(tci, 240) < 22); 
invalid = 1 - valid; 
[ds, di] = sort(d); 
vs = valid(di); 
is = invalid(di); 
% binary search to find the threshold where false positive and false
% negative are equal.
step = numel(tci) / 2; 
u = step; 
while(step > 1)
	step = step/2; 
	uu = round(u); 
	false_negative = sum(vs(uu:end)); % right of threshold
	false_positive = sum(is(1:uu)); % left of threshold
	if(false_negative > false_positive)
		u = u + step;
	else
		u = u - step;
	end
end
threshold = ds(uu); 
% well, anyway .. 
% now need to do matched filter sorting. 
len = numel(x2); % note this is on the high-passed signal. 
al = zeros(40, len); 
for k = 1:40
	al(k,k:len) = x2(1:len-k+1);
end
R = cov(al'); 
alpha = 1/sqrt(spike*R^(-1)*spike');

mf = alpha.*(R^(-1)*spike'); 

xmf = filter(mf(end:-1:1), [1 zeros(1,39)], x2); 

% todo: generate ROC curves for these. 