function guiTargetAchievementControlMulti(SignalSource,SignalClassifier,TrainingData,FilePrefix)
% GUI display for showing the TAC test.  The user is to move the arm to the
% presented target within the specified time (20s).  The arm must be held
% within the target region for a time (1s).  Results are logged for
% Completion time, completion rate, and length error
%
%
%
% Test:
%obj = MiniVIE.Default; GUIs.guiTargetAchievementControlMulti(obj.SignalSource,obj.SignalClassifier,obj.TrainingData,'Test_');
%
%
% Revisions:
% 21Mar2014 Armiger: Created

%{
if 0
%%
% Basic MiniV setup

hArm = Presentation.MiniV;
%%
view(0,0)
aStart = [0 0 0 10 0 0 0 0];
hArm.set_upper_arm_angles_degrees(aStart)
hArm.redraw

end
%}


% get classes with data
idxTrained = unique(TrainingData.getClassLabels);           % class numbers for classes with data e.g. [ 1 2 3 4 5 10]
trainedClassNames = TrainingData.ClassNames(idxTrained);    % cell list of trained class names

% Find and remove the rest class 
isRestClass = strcmpi(trainedClassNames,'No Movement');
if ~any(isRestClass)
    fprintf('[%s] Failed to find "No Movement" class in training data\n',mfilename);
end
trainedClassNames(isRestClass) = [];

% ensure that there are valid classes
if isempty(trainedClassNames)
    errordlg('No Trained Data Exists');
    return
end


% setup display colors
greenArm = [0.7 0.9 0.6];
blueArm = [0.7 0.7 0.9];

% Create a handle to the MiniV animated arm
hFig = UiTools.create_figure('JHU/APL: Target Achievement Control Test','TAC');
p = get(hFig,'Position');
p = [300 150 800 600];
set(hFig,'Position',p)
hAxes = axes('Parent',hFig);
hold(hAxes,'on');
hUser = Presentation.MiniV(hAxes);
hTarget = Presentation.MiniV(hAxes);
view(hAxes,0,0);
axis(hAxes,'equal')
hLight = light('Parent',hAxes);
camlight(hLight,'left');
axis(hAxes,[0 0.4 -0.4 0.4 0.3 0.7])

% Create the 'target arm'
set([hTarget.handle.hPatch],'FaceColor',blueArm)

% Test parameters
tTimeout = 45; %seconds
numTrials = 3;
requiredHoldTime = 2; %s
jointAccuracy = 5 * pi / 180; % degrees->radians
graspAccuracy = 0.05; % percent

% define a new state based scenario for feed-forward control
hScenario = Scenarios.ScenarioBase();
hScenario.initialize(SignalSource,SignalClassifier);
hScenario.Verbose = 1;
hScenario.GraspChangeThreshold = 0.2;

% Arm Starting Angles (and grasp)
aStart = [0 0 0 10*pi/180 0 0 0 0];
% controlMask = zeros(1,8);  % controls which DOF can move

hScenario.ArmStateModel.setAllValues(aStart);
% TODO: manually adjusting the Wrist FE
hScenario.ArmStateModel.structState(7).MaxVelocity = 1;

% TAC1
% Each movement presented 5 times
% TAC2 - two moves requires


iTest = 0;

% setup a partial filename for temporary save during TAC
extension = '.partialTac';
partialFile = [FilePrefix datestr(now,'yyyymmdd_HHMMSS') extension];


% For multi TAC assessments, the 'other' degrees of freedom should
% exclude the antagonist movement, or multiple grasps
% For multi TAC it makes more sense to pick a set of random joint
% angles and then have the user make each motion

% Need to cross reference trained classes with allowable degrees of
% freedom.
jointInfo = standardClasses(trainedClassNames);

numDof = 8;  % 7 arm motions and one hand

isTestableDof = false(1,numDof);
for i = 1:numDof
    % joint has both dof trained.  ok to evaluate
    isTestableDof(i) = sum([jointInfo(:).JointId] == i) >= 2;
end

if sum(isTestableDof) < 3
    str = 'Not enough degrees of freedom trained for TAC3 assessment';
    errordlg(str);
    %error(str);
end



%%%%%%%%%%%%%%%%%%%%%
% Begin the TAC
%%%%%%%%%%%%%%%%%%%%%



%try
    for iTrial = 1:numTrials
        % Randomize -- pick 3 of the available dof
        availableDof = find(isTestableDof);
        dofTestSet = availableDof(randperm(length(availableDof),3));
        
        availableGrasp = [jointInfo(:).GraspId];
        if isempty(availableGrasp)
            graspTest = [];
        else
            graspTest = availableGrasp(randperm(length(availableGrasp),1));
        end
        
        t = title(hAxes,'TAC - 3DOF');
        set(t,'FontSize',20)
        
        aWait = tic;
        while toc(aWait) < 2
            % delay before start
            %pause(2);
            hScenario.update();
            if hScenario.Verbose, fprintf('\n'); end
            drawnow;
        end
        iTest = iTest + 1;
        structTrialLog(iTest) = runTrial(dofTestSet,graspTest);
        
        try
            save(partialFile,'structTrialLog','-mat');
        end
        
    end
%catch ME
%    fprintf('[%s] Exited TAC Assessment with Error: %s\n',mfilename,ME.message);
%end
fullFilename = UiTools.ui_select_data_file('.tacAssessment',FilePrefix);

if ~isempty(fullFilename)
    try
        save(fullFilename,'structTrialLog','-mat');
        %save(fullFilename,'structTrialLog','TrainingData','-mat');
        
        % verify permanent file before deleting partial file
        if ( exist(fullFilename,'file') == 2 )  % ensure file is there
            if strcmpi(who('-file',fullFilename),'structTrialLog') % ensure file has data
                delete(partialFile)
            end
        end
        
    catch ME
        disp(mfilename)
        rethrow(ME);
    end
end

disp('Complete')

% Nested function for running each trial
    function structLog = runTrial(dofTestSet,graspTest)
        structLog = [];
        
        MAX_SAMPLES = 2000;
        
        angleLog = zeros(MAX_SAMPLES,9); % columns are t, and angles
        graspLog = cell(MAX_SAMPLES,1);
        % Allocate memory for intent logging
        sampleIntent = hScenario.Intent;
        % clear out fields from example intent
        sampleIntent.classOut = 0;
        sampleIntent.voteDecision = 0;
        sampleIntent.className = '';
        sampleIntent.prSpeed = 0;
        sampleIntent.rawEmg = [];
        sampleIntent.windowData = [];
        sampleIntent.features2D(:) = 0;
        % Replicate example intent
        intentLog = repmat(sampleIntent,[MAX_SAMPLES,1]); % store intent data
        logIdx = 0;
        
        % determine which joint to move to set goal
        aTarget = aStart;
        for iDof=1:length(aTarget)
            if ~any(iDof == dofTestSet)
                % Inactive DOF
                continue
            elseif iDof == 8 %grasp state
                aTarget(iDof) = rand;  % rand 0-1
            else
                dofVal = hScenario.ArmStateModel.structState(iDof);
                aTarget(iDof) = (dofVal.Max - dofVal.Min)*rand + dofVal.Min;
            end
        end
        
        % Start position for this trial
        aTrial = aStart;

        aGoal = aTarget;
        
        % set the arm to the starting position
        hScenario.ArmStateModel.setAllValues(aTrial);
        
        % set target arm to goal position
        if isempty(graspTest)
            % if no grasps, just use a flat hand
            handAngles = zeros(1,29);
        else
            handAngles = Controls.graspInterpolation(aTarget(8), graspTest);
        end
        hTarget.set_upper_arm_angles_degrees(aGoal*180/pi);
        hTarget.set_hand_angles_degrees(handAngles);
        hTarget.redraw;
        
        % Counter for when arm is in range of target
        tHold = [];
        
        % Counter for when the arm first moves
        tMovement = [];
        
        % Start Timer
        tStart = clock;
        
        
        % Begin trial
        tElapsed = 0;
        moveComplete = false;
        while ~moveComplete && (isempty(tMovement) || (etime(clock,tMovement) < tTimeout) )
            % (tElapsed < tTimeout) && ~moveComplete
            
            % Time the loop
            % tRefresh = tic;
            
            % call the update function to perform classification
            hScenario.update()
            if hScenario.Verbose, fprintf('\n'); end
            
            % Get Intent
            newIntent = hScenario.Intent;
            %%%%%%%%%%%%%%%%%%%%%
            % Clear raw data logging to avoid memory overrun
            %%%%%%%%%%%%%%%%%%%%%
            newIntent.windowData = [];
            newIntent.rawEmg = [];
            graspId = hScenario.ArmStateModel.getRocValues;
            
            % Get the user angles from state machine
            jUser = hScenario.ArmStateModel.getValues;
            
            % add to the log
            logIdx = logIdx + 1;
            angleLog(logIdx,:) = [tElapsed jUser];
            graspLog{logIdx} = graspId;
            intentLog(logIdx) = newIntent;
            
            if isempty(tMovement) && ~isequal(jUser,aTrial)
                tMovement = clock;
            end
            
            % Update user's arm
            % if TAC case 1, user can only move the tested joint, all
            % others are fixed
            %aUser = aTrial;
            %aUser(s.JointId) = jUser(s.JointId);
            
            % TAC case 2: all joints can move
            aUser = jUser;
            
            % Compare output
            % First make sure all angles are within error band.  AND check
            % that either this isn't a grasp OR the user has the right
            % grasp selected OR it is hand open and we don't care about the grasp
            % state
%             isMatched = all(abs(aUser - aGoal) < [repmat(jointAccuracy,1,7) graspAccuracy]) && ...
%                 ( ~s.IsGrasp || isHandOpen || (graspId == s.GraspId) );
            isMatched = abs(aUser - aGoal) < [repmat(jointAccuracy,1,7) graspAccuracy];
            if all(isMatched)
                set([hTarget.handle.hPatch],'FaceColor',greenArm*0.8)
                if isempty(tHold)
                    % start the hold timer
                    tHold = clock;
                elseif etime(clock,tHold) > requiredHoldTime
                    % Hold complete, success
                    moveComplete = true;
                end
            elseif sum(isMatched) == 7
                set([hTarget.handle.hPatch],'FaceColor',greenArm*0.9)                
                % incorrect angles, so no timer
                tHold = [];
            elseif sum(isMatched) == 6
                set([hTarget.handle.hPatch],'FaceColor',greenArm)                
                % incorrect angles, so no timer
                tHold = [];
            else
                set([hTarget.handle.hPatch],'FaceColor',blueArm)
                % incorrect angles, so no timer
                tHold = [];
            end
            sum(isMatched)
            
            
            % set user's arm to current position
            %if ~isempty(s.GraspId)
            %    handAngles = Controls.graspInterpolation(aUser(s.JointId), s.GraspId);
            %elseif s.IsGrasp
            if ~isempty(graspTest)
                % Hard coded the joint value for #8 the grasp value
                handAngles = Controls.graspInterpolation(aUser(8), graspId);
            else
                handAngles = zeros(1,29);
            end
            
            hUser.set_hand_angles_degrees(handAngles);
            hUser.set_upper_arm_angles_degrees(aUser*180/pi)
            hUser.redraw
            
            drawnow
            
            tElapsed = etime(clock,tStart);
            
            %fprintf('Rate is: %f\n',toc(tRefresh))
        end
        
        if isempty(tMovement)
            % No movement.  Nothing to log
            disp('Movement Never Started');
            tCompletion = [];
            angleLog = [];
            intentLog = [];
            graspLog = {};
        else
            % Movement complete.  Un-allocate log data
            disp('Completion Time:')
            tCompletion = etime(clock,tMovement);
            disp(tCompletion)
            
            angleLog(logIdx:end,:) = [];
            intentLog(logIdx:end) = [];
            graspLog(logIdx:end) = [];
        end
        
        if ~moveComplete
            disp('Movement Never Completed');
        else
            disp('Final Time:')
            tElapsed = etime(clock,tStart);
            disp(tElapsed)
        end
        
        % Store results in structure
        structLog.targetClass = dofTestSet;
        structLog.targetGrasp = graspTest;
        structLog.startAngle = aTrial;
        structLog.targetAngle = aGoal;
        structLog.angleTimeHistory = angleLog;
        structLog.intentTimeHistory = intentLog;
        structLog.graspTimeHistory = graspLog;
        structLog.tStart = tStart;
        structLog.tElapsed = tElapsed;
        structLog.tMovement = tMovement;
        structLog.tCompletion = tCompletion;
        structLog.moveComplete = moveComplete;
        
    end
end
