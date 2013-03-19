classdef MplScenarioMud < Scenarios.OnlineRetrainer
    % Scenario for controlling JHU/APL MPL
    % Requires Utilities\UiTools
    %
    % This scenario is used in two cases, either with VulcanX running
    % locally to the CAN bus, or via a router directly to the NFU
    %
    % 01-Sept-2010 Armiger: Created
    properties
        % Handles
        hMud = [];
        hSink = [];
        hNfu = [];
        hMicroStrainGX2 = [];
        hTactors;
        hUdpArmTracking; % pnet Handle for sending upper arm angles from remote system
        % format is 7 singles (28 bytes) of 7 upper arm angles in degrees.
        
        enableNfu = 1; %true;
        enableMicroStrain = 0; %true;
        
        UdpArmTrackingPort = []; % Leasve empty unless streaming upper arm angles
        
        EnableFeedback = 1;
        
        % MicroStrain config values
        msComPortStr = 'COM6';
        msNodeInt = 10;
        msChannelInt = 14;
        msLefty = true;
        
        % MicroStrain orientation data
        T_WCS_HOME
        F_RB1_HOME
        % Compass heading when in home position
        msDegreesFromNorth = 0;
        
        VulcanXAddress = '192.168.1.199'; %127.0.0.1
        VulcanXDestinationPort = 9027; %9035
        VulcanXLocalPort = 56000; %9035
        
        %TactorIds = [3 4]
        TactorIds = [5 6 7];
        
        localRoc = [];
        
    end
    methods
        function obj = MplScenarioMud
            % Creator
        end
        function initialize(obj,SignalSource,SignalClassifier,TrainingData)
            
            % Extend Scenario model to include communications with the
            % limb system via vulcanX or the NFU
            
            if obj.enableNfu
                fprintf('[%s] Starting with NFU ENABLED\n',mfilename);
                obj.hNfu = MPL.NfuUdp.getInstance;
                status = obj.hNfu.initialize();
                
                if status < 0
                    error('Failed to initialize MPL.NfuUdp');
                end
                
                obj.hMud = MPL.MudCommandEncoder();
                
                % Note tactors currently only enabled on NFU pathway
                
                % TODO: abstract tactor ids and mapping
                %tactorIds = [5 6 7];
                tactorIds = obj.TactorIds;
                assert(isnumeric(tactorIds),'Tactor Ids must be numeric');
                for iTactor = tactorIds
                    fprintf('[%s] Setting up tactor id# %d\n',mfilename,iTactor);
                    obj.hTactors = [obj.hTactors HapticAlgorithm(obj.hNfu,iTactor)];
                end
                
            else
                fprintf('[%s] Starting with NFU DISABLED\n',mfilename);
                obj.hSink = MPL.VulcanXSink(...,
                    obj.VulcanXAddress,obj.VulcanXDestinationPort,obj.VulcanXLocalPort);
                obj.hMud = MPL.MudCommandEncoder();
                
                obj.localRoc = MPL.RocTable.createRocTables('test.xml');
                
                % Use MicroStrain for upper arm motion
                if obj.enableMicroStrain
                    obj.hMicroStrainGX2 = MicroStrain3DM_GX2( ...
                        obj.msComPortStr, obj.msNodeInt, obj.msChannelInt);
                    if ~obj.hMicroStrainGX2.connect()
                        error('Could not connect to MicroStrain on %s, node %d, channel %d', ...
                            obj.msComPortStr, obj.msNodeInt, obj.msChannelInt);
                    end
                    
                    % Assume MicroStrain (upper arm) is in home position
                    % (attached to user's tricep, antenna pointed toward
                    % user's shoulder, arm hanging loosely).
                    obj.home();
                end
                if ~isempty(obj.UdpArmTrackingPort)
                    obj.hUdpArmTracking = PnetClass();
                    obj.hUdpArmTracking.localPort = obj.UdpArmTrackingPort;
                    obj.hUdpArmTracking.initialize();
                end
            end
            
            % Remaining superclass initialize methods
            initialize@Scenarios.OnlineRetrainer(obj,SignalSource,SignalClassifier,TrainingData);
            
        end
        function home(obj)
            if ~isempty(obj.hMicroStrainGX2)
                response = questdlg('Ready to Home?', 'Home', 'OK', 'Cancel', 'OK');
                if ~strcmpi(response, 'OK')
                    return;
                end
                
                bearing = inputdlg('Enter compass heading of the MicroStrain [0, 359]', 'Heading');
                bearing = str2double(bearing);
                if bearing < 0 || bearing > 359
                    errordlg('Bad compass heading given.', 'Bad Heading');
                    return
                end
                
                obj.msDegreesFromNorth = bearing;
                
                obj.stream_rcv();
                
                F_WCS_RB1 = obj.hMicroStrainGX2.rotationMatrix;
                obj.T_WCS_HOME = makehgtform('zrotate',-obj.msDegreesFromNorth*pi/180,'yrotate',pi/2);
                obj.F_RB1_HOME = pinv(F_WCS_RB1) * obj.T_WCS_HOME;
            end
        end
        function update(obj)
            
            try
                
                update@Scenarios.OnlineRetrainer(obj); % Call superclass update method
                
                if ~isempty(obj.SignalSource)
                    update_control(obj);
                end
                
                if obj.EnableFeedback
                    update_sensory(obj);
                end
            catch ME
                UiTools.display_error_stack(ME);
            end
            
        end
        function update_sensory(obj)
            % Send feedback
            if isempty(obj.hNfu)
                % No NFU, no percepts, no Feedback
                %disp('Feedback Disabled');
                return
            end
            
            obj.hNfu.update; %called by getData
            convertedPercepts = obj.hNfu.get_buffer(2);
            
            if ~isempty(convertedPercepts)
                convertedPercepts = convertedPercepts{end};

                %disp(convertedPercepts);
                
                % 9/14/2012 RSA verified that these delays between udp
                % commands are necessary to avoid choppiness in the command
                % stream
                
                % pause(0.01)
                % littleT = convertedPercepts(3,6);
                % obj.hTactors(1).update(littleT);
                %
                % pause(0.01)
                % indexT = convertedPercepts(3,2);
                % obj.hTactors(2).update(indexT);
                
                drawnow
                middleT = convertedPercepts(3,3);
                obj.hTactors(1).update(middleT);
                drawnow
                indexT = convertedPercepts(3,2);
                obj.hTactors(2).update(indexT);
                drawnow
                thumbT = convertedPercepts(3,8);
                obj.hTactors(3).update(thumbT);
                
                %disp([indexT littleT])  % SN4 noise +/-4, max ~100
            end
            
            
        end
        function update_control(obj)
            % Get current joint angles and send commands to VulcanX or NFU
            
            % TODO: Hand and wrist and elbow only implemented, not upper arm
            w = zeros(1,3);
            w(1) = +obj.JointAnglesDegrees(action_bus_enum.Wrist_Rot) * pi/180;
            w(2) = +obj.JointAnglesDegrees(action_bus_enum.Wrist_Dev) * pi/180;
            w(3) = +obj.JointAnglesDegrees(action_bus_enum.Wrist_FE) * pi/180;
            
            %e = obj.JointAnglesDegrees(action_bus_enum.Elbow) * pi/180;
            e = 90 * pi / 180;
            
            % convert char grasp id to numerical mpl grasp value
            graspId = obj.graspLookup(obj.GraspId);
            
            
            % 1/17/2013 RSA: Implemented switchout case for vulcan x or
            % nfu.  Also nfu local roc tables are currently disabled
            
            shoulderAngles = zeros(1,3);
            
            if ~isempty(obj.hUdpArmTracking)
                dataBytes = obj.hUdpArmTracking.getData();
                numBytes = length(dataBytes);
                if numBytes == 7*4
                    angles = typecast(uint8(dataBytes),'single');
                    shoulderAngles(1:3) = angles(1:3);
                    e = angles(4);
                elseif numBytes > 0
                    fprintf('[%s] Unexpected Packet Size: %d\n',mfilename,numBytes);
                else
                    %fprintf('[%s] No Udp Data on port: %d\n',mfilename,obj.hUdpArmTracking.localPort);
                end
            end
            if ~isempty(obj.hMicroStrainGX2)
                obj.stream_rcv();
                
                F_WCS_RB1 = obj.hMicroStrainGX2.rotationMatrix;
                F_WCS_RB1Offset = pinv(obj.T_WCS_HOME) * ...
                    F_WCS_RB1 * obj.F_RB1_HOME;
                ang = obj.R_to_EulerZYX(F_WCS_RB1Offset);
                
                shoulderFE = ang(3);
                if obj.msLefty
                    shoulderAA = -ang(2);
                    humeralRot = ang(1);
                else
                    shoulderAA = ang(2);
                    humeralRot = -ang(1);
                end
                
                shoulderAngles = [shoulderFE shoulderAA humeralRot];
            end
            
            % TODO: right / left arm should be determined by means other than udp port
            isRight = (obj.UdpArmTrackingPort == 56701);
            if isRight
                [shoulderAngles, e, w, graspValue, graspId] = manualOverRideRight(shoulderAngles, e, w, obj.GraspValue,graspId);
            else
                [shoulderAngles, e, w, graspValue, graspId] = manualOverRideLeft(shoulderAngles, e, w, obj.GraspValue,graspId);
            end
            if obj.enableNfu
                obj.hNfu.sendUpperArmHandRoc([shoulderAngles e w],graspId,graspValue);
            else
                % Send to vulcanX
                %                 msg = obj.hMud.ArmPosVelHandRocGrasps([shoulderAngles e w],zeros(1,7),1,graspId,graspValue,1);
                assert(obj.GraspValue >= 0,'GraspValue < 0');
                assert(obj.GraspValue <= 1,'GraspValue > 1');
                roc = obj.localRoc(graspId+1);
                
                handPos = interp1(roc.waypoint,roc.angles,obj.GraspValue);
                % handPos = zeros(1,20);
                msg = obj.hMud.AllJointsPosVelCmd([shoulderAngles e w],zeros(1,7),handPos,zeros(1,20));
                obj.hSink.putbytes(msg);
            end
            
            return
            
            % TODO: fix the vulcanX switchout
            
            
            
            %             useLocalRoc = 1;
            %             if isempty(obj.hMicroStrainGX2)
            %
            %
            %                 if ~useLocalRoc
            %                     % use built in ROC's
            %                     msg = obj.hMud.ArmPosVelHandRocGrasps([zeros(1,3) e w],zeros(1,7),1,graspId,obj.GraspValue,1);
            %                 else
            %                     % use local ROC's
            %                     assert(obj.GraspValue >= 0,'GraspValue < 0');
            %                     assert(obj.GraspValue <= 1,'GraspValue > 1');
            %                     roc = obj.localRoc(graspId+1);
            %
            %                     handPos = interp1(roc.waypoint,roc.angles,obj.GraspValue);
            %                     msg = obj.hMud.AllJointsPosVelCmd([zeros(1,3) e w],zeros(1,7),handPos,zeros(1,20));
            %                 end
            %
            %             else
            %                 F_WCS_RB1 = obj.hMicroStrainGX2.rotationMatrix;
            %                 F_WCS_RB1Offset = pinv(obj.T_WCS_HOME) * ...
            %                     F_WCS_RB1 * obj.F_RB1_HOME;
            %                 ang = obj.R_to_EulerZYX(F_WCS_RB1Offset);
            %
            %                 shoulderFE = ang(3);
            %                 if ~obj.msLefty
            %                     shoulderAA = ang(2);
            %                     humeralRot = -ang(1);
            %                 else
            %                     shoulderAA = -ang(2);
            %                     humeralRot = ang(1);
            %                 end
            %
            %                 msg = obj.hMud.ArmPosVelHandRocGrasps( ...
            %                     [shoulderFE shoulderAA humeralRot e w], ...
            %                     zeros(1,7),1,graspId,obj.GraspValue,1);
            %             end
            %
            %             if isempty(obj.hNfu)
            %                 % Send to vulcanX
            %                 obj.hSink.putbytes(msg);
            %             else
            %                 % Send to NFU
            %                 if ~useLocalRoc
            %                     obj.hNfu.sendUdpCommand(char(59,msg));
            %                 else
            %                     obj.hNfu.sendUdpCommand(char(61,msg));
            %                 end
            %             end
            
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
                        graspId = 1;  % Pinch (British)
                        %graspId = 2;  % Pinch (American)
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
        
        function anglesRadians = R_to_EulerZYX(R)
            theta_y = atan2(-R(3,1),sqrt(R(1,1)^2+R(2,1)^2)); % beta
            theta_z = atan2(R(2,1)/cos(theta_y),R(1,1)/cos(theta_y)); % alpha
            theta_x = atan2(R(3,2)/cos(theta_y),R(3,3)/cos(theta_y)); % gamma
            
            anglesRadians = [theta_x;theta_y;theta_z];
        end
        
    end % methods (Static)
end
