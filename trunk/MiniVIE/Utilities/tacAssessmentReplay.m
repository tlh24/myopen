clear all, clc, close all
% Load TAC Assessment Data
[file,folder]=uigetfile('*.tacAssessment');
load(fullfile(folder,file),'-mat')

tReplay = tic;

for trialInd = 3%1:length(structTrialLog)
    TrialLog = structTrialLog(trialInd);
    
    
    % Create a handle to the MiniV animated arm
    hFig = UiTools.create_figure('JHU/APL: Target Achievement Control Replay','TAC Replay');
    p = get(hFig,'Position');
    p = [300 150 800 600];
    set(hFig,'Position',p)
    hAxes = axes('Parent',hFig);
    hold(hAxes,'on');
    % hUser = Presentation.MiniV(hAxes,1,[1 1 1],1);
    hUser = Presentation.MiniV(hAxes);
    hTarget = Presentation.MiniV(hAxes);
    view(hAxes,0,0);
    axis(hAxes,'equal')
    hLight = light('Parent',hAxes);
    camlight(hLight,'left');
    axis(hAxes,[0 0.4 -0.4 0.4 0.3 0.7])
    display(TrialLog.targetClass)
    
    % setup display
    greenArm = [0.7 0.9 0.6];
    blueArm = [0.7 0.7 0.9];
    set([hTarget.handle.hPatch],'FaceColor',blueArm)
        
    % TODO: Set starting target hand angles
    
    % Necessary for starting position user arm positon
    s = standardClasses(TrialLog.targetClass);
    if s.IsGrasp
        handAngles = Controls.graspInterpolation(TrialLog.targetAngle(s.JointId), s.GraspId);
    else
        handAngles = zeros(1,29);
    end
    
    % set starting user arm and target arm angles
    targetAnglesDegrees = TrialLog.targetAngle*180/pi;
    hTarget.set_upper_arm_angles_degrees(targetAnglesDegrees);
    hTarget.set_hand_angles_degrees(handAngles);
    hTarget.redraw
    
    hUser.set_upper_arm_angles_degrees(TrialLog.startAngle*180/pi);
    hUser.redraw
    
    %StartStopForm([])
    
    aUser = TrialLog.angleTimeHistory(:,2:end); % first column is delay;
    tElapsed = TrialLog.angleTimeHistory(:,1);
    graspID = TrialLog.graspTimeHistory;
    
    for i = 1:length(aUser)
        
        if s.IsGrasp
            handAngles = Controls.graspInterpolation(aUser(i,s.JointId), graspID{i});
        else
            handAngles = zeros(1,29);
        end
        
        userAngles = targetAnglesDegrees;
        userAngles(s.JointId) = aUser(i,s.JointId)*180/pi;
        
        hUser.set_hand_angles_degrees(handAngles);
        hUser.set_upper_arm_angles_degrees(userAngles)
        hUser.redraw
        drawnow
        
        % TODO: make real time by adding in delay
        %         delay = tElapsed(i+1)-tElapsed(i);
        %         pause(delay/10)
        
        % TODO: change color of target arm to green when close
        
        % TBD: Only move desired joint or allow all joints to move?
        
    end
end
