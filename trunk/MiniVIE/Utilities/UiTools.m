classdef UiTools
    % Class with static methods for common ui tasks
    methods (Static = true)
        function hTimer = create_timer(timerName,TimerFcn)
            % Create a named timer which will search for previous versions
            % and delete them prior to creation.  Also includes gerneric
            % start and stop callbacks
            %
            % Typical Usage:
            % hTimer = UiTools.create_timer(mfilename,@(src,evt)my_timer_callback);
            % hTimer.Period = 0.05;
            
            hExisting = timerfindall('Name',timerName);
            if ~isempty(hExisting)
                stop(hExisting);
                delete(hExisting);
            end
            
            t = timer;
            t.Name = timerName;
            t.ExecutionMode = 'fixedRate';
            t.TimerFcn = TimerFcn;
            t.StartFcn = @(src,evt)fprintf('Started Timer: %s\tPeriod: %f\n',timerName,t.Period);
            t.StopFcn = @(src,evt)fprintf('Stopped Timer: %s\tPeriod: %f\tAveragePeriod: %f\n',timerName,t.Period,t.AveragePeriod);
            
            hTimer = t;
        end
        function hFigure = create_figure(figureName,figureTag)
            
            if nargin < 2
                figureTag = strrep(figureName,' ','_');
            end
            
            % Consts
            figureColor = get(0,'defaultUicontrolBackgroundColor');
            
            % Startup
            %Search if the figure exists
            existingFigs = findall(0,'tag',figureTag);
            
            if ~isempty(existingFigs)
                %Figure exists so bring Figure to the focus
                delete(existingFigs)
            end
            
            % Figure Setup
            hFigure = figure(...
                'Units','pixels',...
                'Color',figureColor,...
                'HandleVisibility','callback',...
                'Renderer','OpenGL',...
                'Resize','off',...
                'Menubar','none',...
                'Toolbar','none',...
                'NumberTitle','off',...
                'IntegerHandle','off',...
                'Tag',figureTag,...
                'Name',figureName);
        end
    end
end
