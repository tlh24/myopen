function [alphas,means,mcovs]=mixturefit2(data,ncomp,constraint,eps,varlimit)
%
% [alphas,means,cov]=mixturefit2(data,ncomp,constraint,eps)
%
% data is assumed to be ROW_WISE
% ncomp - number of components in mixture
% constraint - 0 for full covariance, 1 for diagonal covariance, 2 for spherical covariance
% eps - value of regularizer on posteriors and on covariance -- try 1e-8.
% varlimit - variance limiting value
%
% mixturefit2 returns:
%
% alphas - the vector of mixing coefficients (cluster priors) %% mixture weights
% means - means of the mixture model components -- columnwise by component.
% cov - array of covariance matrices

% This function calls pxi (below) which calculates the probabilities p( x | i ).

%
% Define arrays dimensions:
%       

[ndata,dim]=size(data); %%dim is feature dimension, 16; ndata is data sequence, 20.

alphas = 1/ncomp * ones(ncomp,1);    % Mixture coefficients. %% a vector [ncompx1]
means = zeros(dim,ncomp);            % ncomp COLUMN vectors.   
dcovs = zeros(dim,dim,ncomp);        % Weighted data covariance matrices.
mcovs = zeros(dim,dim,ncomp);        % Model covariance matrices
pix = 1/(ncomp*ndata)*ones(ndata,ncomp);     % posteriors p( cluster i | datum x ).
				             % pix(j,k)=p(cluster k | x_j)
pxivals = zeros(ndata,ncomp);        % likelihoods pxivals(i,j)=p(x_i | cluster j)

% Initialize values in means and covs
% set means to ncomp randomly selected data vectors
u = randperm(ndata);                 %% random permutation of the integers from 1 to ndata
means = data(u(1:ncomp),: )';       %% randomly select a vector or vectors from data as means vector 
% set covariance matrices to identity
for i=1:ncomp
    mcovs(:,:,i) = diag(ones(1,dim)); %% initialize covariance matrices as an identity.
end;

L = -1.0e20;                          %% loglikehood
oldL = -2.0e20;                       %% set convergence threshold
cnt = 0;                              %% iteration number 

while ( (abs(L-oldL) > 0.00001) & (cnt < 500) )
%while ( (abs(L-oldL) > 0.0001) & (cnt < 500) )
    oldL = L;

% Do EM
%
% E-step, estimate posteriors %%p(i|x)
%

% Calculate p(x|i)
    pxivals = pxi(data,means,mcovs,ncomp);  %%p(x|i)=bi(Xt) is a vector of [20X1]
    pix = (ones(ndata,ncomp)*diag(alphas)) .* pxivals;  %%Pi*bi(Xt) is a vector of [20X1]
    norm = sum(pix,2)*ones(1,ncomp);  %%sum(Pk*bk(Xi))
    pix = pix ./ norm; %% estimate posteriors p(i|Xt)
   
% Regularize posteriors
    pix = ( pix + (eps * ones(ndata,ncomp)) ) / (1+eps*ncomp);

%
% M-step
%

% First the weighted means
    for comp=1:ncomp
        weightdata = (pix(:,comp)*ones(1,dim)).*data; %% P(i|Xt)*Xt  both are [20x16]
        means(:,comp) = sum( weightdata )' / sum( pix(:,comp) ); %%means=sum(P(i|Xt)*Xt)/sum(P(i|Xt))
    end; 
    % Next the data cov. matrices
    for comp=1:ncomp
        shiftdata = data - ones(size(data)) * diag(means(:,comp)); %% X-means
        weightdata = (pix(:,comp)*ones(1,dim)) .* shiftdata; %%P(i|Xt)*(X-means)
        dcovs(:,:,comp) = ( weightdata' * shiftdata ) / sum( pix(:,comp) ); %% cov=E[(X-means)^2]
    end;
    %%%%%%%02/19/2004
    %Variance Limiting to avoid singularities in the final model
    [r,c]=size(dcovs); 
    d=r*c;
    for i=1:d                                 
        if abs(dcovs(i))>varlimit   % minimum variance value
            dcovs(i)=dcovs(i);
        elseif dcovs(i)>=0
            dcovs(i)=varlimit;
        else
            dcovs(i)=-varlimit;
        end
    end
    %%%%%%%%%%%%%%%%%%
    
    if constraint==1       % Build the model covariance for DIAGONAL case
        for comp=1:ncomp
            mcovs(:,:,comp) = diag(diag( dcovs(:,:,comp) ) );
        end;
    elseif constraint==2     % Build the model covariance for SPHERICAL case
         for comp=1:ncomp
             mcovs(:,:,comp) = ( trace(dcovs(:,:,comp))/dim )*diag(ones(dim,1));
         end;
    else                    % if constraint==0 or anything else, model is UNCONSTRAINED
        for comp=1:ncomp
            mcovs(:,:,comp) = dcovs(:,:,comp);
        end;
    end; % for if constraint==1 


% Optimize the alphas
    alphas = sum(pix)'/ndata; ; % caculate mixture weight Pi=(1/T)*sum(P(i|Xt)

% Compute and print the log likelihood per data point
    probs = pxivals * alphas;;
    L = sum(log(probs)) / ndata;
    SI = max(log(probs));
    cnt;
    cnt = cnt + 1;
    
end; % training loop %% while





