% Compute contours and scatterplots of the features of each class.
function [X,Y,G] = computePcaContour(PC,classLabelId)

% Valid classes
classId = unique(classLabelId);

% create meshgrid based on PC range
npts = 2^6;             % controls grid size and affects computation time
maxPC = ceil(max(PC(:)));
minPC = floor(min(PC(:)));
xgv = linspace(minPC,maxPC,npts);
ygv = linspace(minPC,maxPC,npts);
[X, Y] = meshgrid(xgv,ygv);

s = 0.25;

numClasses = length(classId);
G = zeros(npts,npts,numClasses);


% Compute contour level
for iClass = 1:length(classId)
    for iSample = find(classLabelId==classId(iClass))
        xp = X-PC(1, iSample);
        yp = Y-PC(2, iSample);
        G(:,:,iClass) = G(:,:,iClass) + exp(-0.5*((xp.^2 + yp.^2))/s);
    end
end

% Vectorized solution (slower) for contour level
% % replicate meshgrid for number of samples
% numSamples = length(allTrainClassVec);
% xxx = repmat(X,[1,1,numSamples]);
% yyy = repmat(Y,[1,1,numSamples]);
% pc1 = permute(PCTrainCoef(1,:),[1 3 2]);
% pc2 = permute(PCTrainCoef(2,:),[1 3 2]);
% 
% xxx2 = bsxfun(@minus,xxx,pc1);
% yyy2 = bsxfun(@minus,yyy,pc2);
% 
% gAll = exp(-0.5.*( (xxx2.^2 + yyy2.^2) ) ./s);
% 
% for iClass = 1:length(classId)
%     % get all the samples for this particuar class:
%     isThisClass = classvec==classId(iClass);
%     g(:,:,iClass) = sum(gAll(:,:,isThisClass),3);
% end
