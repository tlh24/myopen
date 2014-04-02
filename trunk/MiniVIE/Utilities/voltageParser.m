classdef voltageParser
      
    methods(Static = true)
        function [xdate, Voltage, metrics] = parseVoltage(folder,file)
            
            % Safely open file (with fclose on cleanup)
            
            fname = fullfile(folder,file);
            [fp, msg] = fopen(fname,'r');
            if fp < 0
                error('Error opening file: "%s".  Message was: "%s"\n',fname,msg);
            end
            c = onCleanup(@()fclose(fp));
            
            % Find voltage lines with specified state
            searchStrs = {'NFU: V =','[NfuUdp.m','State = "SW_STATE_NOS_DIAGNOSTICS"'};
            
            fprintf('%s\n',file)
            fprintf('Searching for Voltages...\n')
            foundString = {};
            foundLocation = [];
            
            % Read file and find searchStr
            lineCounter=0;
            foundCounter=0;
            while ~feof(fp)
                strLine = fgetl(fp);
                k1=strfind(strLine,searchStrs{1});
                k2=strncmp(strLine,searchStrs{2},length(searchStrs{2}));
                k3=strfind(strLine,searchStrs{3});
                lineCounter=lineCounter+1;
                if ~isempty(strLine) && ~isempty(k1) && k2 && ~isempty(k3)
                    foundCounter=foundCounter+1;
                    foundString(foundCounter) = {strLine};
                    foundLocation(foundCounter) = lineCounter;
                end
            end
            fprintf('Done\n');
            
            % Parse out Time and Voltage from found strings
            for iFind = 1:length(foundString);
                str = foundString{iFind};
                %     k=strfind(strLine,searchStr);
                C = textscan(str,'%s %s %s %s %s %s %s %s');
                date(iFind) = {C{2}{1}};
                time(iFind) = {C{3}{1}(1:end-1)};
                Voltage(iFind) = str2num(C{7}{1});
                
                % Convert date and time to serial number
                year(iFind)    = str2num(date{iFind}(8:end));
                month(iFind)   = voltageParser.monthChar2Num(date{iFind}(4:6));
                day(iFind)     = str2num(date{iFind}(1:2));
                hour(iFind)    = str2num(time{iFind}(1:2));
                minute(iFind)  = str2num(time{iFind}(4:5));
                second(iFind)  = str2num(time{iFind}(7:8));
            end
            
            if isempty(foundString)
                xdate=nan; Voltage = nan;
            else
                xdate = datenum(year,month,day,hour,minute,second);
            end
            
            % Max, min, range, mean calculations
            [metrics.max.V , metrics.max.ind] = max(Voltage);
            metrics.max.time = xdate(metrics.max.ind);
            
            [metrics.min.V , metrics.min.ind] = min(Voltage);
            metrics.min.time = xdate(metrics.min.ind);
            
            metrics.range = metrics.max.V-metrics.min.V;
            metrics.avg   = mean(Voltage);
            
            % Discharge rate calculations
            metrics.start.V    = Voltage(1);
            metrics.start.time = xdate(1);
            
            metrics.end.V      = Voltage(end);
            metrics.end.time   = xdate(end);
            
            %TODO COMPARE serial date subration vs datevec
            dateVector = datevec(metrics.end.time - metrics.start.time);
            metrics.dt = dateVector(4)*3600 + dateVector(5)*60 + dateVector(6) ; % convert to seconds
            metrics.rate  = (metrics.end.V-metrics.start.V) / metrics.dt;
            
        end
        
        function monthNum = monthChar2Num(monthChar)
            
            monthFull = {'January','February','March','April','May','June','July','October','November','December'};
            month3 = {'Jan','Feb','Mar','Apr','May','Jun','Jul','Oct','Nov','Dec'};
            
            for i = 1:length(monthFull)
                if  strcmpi(monthChar,month3{i}) || strcmpi(monthChar,monthFull{i})
                    monthNum =i;
                end
            end
            
        end
        
        function voltagePlotter(xdate, voltage, metrics, folder, file)
            % Plot Voltage vs time
            plot(xdate,voltage,'b')
            
            % Plot Range
            plot([xdate(1) xdate(1)], [metrics.min.V metrics.max.V], 'color', [0,0,0]+0.8, 'LineWidth', 3)
            
            % Plot duration
            plot([metrics.start.time metrics.end.time], [metrics.end.V metrics.end.V], 'color', [0,0,0]+0.4, 'LineWidth', 3)   % Plot range
            
            % Plot Avg Rate
            plot([metrics.start.time metrics.end.time], [metrics.start.V metrics.end.V], 'k', 'LineWidth', 1.5)   % Plot range
            
            % Set x-axis to time format
            datetick('x','HH:MM:SS')
            
            fig_name=strtrim(strrep(strrep(file,'_',' '),'.txt',''));
            title(fig_name)
            xlabel('Time (HH:MM:SS)'),ylabel('Voltage (V)')
            ylim([20 25])
            
            % Convert duration from sec to minutes
            duration = metrics.dt/60;
            % Convert rate from V/sec to V/hour
            avgRate = metrics.rate*3600;
            
            legend('Hearbeat','Range',sprintf('Duration: %3.1f minutes',duration),sprintf('Avg Rate: %2.1f V/hour',avgRate),'Location','Best')
            
            % Save figure to voltageParser_output folder
            save_dir = fullfile(folder,'voltageParser_output');
            if exist(save_dir,'dir')~=7, mkdir(save_dir), end
            
            saveas(gcf,fullfile(save_dir,fig_name),'png')
        end
        
        function TEST
            %% Press CTRL+ENTER on this section
            clear all, clc, close all
            set(0,'DefaultAxesFontSize',16, ...
                  'DefaultAxesFontName','Arial', ...
                  'DefaultLineLinewidth',1, ...
                  'DefaultFigureColor','w')
            
            session = 'Session 2';
            folder = ['\\dom1\REDD\Programs\RP3\FGB01 - Henry Jackson - Walter Reed\Study Data\Subject_01_WD_R\MiniVIE\' session];
            files = ls([folder '\*dairy.txt']);
            
            for i = 1:size(files,1)
                file = files(i,:);
                [xdate, voltage, metrics]=voltageParser.parseVoltage(folder,file);
                
                figure(i), hold on
                voltageParser.voltagePlotter(xdate, voltage, metrics, folder, file)
            end
            
        end
        
    end
end
        
        
        
        
        
        
        
        
        
