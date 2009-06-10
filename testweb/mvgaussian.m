function [p] = mvgaussian(mu, sigma, x)
% calculates the multivariand gaussian probability 
% of x given mean mu and sigma. 
% should give the same results as mvgaussian.js 
n = size(sigma, 1); 
m = size(x, 1); 
scl = 1/(((2*pi)^(n/2))*sqrt(det(sigma))) ;
sigmainv = inv(sigma); 
x2 = x - ones(m, 1) * mu ; 
p = zeros(m, 1); 
for j = 1:m
%     x2(j,:)
    sum = x2(j,:) * sigmainv * x2(j,:)';
    p(j) = scl*exp(-0.5 * sum); 
end
