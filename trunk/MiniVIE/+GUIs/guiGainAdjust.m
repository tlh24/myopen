function guiGainAdjust(SignalClassifier)
% Open a gui to set the output gain for channels associated with a signal
% classifer
%
% Note there can be issues if this gui is setup while a timer is running.
% so background processes should be paused until the figure is raised.
% e.g.
% obj.Presentation.stop;
% GUIs.guiGainAdjust(obj.SignalClassifier)
% obj.Presentation.start;
%
% Revisions:
%   3/25/2014 Armiger: changed input argument to be just the classifier.
%   stopping timers is left to the outside world

drawnow
f = UiTools.create_figure('Output Gain','guiClassifierChannels');
clf(f)

% classNames = GUIs.guiClassifierChannels.getSavedDefaults();
assert(~isempty(SignalClassifier),'Classifier does not exist');
classNames = SignalClassifier.getClassNames;

numClasses = length(classNames);
s = zeros(1,numClasses);
h = cell(1,numClasses);
t = zeros(1,numClasses);
for iClass = 1:numClasses
    s(iClass) = subplot(1,numClasses,iClass,'Parent',f);
    set(s(iClass),'XTick',[]);
    if iClass > 1
        set(s(iClass),'YTick',[]);
    end
    ylim(s(iClass),[0 10]);

    t(iClass) = text('Position',[0.5 5],'String',classNames{iClass},'Rotation',90,'Parent',s(iClass));
    
    h{iClass} = GUIs.widgetSlider('Parent',s(iClass));
    h{iClass}.Range = [0 10];
    h{iClass}.Type = {'Vertical'};
    h{iClass}.PatchWidth = 0.3;
    h{iClass}.Value = 0.5;
    
end

% convert scalar to array of gain values
if isequal(SignalClassifier.OutputChannelGain,1)
    % Init case
    SignalClassifier.OutputChannelGain = ones(1,numClasses);
end

% get the current values from the classifier and set current value
for iClass = 1:numClasses
    h{iClass}.Value = SignalClassifier.OutputChannelGain(iClass);
end

% assign the callback function
for iClass = 1:numClasses
    %perform update on mouse move
    % updateGain = @(src,evt) SignalClassifier.OutputChannelGain(i)
    %perform update on mouse button release
    h{iClass}.ButtonUpFcn = @(src,evt)updateGain(SignalClassifier,iClass,evt);
end

    % local function to set gain value
    function updateGain(hClassifier,classId,val)
        hClassifier.OutputChannelGain(classId) = val;
    end

drawnow

end
