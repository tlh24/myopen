%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% testgmm2.m	test and predict the classes using average probablity of each frame.
%
%	Inputs: testdata                    - test data
%           mean_tr                     - mean matrix for the training data
%           cov_tr                      - covariance matrix for the training data      		 
%           alpha_tr                    - mixture weight vector for the training data
%                     
%	Outputs: predict                    - predict classes
%            
% (c) Catherine Yonghong Huang,01/30/2004
% Modified by Blair Lock, 2004
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [predict]=testgmm2(testdata,mean_tr,cov_tr,alpha_tr)
[dum,numPat] = size(testdata);                                          % number of patterns in data
numMix = size(alpha_tr{1},1);                                           % determine number of mixtures
sz = length(mean_tr);                                                   % number of possible classes
predict = [];                                                           % initialize predict class vector
for index = 1:numPat                                                    % loop for number of windows
    features = testdata(:,index);                                       % Get feature set for one pattern 
    for i = 1:sz                                                        % loop for number of classes
        pxival = pxi(features',mean_tr{i},cov_tr{i},numMix);            % GMMi
        prob(i,:) = pxival*alpha_tr{i};                                 % probability of GMMi
        %loglike(i,:)=sum(log(prob(i,:)));
    end
    %class=compet(loglike);
    class = compet(prob);                                               % choose the max probability
    classpredict = vec2ind(class);                                      % Get the index of max prob
    predict = [predict classpredict];                                   % add pattern prediction to vector 
end   

 
            