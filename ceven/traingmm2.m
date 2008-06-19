%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% traingmm2.m	Train the GMMs to get parameters.
%
%	Inputs: TrainCoef       		    - feature coefficients for the training data
%           trainclass                  - target classes of the training set
%           gmm                         - structure containing GMM parameters
%	Outputs: alpha_tr                   - mixture weight vector for the training data
%            mean_tr                    - mean matrix for the training data
%            cov_tr                     - covariance matrix for the training data
% (c) Catherine Yonghong Huang,2004
% Modified by Blair Lock, 2004
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [alpha_tr,mean_tr,cov_tr]=traingmm2(TrainCoef,trainclass,gmm)
alpha_tr=[];                                                            % the vector of mixing coefficients
mean_tr=[];                                                             % the vecor of means of the mixture model components
cov_tr=[];                                                              % the matrix of covariance         
for i=1:max(trainclass)                                                 % for different classes
    idx=find(trainclass==i);                                            % indicies of class i data
    Train=TrainCoef(:,idx);                                             % training data for the class i
    [alphas,means,mcovs] = ...                                          % GMM parameters
        mixturefit2(Train',gmm.NumMix,gmm.constraint,gmm.eps,gmm.MinVar);            
    alpha_tr=[alpha_tr,{alphas}];                                       % add alphas for each class to Train alpha 
    mean_tr=[mean_tr,{means}];                                          % add mean for each class to Train mean 
    cov_tr=[cov_tr,{mcovs}];                                            % add mcovs for each class to Train cov
end   