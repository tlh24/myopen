%%

hNfu = MPL.NfuUdp.getInstance;
hNfu.initialize();

%% Enable Algorithm

fprintf('Enabling NFU Algorithm, disabling CAN Streaming\n')
hNfu.setParam(NFU_run_algorithm,1)
hNfu.setParam(NFU_output_to_MPL,0)

%% Disable manual override
hNfu.setParam(WRISTDEV_manualOverride,0);
hNfu.setParam(WRISTROT_manualOverride,0);
hNfu.setParam(WRISTFE_manualOverride,0);

%% Setup for Pattern Rec:

% PR_windowSize = 150
% PR_nClasses = 32
%% Route input channels to pattern recognition
%Note this isn't necessary since all channels can go to pattern rec
% PR_channelMask.Value(:) = 1;
% id = obj.SignalClassifier.getActiveChannels;
% PR_channelMask.Value(id) = 1;
% update_param(pnet_conn,PR_channelMask);
%% Majority Vote
hNfu.setParam(PR_nVotes,5);
%% Grasps
nGrasps = length(PR_graspChannels); %16 grasp types
hNfu.setParam(SA_graspOverride,0); % <-- manual override
graspId = 1;
SA_graspType.Value
SA_Action_GraspType.Value(1) = 1;   % Enable
SA_Action_GraspType.Value(3) = 0.5; % Magnitude
SA_Action_GraspType.Value(7) = 2;   % GraspId
hNfu.setParam(SA_Action_GraspType);

PR_graspGains.Value; % 1 is open, 2:17 are grasp gains

%%

%idClass = %% match the selected classes to the correct column
numFeatures = obj.SignalClassifier.NumFeatures;
numActiveChannels = obj.SignalClassifier.NumActiveChannels;
activeChannels = obj.SignalClassifier.getActiveChannels;

PR_Wg.Value(:) = 0;
for iClass = 1:size(obj.SignalClassifier.Wg,2)
    classNames = obj.SignalClassifier.getClassNames;
    className = classNames{iClass};
    if strcmpi(className,'Hand Open')
        targetClassId = 15;
    elseif ~isempty(strfind(className,'Grasp'))
        targetClassId = iClass + 15;
    else
        targetClassId = iClass;% find matching classname
    end
    
    targetChannelWeights = zeros(32,4);
    channelWeights = reshape(obj.SignalClassifier.Wg(:,iClass),numActiveChannels,numFeatures);
    targetChannelWeights(activeChannels,:) = channelWeights;
    PR_Wg.Value(:,targetClassId) = targetChannelWeights(:);
    PR_Cg.Value(targetClassId) = obj.SignalClassifier.Cg(iClass);
    
end

hNfu.setParam(PR_Wg);
hNfu.setParam(PR_Cg);


%% Signal Routing
UpperJointOrder = {'ShFE' 'ShAA' 'HR' 'EL' 'WR' 'WDev' 'WFE'};
[A B C] = deal(1,2,3);
routingMatrix = reshape(SA_signalRouting.Value,3,[]);
% vChannelOffset = 32+8;
% routingMatrix(A,1) = vChannelOffset + 1;

routingMatrix(:) = 0;
id = 6;
routingMatrix(A,id) = 1;
routingMatrix(B,id) = 0;
routingMatrix(C,id) = 0;
% routingMatrix(A,7) = 1;
% routingMatrix(B,7) = 2;

% routingMatrix(24) = 1;

hNfu.setParam(SA_signalRouting,routingMatrix(:)');

%% WristFE Manual Override
hNfu.setParam(WRISTFE_manualOverride,1);
hNfu.setParam(WRISTFE_outputMagnitude,0.2);
% pause(1)
% WRISTFE_outputMagnitude.Value = 0;
% update_param(cmdCon,WRISTFE_outputMagnitude)

%% WristFE Dual Site Control
hNfu.setParam(WRISTFE_manualOverride,0);
hNfu.setParam(WRISTFE_outputMagnitude,0);
hNfu.setParam(WRISTFE_controlStrategy,1); %1 = velocity
hNfu.setParam(WRISTFE_controlMode,2); % 2 = Dual Site
hNfu.setParam(WRISTFE_dualSiteOutputGain,1);
hNfu.setParam(WRISTFE_outputEnabledForRpl,1);

hNfu.setParam(WRISTFE_dualSiteChAGain,1);
hNfu.setParam(WRISTFE_dualSiteChBGain,0);
hNfu.setParam(WRISTFE_dualSiteTypeSelect,1); % 1 = Maximum
hNfu.setParam(WRISTFE_dualSiteChAThreshold,0);
hNfu.setParam(WRISTFE_dualSiteChBThreshold,0);

hNfu.setParam(WRISTFE_dualSiteModeSelectEnabled,1);

hNfu.setParam(WRISTFE_dualSiteOutputDirection,-1);

hNfu.setParam(WRISTFE_negativeOutputLimit,-10000);
hNfu.setParam(WRISTFE_positiveOutputLimit,10000);



%%
% hNfu.disableStreaming(1);
% hNfu.enableStreaming(2);
% t = timer;
% set(t,'Period',2,'ExecutionMode','fixedRate','TimerFcn',@(src,obj)disp(hNfu.getMud));
% start(t)
