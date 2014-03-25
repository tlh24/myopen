classdef TrainingDataAnalysis < PatternRecognition.TrainingData
    % Tools for loading, viewing and manipulating training data
    % Extends TrainingData to add analysis
    %
    % Usage:
    %   s = dir('WR*.trainingData');
    %   obj = TrainingDataAnalysis;
    %   for i = 1:length(s)
    %       obj.loadTrainingData(s(i).name);
    %       obj.plot_emg_per_class()
    %   end
    properties
        fullFileName = '';
    end
    methods
        function [success, fullFile] = loadTrainingData(obj,fname)
            % Overload load method to store filename for use in plotting /
            % analysis
            
            if nargin < 2
                [success, fullFile] = loadTrainingData@PatternRecognition.TrainingData(obj);
            else
                [success, fullFile] = loadTrainingData@PatternRecognition.TrainingData(obj,fname);
            end
            
            obj.fullFileName = fullFile;
        end
        function plot_emg_unfiltered(obj,channels,prefix)
            % Plot all the emg data in the training file - unfiltered
            %
            % Usage:
            % plot_emg_unfiltered(obj,channels);
            
            if nargin < 2
                channels = obj.ActiveChannels;
            end
            if nargin < 3
                % set output file prefix
                prefix = '';
            end
            
            chEmg = obj.getContinuousData(channels);
            
            % Plot result
            clf
            h = plot(chEmg);
            numChannels = length(channels);
            %c = distinguishable_colors(numChannels);
            c = distinguishable_colors(16);
            for i = 1:length(h)
                set(h(i),'Color',c(channels(i),:));
            end
            
            C = num2cell(channels);
            legend(cellfun(@(x)sprintf('%2d',x),C,'UniformOutput',false));
            
            [p, f, e] = fileparts(obj.fullFileName);
            dataLabel = [f '_unfiltered'];
            title(dataLabel, 'Interpreter','None');
            
            % Save output
            outFile = [prefix dataLabel '.tif'];
            if ~exist(outFile,'file')
                saveas(gcf,outFile);
            else
                fprintf('[%s] File "%s" already exists\n',mfilename,outFile);
            end
            
        end
        function plot_emg_filtered(obj,channels,prefix)
            % Plot all the emg data in the training file - filtered
            %
            
            if nargin < 2
                channels = obj.ActiveChannels;
            end
            if nargin < 3
                % set output file prefix
                prefix = '';
            end
            
            
            chEmg = obj.getContinuousData(channels);
            chEmg = TrainingDataAnalysis.filter_data(chEmg);
            
            % Plot result
            clf
            h = plot(chEmg);
            %ylim([-20 20]);
            %ylim([-15 15]);
            
            numChannels = length(channels);
            %c = distinguishable_colors(numChannels);
            c = distinguishable_colors(16);
            for i = 1:length(h)
                set(h(i),'Color',c(channels(i),:));
            end
            
            C = num2cell(channels);
            legend(cellfun(@(x)sprintf('%2d',x),C,'UniformOutput',false));
            
            [p, f, e] = fileparts(obj.fullFileName);
            dataLabel = [f '_filtered'];
            title(dataLabel, 'Interpreter','None');
            
            % Save output
            outFile = [prefix dataLabel '.tif'];
            if ~exist(outFile,'file')
                saveas(gcf,outFile);
            else
                fprintf('[%s] File "%s" already exists\n',mfilename,outFile);
            end
            
        end
        function plot_emg_per_class(obj,channels,activeClasses)
            % Plot numClasses x 1 subplots, with filtered EMG for each
            % class
            %
            % Usage:
            % TrainingDataAnalysis.plot_emg_per_class('WR_TR01_*.dat');
            
            if nargin < 2
                channels = obj.ActiveChannels;
            end
            
            % get the labels
            classNames = obj.ClassNames;
            classLabels = obj.getClassLabels;
            if nargin < 3
                activeClasses = unique(classLabels);
            end
            
            % get all the data and filter it
            [chEmgRaw, dataBreaks] = obj.getContinuousData(channels);
            chEmg = TrainingDataAnalysis.filter_data(chEmgRaw);
            
            % class labels label frames of data to label individual
            % samples:
            emgLabels = reshape(repmat(classLabels(:),[1 obj.WindowSize])',1,[]);
            
            clf
            ch = channels;
            c = distinguishable_colors(16);
            
            for i = 1:length(activeClasses)
                iClass = activeClasses(i);
                thisClass = iClass == emgLabels;
                h = subplot(length(activeClasses),1,i);
                hold on
                
                strClass = classNames{iClass};
                acronymClass = upper(strClass(regexp(strClass, '\<.')));
                ylabel(acronymClass)
                set(h,'YTick',[]);
                if i < length(activeClasses)
                    set(h,'XTick',[]);
                else
                    xlabel('Time t, sec');
                end
                
                classEmg = chEmg(thisClass,:);
                
                %xlim([0 5]);
                %                 for i = 1:size(classEmg,2)
                %                     classEmg(:,i) = classEmg(:,i) + (i*0.5);
                %                 end
                x = repmat((1:size(classEmg,1))',1,size(classEmg,2));
                y = classEmg;
                xFactor = 1/1000*50/200; % samples per second * refresh rate / windowsize
                
                hLines = plot(x*xFactor,y);
                
                c = distinguishable_colors(16);
                for iLine = 1:length(hLines)
                    set(hLines(iLine),'Color',c(channels(iLine),:));
                end
                
                
                %                 for iLine = 1:length(channels)
                %                     rgb = c(channels(iLine),:);
                %                     set(hLines(iLine),'Color',rgb,...
                %                         'LineWidth',1);
                %                 end
                
                
                w = obj.WindowSize;
                xBreaks = w:w:sum(iClass == classLabels)*w;
                xBreaks = [xBreaks; xBreaks; nan(size(xBreaks))];
                yBreaks = repmat([-10; 10; NaN],1,size(xBreaks,2));
                %plot(xBreaks(:),yBreaks(:),'k-');
                
                %%
                %                 set(hLines,'Visible','off');
                %                 set(hLines(ch),'Visible','on');
                %set(hLines([1 7]),'Visible','off');
                %     xlim([0 size(emgData,2)]);
                ylim([-1.2 1.2]);
                %ylim([-1 9])
                if i == 1
                    title(obj.fullFileName,'Interpreter','None');
                end
            end
            drawnow
            
            [p, f, e] = fileparts(obj.fullFileName);
            dataLabel = [f '_classEmg'];
            
            % Save output
            outFile = [dataLabel '.tif'];
            if ~exist(outFile,'file')
                saveas(gcf,outFile);
            else
                fprintf('[%s] File "%s" already exists\n',mfilename,outFile);
            end
            
        end
        
        function plot_emg_with_breaks(obj,doFilter)
            
            [p, f, e] = fileparts(obj.fullFileName);
            dataLabel = [f '_emgChannels'];

            l = obj.getAllClassLabels;
            l = obj.getClassLabels;
            [l, sortOrder] = sort(l);
            
            channels = obj.ActiveChannels;
            chEmg = obj.getContinuousData(channels,sortOrder);
            
            %doFilter = false
            if doFilter
                chEmg = TrainingDataAnalysis.filter_data(chEmg);
                dataLabel = strcat(dataLabel,'_filtered');
            end
            
            c = distinguishable_colors(obj.NumActiveChannels);
            
            w = obj.WindowSize;
            classChange = [find(diff(l) ~= 0) length(l)];
            
            for i = 1:obj.NumClasses
                strClass = obj.ClassNames{i};
                acronymClass = upper(strClass(regexp(strClass, '\<.')));
                acronymClassname{i} = acronymClass;
            end
            
            
            xTickLabels = acronymClassname(l(classChange));
            xTick = mean( [[0 classChange(1:end-1)*w]; classChange*w] );
            
            clf
            h = gca;
            hold on
            
            for i = 1:obj.NumActiveChannels
                plot(chEmg(:,i),'Color',c(i,:))
            end
            title(sprintf('%s Total=%d Active=%d',dataLabel,...
                length(obj.getClassLabels),length(obj.getAllClassLabels)) , 'Interpreter','None');
            set(h,'XTick',xTick)
            set(h,'XTickLabel',xTickLabels);
            
            if doFilter
                rng = max(std(chEmg)) * 10;
                ylim([-rng rng])
            end
            
            yLimits = ylim;
            
            xBreaks = classChange * w;
            xBreaks = [xBreaks; xBreaks; nan(size(xBreaks))];
            yBreaks = repmat([yLimits(1); yLimits(2); NaN],1,size(xBreaks,2));
            
            plot(xBreaks,yBreaks,'k')
            
            C = num2cell(channels);
            legend(cellfun(@(x)sprintf('%2d',x),C,'UniformOutput',false));
            
            
            
            % Save output
            outFile = [dataLabel '.png'];
            if ~exist(outFile,'file')
                win = get(gcf,'Position');
                pad = 50;
                screencapture(gcf,[pad pad win(3)-(1*pad) win(4)-(1*pad)],outFile);
            else
                fprintf('[%s] File "%s" already exists\n',mfilename,outFile);
            end
            
        end
        function plot_features_sorted_class(obj)
            
            %%
            
            % create title for plot
            [p, f, e] = fileparts(obj.fullFileName);
            dataLabel = [f '_features'];
            titleTxt = sprintf('%s Total=%d Active=%d',dataLabel,...
                length(obj.getClassLabels),length(obj.getAllClassLabels));
            
            
            % find transitions in data set for class labeling
            %l = obj.getAllClassLabels;
            l = obj.getClassLabels;
            [l, sortOrder] = sort(l);
            classChange = [find(diff(l) ~= 0) length(l)];
            
            for i = 1:obj.NumClasses
                strClass = obj.ClassNames{i};
                acronymClass = upper(strClass(regexp(strClass, '\<.')));
                acronymClassname{i} = acronymClass;
            end
            
            xTickLabels = acronymClassname(l(classChange));
            xTick = mean( [[0 classChange(1:end-1)]; classChange] );
            
            clf
            
            for iFeature = 1:obj.NumFeatures
                
                h = subplot(4,1,iFeature);
                hold on
                
                if iFeature == 1;
                    title(titleTxt , 'Interpreter','None')
                end
                
                f = obj.getFeatureData;
                
                c = distinguishable_colors(obj.NumActiveChannels);
                
                for i = 1:obj.NumActiveChannels
                    iCh = obj.ActiveChannels(i);
                    plot(squeeze(f(iCh,iFeature,sortOrder)),'Color',c(i,:))
                end
                
                if iFeature == 4;
                    set(h,'XTick',xTick)
                    set(h,'XTickLabel',xTickLabels);
                else
                    set(h,'XTick',[])
                end
                
                ylabel(obj.FeatureNames{iFeature})
                
                yLimits = ylim;
                
                xBreaks = classChange;
                xBreaks = [xBreaks; xBreaks; nan(size(xBreaks))];
                yBreaks = repmat([yLimits(1); yLimits(2); NaN],1,size(xBreaks,2));
                
                plot(xBreaks,yBreaks,'k')
            end
            
            % Save output
            outFile = [dataLabel '.png'];
            if ~exist(outFile,'file')
                win = get(gcf,'Position');
                pad = 50;
                screencapture(gcf,[pad pad win(3)-(1*pad) win(4)-(1*pad)],outFile);
            else
                fprintf('[%s] File "%s" already exists\n',mfilename,outFile);
            end
            
            
        end
        
        
        
    end
    methods (Static = true)
        function plot_mav_per_class(filterSpec,channels)
            % Plot all the emg data in the training file - unfiltered
            %
            % Usage:
            % TrainingDataAnalysis.plot_emg_per_class('WR_TR01_*.dat');
            set(0,'DefaultLineLineWidth',3)
            if nargin < 1
                filterSpec = '*.dat';
            end
            
            % Load Data
            [d fileName] = TrainingDataAnalysis.load_data(filterSpec);
            
            if nargin < 2
                channels = d.activeChannels;
            end
            
            filteredData = TrainingDataAnalysis.filter_data(d.emgData);
            %%
            % channels = 16
            
            % plot Data
            clf
            ch = channels;
            c = get(gca, 'ColorOrder');
            for iClass = 1:length(d.classNames)
                thisClass = iClass == d.classLabelId;
                
                h = subplot(length(d.classNames),1,iClass);
                hold on
                ylabel(d.classNames{iClass})
                set(h,'YTick',[]);
                set(h,'XTick',[]);
                ylim([-2 2]);
                
                if ~any(thisClass)
                    continue
                end
                classEmgFrames = filteredData(1:16,:,thisClass);
                mav = squeeze(mean(abs(classEmgFrames),2));
                
                ylabel(d.classNames{iClass})
                
                hLines = plot(mav');
                
                c = distinguishable_colors(16);
                for i = 1:length(hLines)
                    set(hLines(i),'Color',c(i,:));
                end
                
                %                 xBreaks = size(d.emgData,2):size(d.emgData,2):sum(thisClass)*size(d.emgData,2);
                %                 xBreaks = [xBreaks; xBreaks; nan(size(xBreaks))];
                %                 yBreaks = repmat([-10; 10; NaN],1,size(xBreaks,2));
                %plot(xBreaks(:),yBreaks(:),'k-');
                
                %%
                set(hLines,'Visible','off');
                set(hLines(ch),'Visible','on');
                ylabel(d.classNames{iClass})
                %     xlim([0 size(emgData,2)]);
                ylim([-.1 1])
                if iClass == 1
                    title(fileName,'Interpreter','None');
                end
            end
            
            
            [p f e] = fileparts(fileName);
            dataLabel = [f '_classMav'];
            
            % Save output
            outFile = [dataLabel '.tif'];
            if ~exist(outFile,'file')
                saveas(gcf,outFile);
            else
                fprintf('[%s] File "%s" already exists\n',mfilename,outFile);
            end
            
        end
        function features3D = plot_one_class_emg(filterSpec,channels)
            
            if nargin < 1, filterSpec = '*.dat'; end
            if nargin < 2, channels = 1:16; end
            
            % Load Data
            [d fileName] = TrainingDataAnalysis.load_data(filterSpec);
            classLabelId = d.classLabelId;
            classNames = d.classNames;
            % filter
            filteredData = TrainingDataAnalysis.filter_data(d.emgData);
            %channels = d.activeChannels;
            
            % regenerate features (overwrite those loaded from the data file)
            thresh = 0.3;
            [numChannelsAll, numSamplesPerWindow, numSamples] = size(d.emgData);
            numFeatures = 4;
            features3D = zeros(numChannelsAll,numFeatures,numSamples);
            for i = 1:size(filteredData,3)
                features3D(:,:,i) = feature_extract(...
                    filteredData(:,:,i),size(filteredData,2),...
                    thresh,thresh);
            end
            return
            %%
            clf
            ch = channels;
            
            c = [get(gca, 'ColorOrder');get(gca, 'ColorOrder')];
            for iClass = 1:length(classNames);
                for iFeature = 3;
                    for iChannel = ch
                        thisClass = iClass == classLabelId;
                        classEmg = filteredData(iChannel,:,thisClass);
                        
                        h = subplot(length(ch),2,2*(iChannel-1)+1);
                        hLines = plot(reshape(classEmg,1,[])','Color',c(iChannel,:));
                        set(h,'YTick',[]);
                        set(h,'XTick',[]);
                        %     xlim([0 size(emgData,2)]);
                        ylim([-2.5 2.5])
                        if iChannel == 1
                            title({fileName classNames{iClass}},'Interpreter','None');
                        end
                        
                        
                        featureData = squeeze(features3D(iChannel,iFeature,thisClass));
                        %             if any(iFeature == [2 3 4])
                        %                 %featureData = log(featureData+1);
                        %                 featureData = exp(featureData)-1;
                        %             else
                        %                 %featureData = featureData*3;
                        %                 featureData = featureData*1;
                        %             end
                        
                        
                        h = subplot(length(ch),2,2*(iChannel-1)+2);
                        hLines = plot(featureData,'Color',c(iChannel,:));
                        set(h,'YTick',[]);
                        set(h,'XTick',[]);
                        %     xlim([0 size(emgData,2)]);
                        ylim([-1 500])
                        if iChannel == 1
                            title({fileName [classNames{iClass} ...
                                [' - Feature #' num2str(iFeature) ' Thresh=' num2str(thresh)]]},...
                                'Interpreter','None');
                        end
                        
                        
                    end
                    
                    drawnow
                    saveas(gcf,fullfile('img\',[fileName '-' classNames{iClass} '-Feature' num2str(iFeature) '.tif']),'tif');
                    
                end
            end
            
            
            
            %%
            return
            
            for iFrame = 1:length(classLabelId)
                
                plot(emgData(1:8,:,i)')
                ylim([-2.5 2.5])
                drawnow
            end
            
        end
        function [d, fileName, pathName] = load_data(filterSpec)
            % load data from filename of filter specification e.g. *.dat
            if exist(filterSpec,'file')
                fileName = filterSpec;
                [pathName] = fileparts(which(fileName));
            else
                [fileName, pathName] = uigetfile(filterSpec);
            end
            d = load(fullfile(pathName,fileName),'-mat');
            assert(~isempty(d.emgData),'EMG Data Not Found');
        end
        function filteredData = filter_data(dataIn)
            % filter Data
            % note that if filtfilt is used, the filter order is doubled
            %HPF = Inputs.HighPass(10,2,1000);
            Fs = 1000;
            HPF = Inputs.HighPass(20,3,Fs);
            %NF = Inputs.Notch([120 240 360],64,1,Fs);
            
            filteredData = HPF.apply(double(dataIn));
            %filteredData = NF.apply(filteredData);
        end
        
        
        function batchRunQuickLook(pathName)
            %%
            % get files
            pathName = 'C:\tmp\MPL_01_WD_R_MiniVIE\MiniVIE\';
            s = dir(fullfile(pathName,'*.trainingData'));
            
            obj = TrainingDataAnalysis;
            
            set(0,'defaultfigurecolor',[1 1 1]);
            figure(1)
            drawnow
            jFrame = get(handle(gcf),'JavaFrame');
            jFrame.setMaximized(true);
            drawnow
            
            for i = 1:length(s)
                obj.loadTrainingData(fullfile(pathName,s(i).name));
                drawnow
                plot_emg_with_breaks(obj,0)
                drawnow
                plot_emg_with_breaks(obj,1)
                drawnow
                obj.plot_features_sorted_class();
                drawnow
            end
            
            
        end
    end
end




function plot_each_emg_channel

%%

channels = obj.ActiveChannels;
chEmg = obj.getContinuousData(channels);
chEmg = TrainingDataAnalysis.filter_data(chEmg);

numChannels = length(channels);
c = distinguishable_colors(numChannels);
clf
for i = 1:numChannels
    h = subplot(numChannels,1,i)
    plot(chEmg(:,i),'Color',c(i,:))
    
    set(h,'YTick',[]);
    set(h,'XTick',[]);
    ylabel(h,num2str(channels(i)))
    rng = 0.7;
    ylim([-rng rng]);
    
end



end
function plot_each_emg_channel_with_breaks

%%

channels = obj.ActiveChannels;
chEmg = obj.getContinuousData(channels);
chEmg = TrainingDataAnalysis.filter_data(chEmg);

c = distinguishable_colors(obj.NumActiveChannels);
l = obj.getAllClassLabels;
w = obj.WindowSize;
classChange = [find(diff(l) ~= 0) length(l)];

for i = 1:obj.NumClasses
    strClass = obj.ClassNames{i};
    acronymClass = upper(strClass(regexp(strClass, '\<.')));
    acronymClassname{i} = acronymClass;
end


xTickLabels = acronymClassname(l(classChange));
xTick = mean( [[0 classChange(1:end-1)*w]; classChange*w] );

clf
[p, f, e] = fileparts(obj.fullFileName);
dataLabel = [f '_emgChannels'];

for i = 1:obj.NumActiveChannels
    h = subplot(obj.NumActiveChannels,1,i);
    plot(chEmg(:,i),'Color',c(i,:))
    
    hold on
    xBreaks = classChange * w;
    xBreaks = [xBreaks; xBreaks; nan(size(xBreaks))];
    yBreaks = repmat([-10; 10; NaN],1,size(xBreaks,2));
    
    plot(xBreaks,yBreaks,'k')
    
    set(h,'YTick',[]);
    if i == 1
        title(dataLabel, 'Interpreter','None');
    end
    if i == obj.NumActiveChannels
        set(h,'XTick',xTick)
        set(h,'XTickLabel',xTickLabels)
    else
        set(h,'XTick',[]);
    end
    ylabel(h,num2str(channels(i)))
    rng = 4;
    ylim([-rng rng]);
    
end

% Save output
outFile = [dataLabel '.png'];
if ~exist(outFile,'file')
    win = get(gcf,'Position');
    pad = 50;
    screencapture(gcf,[pad pad win(3)-(1*pad) win(4)-(1*pad)],outFile);
else
    fprintf('[%s] File "%s" already exists\n',mfilename,outFile);
end

end


% 
function test
%%
% check for filtering artifacts

x = obj.getRawSignals;


HPF = Inputs.HighPass(20,3,1000);

l = obj.getClassLabels;

figure(9)

for i = 1:size(x,3)
    dataIn = x(2,:,i);
    filteredData = HPF.apply(dataIn);
    
    filteredDataOffset = HPF.apply(dataIn-dataIn(1));
    
    % Prepend
    flippedData = rot90(dataIn,2);
    
    
    o1 = dataIn(1);
    o2 = dataIn(end);
    
    padSig = [o1-flippedData+o1 dataIn o2-flippedData+o2 ];

    filteredDataPadded = HPF.apply(padSig);
    filteredDataPadded = filteredDataPadded(251:500);
    
    subplot(3,1,1)
    plot(1:250,dataIn)
    subplot(3,1,2)
    plot(1:250,filteredData)
    subplot(3,1,3)
    %plot(1:250,dataIn,1:250,filteredData,1:250,filteredDataPadded,1:250,filteredDataOffset)
    plot(1:250,filteredDataPadded,1:250,filteredDataOffset)
    ylim([-5 5])
    
    fprintf('%5d %s \n',i,obj.ClassNames{l(i)});
    pause(0.01)
end





end




