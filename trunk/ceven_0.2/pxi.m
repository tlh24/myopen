function probs = pxi(data,means,mcovs,ncomp)
%
%  pxivals = pxi(data,means,mcovs,ncomp)
%
%  returns class-conditioned probabilities of data vectors
%  data assumed ROW-WISE, returns probs(i,j) = prob(x_i | model j)
%  

[ndat,dim]=size(data);
probs = zeros(ndat,ncomp);

for comp = 1:ncomp
 shiftdat = data - ones(size(data))*diag(means(:,comp));
 invcov = inv(mcovs(:,:,comp));
 dist = sum( shiftdat' .* (invcov*shiftdat') );
 theseprobs = 1/sqrt( (2*pi)^dim * det(mcovs(:,:,comp) )) * exp(-1/2 * dist )';
 probs(:,comp) = theseprobs;
end;



