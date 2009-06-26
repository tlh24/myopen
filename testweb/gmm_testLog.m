function [f, fmean, fcov, fp, fplog, maccuracy] = gmm_testLog(Data, feats, neig)
% feats is a logical array to determine feature inclusion. 
% test script for jon's myo data.
% (/myopen/ceven/Kuniholm062708_Fulldata.mat)
data2 = reshape(Data, 1024*5, 9, 4, 4);
% indexes: time, class, trial, channel. (checked!)
nfeat = numel(find(feats>0)); 
window = 100 ; % length of the window, in samples. 
overlap = 50 ; % how much the windows overlap.
windows = floor((5120-window) / overlap + 1); 
f = zeros(4, nfeat, windows*4, 9); % feature.
% indexes: channel, feature, time, class
for class = 1:9
	k = 1; 
	for trial = 1:4
		for t = 1:overlap:5120-window
			for chan = 1:4
				d = data2( t:t+window, class, trial, chan); 
				d = d - mean(d); % needed otherwise zero-crossings doesn't work! 
				j = 1; 
				if(feats(1)>0) f(chan, j, k, class) = c_mav(d); j = j+1; end
				if(feats(2)>0) f(chan, j, k, class) = c_wl(d); j = j+1; end
				if(feats(3)>0) f(chan, j, k, class) = c_wl2(d); j = j+1; end
				if(feats(4)>0) f(chan, j, k, class) = c_zc(d); j = j+1; end
				if(feats(5)>0) f(chan, j, k, class) = c_ssc(d); j = j+1; end
				if(feats(6)>0) f(chan, j, k, class) = c_rms(d); j = j+1; end
			end
			k = k+1; 
        end
	end
end
% zscore the samples to make the cov. matrices better conditioned. 
fz = reshape(f, 4*nfeat, windows*4*9);
fz = zscore(fz');
% figure; plot(fz); 
fz = fz';
f = reshape(fz, 4, nfeat, windows*4, 9); 
if 0
	for feat1 = 1:nfeat
		for feat2 = feat1+1:nfeat
			for chan1 = 1:4
				for chan2 = chan1+1:4
					c_plot(f,chan1,feat1,chan2,feat2); 
				end
			end
		end
	end
	% embed it into a html file ... 
	cd('analy_img'); 
	h = fopen('index.html','w+'); 
	fprintf(h,'<html><body><table>\n'); 
	for feat1 = 1:nfeat
		for chan1 = 1:4
			fprintf(h,'<tr>\n'); 
			for feat2 = 1:nfeat
				for chan2 = 1:4
					fprintf(h,'<td>'); 
					name = [ '<img src="' ...
						'chan1-' num2str(chan1) '-feat1-' num2str(feat1) ...
						'-chan2-' num2str(chan2) '-feat2-' num2str(feat2) ...
						'.jpg"</img>']; 
					if feat2 > feat1 && chan2 > chan1 
						fprintf(h,name); 
					end
					fprintf(h,'</td>'); 
				end
			end
			fprintf(h,'</tr>\n'); 
		end
	end
	fprintf(h, '</table></body></html>'); 
	fclose(h); 
	cd('..'); 
end
% use PCA to reduce the dimensionality of the data. 
% neig = 12 ; % number of eigenvectors.
f3 = reshape(f, 4*nfeat, windows*4*9); 
totalcv = cov(f3'); 
[V,D] = eig(totalcv); 
V = V(:, end-neig+1:end); % use V to compress the data!

% compute gaussian statistics for each dim for each class. 
% (that's just mean and covariance matrix)
fmean = zeros(neig, 9); 
fcov = zeros(neig, neig, 9); 
f2 = reshape(f, 4*nfeat, windows*4, 9); 
for class = 1:9
	d = squeeze(f2(:, :, class)); %% !!!
	d = d' * V; % reduce the dimensionality.  
	fmean(:, class) = mean(d)'; 
	fcov(:,:,class) = cov(d);
end

    
% use this mean and cov to compute the probability of the data -- 
% without the class labels. 
fp = zeros(windows*4, 9, 9); 
fplog = zeros(windows*4, 9, 9); 
% indexes: sample, real class, test class. 
for tclass = 1:9
	for class = 1:9
		sigma = squeeze(fcov(:,:,tclass)); 
		mu = fmean(:, tclass); 
		scl = 1/(((2*pi)^(neig/2))*sqrt(det(sigma))) ;
        scllog = -1*( log(2*pi)*(neig/2) + log(det(sigma))/2)
		[U,S,VV] = svd(sigma); 
		ss = diag(S); 
		[indx,y] = find(ss > 0.01); 
		ss(indx) = 1./ss(indx); 
		S = diag(ss,0);
		sigmainv = VV*S*U'; 
		%sigmainv = inv(sigma); 
        [m, n] = size(sigmainv);
            
		for samp = 1:windows*4
			x = (V'*f2(:, samp, class)) - mu; 
			e = -0.5 * x' * sigmainv * x; 
			if(e > 0)
				disp('ohnoes'); 
			end
			p = scl*exp(e); 
            plog = scllog + e; 
			fp(samp, class, tclass) = p; 
            fplog(samp, class, tclass) = plog; 
        end
	end
end
% measure the accuracy for each prediction. 
for class = 1:9
	[n, i] = max(squeeze(fp(:,class,:)), [], 2);
	accuracy(class) = numel(find(i==class)) / length(i); 
	disp(['class:' num2str(class) ' accuracy:' num2str(accuracy(class))]); 	
end
maccuracy = mean(accuracy)
ff = reshape(fp, [404*81,1]);
hist(ff, 150)

% compute probability individually by feature. 
fcov2 = zeros(4, 4, nfeat, 9);
% channel, channel, features, classes
fmean2 = zeros(4, nfeat, 9);
for class = 1:9
    d = squeeze(f2(:, :, class));
    for feat = 1:nfeat
	dd = squeeze(d(:, feat:(feat+3)));
    fcov2(:, :, feat, class) = cov(dd);
    fmean2(:, feat, class) = mean(dd)';end
end
fp2 = zeros(nfeat, windows*4, 9, 9); 
for tclass = 1:9
	for class = 1:9
        for feat = 1:nfeat
            sigma2 = squeeze(fcov2(:, :, feat, tclass));
            mu2 = squeeze(fmean2(:, feat, tclass));
            scl2 = 1/(((2*pi)^(neig/2))*sqrt(det(sigma2))) ;
            sigmainv2 = inv(sigma2); 
            [m, n] = size(sigmainv2);
            for samp = 1:windows*4
                x2 = f2(feat:(feat+3), samp, class)-mu2;
                p2 = scl2*exp(-0.5*x2'*sigmainv2*x2);
                fp2(feat, samp, class, tclass) = p2;
            end
        end
    end
end

sumsq = squeeze(fp2(1,:,:,:));
for feat = 2:nfeat
    sumsq = sumsq .* squeeze(fp2(feat,:,:,:));
end
for class = 1:9
	for tclass = 1:9
		p3 = lda_test(f2(:, :, class), f2(:, :, tclass),9, 9)
	end
end
% for class = 1:9
% 	[n, i] = max(squeeze(fp3(:,class,:)), [], 2);
% 	accuracy2(class) = numel(find(i==class)) / length(i); 
% 	disp(['class:' num2str(class) ' accuracy2:' num2str(accuracy2(class))]); 	
% end
% maccuracy2 = mean(accuracy2);

end % of function.



    

function norm = normalize(n)
n22 = sqrt(diag(n'*n));
norm = n./(ones(size(n,1),1)*n22');
end

function s = c_mav(d)
	% compute the mean absolute value.
    
	s = mean(abs(d));
end

function s = c_wl(d)
	%compute the waveform length. 
	% make it length-invariant.
	dx = 1/length(d); 
	s = sum(sqrt(diff(d).^2 + dx*dx)); 
end

function s2 = c_wl2(d)
	% not the actual distance, but much simpler to compute!
	s2 = sum(abs(diff(d))); 
end

function s = c_zc(d)
	%count the zero crossings. 
	a = d>0; 
	b = xor(a(1:end-1), a(2:end)); 
	s = numel(find(b)) / length(d); 
end

function s = c_ssc(d)
	% count the slope sign changes. 
	e = diff(d); 
	a = e>0; 
	b = xor(a(1:end-1), a(2:end)); 
	s = numel(find(b)) / length(d); 
end

function s = c_rms(d)
	%calculate the root mean squared value. 
	% kinda like mean absolute value, i guess. 
	s = sqrt(mean(d.^2)); 
end

function [] = c_plot(f,chan1,feat1,chan2,feat2)
	% plots the different classes in different colors/styles
	h = figure; 
	hold on
	name = ['chan1-' num2str(chan1) '-feat1-' num2str(feat1) ...
		'-chan2-' num2str(chan2) '-feat2-' num2str(feat2)] ; 
	title(name); 
	styl = jet(9); 
	for class=1:9
		plot(squeeze(f(chan1,feat1,:,class)), ...
			squeeze(f(chan2,feat2,:,class)), '.', ...
			'Color', styl(class, :)); 
		ax = axis(); 
		patch([ax(1),ax(2),ax(2),ax(1)],[ax(3),ax(3),ax(4),ax(4)],[0,0,0])
		% eh, plot it again.
		% plot(squeeze(f(chan1,feat1,:,class)), ...
		%	squeeze(f(chan2,feat2,:,class)), '.', ...
		%	'Color', styl(class, :)); 
	end
	print('-djpeg','-r80',['analy_img/' name '.jpg'])
	close(h); 
end