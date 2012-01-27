classdef MplScenarioMud < Scenarios.ScenarioBase
    % Scenario for controlling JHU/APL MPL
    % Depends on UiTools
    % 
    % 01-Sept-2010 Armiger: Created
    properties
        % Handles
        hMud = [];
        hSink = [];
    end
    methods
        function obj = MplScenarioMud
            obj.hSink = MPL.VulcanXSink('127.0.0.1',9035);
            obj.hMud = MPL.MudCommandEncoder();
            
            obj.GraspId
        end
        function update(obj)
            update@Scenarios.ScenarioBase(obj); % Call superclass update method

            % TODO: Hand and wrist only implemented, not upper arm
            w = zeros(1,3);
            w(1) = -obj.JointAnglesDegrees(action_bus_enum.Wrist_Rot) * pi/180;
            w(2) = obj.JointAnglesDegrees(action_bus_enum.Wrist_Dev) * pi/180;
            w(3) = obj.JointAnglesDegrees(action_bus_enum.Wrist_FE) * pi/180;
            if isempty(obj.GraspId)
                graspId = 0;
            else
                switch char(obj.GraspId)
                    case 'Tip'
                        % graspId = 1;  % Pinch (British)
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
                        graspId = 0;  % Rest
                    otherwise
                        graspId = 0;
                end
                % zero based index from the enumeration
                %graspId = find(obj.GraspId == enumeration('Controls.GraspTypes'))-1;
            end
            msg = obj.hMud.ArmPosVelHandRocGrasps([zeros(1,4) w],zeros(1,7),1,graspId,obj.GraspValue,1);
            obj.hSink.putbytes(msg);
            
        end
    end
end
