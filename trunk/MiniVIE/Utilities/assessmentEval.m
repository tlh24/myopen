clc
%fname = uigetfile('*.assessmentLog');
files = dir('WR_TR01_*.assessmentLog');

for iFile = 1:length(files)
    fname = files(iFile).name;
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
