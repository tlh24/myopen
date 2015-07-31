classdef MplVulcanX < Scenarios.OnlineRetrainer
    % Scenario for controlling JHU/APL MPL
    % Requires Utilities\UiTools
    %
    % This scenario is used with VulcanX running locally to the CAN bus
    %
    % 01-Sept-2010 Armiger: Created
    % 17-May-2013 Armiger: Isolated only the vulcanX components
    properties
        % Handles
        hMud;
        hUdp;  % Handle to Udp port.  local port is setup to receive percepts and send to command port
        hIntentUdp;  % Handle to Intent Udp port. 

        VulcanXAddress = '127.0.0.1';   % VulcanX IP (127.0.0.1)
        VulcanXCmdPort = 9027;          % MUD Port (L=9024 R=9027)
        VulcanXLocalPort = 25001;       % Percept Port (L=25101 R=25001)
        
        IntentAddress = '127.0.0.1';    % IP for class info streaming (127.0.0.1)
        IntentDestinationPort = 9094;   % Dest Port for class info streaming (L=9094 R=9095)
        IntentSourcePort = 58010;       % Src Port for class info streaming 

        IsRightSide = 0;
        
    end
    methods
        function obj = MplVulcanX
            % Creator
        end
        function initialize(obj,SignalSource,SignalClassifier,TrainingData)
            
            % Extend Scenario model to include communications with the
            % limb system via vulcanX or the NFU
            
            fprintf('[%s] Starting VulcanX\n',mfilename);

            % Create MUD message translator
            obj.hMud = MPL.MudCommandEncoder();
            
            % PnetClass(localPort,remotePort,remoteIP)
            obj.hUdp = PnetClass(...
                obj.VulcanXLocalPort,obj.VulcanXCmdPort,obj.VulcanXAddress);
            obj.hUdp.initialize();

            % setup udp for intent streaming
            obj.hIntentUdp = PnetClass(...
                obj.IntentSourcePort,obj.IntentDestinationPort,obj.IntentAddress);
            obj.hIntentUdp.initialize();
            
            obj.getRocConfig();
            
            % Remaining superclass initialize methods
            initialize@Scenarios.OnlineRetrainer(obj,SignalSource,SignalClassifier,TrainingData);
            
        end
        function update(obj)
            % This is the main funciton called by the timer
            try
                update@Scenarios.OnlineRetrainer(obj); % Call superclass update method
                
                if ~isempty(obj.SignalSource)
                    obj.update_control();
                end
                
                % obj.update_sensory();
                
                if obj.Verbose
                    % print backspace and new line
                    fprintf('\b\n');
                end
                
                % Stream intent info:
                % obj.Intent.classOut = classOut;
                % obj.Intent.voteDecision = voteDecision;
                % obj.Intent.className = className;
                % obj.Intent.prSpeed = prSpeed;
                % obj.Intent.rawEmg = rawEmg;
                % obj.Intent.windowData = windowData;
                % obj.Intent.features2D = features2D;
                %obj.hIntentUdp.putData(uint8(obj.Intent.voteDecision));
                obj.hIntentUdp.putData(char(obj.Intent.className));
                
            catch ME
                UiTools.display_error_stack(ME);
            end
            
        end
        function update_control(obj)
            % Get current joint angles and send commands to VulcanX
            %
            % Process steps include:
            %   - get joint angles from the JointAngles properties
            %       -Alternatively this could / should come from the arm
            %       state model
            %   - find the grasp roc number corresponding to the grasp name
            %   - Apply any manual override changes
            %       - TODO, remove this
            %   - get joint angles based on roc table
            %       - Currently only applies to hand.
            %       - if it's a whole arm roc, it should overwrite the
            %       upper arm joint values
            
            m = obj.ArmStateModel;
            rocValue = m.structState(m.RocStateId).Value;
            rocId = m.structState(m.RocStateId).State;
            
            % check for endpoint control command.  Currently hijacking the
            % state variable
            
            if length(rocId) >= 8
                fprintf('Endpoint: %f %f %f %f %f %f %f %f\n',rocId)
                endPtVelocities = rocId(1:3)';
                endPtOrientationVelocities = rocId(4:6)';
                % rocMode = 1;
                % rocTableIDs = 1;
                % rocTableValues = 0;
                % rocWeights  = 1;
                rocMode = obj.hMud.ROC_MODE_VELOCITY;
                rocTableIDs = 1;
                rocTableValues = rocId(8);
                rocWeights  = 1;
                
                msg = obj.hMud.EndpointVelocity6HandRocGrasps( ...
                    endPtVelocities, endPtOrientationVelocities, ...
                    rocMode, rocTableIDs, rocTableValues, rocWeights);
                
                obj.hUdp.putData(msg);
                return
            end

            if isa(rocId,'Controls.GraspTypes')
                % convert char grasp class name (e.g. 'Spherical') to numerical mpl
                % grasp value (e.g. 7)
                rocId = MPL.GraspConverter.graspLookup(rocId);
            end
            
            % Note the joint ids for the MPL are different than the older
            % action bus definition
            % jointIds = [
            %     action_bus_enum.Shoulder_FE
            %     action_bus_enum.Shoulder_AbAd
            %     action_bus_enum.Humeral_Rot
            %     action_bus_enum.Elbow
            %     action_bus_enum.Wrist_Rot
            %     action_bus_enum.Wrist_Dev
            %     action_bus_enum.Wrist_FE
            %     ];
            jointIds = [
                mpl_upper_arm_enum.SHOULDER_FE
                mpl_upper_arm_enum.SHOULDER_ADAB
                mpl_upper_arm_enum.HUMERAL_ROT
                mpl_upper_arm_enum.ELBOW
                mpl_upper_arm_enum.WRIST_ROT
                mpl_upper_arm_enum.WRIST_DEV
                mpl_upper_arm_enum.WRIST_FE
                ];
            
            mplAngles = zeros(1,27);
            %mplAngles(1:7) = obj.JointAnglesDegrees(jointIds) * pi/180;
            mplAngles(1:7) = [m.structState(jointIds).Value];
            
                        
            % Generate vulcanX message.  If local roc table exists, use it
            if ~isempty(obj.RocTable)

                % check bounds
                rocValue = max(min(rocValue,1),0);
                % lookup the Roc id and find the right table
                iEntry = (rocId == [obj.RocTable(:).id]);
                if sum(iEntry) < 1
                    error('Roc Id %d not found',rocId);
                elseif sum(iEntry) > 1
                    warning('More than 1 Roc Tables share the id # %d',rocId);
                    roc = obj.RocTable(find(iEntry,1,'first'));
                else
                    roc = obj.RocTable(iEntry);
                end

                % perform local interpolation
                mplAngles(roc.joints) = interp1(roc.waypoint,roc.angles,rocValue);

                % generate MUD message using joint angles
                msg = obj.hMud.AllJointsPosVelCmd(mplAngles(1:7),zeros(1,7),mplAngles(8:27),zeros(1,20));
            else
                % generate MUD message using joint angles and ROC
                % parameters
                msg = obj.hMud.ArmPosVelHandRocGrasps(mplAngles(1:7),zeros(1,7),1,rocId,rocVal,1);
            end
            
            % write message
            obj.hUdp.putData(msg);
            
        end
        function update_sensory(obj)
            
            % percepts will be sent to the local port
            p = obj.hUdp.getData; %gets latest packets
            if ~isempty(p) && length(p) >= 324
                r = reshape(typecast(p(1:324),'single'),3,27);
                if obj.Verbose > 1
                    fprintf('[%s] PerceptAngles: ',mfilename);
                    fprintf('%6.4f ',r(1,:)');
                    fprintf('\n');
                end
                
            else
                % No new data
            end
        
        end
        
    end
end



%

% Example percept data:
% 
%   Properties:
%      localPort: 25001
%     remotePort: 9027
%       remoteIP: '127.0.0.1'
%        hSocket: 0
%        
%   Columns 1 through 19
% 
%     4  181    5   61  104   46  134  191    0    0  192  255  185  110   19   61   28  110  145
% 
%   Columns 20 through 38
% 
%    61    0    0  192  255   38  222  184   59   26  229  234  190    0    0  192  255  210  110
% 
%   Columns 39 through 57
% 
%    47   62   72   14  164   60    0    0  192  255   43   26  180  190   97   87   33  187    0
% 
%   Columns 58 through 76
% 
%     0  192  255    0    0    0  128    0    0    0  128    0    0  192  255    6   71   29  188
% 
%   Columns 77 through 95
% 
%   202  104   55   63    0    0  192  255  208  224  203  189    2   65  214  190    0    0  192
% 
%   Columns 96 through 114
% 
%   255  249  183  219   61  147  218  147   63    0    0  192  255   38   95  242   61    1  112
% 
%   Columns 115 through 133
% 
%   118  192    0    0  192  255  207  194  210   61  105   89   13   63    0    0  192  255  154
% 
%   Columns 134 through 152
% 
%   208   88  188  125   30   13  189    0    0  192  255   34   42  230   61  235  211   36  191
% 
%   Columns 153 through 171
% 
%     0    0  192  255  164  111  254   61  168  143   75  191    0    0  192  255   69  101  205
% 
%   Columns 172 through 190
% 
%    61   69  101  205   61    0    0  192  255  163    3   77   62  230  234   69  189    0    0
% 
%   Columns 191 through 209
% 
%   192  255  240    7  222   61  242   74   15  191    0    0  192  255  230  232  245   61  131
% 
%   Columns 210 through 228
% 
%   140   74  191    0    0  192  255   85  167  202   61   83  197   24  191    0    0  192  255
% 
%   Columns 229 through 247
% 
%   221  145  178   62    1  198   55  189    0    0  192  255  246  248  220   61  104   34    2
% 
%   Columns 248 through 266
% 
%   191    0    0  192  255  138   50  245   61  201    8   57  191    0    0  192  255   61   89
% 
%   Columns 267 through 285
% 
%   199   61  105  191   14  191    0    0  192  255   77  194   22   62   77  194   22   62    0
% 
%   Columns 286 through 304
% 
%     0  192  255   82  248  204   63  135  159  227   62    0    0  192  255   12  180  133   62
% 
%   Columns 305 through 323
% 
%   146   48  186  191    0    0  192  255  161  205   70  190  251   51  203   63    0    0  192
% 
%   Columns 324 through 342
% 
%   255    0    0    0    0    0    0    0    0    0    0    0    0    0    0    0    0    0    0
% 
%   Columns 343 through 361
% 
%     0    0    0    0    0    0    0    0    0    0    0    0    0    0    0    0    0    0    0
% 
%   Columns 362 through 380
% 
%     0    0    0    0    0    0    0    0    0    0    0    0    0    0    0    0    0    0    0
% 
%   Columns 381 through 399
% 
%     0    0    0    0    0    0    0    0    0    0    0    0    0    0    0    0    0    0    0
% 
%   Columns 400 through 418
% 
%     0    0    0    0    0    0    0    0    0    0    0    0    0    0    0    0    0    0    0
% 
%   Columns 419 through 437
% 
%     0    0    0    0    0    0    0    0    0    0    0    0    0    0    0    0    0    0    0
% 
%   Columns 438 through 456
% 
%     0    0    0    0    0    0    0    0    0    0    0    0    0    0    0    0    0    0    0
% 
%   Columns 457 through 458
% 
%     0    0       
%        
% 
