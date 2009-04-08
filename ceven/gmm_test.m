function maccuracy = gmm_test(Data, feats)
% feats is a logical array to determine feature inclusion. 
% test script for jon's myo data. 
data2 = reshape(Data, 1024*5, 9, 4, 4);
% indexes: time, class, trial, channel. (checked!)
nfeat = numel(find(feats>0)); 
% ok, let's take 128ms segment overlapping by 64ms & 
% compute each of the festure functions for each segment.
f = zeros(4, nfeat, 78*4, 9); % feature.
% indexes: channel, feature, time, class
for class = 1:9
	k = 1; 
	for trial = 1:4
		for t = 1:64:5120-128
			for chan = 1:4
				d = data2( t:t+128, class, trial, chan); 
				d = d - mean(d); % needed otherwise zer-crossings doesn't work! 
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

% compute gaussian statistics for each dim for each class. 
% (that's just mean and covariance matrix)
fmean = zeros(4*nfeat, 9); 
fcov = zeros(4*nfeat, 4*nfeat, 9); 
f2 = reshape(f, 4*nfeat, 78*4, 9); 
for class = 1:9
	d = squeeze(f2(:, :, class));
	d = d'; 
	fmean(:, class) = mean(d)'; 
	fcov(:,:,class) = cov(d); 
end

% use this mean and cov to compute the probability of the data -- 
% without the class labels. 
fp = zeros(78*4, 9, 9); 
% indexes: sample, real class, test class. 
for tclass = 1:9
	for class = 1:9
		sigma = squeeze(fcov(:,:,tclass)); 
		mu = fmean(:, tclass); 
		scl = 1/((2*pi)^(24/2)*sqrt(det(sigma))) ; 
		sigmainv = inv(sigma); 
		for samp = 1:78*4
			x = f2(:, samp, class) - mu; 
			p = scl*exp(-0.5 * x' * sigmainv * x); 
			fp(samp, class, tclass) = p; 
		end
	end
end
% measure the accuracy for each prediction. 
for class = 1:9
	[n, i] = max(squeeze(fp(:,class,:)), [], 2);
	accuracy(class) = numel(find(i==class)) / length(i); 
	disp(['class:' num2str(class) ' accuracy:' num2str(accuracy(class))]); 	
end
maccuracy = mean(accuracy); 
end % of function.

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