classdef assessmentEval
    methods
        function obj = assessmentEval(fileName)
            %computes assessment statistics and displays in console
            %
            % Usage: 
            % obj = assessmentEval(fileName)
            %
            % fileName can be local "*.assessmentLog'"
            % fileName can be fullpath "c:\tmp\*.assessmentLog'"
            % fileName can be exact "c:\tmp\myLog.assessmentLog'"
            
            % break down user input ot handle cases where full or partial
            % paths are provided
            [PathName, FileName, FileExtension] = fileparts(fileName);
            FullFile = fullfile(PathName, [FileName FileExtension]);
            %fileName = '\\dom1\REDD\Programs\RP3\SENSITIVE_RESTRICTED_Patient_Data\JHMI\JH_TH02\*.assessmentLog';
            if exist(FullFile,'file') ~= 2
                [FileName,PathName,FilterIndex] = uigetfile(FullFile,'MultiSelect','on');
                if FilterIndex == 0
                    % User Cancelled
                    return
                end
            end
            
            if ~iscell(FileName)
                FileName = {FileName};
            end
            
            % scroll display
            fprintf(repmat('\n',1,10));
            for iFile = 1:length(FileName)
                fname = fullfile(PathName,FileName{iFile});
                load(fname,'-mat');
                classNames = {structTrialLog(:).targetClass};
                classNames{end+1} = 'No Movement';
                fprintf('-------------\n');
                fprintf('%s\n',fname');
                fprintf('-------------\n');
                for i = 1:length(structTrialLog)
                    
                    %d = structTrialLog(i).classDecision;
                    d = structTrialLog(i).voteDecision;
                    
                    fprintf('%18s ',classNames{i});
                    
                    idCorrect = find(d == i);
                    
                    if isempty(idCorrect)
                        fprintf(2,'class never started after %d tries. ',length(d));
                        uniqueClasses = unique(d);
                    elseif length(idCorrect) < 10
                        fprintf(2,'class never finished after %d tries. ',length(d)-min(idCorrect));
                        uniqueClasses = unique(d);
                    else
                        numTries = max(idCorrect)-min(idCorrect)+1;
                        fprintf('took %d tries to complete. ',numTries);
                        uniqueClasses = unique(d(min(idCorrect):max(idCorrect)));
                    end
                    
                    uniqueClasses(uniqueClasses == i) = [];
                    if ~isempty(uniqueClasses)
                        strUnique = sprintf('"%s" ',classNames{uniqueClasses});
                        fprintf('Mis-classes were: %s',strUnique);
                    end
                    fprintf('\n');
                end
            end
        end
    end
    methods (Static = true)
        
        function [overallAccuracy classAccuracyPct classNames] = parseTrialLog(assessmentLogFile)
            % [overallAccuracy classAccuracyPct classNames] = AssessmentEval.parseTrialLog(assessmentLogFile)
            
            % is struct, exist file?
            load(assessmentLogFile,'-mat')
            assert(exist('structTrialLog','var') == 1,'Log Missing')
            
            classNames = {structTrialLog(:).targetClass};
            
            maxCorrect = 10;  %Number of correct classes to attain (vote/unfiltered)
            numTestedClasses = length(structTrialLog);
            numSuccess = zeros(1,numTestedClasses);
            for i = 1:numTestedClasses
                numSuccess(i) = sum(structTrialLog(i).classDecision == i);
            end
            
            classAccuracyPct = numSuccess ./ maxCorrect .* 100;
            overallAccuracy = mean(classAccuracyPct);
            
        end
    end
end