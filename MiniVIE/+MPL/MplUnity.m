classdef MplUnity < Scenarios.OnlineRetrainer
    % Scenario for controlling JHU/APL vMPL Unity Environment
    % Requires Utilities\UiTools
    %
    % This scenario is used with the vMPL system
    %
    % 29-Apr-2015 Armiger: Created
    properties
        % Handles
        hUdp;  % Handle to Udp port.  local port is setup to receive percepts and send to command port
        
        vMplAddress = '127.0.0.1';   % vMpl IP (127.0.0.1)
        vMplCmdPort = 25000;         % MUD Port (L=25100 R=25000)
        vMplLocalPort = 25001;       % Percept Port (L=25101 R=25001)
        
        IsRightSide = 1;
        
    end
    methods
        function initialize(obj,SignalSource,SignalClassifier,TrainingData)
            
            % Extend Scenario model to include communications with the
            % limb system via vMpl or the NFU
            
            fprintf('[%s] Starting vMpl\n',mfilename);
            
            % PnetClass(localPort,remotePort,remoteIP)
            obj.hUdp = PnetClass(...
                obj.vMplLocalPort,obj.vMplCmdPort,obj.vMplAddress);
            obj.hUdp.initialize();
            
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
                
            catch ME
                UiTools.display_error_stack(ME);
            end
            
        end
        function update_control(obj)
            % Get current joint angles and send commands to vMpl
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
            
            if length(rocId) >= 3
                endPtVelocities = [0 0 0]';
                endPtOrientationVelocities = rocId';
                rocMode = 1;
                rocTableIDs = 1;
                rocTableValues = 1;
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
            
            
            % Generate vMpl message.  If local roc table exists, use it
            
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
            
            % create message
            msg = typecast(single(mplAngles),'uint8');
            
            % write message
            obj.hUdp.putData(msg);
            
        end
        function update_sensory(obj)
            % Not implemented
            
        end
        
    end
end

