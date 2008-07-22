[B2, A2] = ellip(6,1,75, 1/5);
scale = B(1).^(1/3); % 3 is half the order of the filter (the number of biquads)
[B3, A3] = ellip(2,1,75, 20/4000, 'high');
A2roots = roots(A2);
B2roots = roots(B2);
A3roots = roots(A3);
B3roots = roots(B3)
disp('lowpass biquads (3), float:'); 
[Bq2, Aq2, Bcoef2, Acoef2] = filter_quantize(B2, A2); 
disp('highpass biquad, float:'); 
[Bq3, Aq3, Bcoef3, Acoef3] = filter_quantize(B3, A3); 

disp('lowpass biquads (3), i16 :'); 
Bcoef2 
Acoef2
disp('highpass biquad i16 :'); 
Bcoef3
Acoef3