function [Bq, Aq, Bcoef, Acoef] = filter_quantize(B, A) 
% quantize filter coeficients & un-quantize so as to get some idea to
% the *actual* fixed-point filter performance. 
% assume that everything in broken into biquads. 
base = 14; % 15 bits with sign, but we use s2rnd mode when moving accumulator -> register.
Aroots = roots(A); 
Broots = roots(B); 
order = length(Aroots)/2; % the number of biquads.
scale = B(1).^(1/order); % distribute the gain across the biquads. 
for o = 0:order-1
	Acoef_biquad(o+1, :) = poly(Aroots(o*2+1 : o*2+2));
	Bcoef_biquad(o+1, :) = poly(Broots(o*2+1 : o*2+2))*scale; 
	figure
	pzplot(Acoef_biquad(o+1, :), Bcoef_biquad(o+1, :)); 
end
Acoef_biquad 
Bcoef_biquad
Bcoef = round(Bcoef_biquad .* 2^base); 
Acoef = round(Acoef_biquad .* 2^base); 
% now, reverse the process. 
Bq2 = Bcoef ./ 2^base; 
Aq2 = Acoef ./ 2^base; 
for o = 0:order-1
	Arootsq(o*2+1: o*2+2) = roots(Aq2(o+1, :)); 
	Brootsq(o*2+1: o*2+2) = roots(Bq2(o+1, :)); 
end
Aq = poly(Arootsq); 
Bq = poly(Brootsq).*B(1); 
% [H, W] = freqz(B, A); 
% [Hq, Wq] = freqz(Bq, Aq); 
% figure
% plot(W, db(abs(H)), 'b')
% hold on
% plot(W, db(abs(Hq)), 'r')
% axis([0 pi -100 0])