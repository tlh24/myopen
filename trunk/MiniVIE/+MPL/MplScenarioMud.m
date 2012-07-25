classdef MplScenarioMud < Scenarios.ScenarioBase
    % Scenario for controlling JHU/APL MPL
    % Depends on UiTools
    %
    % 01-Sept-2010 Armiger: Created
    properties
        % Handles
        hMud = [];
        hSink = [];
        hNfu = [];
        hMicroStrainGX2 = [];
        hTactors;
        
        enableNfu = true;
        enableMicroStrain = false;
        
        
        % MicroStrain config values
        msComPortStr = 'COM18';
        msNodeInt = 10;
        msChannelInt = 14;
        msLefty = true;
        
        % MicroStrain orientation data
        T_WCS_HOME
        F_RB1_HOME
        % Compass heading when in home position
        msDegreesFromNorth = 0;
    end
    methods
        function obj = MplScenarioMud
            % Extend Scenario model to include communications with the
            % limb system via vulcanX or the NFU
            
            if obj.enableNfu
                fprintf('[%s] Starting with NFU ENABLED\n',mfilename);
                obj.hNfu = MPL.NfuUdp.getInstance;
                obj.hNfu.initialize();
                obj.hMud = MPL.MudCommandEncoder();
                
                % Note tactors currently only enabled on NFU pathway
                obj.hTactors{1} = HapticAlgorithm(obj.hNfu,3);
                obj.hTactors{2} = HapticAlgorithm(obj.hNfu,4);
                
            else
                fprintf('[%s] Starting with NFU DISABLED\n',mfilename);
                obj.hSink = MPL.VulcanXSink('127.0.0.1',9035);
                obj.hMud = MPL.MudCommandEncoder();
                
                % Use MicroStrain for upper arm motion
                if obj.enableMicroStrain
                    obj.hMicroStrainGX2 = MicroStrain3DM_GX2( ...
                        obj.msComPortStr, obj.msNodeInt, obj.msChannelInt);
                    if ~obj.hMicroStrainGX2.connect()
                        error('Could not connect to MicroStrain on %s, node %d, channel %d', ...
                            obj.msComPortStr, obj.msNodeInt, obj.msChannelInt);
                    end
                    
                    % Assume MicroStrain is in home position (attached to
                    % user's tricep, antenna pointed toward user's 
                    % shoulder, arm hanging loosely).
                    obj.home();
                end
            end
            %obj.GraspId
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
                
                F_WCS_RB1 = obj.hMicroStrainGX2.rotationMatrix;
                obj.T_WCS_HOME = [f_make_R(0,90,-obj.msDegreesFromNorth) [0 0 0]'; 0 0 0 1];
                obj.F_RB1_HOME = pinv(F_WCS_RB1) * obj.T_WCS_HOME;
            end
        end
        
        function update(obj)
            update@Scenarios.ScenarioBase(obj); % Call superclass update method
            
            % TODO: Hand and wrist only implemented, not upper arm
            w = zeros(1,3);
            w(1) = -obj.JointAnglesDegrees(action_bus_enum.Wrist_Rot) * pi/180;
            w(2) = +obj.JointAnglesDegrees(action_bus_enum.Wrist_Dev) * pi/180;
            w(3) = +obj.JointAnglesDegrees(action_bus_enum.Wrist_FE) * pi/180;
            
            % w(1) = -1.3;  % rotation
            % w(2) = 0.2;   % dev
            % w(3) = -0.5;  % fe

            e = obj.JointAnglesDegrees(action_bus_enum.Elbow) * pi/180;
            %e = 1.5;

            % convert scalar grasp id to numerical mpl grasp value
            graspId = obj.graspLookup(obj.GraspId);
            if isempty(obj.hMicroStrainGX2)
                msg = obj.hMud.ArmPosVelHandRocGrasps([zeros(1,3) e w],zeros(1,7),1,graspId,obj.GraspValue,1);
            else
                F_WCS_RB1 = obj.hMicroStrainGX2.rotationMatrix;
                F_WCS_RB1Offset = pinv(obj.T_WCS_HOME) * ...
                    F_WCS_RB1 * obj.F_RB1_HOME;
                ang = obj.R_to_EulerZYX(F_WCS_RB1Offset);
                
                shoulderFE = ang(3);
                if ~obj.msLefty
                    shoulderAA = ang(2);
                    humeralRot = -ang(1);
                else
                    shoulderAA = -ang(2);
                    humeralRot = ang(1);
                end
                
                msg = obj.hMud.ArmPosVelHandRocGrasps( ...
                    [shoulderFE shoulderAA humeralRot e w], ...
                    zeros(1,7),1,graspId,obj.GraspValue,1);                
            end
            
            if isempty(obj.hNfu)
                % Send to vulcanX
                obj.hSink.putbytes(msg);
            else
                % Send to NFU
                obj.hNfu.send_msg(obj.hNfu.TcpConnection,char(59,msg));
            end
            
            %% Send feedback
            if isempty(obj.hNfu)
                % No NFU, no Feedback
                disp('Feedback Disabled');
                return
            end
            
            obj.hNfu.update; %called by getData
            b = obj.hNfu.get_buffer(2);
            if ~isempty(b) > 0
                percepts = b{1}(1:70);
                
                sortedPercepts = reshape(percepts,7,10);
                s16 = sortedPercepts(1:6,:);
                convertedPercepts = double(reshape(typecast(s16(:),'int16'),3,10));
                convertedPercepts(4,:) = sortedPercepts(7,:);
                %disp(convertedPercepts);
                
                littleT = convertedPercepts(3,6);
                obj.hTactors{1}.update(littleT);
                
                indexT = convertedPercepts(3,2);
                obj.hTactors{2}.update(indexT);
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
                        graspId = 1;  % Pinch (British)
                        graspId = 2;  % Pinch (American)
                    case 'Lateral'
                        graspId = 9;  % Key
                    case 'Tripod'
                        graspId = 4;  % 3 Finger Pinch
                    case 'Spherical'
                        graspId = 7;  % Spherical
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
