function guiTargetAchievementControl(SignalSource,SignalClassifier,TrainingData,FilePrefix)
% GUI display for showing the TAC test.  The user is to move the arm to the
% presented target within the specified time (20s).  The arm must be held
% within the target region for a time (1s).  Results are logged for
% Completion time, completion rate, and length error
%
%
%
% Test:
%obj = MiniVIE.Default; GUIs.guiTargetAchievementControl(obj.SignalSource,obj.SignalClassifier,obj.TrainingData,'Test_');
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


% setup display
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
tTimeout = 20; %seconds
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

idxTrained = unique(TrainingData.getClassLabels);
trainedClassNames = TrainingData.ClassNames(idxTrained);

isRestClass = strcmpi(trainedClassNames,'No Movement');
if ~any(isRestClass)
    fprintf('[%s] Failed to find "No Movement" class in training data\n',mfilename);
end
trainedClassNames(isRestClass) = [];

iTest = 0;
try
    for iTrial = 1:numTrials
        % Randomize
        trainedClassNames = trainedClassNames(randperm(length(trainedClassNames)));
        for iClass = 1:length(trainedClassNames)
            thisClass = trainedClassNames{iClass};
            t = title(hAxes,thisClass);
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
            structTrialLog(iTest) = runTrial(thisClass);
        end
    end
catch ME
    fprintf('[%s] Exited TAC Assessment with Error: %s\n',mfilename,ME.message);
end
fullFilename = UiTools.ui_select_data_file('.tacAssessment',FilePrefix);

if ~isempty(fullFilename)
    try
        save(fullFilename,'structTrialLog','-mat');
        %save(fullFilename,'structTrialLog','TrainingData','-mat');
    catch ME
        rethrow(ME);
        disp(mfilename)
        %keyboard
    end
end

disp('Complete')

% Nested function for running each trial
    function structLog = runTrial(thisClass)
        structLog = [];
        
        MAX_SAMPLES = 2000;
        
        angleLog = zeros(MAX_SAMPLES,9); % columns are t, and angles
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
        s = standardClasses(thisClass);
        
        % Hand open defined by it being a grasp and no id associated with
        % the class name ('Hand Open')
        isHandOpen = s.IsGrasp && isempty(s.GraspId);
        
        if isempty(s)
            % Throw error if class name doesn;t match
            errordlg(sprintf('Unmatched class %s',thisClass));
            error('Unmatched class %s',thisClass);
        end
        
        maxVal = hScenario.ArmStateModel.structState(s.JointId).Max;
        minVal = hScenario.ArmStateModel.structState(s.JointId).Min;
        
        if ~s.IsGrasp && s.Direction > 0
            % positive
            start = (0.25*(maxVal - minVal) + minVal);
            target = (0.75*(maxVal - minVal) + minVal);
            % target = 0.75*(maxVal) * 180 / pi;
        elseif ~s.IsGrasp && s.Direction < 0
            start = (-0.25*(maxVal - minVal) + maxVal);
            target = (-0.75*(maxVal - minVal) + maxVal);
            %target = 0.75*(minVal) * 180 / pi;
        elseif isHandOpen
            % Need to pick a grasp state for Hand Open
            s.GraspId = Controls.GraspTypes.Spherical;
            m = hScenario.ArmStateModel;
            % Set hand closed
            m.setRocId(s.GraspId);
            m.setValue(m.RocStateId,1);
            start = 1;
            target = 0;
        elseif s.IsGrasp % && ~isempty(s.GraspId)
            % Grasp Close
            m = hScenario.ArmStateModel;
            m.setValue(m.RocStateId,0);
            start = 0;
            target = 1;
        end
        
        % Start position for this trial
        aTrial = aStart;
        aTrial(s.JointId) = start;
        aGoal = aStart;
        aGoal(s.JointId) = target;
        
        % set the arm to the starting position
        hScenario.ArmStateModel.setAllValues(aTrial);
        
        % set target arm to goal position
        if ~isempty(s.GraspId)
            handAngles = Controls.graspInterpolation(target, s.GraspId);
        else
            handAngles = zeros(1,29);
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
            tRefresh = tic;
            
            % call the update function to perform classification
            hScenario.update()
            
            if hScenario.Verbose, fprintf('\n'); end
            
            % Get the user angles from state machine
            jUser = hScenario.ArmStateModel.getValues;
            
            % add to the log
            logIdx = logIdx + 1;
            angleLog(logIdx,:) = [tElapsed jUser];
            %intentLog{logIdx} = hScenario.Intent;
            newIntent = hScenario.Intent;
            % Clear raw data logging to avoid memory overrun
            newIntent.windowData = [];
            newIntent.rawEmg = [];
            intentLog(logIdx) = newIntent;
            
            if isempty(tMovement) && ~isequal(jUser,aTrial)
                tMovement = clock;
            end
            
            % Update user's arm
            % if TAC case 1, user can only move the tested joint, all
            % others are fixed
            aUser = aTrial;
            aUser(s.JointId) = jUser(s.JointId);
            
            % TAC case 2: all joints can move
            %aUser = jUser;
            
            % Compare output
            % First make sure all angles are within error band.  AND check
            % that either this isn't a grasp OR the user has the right
            % grasp selected OR is't hand open and we dont' care the grasp
            % state
            isMatched = all(abs(aUser - aGoal) < [repmat(jointAccuracy,1,7) graspAccuracy]) && ...
                ( ~s.IsGrasp || isHandOpen || (hScenario.ArmStateModel.getRocValues == s.GraspId) );
            if all(isMatched)
                set([hTarget.handle.hPatch],'FaceColor',greenArm)
                if isempty(tHold)
                    % start the hold timer
                    tHold = clock;
                elseif etime(clock,tHold) > requiredHoldTime
                    % Hold complete, success
                    moveComplete = true;
                end
            else
                set([hTarget.handle.hPatch],'FaceColor',blueArm)
                % incorrect angles, so no timer
                tHold = [];
            end
            
            % set user's arm to current position
            %if ~isempty(s.GraspId)
            %    handAngles = Controls.graspInterpolation(aUser(s.JointId), s.GraspId);
            %elseif s.IsGrasp
            if s.IsGrasp
                handAngles = Controls.graspInterpolation(aUser(s.JointId), hScenario.ArmStateModel.getRocValues);
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
            disp('Movement Never Started');
            tCompletion = [];
            angleLog = [];
            intentLog = [];
        else
            disp('Completion Time:')
            tCompletion = etime(clock,tMovement);
            disp(tCompletion)
            
            angleLog(logIdx:end,:) = [];
            intentLog(logIdx:end) = [];
            %figure;
            %plot(angleLog(:,1),angleLog(:,6));
        end
        
        if ~moveComplete
            disp('Movement Never Completed');
        else
            disp('Final Time:')
            tElapsed = etime(clock,tStart);
            disp(tElapsed)
        end
        
        % Store results in structure
        structLog.startAngle = aStart;
        structLog.angleTimeHistory = angleLog;
        structLog.intentTimeHistory = intentLog;
        structLog.tStart = tStart;
        structLog.tElapsed = tElapsed;
        structLog.tMovement = tMovement;
        structLog.tCompletion = tCompletion;
        structLog.moveComplete = moveComplete;
        
    end
end
