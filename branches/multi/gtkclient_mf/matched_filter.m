% testing matched - filter sorting. 

cd /data/20111203/
file = 'Mango_RHA123_LHA1_20111203';
load([file '.mat']); 

fid = fopen([file '.nlg']);
analog = fread(fid, inf, 'int8=>int8');
analog = reshape(analog', 4, length(analog)/4);
fclose(fid);

% don't forget to GUNZIP here.
fid = fopen([file '.chn']);
chan = fread(fid, inf, 'uint8=>uint8');
chan = reshape(chan', 4, length(chan)/4);
fclose(fid);

% looks like channel 4 is the best; channel 1 also good. 
a = double(analog(1,:)); 
% get snippets, so as to find a template.
indx = find(a > 110); 
indx = indx(indx > 32 & indx < length(a) - 32); 
indx = indx(diff(indx) > 1); 

% plot(a(1:1e6)); 
% ax = axis(); 
% hold on
% stem(indx, 110*ones(size(indx)), 'r'); 
% axis(ax); 
% looks okay.

wf = zeros(32, length(indx)); 
[Y,B] = INTERP(zeros(40,1),4,4,0.5);
for k = 1:length(indx)
	h = indx(k); 
	d = interp(a(h-14:h+25), 4); % length 160 now.
	[~,u] = max((d)); % align to the peak (derivative did not work).
	if(u <= 60 || u >= 160-64)
		u = 80;
	end
	wf(:,k) = d(u-15*4:4:u+16*4); 
end
% visualize it!
save('wf.mat', 'wf');
unix('wf_plot wf.mat');

% do PCA.  fer sorting.
c = cov(wf');
coef = pcacov(c);
x = wf' * coef(:,1); 
y = wf' * coef(:,2); 

% lasso-sort it.
plot(x,y,'o'); 
h = impoly;
inside = inpoly([x y], h.getPosition);
hold on
plot(x(inside > 0),y(inside>0),'ro')
hold off

wf_sort = wf(:, inside > 0); 
save('wf.mat', 'wf_sort');
unix('wf_plot wf.mat');

%uff, finally we have a template!
template = mean(wf_sort, 2);
plot(template)

%ok, for the matched filter need the covariance matrix of the noise. 
% guess I need to lag the raw streaming data here..
len = 1e7; 
al = zeros(32, len); 
for k = 1:32
	al(k,k:len) = a(1:len-k+1);
end
R = cov(al'); 
alpha = 1/sqrt(template'*R^(-1)*template);

mf = alpha.*(R^(-1)*template); 

b = filter(mf, [1 zeros(1,31)], a); 
plot(a(1:1e6)); 
hold on
plot(b(1:1e6), 'r');

% too confusing!  need to do this for a synthetic signal.
% 
% % alright. do the same thing.
% 
% % get snippets, so as to find a template.
% indx = find(a > 100); 
% indx = indx(indx > 32 & indx < length(a) - 32); 
% indx = indx(diff(indx) > 1); 
% 
% plot(a(1:1e6)); 
% ax = axis(); 
% hold on
% stem(indx, 110*ones(size(indx)), 'r'); 
% axis(ax); 
% %looks okay.
% 
% wf = zeros(32, length(indx)); 
% [Y,B] = INTERP(zeros(40,1),4,4,0.5);
% for k = 1:length(indx)
% 	h = indx(k); 
% 	d = interp(a(h-19:h+20), 4); % length 160 now.
% 	[~,u] = max((d)); % align to the peak (derivative did not work).
% 	if(u <= 60 || u >= 160-64)
% 		u = 80;
% 	end
% 	wf(:,k) = d(u-15*4:4:u+16*4); 
% end
% % visualize it!
% save('wf.mat', 'wf');
% unix('wf_plot wf.mat');
% 
% % do PCA.  fer sorting.
% c = cov(wf');
% coef = pcacov(c);
% x = wf' * coef(:,1); 
% y = wf' * coef(:,2); 
% 
% % lasso-sort it.
% plot(x,y,'o'); 
% h = impoly;
% inside = inpoly([x y], h.getPosition);
% hold on
% plot(x(inside > 0),y(inside>0),'ro')
% hold off
% 
% wf_sort = wf(:, inside > 0); 
% save('wf.mat', 'wf_sort');
% unix('wf_plot wf.mat');
% 
% %uff, finally we have a template!
% template = mean(wf_sort, 2);
% plot(template)
% 
% % let's systematically vary the noise and plot the performance of the L1
% % and L2 norm.  this will be useful for the paper!
% load('template2.mat')
% results = zeros(6, 20); 
% for j = 1:20
% 	[B,A] = cheby1(3, 2, [500/15e3 7.5/15]); 
% 	a = filter(B,A,randn(1,1e6)); % background noise.
% 	a = a * j * 5; % scale up the noise.
% 	for k = 1:1000:1e6
% 		a(k:k+31) = a(k:k+31) + temp2'; 
% 	end
% 	len = 1e6; 
% 	al = zeros(32, len); 
% 	for k = 1:32
% 		al(k,1:len-k+1) = a(k:len);
% 	end
% % 	R = cov(al'); 
% % 	alpha = 1;
% % 
% % 	mf = alpha.*(R^(-1)*template); 
% % 
% % 	b = filter(mf, [1 zeros(1,31)], a); 
% % 	plot(zscore(a(1:1e6))); 
% % 	hold on
% % 	plot(zscore(b(1:1e6)), 'r');
% 
% 	% this does not seem to offer much processing gain!  compare it with the
% 	% MSE (L2) method? 
% 	q = al - repmat(temp2, 1, len); 
% 	r2 = sum(q.^2, 1);
% 	% or the L1 method?
% 	r1 = sum(abs(q), 1);
% 	
% 	% calculate correct / incorrect.
% 	thresh = (mean(r2(1:1000:end)) + mean(r2(500:1000:end))) * 0.5; % assuming they have the same variance.
% 	th = r2 < thresh; % custom thresholds.
% 	correct = sum(th(1:1000:1e6))
% 	th(1:1000:1e6) = 0; 
% 	incorrect = sum(th)
% 	results(1,j) = correct; 
% 	results(2,j) = incorrect; 
% 	results(3,j) = thresh; 
% 	
% 	thresh = (mean(r1(1:1000:end)) + mean(r1(500:1000:end))) * 0.5;
% 	th = r1 < thresh; 
% 	correct = sum(th(1:1000:1e6))
% 	thsav = th; % also must be user-set.
% 	th(1000:1000:1e6) = 0; 
% 	th(1:1000:1e6) = 0; 
% 	th(2:1000:1e6) = 0; 
% 	th(3:1000:1e6) = 0; 
% 	th(999:1000:1e6) = 0; 
% 	th(998:1000:1e6) = 0; 
% 	th(997:1000:1e6) = 0; 
% 	incorrect = sum(th) 
% % 	plot(r1); 
% % 	hold on
% % 	plot(thsav * 0.01, 'r'); 
% % 	plot(th * 0.009, 'k'); 
% 	results(4,j) = correct; 
% 	results(5,j) = incorrect; 
% 	results(6,j) = thresh; 
% end