function hAxes = guiPlotPca(TrainingData)

% plot the principle components of the current training data

% TODO break out the math and the plotting parts


% hData = obj.TrainingData;
hData = TrainingData;

features3D = hData.getFeatureData;
featureColumns = SignalAnalysis.Classifier.reshapeFeatures(features3D,hData.ActiveChannels);

% s = obj.SignalClassifier;
% featureColumns = s.convertfeaturedata(features3D);

numSamples = size(featureColumns,2);

if numSamples == 0
    errordlg('No Training Data')
    return
end


meanFeats = mean(featureColumns,2);        % find mean of each TD feature on a per channel basis
stdFeats = std(featureColumns,0,2);        % find standard dev. of TD features
minStd = 0.001;                            % Prevents std dev from being zero thus causing div by zero below
stdFeats = max(stdFeats,minStd);           % Prevents std dev from being zero thus causing div by zero below

normFeats = featureColumns;                         % copy data
normFeats = bsxfun(@minus,normFeats,meanFeats);     % subtract mean
normFeats = bsxfun(@rdivide,normFeats,stdFeats);    % divide by std dev

[Evec,~,~] = svd(normFeats);       % Only compute Eigenvectors using training data
allPC = (normFeats'*Evec)';     % full array of PC Training Coefficients


classLabelId = hData.getClassLabels;
uniqueLabels = unique(classLabelId);
numClasses = length(uniqueLabels);


% Sub-sample PC Inputs:
targetNum = 500;
subSample = ceil(length(allPC)./targetNum);
allPC = allPC(:,1:subSample:end);
classLabelId = classLabelId(:,1:subSample:end);

f = figure(99);
drawnow;
clf(f)


pcIds = {[1 2] [3 4] [5 6]}; % nPrincipleComponents
for i = 1:3%length(pcIds)
    if i == 1
        % show the first to principle components larger on subplots 1,2
        hAxes(i) = subplot(2,2,[1 2],'Parent',f);
    else
        hAxes(i) = subplot(2,2,i+1,'Parent',f);
    end
    
    PC = allPC(pcIds{i},:);        % array of PC Training Coefficients trimmed to NPC to keep
    [X,Y,G] = computePcaContour(PC,classLabelId);
    
    % plot result
    c = distinguishable_colors(length(uniqueLabels));
    
    hold(hAxes(i),'on');
    hScatter = zeros(1,numClasses);
    hContour = zeros(1,numClasses);
    for iClass = 1:numClasses
        % create contour outlines
        contourLevel = [ 2 3 ];
        [~, hContour(iClass)] = contour(hAxes(i),X,Y,G(:,:,iClass),contourLevel);
        set(hContour(iClass),'Color',c(iClass,:));
        
        % plot data samples
        thisClass = classLabelId == uniqueLabels(iClass);
        hScatter(iClass) = plot(hAxes(i),PC(1,thisClass),PC(2,thisClass),'.');
        set(hScatter(iClass),'Color',c(iClass,:));
    end
    axis(hAxes(i),[min(PC(:)) max(PC(:)) min(PC(:)) max(PC(:))]);
    xlabel(hAxes(i),''); ylabel(hAxes(i),''); title(hAxes(i),'');
    
    if i == 1
        % place legend on first axes
        hLegend = legend(hContour,hData.ClassNames(uniqueLabels));
        set(hLegend,'Location','NorthEastOutside');
    end
end

end % guiPlotPca
