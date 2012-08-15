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
            chEmg = d.emgData(channels,:,:);
            
            % Plot result
            clf
            plot(reshape(chEmg,length(channels),[])');
            
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
        function plot_emg_filtered(filterSpec,channels)
            % Plot all the emg data in the training file - unfiltered
            %
            % Usage:
            % TrainingDataAnalysis.plot_emg_unfiltered('WR_TR01_*.dat');
            
            if nargin < 1, filterSpec = '*.dat'; end
            if nargin < 2, channels = 1:8; end
            
            % Load Data
            [d fileName] = TrainingDataAnalysis.load_data(filterSpec);
            
            % filter Data
            HPF = Inputs.HighPass(10,8,1000);
            numEmgSamples = size(d.emgData,3);
            filteredData = zeros(size(d.emgData));
            for i = 1:numEmgSamples
                filteredData(:,:,i) = HPF.apply(double(d.emgData(:,:,i)'))';
            end
            
            chEmg = filteredData(channels,:,:);
            
            % Plot result
            clf
            plot(reshape(chEmg,length(channels),[])');
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
                filterSpec = 'WR_TR01_*.dat';
                %filterSpec = '*.dat';
            end
            
            if nargin < 2
                channels = 1:8;
            end
            %
            % load Data
            [fileName pathName] = uigetfile(filterSpec);
            d = load(fullfile(pathName,fileName),'-mat');
            assert(~isempty(d.emgData),'No EMG Data Found');
            
            % filter Data
            HPF = Inputs.HighPass(10,8,1000);
            numEmgSamples = size(d.emgData,3);
            filteredData = zeros(size(d.emgData));
            for i = 1:numEmgSamples
                filteredData(:,:,i) = HPF.apply(double(d.emgData(:,:,i)'))';
            end
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
                classEmgFrames = filteredData(1:8,:,thisClass);
                classEmg = reshape(classEmgFrames,8,[])';
                
                ylabel(d.classNames{iClass})
                %classEmg = HPF.apply(double(classEmg));
                %
                hLines = plot(classEmg);
                %hold on
                
                xBreaks = size(d.emgData,2):size(d.emgData,2):sum(thisClass)*size(d.emgData,2);
                xBreaks = [xBreaks; xBreaks; nan(size(xBreaks))];
                
                yBreaks = repmat([-10; 10; NaN],1,size(xBreaks,2));
                
                plot(xBreaks(:),yBreaks(:),'k-');
                %%
                set(hLines,'Visible','off');
                set(hLines(ch),'Visible','on');
                ylabel(d.classNames{iClass})
                %     xlim([0 size(emgData,2)]);
                ylim([-2 2])
                if iClass == 1
                    title(fileName,'Interpreter','None');
                end
            end
        end
        function plot_one_class_emg(filterSpec,channels)
            
            if nargin < 1, filterSpec = '*.dat'; end
            if nargin < 2, channels = 1:8; end
            
            % Load Data
            [d fileName] = TrainingDataAnalysis.load_data(filterSpec);
            classLabelId = d.classLabelId;
            classNames = d.classNames;
            % filter
            filteredData = TrainingDataAnalysis.filter_data(d.emgData);
            
            % regenerate features (overwrite those loaded from the data file)
            thresh = 0.15;
            for i = 1:size(filteredData,3)
                features3D(:,:,i) = feature_extract(...
                    filteredData(:,:,i),size(filteredData,2),...
                    thresh,thresh);
            end
            
            %%
            clf
            ch = channels;

            c = [get(gca, 'ColorOrder');get(gca, 'ColorOrder')];
            for iClass = 1:6;
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
            [fileName pathName] = uigetfile(filterSpec);
            d = load(fullfile(pathName,fileName),'-mat');
            assert(~isempty(d.emgData),'EMG Data Not Found');
            
        end
        function filteredData = filter_data(dataIn)
            % filter Data
            HPF = Inputs.HighPass(10,8,1000);
            numEmgSamples = size(dataIn,3);
            filteredData = zeros(size(dataIn));
            for i = 1:numEmgSamples
                filteredData(:,:,i) = HPF.apply(double(dataIn(:,:,i)'))';
            end

        end
    end
end