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

        VulcanXAddress = '127.0.0.1';   % VulcanX IP (127.0.0.1)
        VulcanXCmdPort = 9027;          % MUD Port (L=9024 R=9027)
        VulcanXLocalPort = 25001;       % Percept Port (L=25101 R=25001)
        
        IsRightSide = 0;
        
        RocTable = [];
        
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
            obj.hUdp = PnetClass(...,
                obj.VulcanXLocalPort,obj.VulcanXCmdPort,obj.VulcanXAddress);
            
            obj.hUdp.initialize();
            
            % create local ROC tables (even though roc tables in vulcan x
            % can also be specified)
            obj.RocTable = MPL.RocTable.createRocTables();
            
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
                
                obj.update_sensory();
                
            catch ME
                UiTools.display_error_stack(ME);
            end
            
        end
        function update_control(obj)
            % Get current joint angles and send commands to VulcanX or NFU
            
            % Note the joint ids for the MPL are different than the older
            % action bus definition
            jointIds = [
                action_bus_enum.Shoulder_FE
                action_bus_enum.Shoulder_AbAd
                action_bus_enum.Humeral_Rot
                action_bus_enum.Elbow
                action_bus_enum.Wrist_Rot
                action_bus_enum.Wrist_Dev
                action_bus_enum.Wrist_FE
                ];
            
            % upperArmAngles = jointAngles([1 2 3 4 5 7 6])
            mplArmAngles = obj.JointAnglesDegrees(jointIds) * pi/180;
            
            % convert char grasp class name (e.g. 'Spherical') to numerical mpl
            % grasp value (e.g. 7)
            graspId = obj.graspLookup(obj.GraspId);
            
            
            % Last chance to override commands before they are sent to the
            % hardware
            if obj.IsRightSide
                [mplArmAngles, graspValue, graspId] = manualOverRideRight(mplArmAngles,obj.GraspValue,graspId);
            else
                [mplArmAngles, graspValue, graspId] = manualOverRideLeft(mplArmAngles, obj.GraspValue,graspId);
            end
            
            % Send to vulcanX.  If local roc table exists, use it
            if ~isempty(obj.RocTable)
                % interpolate roc table locally
                graspValue = max(min(graspValue,1),0);
                roc = obj.RocTable(graspId+1);
                handPos = interp1(roc.waypoint,roc.angles,graspValue);
                msg = obj.hMud.AllJointsPosVelCmd(mplArmAngles,zeros(1,7),handPos,zeros(1,20));
            else
                % send roc command
                msg = obj.hMud.ArmPosVelHandRocGrasps(mplArmAngles,zeros(1,7),1,graspId,graspVal,1);
            end
            
            % write message
            obj.hUdp.putData(msg);
            
        end
        function update_sensory(obj)
            
            % percepts will be sent to the local port
            p = obj.hUdp.getData; %gets latest packets
            if ~isempty(p) && length(p) >= 324
                r = reshape(typecast(p(1:324),'single'),3,27);
                if obj.Verbose
                    fprintf('[%s] PerceptAngles: ',mfilename);
                    fprintf('%6.4f ',r(1,:)');
                    fprintf('\n');
                end
                
            else
                % No new data
            end
        
        end
        
    end
    methods (Static)
        function graspId = graspLookup(strGraspName)
            
            if isempty(strGraspName)
                graspId = 0;
            else
                % Map the minivie grasp enumeration to the ROC ids on the
                % Limb
                switch char(strGraspName)
                    case 'Tip'
                        %graspId = 1;  % Pinch (British)
                        graspId = 2;  % Pinch (American)
                    case 'Lateral'
                        graspId = 9;  % Key
                    case 'Tripod'
                        graspId = 4;  % 3 Finger Pinch
                    case 'Spherical'
                        graspId = 7;  % Spherical
                        %graspId = 1;
                    case 'Power'
                        graspId = 5;  % Cylindrical
                    case 'Extension'
                        graspId = 3;  % Palmar (Tray)
                    case 'Hook'
                        graspId = 8;  % Hook
                    case 'Relaxed'
                        graspId = 0;
                    case 'Index'
                        graspId = 9;
                    case 'Middle'
                        graspId = 10;
                    case 'Ring'
                        graspId = 11;
                    case 'Little'
                        graspId = 12;
                    case 'Thumb'
                        graspId = 13;
                    case {'Point', 'Pointer', 'Trigger'}
                        graspId = 6;
                    otherwise
                        graspId = 0;
                end
                % zero based index from the enumeration
                %graspId = find(obj.GraspId == enumeration('Controls.GraspTypes'))-1;
                
                %graspId = 1;  % Pinch (American)
                
            end
        end % function graspLookup
        
    end % methods (Static)
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
