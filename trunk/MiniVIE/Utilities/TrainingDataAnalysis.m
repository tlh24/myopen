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
        function plot_emg_unfiltered(obj,channels)
            % Plot all the emg data in the training file - unfiltered
            %
            % Usage:
            % plot_emg_unfiltered(obj,channels);
            
            if nargin < 2
                channels = obj.ActiveChannels;
            end
            
            chEmg = obj.getContinuousData(channels);
            
            % Plot result
            clf
            h = plot(chEmg);
            numChannels = length(channels);
            c = distinguishable_colors(numChannels);
            for i = 1:length(h)
                set(h(i),'Color',c(i,:));
            end
            
            C = num2cell(channels);
            legend(cellfun(@(x)sprintf('%2d',x),C,'UniformOutput',false));
            
            [p, f, e] = fileparts(obj.fullFileName);
            dataLabel = [f '_unfiltered'];
            title(dataLabel, 'Interpreter','None');
            
            % Save output
            outFile = [dataLabel '.tif'];
            if ~exist(outFile,'file')
                saveas(gcf,outFile);
            else
                fprintf('[%s] File "%s" already exists\n',mfilename,outFile);
            end
            
        end
        function plot_emg_filtered(obj,channels)
            % Plot all the emg data in the training file - filtered
            %

            if nargin < 2
                channels = obj.ActiveChannels;
            end

            chEmg = obj.getContinuousData(channels);
            chEmg = TrainingDataAnalysis.filter_data(chEmg);
                        
            % Plot result
            clf
            h = plot(chEmg);
            numChannels = length(channels);
            c = distinguishable_colors(numChannels);
            for i = 1:length(h)
                set(h(i),'Color',c(i,:));
            end
            
            C = num2cell(channels);
            legend(cellfun(@(x)sprintf('%2d',x),C,'UniformOutput',false));
            
            [p, f, e] = fileparts(obj.fullFileName);
            dataLabel = [f '_filtered'];
            title(dataLabel, 'Interpreter','None');
            
            % Save output
            outFile = [dataLabel '.tif'];
            if ~exist(outFile,'file')
                saveas(gcf,outFile);
            else
                fprintf('[%s] File "%s" already exists\n',mfilename,outFile);
            end
            
        end
        function plot_emg_per_class(obj,channels)
            % Plot numClasses x 1 subplots, with filtered EMG for each
            % class
            %
            % Usage:
            % TrainingDataAnalysis.plot_emg_per_class('WR_TR01_*.dat');
            
            if nargin < 2
                channels = obj.ActiveChannels;
            end
            
            % get all the data and filter it
            [chEmg, dataBreaks] = obj.getContinuousData(channels);
            chEmg = TrainingDataAnalysis.filter_data(chEmg);
            
            % get the labels
            classNames = obj.ClassNames;
            classLabels = obj.getClassLabels;
            
            % class labels label frames of data to label individual
            % samples:
            emgLabels = reshape(repmat(classLabels(:),[1 obj.WindowSize])',1,[]);
            
            clf
            ch = channels;
            c = distinguishable_colors(16);
            activeClasses = unique(classLabels);
            for i = 1:length(activeClasses)
                iClass = activeClasses(i);
                thisClass = iClass == emgLabels;
                h = subplot(length(activeClasses),1,i);
                hold on
                
                strClass = classNames{iClass};
                acronymClass = upper(strClass(regexp(strClass, '\<.')));
                ylabel(acronymClass)
                set(h,'YTick',[]);
                set(h,'XTick',[]);

                classEmg = chEmg(thisClass,:);
                
%                 for i = 1:size(classEmg,2)
%                     classEmg(:,i) = classEmg(:,i) + (i*0.5);
%                 end
                hLines = plot(classEmg);
                
                for iLine = 1:length(channels)
                    rgb = c(channels(iLine),:);
                    set(hLines(iLine),'Color',rgb,...
                        'LineWidth',1);
                end
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
                ylim([-2 2]);
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
        function [d fileName pathName] = load_data(filterSpec)
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
            HPF = Inputs.HighPass(15,3,Fs);
            NF = Inputs.Notch([120 240 360],64,1,Fs);
            
            filteredData = HPF.apply(double(dataIn));
            filteredData = NF.apply(filteredData);
        end
    end
end