classdef TopoGraspJoystick < Scenarios.TopoGrasp
    properties
        Verbose = 1;
        EnableJoystick = 1;
        
    end
    methods
        function obj = TopoGraspJoystick(isLeft,enableJoystick)
            if nargin < 1
                obj.isLeftSide = 1;
            else
                obj.isLeftSide = isLeft;
            end
            
            if nargin < 2
                obj.EnableJoystick = 0;
            else
                obj.EnableJoystick = enableJoystick;
            end
            
            obj.hHandState = Controls.HandStatePointer;
            %obj.hHandState = Controls.HandStateHook;
            
            obj.hTimer = obj.create_timer('TopoGraspStateMachine',@(src,evt)cb_data_timer(src,evt,obj));
            obj.hTimer.Period = 0.04;
            
            if obj.EnableJoystick
                obj.hInput = JavaJoystick.Joystick;
                if isempty(obj.hInput.name)
                    obj.EnableJoystick = 0;
                    fprintf(2,'[%s] No Joysticks Found\n',mfilename);
                end
            end
            
            setup_display(obj);

            obj.hLegend = Controls.HandStateLegend(obj.hHandState,obj.isLeftSide);
            obj.hLegend.EnableStateChangeBeep = 1;
            
            if ~strcmpi(obj.hTimer.Running,'on')
                start(obj.hTimer);
            end
        end
    end
end


function cb_data_timer(src,evnt,obj) %#ok<*INUSL>

try
    if obj.EnableJoystick
        obj.hInput.getdata();
        obj.HandCmd = [obj.hInput.axisVal(1) -obj.hInput.axisVal(2)];
        if ~obj.isLeftSide
            obj.HandCmd(1) = -obj.HandCmd(1);
        end
        buttons = obj.hInput.buttonVal;
        
        if buttons(1)
            obj.WristFECmd = 1;
        elseif buttons(2)
            obj.WristFECmd = -1;
        else
            obj.WristFECmd = 0;
        end
        if buttons(7)
            obj.WristRotCmd = 1;
        elseif buttons(8)
            obj.WristRotCmd = -1;
        else
            obj.WristRotCmd = 0;
        end
        if buttons(4)
            obj.WristDevCmd = 1;
        elseif buttons(3)
            obj.WristDevCmd = -1;
        else
            obj.WristDevCmd = 0;
        end
        
    end
    
    obj.hHandState.updateState();
    obj.hHandState.putdata(obj.HandCmd/20);
    obj.hLegend.setHandCmd(obj.HandCmd);
    handAngles = obj.hHandState.graspToJointAngles();
    
    % set wrist angles
    idx = action_bus_enum.Wrist_FE;
    GAIN = 5;
    if abs(obj.WristFECmd) > 0
        obj.JointAnglesDegrees(idx) = obj.JointAnglesDegrees(idx) + GAIN*obj.WristFECmd;
    end
    obj.JointAnglesDegrees(idx) = max(min(obj.JointAnglesDegrees(idx),70),-70);
    idx = action_bus_enum.Wrist_Rot;
    GAIN = 5;
    if abs(obj.WristRotCmd) > 0
        obj.JointAnglesDegrees(idx) = obj.JointAnglesDegrees(idx) + GAIN*obj.WristRotCmd;
    end
    obj.JointAnglesDegrees(idx) = max(min(obj.JointAnglesDegrees(idx),90),-90);
    idx = action_bus_enum.Wrist_Dev;
    GAIN = 5;
    if abs(obj.WristDevCmd) > 0
        obj.JointAnglesDegrees(idx) = obj.JointAnglesDegrees(idx) + GAIN*obj.WristDevCmd;
    end
    obj.JointAnglesDegrees(idx) = max(min(obj.JointAnglesDegrees(idx),30),-10);

    obj.hOutput.set_upper_arm_angles_degrees(obj.JointAnglesDegrees);
    obj.hOutput.set_hand_angles_degrees(handAngles);
    obj.hOutput.redraw();
    
    obj.update_vcr();
    
catch ME
    stop(src)
    if ~isempty(obj.hAviObj)
        obj.hAviObj = close(obj.hAviObj);
        obj.hAviObj = [];
    end
    rethrow(ME)
end
end

