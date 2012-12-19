classdef TrainingDataAnalysis
    % Tools for loading, viewing and manipulating training data
    %
    %
    % Usage:
    %   TrainingDataAnalysis.plot_emg_unfiltered('WR_TR01_*.dat');
    %   TrainingDataAnalysis.plot_emg_filtered('WR_TR01_*.dat');
    properties
    end
    
    methods (Static = true)
        function plot_emg_unfiltered(filterSpec,channels)
            % Plot all the emg data in the training file - unfiltered
            %
            % Usage:
            % TrainingDataAnalysis.plot_emg_unfiltered('WR_TR01_*.dat');
            
            if nargin < 1, filterSpec = '*.dat'; end
            if nargin < 2, channels = 1:8; end
            
            % Load Data
            [d fileName] = TrainingDataAnalysis.load_data(filterSpec);
            
            if any(d.activeChannels > 8)
                channels = 1:16;
            end
            
            chEmg = d.emgData(channels,:,:);
            
            % Plot result
            clf
            h = plot(reshape(chEmg,length(channels),[])');
            
            c = distinguishable_colors(16);
            for i = 1:length(h)
                set(h(i),'Color',c(i,:));
            end
            
            C = textscan(num2str(channels),'%s');
            legend(C{1});
            
            [p f e] = fileparts(fileName);
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
        function d = plot_emg_filtered(filterSpec,channels)
            % Plot all the emg data in the training file - unfiltered
            %
            % Usage:
            % TrainingDataAnalysis.plot_emg_unfiltered('WR_TR01_*.dat');
            
            if nargin < 1, filterSpec = '*.dat'; end
            if nargin < 2, channels = 1:8; end
            
            % Load Data
            [d fileName] = TrainingDataAnalysis.load_data(filterSpec);
            
            if any(d.activeChannels > 8)
                channels = 1:16;
            end
            
            filteredData = TrainingDataAnalysis.filter_data(d.emgData);
            chEmg = filteredData(channels,:,:);
            
            % Plot result
            clf
            dataColumns = reshape(chEmg,length(channels),[])';
            for i = 1:size(dataColumns,2)
                dataColumns(:,i) = dataColumns(:,i) + i;
            end
            h = plot(dataColumns);
            hold on
            numSamplesPerWindow = size(d.emgData,2);
            windowLabels = repmat(d.classLabelId,numSamplesPerWindow,1);
            plot(-windowLabels(:)*5);
            
            c = distinguishable_colors(16);
            for i = 1:length(h)
                set(h(i),'Color',c(i,:));
            end
            
            C = textscan(num2str(channels),'%s');
            legend(C{1});
            
            
            [p f e] = fileparts(fileName);
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
        function plot_emg_per_class(filterSpec,channels)
            % Plot all the emg data in the training file - unfiltered
            %
            % Usage:
            % TrainingDataAnalysis.plot_emg_per_class('WR_TR01_*.dat');
            
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
                classEmg = reshape(classEmgFrames,16,[])';
                
                ylabel(d.classNames{iClass})
                
                for i = 1:size(classEmg,2)
                    classEmg(:,i) = classEmg(:,i) + (i*0.5);
                end
                hLines = plot(classEmg);
                
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
                ylim([-1 9])
                if iClass == 1
                    title(fileName,'Interpreter','None');
                end
            end
            
            
            [p f e] = fileparts(fileName);
            dataLabel = [f '_classEmg'];
            
            % Save output
            outFile = [dataLabel '.tif'];
            if ~exist(outFile,'file')
                saveas(gcf,outFile);
            else
                fprintf('[%s] File "%s" already exists\n',mfilename,outFile);
            end
            
        end
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
                [fileName pathName] = uigetfile(filterSpec);
            end
            d = load(fullfile(pathName,fileName),'-mat');
            assert(~isempty(d.emgData),'EMG Data Not Found');
        end
        function filteredData = filter_data(dataIn)
            % filter Data
            % note that if filtfilt is used, the filter order is doubled
            HPF = Inputs.HighPass(10,2,1000);
            numEmgSamples = size(dataIn,3);
            filteredData = zeros(size(dataIn));
            for i = 1:numEmgSamples
                filteredData(:,:,i) = HPF.apply(double(dataIn(:,:,i)'))';
            end
        end
    end
end