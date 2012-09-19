function guiGainAdjust(obj)

f = UiTools.create_figure('Class Names','guiClassifierChannels');
clf(f)

% classNames = GUIs.guiClassifierChannels.getSavedDefaults();
assert(~isempty(obj.SignalClassifier),'Classifier does not exist');
classNames = obj.SignalClassifier.ClassNames;

N = length(classNames);
s = zeros(1,N);
h = cell(1,N);
t = zeros(1,N);
for i = 1:N
    s(i) = subplot(1,N,i,'Parent',f);
    set(s(i),'XTick',[]);
    if i > 1
        set(s(i),'YTick',[]);
    end
    ylim(s(i),[0 10]);

    t(i) = text('Position',[0.5 5],'String',classNames{i},'Rotation',90,'Parent',s(i));
    
    h{i} = GUIs.widgetSlider('Parent',s(i));
    h{i}.Range = [0 10];
    h{i}.Type = {'Vertical'};
    h{i}.PatchWidth = 0.3;
    h{i}.Value = 0.5;
    
end

%%
obj.SignalClassifier.VirtualChannelGain

for i = 1:N
    h{i}.Value = obj.SignalClassifier.VirtualChannelGain(i);
end


for i = 1:N
%     updateGain = @(src,evt) obj.SignalClassifier.VirtualChannelGain(i)
    h{i}.ButtonUpFcn = @(src,evt)updateGain(i,evt);
end

    function updateGain(classId,val)
        obj.SignalClassifier.VirtualChannelGain(classId) = val;
    end


end
