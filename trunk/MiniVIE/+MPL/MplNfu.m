classdef MplNfu < Scenarios.OnlineRetrainer
    % Scenario for controlling JHU/APL MPL
    % Requires Utilities\UiTools
    %
    % This scenario is used to send commands via a router directly to the NFU
    %
    % 01-Sept-2010 Armiger: Created
    properties
        % Handles
        hMud = MPL.MudCommandEncoder();
        hNfu = [];
        hTactors;
        
        includeVirtual = 0;
        hUdp
        
        EnableFeedback = 1;
        TactorIds = [3 4]
        %TactorIds = [5 6 7];
        
        GlobalImpedanceValue = 0.8;
    end
    methods
        function initialize(obj,SignalSource,SignalClassifier,TrainingData)
            
            % Extend Scenario model to include communications with the
            % limb system via NFU
            
            fprintf('[%s] Starting with NFU ENABLED\n',mfilename);
            obj.hNfu = MPL.NfuUdp.getInstance;
            status = obj.hNfu.initialize();
            
            if status < 0
                error('Failed to initialize MPL.NfuUdp');
            end

            
            if obj.includeVirtual
            obj.hUdp = PnetClass(...,
                25101,9024,'127.0.0.1');
            
            obj.hUdp.initialize();

            end
            
            obj.getRocConfig();
            
            % TODO: abstract tactor ids and mapping
            tactorIds = obj.TactorIds;
            assert(isnumeric(tactorIds),'Tactor Ids must be numeric');
            for iTactor = tactorIds
                fprintf('[%s] Setting up tactor id# %d\n',mfilename,iTactor);
                obj.hTactors = [obj.hTactors HapticAlgorithm(obj.hNfu,iTactor)];
            end
            
            % Remaining superclass initialize methods
            initialize@Scenarios.OnlineRetrainer(obj,SignalSource,SignalClassifier,TrainingData);
            
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
                
                
                if isempty(obj.hTactors)
                    return
                end
                
                
                % Run finger tactors
                
                %                 pause(0.01)
                %                 littleT = convertedPercepts(3,6);
                %                 obj.hTactors(1).update(littleT);
                
                
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
                
                % TODO: Expose user map
                userMap = 1;
                switch userMap
                    case 1 % JH_TH_01
                        pause(0.01)
                        littleT = convertedPercepts(3,6);
                        obj.hTactors(1).SensorLowHigh = [40 60];
                        obj.hTactors(1).ActuatorLowHigh = [40 127];
                        obj.hTactors(1).update(littleT);
                        
                        pause(0.01)
                        indexT = convertedPercepts(3,2);
                        obj.hTactors(2).SensorLowHigh = [40 60];
                        obj.hTactors(2).ActuatorLowHigh = [40 127];
                        obj.hTactors(2).update(indexT);
                    case 2 % WR_TR_01
                        drawnow
                        middleT = convertedPercepts(3,3);
                        obj.hTactors(1).update(middleT);
                        drawnow
                        indexT = convertedPercepts(3,2);
                        obj.hTactors(2).update(indexT);
                        obj.hTactors(2).SensorLowHigh(1) = 40;
                        obj.hTactors(2).update(indexT);
                        drawnow
                        thumbT = convertedPercepts(3,8);
                        obj.hTactors(3).SensorLowHigh(1) = 40;
                        obj.hTactors(3).update(thumbT);
                    case 3 % JHMI TH03 Congen
                        if isempty(obj.hTactors)
                            return
                        else
                            hPort = obj.hTactors;
                        end
                        
                        
                        adjustVal = @(x)max(min(round(x),30),0);
                        indexT = adjustVal(convertedPercepts(3,2));
                        middleT = adjustVal(convertedPercepts(3,3));
                        thumbT = adjustVal(convertedPercepts(3,8));
                        
                        % === Message 1: Vibration command =========================
                        % Byte 1: (101) % Begin vibration command
                        % Byte 2: Thumb vibration frequency
                        % Byte 3: Index finger vibration frequency
                        % Byte 4: Middle finger vibration frequency
                        % Byte 5: (102) % End command
                        
                        fwrite(hPort,uint8([101 indexT middleT thumbT 102]));
                        drawnow
                        
                        % === Message 2: Amplitude command =========================
                        % Byte 1: (111) % Begin amplitude command
                        % Byte 2: Thumb vibration amplitude
                        % Byte 3: Index finger vibration amplitude
                        % Byte 4: Middle finger vibration amplitude
                        % Byte 5: (112) % End command
                        
                        
                        
                        
                        % === Message 3: Static PWM command ========================
                        % Byte 1: (201) % Begin static PWM command
                        % Byte 2: Thumb static PWM
                        % Byte 3: Index finger static PWM
                        % Byte 4: Middle finger static PWM
                        % Byte 5: (202) % End command
                        
                        %fwrite(hPort,uint8([201 val val val 202]));
                        
                        
                        
                end
                %disp([indexT littleT])  % SN4 noise +/-4, max ~100
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
            
            % initialize angles
            mplAngles = zeros(1,27);
            % get angles from state controller
            mplAngles(1:7) = [m.structState(jointIds).Value];
            
            % Generate MUD message.  If local roc table exists, use it
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
                msg = obj.hMud.AllJointsPosVelImpCmd(mplAngles(1:7),zeros(1,7),...
                    mplAngles(8:27),zeros(1,20),...
                    [100*ones(1,7) 0.1*ones(1,20)]);
                    %obj.GlobalImpedanceValue*ones(1,27));
            else
                % generate MUD message using joint angles and ROC
                % parameters
                msg = obj.hMud.ArmPosVelHandRocGrasps(mplAngles(1:7),zeros(1,7),1,rocId,rocVal,1);
            end
            
            % write message
            obj.hNfu.sendUdpCommand([61;msg]);  % append nfu msg header

            if obj.includeVirtual
            % write message
            obj.hUdp.putData(msg);
            end
        
        end
    end
end
