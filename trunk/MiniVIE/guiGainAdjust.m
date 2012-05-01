function guiGainAdjust(obj)

close all
f = figure;
%%
clf

classNames = SignalAnalysis.ClassifierChannels.getSavedDefaults();

N = length(classNames);
s = zeros(1,N);
h = cell(1,N);
t = zeros(1,N);
for i = 1:N
    s(i) = subplot(1,N,i);
    set(s(i),'XTick',[]);
    if i > 1
        set(s(i),'YTick',[]);
    end
    ylim(s(i),[0 10]);

    t(i) = text('Position',[0.5 5],'String',classNames{i},'Rotation',90);
    
    h{i} = GUIs.widgetSlider(s(i));
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
