classdef Lda_Alt < SignalAnalysis.Classifier
    % LDA classifier from M. Powell's Myotrainer
    properties
        M
        S
        PRIOR
    end
    methods
        function train(obj)
            
            dataLabels = obj.TrainingData.getClassLabels();
            features3D = obj.TrainingData.getFeatureData();
            featureColumns = obj.convertfeaturedata(features3D);

            X = featureColumns';
            K = dataLabels;
            [obj.M, obj.S, obj.PRIOR] = createLda(X, K);

            obj.IsTrained = true;

        end
        function [classOut voteDecision] = classify(obj,featuresColumns)
            
            % M = 3  x 24
            % S = 24 x 24
            % u = 1  x 24  (feat1allChannels (1x8)  feat3allChannels (1x8)
            % feat3allChannels (1x8)

            numSamples = size(featuresColumns,2);
            classOut = zeros(1,numSamples);
            for i = 1:numSamples
                u = featuresColumns(:,i)';
                [POST, C] = fcn(obj.M,obj.S,u);
                classOut(i) = C;
            end
            
            voteDecision = classOut;
            
        end
        function close(obj)
            % Close
        end
    end
end

%function C = fcn(M,S,u)
function [POST, C] = fcn(M,S,u)

%#codegen


X = u;
PRIOR = ones(1, size(M,1))/size(M,1);

%function [C, POST] = Classify_with_LDA(M, S, PRIOR, X)
%#codegen

%% LDA CLASSIFIER - Categorise new data with linear discriminants.
%
%  [C, POST] = CLASSIFY(M, S, PRIOR, X) classifies the rows of the n by p
%  feature matrix X given the LDA parameters M, S, and PRIOR, where n is 
%  the number of observations or rows in X and p is the number of features 
%  or variates. The estimated classes are returned in the length n index
%  vector C, while the posterior probabilities for each class are
%  given in the n by g matrix POST, where g is the number of groups
%  classifiable by F. Each row corresponds to a row in X.
%
%  Adapted from: DISCRIM Toolbox Copyright (c) 1999 Michael Kiefte.

[g, ~] = size(M);
%n = size(X, 1);
Mm = mean(M);
Xs = (X - Mm)*S;
Ms = (M - repmat(Mm, g, 1))*S;
% Consider removing the log(PRIOR) if we stick with uniform probability.
L = 0.5*sum(Ms'.^2) - log(PRIOR) - Xs*Ms';
% [~, C] = min(L, [], 2);
% All we truly need is C.
[Lc, C] = min(L, [], 2);
Pr = exp(Lc(:,ones(1, g)) - L);
POST = Pr./repmat(sum(Pr, 2), 1, g);


end

function [M, S, PRIOR] = createLda(X, K)
%#codegen

%% LDA - Linear Discriminant Analysis
%
%  This function creates the LDA transformation using a training data set
%  with known class labels.  The user supplies and feature matrix X and 
%  class labels vector K to the function.  The function returns the class
%  feature means, scaling matrix and prior probabilities required for
%  classification.  
% 
%  M - MEANS: a g by p matrix where g is the number of classes and p is
%  the number of features or variates. Each row gives the mean vector
%  for each class.
%
%  S - SCALE: the p by p matrix which transforms the observed
%  within-groups covariance to identity. 
%
%  PRIOR: the prior probability is determined by the count of each class
%  as it appears in the training data set.
%
%  Adapted from: DISCRIM Toolbox Copyright (c) 1999 Michael Kiefte.

%% Calculate the LDA Parameters

%  Calculate prior probability;
[n, p] = size(X); %find dimensions of the feature matrix
G = sparse(1:n, K, 1); 
nj = sum(G);
nj = full(nj); %count occurrances of each class
g = length(nj); %find the number of classes
%  If you want the observation count from training to influence the prior
%  probability, use the following line to calculate PRIOR:
%PRIOR = nj/sum(nj);
%  If you want uniform prior probability, use the following line:
PRIOR = ones(1,g)/g;
%  Calculate the means for all features for all classes.
M = sparse(1:g, 1:g, 1./nj)*G'*X; 
%  Calculate the scaling matrix for the LDA.
Xc = X - M(K, :);
S = std(Xc);
S = diag(S);
[~, s, v] = svd(Xc*S/sqrt(n - g), 0);
r = sum(diag(s) > n*s(1)*eps);
if (r < p)
    v = v(:,1:r);
    s = s(1:r,1:r);
end
S = S/(triu(qr(s*v')));

end


