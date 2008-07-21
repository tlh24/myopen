function [y,e,h,g] = lms_test(xn, xs, len, delay)
h = zeros(len, 1); 
x = xn + xs; 
gain = 1;
e = zeros(size(x)); 
e2 = zeros(size(x)); 
for k = 1:length(x)-len-delay
	y(k) = x(k+delay:k+len-1+delay) * h; 
	e(k) = (x(k) - y(k)); 
	h = h + 0.0002 * e(k) * x(k+delay:k+len-1+delay)'; 
	y2(k) = y(k) * gain; 
	e2(k) = abs(x(k)) - abs(y2(k)); 
	gain = gain + 1 * e2(k) ; 
	gain = abs(gain);
	if (gain > 3) 
		gain = 3;
	end
	g(k) = gain; 
end
[B,A] = butter(4, 0.05, 'high');
gg = filtfilt(B,A,g);
figure
plot(x, 'k'); 
hold on
plot(-1*gg, 'r');
plot(xs, 'b');  

figure
subplot(3,2,1)
plot(x); 
title('input'); 

subplot(3,2,2)
plot(xn, 'r'); 
hold on
plot(y); 
title('filter prediction vs. actual noise (red)'); 

subplot(3,2,3);
plot(xs-e, 'g');
hold on
plot(xs,'r'); 
plot(e); 
title('predicted signal (blue) vs. actual (red) vs. error(green)'); 

subplot(3,2,4); 
plot(xs-e);
title('signal error'); 

subplot(3,2,5); 
plot(xn);
title('actual noise'); 

subplot(3,2,6); 
plot(xs,'r'); 
hold on
plot(g);
title('gain'); 