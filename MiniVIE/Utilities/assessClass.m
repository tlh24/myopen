function structTrialLog = assessClass(hSignalSource,hSignalClassifier,classToTest)
% Blocking function that begins trial of classifier testing "classToTest"

%constants
timeout = 5; %seconds  % 5 Seconds RIC JAMA
maxCorrectClasses = 10; % 10 per RIC JAMA

timerStarted = 0;
numCorrectClasses = 0; % reset each loop
moveComplete = 0;
classNames = hSignalClassifier.getClassNames;
targetClass = classNames{classToTest};
structTrialLog.targetClass = targetClass;
structTrialLog.classDecision = [];
structTrialLog.voteDecision = [];

while (moveComplete == 0) && (~timerStarted || (toc < timeout))
    fprintf('Testing Class: %s | ',targetClass);
    [classDecision,voteDecision,className,prSpeed]= getIntent(hSignalSource,hSignalClassifier);
%     fprintf('Class=%2d; Vote=%2d; Class = %16s; S=%6.4f',...
%         classDecision,voteDecision,className,prSpeed);
    if ~timerStarted && ~strcmp(className,'No Movement')
        % start timer
        tic
        fprintf('\n Timer Started\n');
        timerStarted = 1;
    end
    
    structTrialLog.classDecision = [structTrialLog.classDecision classDecision];
    structTrialLog.voteDecision = [structTrialLog.voteDecision voteDecision];
    
    if classDecision == classToTest
        numCorrectClasses = numCorrectClasses + 1;
    end
    
    if numCorrectClasses >= maxCorrectClasses
        moveComplete = 1;
    end
    
    fprintf('\n');
    pause(0.1) % 100ms RIC JAMA
    
end

if moveComplete
    fprintf('Class "%s" completed successfully\n',targetClass);
else
    fprintf('Class "%s" timed out\n',targetClass);
end

tic
while (toc < timeout)
    fprintf('Waiting for no movement...\n');
    [classDecision,voteDecision,className,prSpeed]= getIntent(hSignalSource,hSignalClassifier);
    if strcmp(className,'No Movement')
        fprintf('No Movement OK\n');
        break
    end
    pause(0.1);
end
