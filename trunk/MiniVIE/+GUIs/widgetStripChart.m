classdef widgetStripChart < handle
    % General purpose function for making a strip chart plot
    % Usage: 
    %   h = GUIs.widgetStripChart();
    %   h.initialize(3,100,{'X' 'Y' 'Z'})
    %   putdata(h,rand(3,1))
    %   ...
    %
    % Created 2012-Jan-12 Robert Armiger, Johns Hopkins University Applied
    % Physics Lab
    
    properties
        hAxes
        hLines
        hLegend
        
        NumLines = 1
        NumSamples = 500;

        Value
        YLim;
    end
    properties (Access = private)
        tLast
    end
    methods
        function obj = widgetStripChart(hParent)
            if nargin < 1
                hFig = figure();
                obj.hAxes = axes('Parent',hFig);
            else
                obj.hAxes = hParent;
            end
        end
        
        function initialize(obj,numLines,numSamples,cellLegendLabels)

            if nargin >= 2
                obj.NumLines = numLines;
            end
            if nargin >= 3
                obj.NumSamples = numSamples;
            end
            if nargin >= 4
                lineTxt = cellLegendLabels;
            else
                lineNum = 1:obj.NumLines;
                lineTxt = num2str(lineNum(:));
            end
            
            obj.hLines = plot(obj.hAxes,zeros(obj.NumSamples,obj.NumLines));

            obj.hLegend = legend(obj.hLines,lineTxt,'Location','NorthWest');
            set(obj.hLegend,'Interpreter','None');
            
            obj.reset();
            
        end
        function reset(obj)
            obj.tLast = clock;
            obj.YLim = [-eps eps];
        end
        function putdata(obj,newValue)

            if length(newValue) ~= obj.NumLines
                fprintf('[%s] Bad input data. Expected %d point(s), got %d\n',mfilename,obj.NumLines,length(newValue));
                return
            end

            if ~ishandle(obj.hAxes)
                fprintf('[%s] Failed to update, axes deleted\n',mfilename);
                return
            end
            dataRange = zeros(obj.NumLines,2);

            for iLine = 1:obj.NumLines
                data = get(obj.hLines(iLine),{'XData','YData','ZData'});

                yData = data{2};

                % Shift the y-data and add the new samples
                yData = [yData(2:end) newValue(iLine)];

                dataRange(iLine,:) = [min(yData(:)) max(yData(:))];

                set(obj.hLines(iLine),'YData',yData);
            end

            % Limit refresh rate
            if etime(clock,obj.tLast) > 0.1
                drawnow
                axLim(1) = min(min(dataRange(:)),obj.YLim(1));
                axLim(2) = max(max(dataRange(:)),obj.YLim(2));
                yLimits = axLim;
                ylim(obj.hAxes,yLimits.*1.02);
                obj.tLast = clock;
            end
        end
        function close(obj)
            if ishandle(obj.hAxes)
                delete(obj.hAxes);
            end
        end
    end
end
