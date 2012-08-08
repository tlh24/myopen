classdef TrainingDataAnalysis
    % Tools for loading, viewing and manipulating training data
    
    properties
    end
    
    methods (Static = true)
        function plot_emg_unfiltered(filterSpec)
            % Plot all the emg data in the training file - unfiltered
            %
            % Usage:
            % TrainingDataAnalysis.plot_emg_unfiltered('WR_TR01_*.dat');
            
            if nargin < 1
                filterSpec = '*.dat';
            end
            
            %[fileName pathName] = uigetfile('JH_TH01_*.dat');
            [fileName pathName] = uigetfile(filterSpec);
            load(fullfile(pathName,fileName),'-mat');
            assert(~isempty(emgData),'No EMG Data Found');
            
            chEmg = emgData(1:8,:,:);
            plot(reshape(chEmg,8,[])');
            title(fileName, 'Interpreter','None');
            
            [p f e] = fileparts(fileName);
            
            saveas(gcf,[f '.tif']);
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
            %%
            % load Data
            [fileName pathName] = uigetfile(filterSpec);
            load(fullfile(pathName,fileName),'-mat');
            assert(~isempty(emgData),'No EMG Data Found');

            % filter Data
            HPF = Inputs.HighPass(10,8,1000);
            numEmgSamples = size(emgData,3);
            for i = 1:numEmgSamples
                filteredData(:,:,i) = HPF.apply(double(emgData(:,:,i)'))';
            end
            %% plot Data
            clf
            ch = 1:8;
            ch = channels;
            % ch = 6;
            c = get(gca, 'ColorOrder');
            for iClass = 1:length(classNames)
                thisClass = iClass == classLabelId;

                h = subplot(length(classNames),1,iClass);
                ylabel(classNames{iClass})
                set(h,'YTick',[]);
                set(h,'XTick',[]);
                ylim([-2 2]);
                
                if ~any(thisClass)
                    continue
                end
                classEmgFrames = filteredData(1:8,:,thisClass);
                classEmg = reshape(classEmgFrames,8,[])';
                h = subplot(length(classNames),1,iClass);
                ylabel(classNames{iClass})
                %classEmg = HPF.apply(double(classEmg));
                %%
                hLines = plot(classEmg);
                hold on
                
                xBreaks = size(emgData,2):size(emgData,2):sum(thisClass)*size(emgData,2);
                xBreaks = [xBreaks; xBreaks; nan(size(xBreaks))];
                
                yBreaks = repmat([-10; 10; NaN],1,size(xBreaks,2));
                
                plot(xBreaks(:),yBreaks(:),'k-');
                %%
                set(hLines,'Visible','off');
                set(hLines(ch),'Visible','on');
                ylabel(classNames{iClass})
                %     xlim([0 size(emgData,2)]);
                ylim([-2 2])
                if iClass == 1
                    title(fileName,'Interpreter','None');
                end
            end
            
            return
            %%
            
            % regenerate features (overwrite those loaded from the data file)
            thresh = 0.15;
            for i = 1:size(filteredData,3)
                features3D(:,:,i) = feature_extract(...
                    filteredData(:,:,i),size(filteredData,2),...
                    thresh,thresh);
            end
            
            
            clf
            ch = 1:8;
            % ch = 1;
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
        
    end
end