function [y,e,h,nrm,x] = lms_test2(len, delay)
% test using simulated fixed-point arithmetic. 
t = 1:2e4; 
scale = 2^15; 
xn = round(cos( (t ./ 16.666) * 2 * pi)*scale); 
xs = round((randn( size(t) ) .* cos( (t ./ 102) * 2 * pi).^2 .* cos( (t ./ 156) * 2 * pi).^2)*scale*0.05); 
h = zeros(len, 1); 
x = xn + xs; 
nrm = zeros(size(t)); 
e = zeros(size(x)); 
y = zeros(size(x)); 
for k = 1:length(x)-len-delay
    xx = x(k+delay:k+len-1+delay); 
	y(k) = round(xx * h ./ 2^16); 
	e(k) = round(x(k) - y(k)); 
    % pow = mean(xx .* xx) / 2^16; 
    pow = max(abs(xx)); 
    nrm(k) = 2^16 / pow; 
	h = h + round( ((e(k)/128 + 1*sign(e(k))) * nrm(k) * x(k+delay:k+len-1+delay)') / 2^16); 
    h = min(h, 2^15); 
    h = max(h, -1*2^15); 
    % h'
end
plot(e); 
hold on
plot(xs, 'r'); 
title('blue - estimated, red - actual signal'); 