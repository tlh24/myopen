function guiTargetAchievementControl(SignalSource,SignalClassifier,TrainingData,FilePrefix)
% GUI display for showing the TAC test.  The user is to move the arm to the
% presented target within the specified time (20s).  The arm must be held
% within the target region for a time (1s).  Results are logged for
% Completion time, completion rate, and length error
% TODO:
%  - Define a loop for each trained class
%  - test for grasp
%  - define the target arm position for each class
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

% Create a handle to the MiniV animated arm
hUser = Presentation.MiniV;
hTarget = Presentation.MiniV(gca);

% Create the 'target arm'
set([hTarget.handle.hPatch],'FaceColor',[0.7 0.7 0.9])

% Test parameters
tTimeout = 20; %seconds
numTrials = 5;
requiredHoldTime = 1; %s

% define a new state based scenario for feed-forward control
hScenario = Scenarios.ScenarioBase();
hScenario.initialize(SignalSource,SignalClassifier);
hScenario.Verbose = 0;

% Arm Starting Angles (and grasp)
aStart = [0 0 0 10 0 0 0 0];

hScenario.ArmStateModel.setAllValues(aStart * pi / 180);

% TAC1
% Each movement presented 5 times
% TAC2 - two moves requires

for i = 1:numTrials
    structTrialLog(i) = runTrial;
    pause(2);
end

fullFilename = UiTools.ui_select_data_file('.tacAssessment',FilePrefix);

if ~isempty(fullFilename)
    save(fullFilename,'structTrialLog','TrainingData','-mat');
end

disp('Complete')



    % Nested function for running each trial
    function structLog = runTrial
        
        MAX_SAMPLES = 2000;
        
        angleLog = zeros(MAX_SAMPLES,9); % columns are t, and angles
        logIdx = 0;
        
        aGoal = aStart;
        iJoint = 5;
        aGoal(iJoint) = aGoal(iJoint) + 55*sign(randn);
        
        
        % set the arm to the starting position
        hScenario.ArmStateModel.setAllValues(aStart * pi / 180);
        %hScenario.JointAnglesDegrees = aStart;
        
        % set target arm to goal position
        hTarget.set_upper_arm_angles_degrees(aGoal);
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
        while (tElapsed < tTimeout) && ~moveComplete
            
            hScenario.update
            %fprintf('\n')
            
            % Get the user angles from state machine
            jUser = hScenario.ArmStateModel.getValues * 180 / pi;
            
            % add to the log
            logIdx = logIdx + 1;
            angleLog(logIdx,:) = [tElapsed jUser];
            
            if isempty(tMovement) && ~isequal(jUser,aStart)
                tMovement = clock;
            end
            
            % Compare output
            isMatched = abs(jUser - aGoal) < [repmat(15,1,7) 0.1];
            if all(isMatched)
                set([hTarget.handle.hPatch],'FaceColor',[0.7 0.9 0.6])
                
                if isempty(tHold)
                    % start the hold timer
                    tHold = clock;
                elseif etime(clock,tHold) > requiredHoldTime
                    % Hold complete, success
                    moveComplete = true;
                end
            else
                set([hTarget.handle.hPatch],'FaceColor',[0.7 0.7 0.9])
                
                % incorrect angles, so no timer
                tHold = [];
            end
            
            % Update user's arm
            hUser.set_upper_arm_angles_degrees(jUser)
            hUser.redraw
            
            drawnow
            
            tElapsed = etime(clock,tStart);
        end
        
        if isempty(tMovement)
            disp('Movement Never Started');
            tCompletion = [];
            angleLog = [];
        else
            disp('Completion Time:')
            tCompletion = etime(clock,tMovement);
            disp(tCompletion)
            
            angleLog(logIdx:end,:) = [];
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
        structLog.tStart = tStart;
        structLog.tElapsed = tElapsed;
        structLog.tMovement = tMovement;
        structLog.tCompletion = tCompletion;
        structLog.moveComplete = moveComplete;
        
    end
end
