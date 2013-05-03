classdef TopoGraspVIE < Scenarios.TopoGrasp
    properties
        Verbose = 1;
        EnableJoystick = 1;
        
        xpcCmdSignalIds = [];
    end
    methods
        function obj = TopoGraspVIE(isLeft)
            if nargin < 1
                obj.isLeftSide = 1;
            else
                obj.isLeftSide = isLeft;
            end
            
            obj.hHandState = Controls.HandStatePointer;
            
            obj.hTimer = obj.create_timer('TopoGraspVIEMachine',@(src,evt)cb_data_timer(src,evt,obj));
            obj.hTimer.Period = 0.05;
            
            setup_display(obj);

            obj.hLegend = Controls.HandStateLegend(obj.hHandState,obj.isLeftSide);
            obj.hLegend.EnableStateChangeBeep = 1;
            
            obj.hInput = vie_xpc('192.168.139.10','p2_In_xPC.mdl');
            obj.hInput.connect;
            obj.hInput.tg.start;
            
            %hXpc.getAllSignalNames;
            %obj.xpcCmdSignalIds = hXpc.getSignalIds('Intrinsic Motor Voltages');
            obj.xpcCmdSignalIds = [ 33    34    35    36    37    38    39    40    41    42    43    44    45    46    47    48    49    50 ...
                51    52    53    54 ];

            if ~strcmpi(obj.hTimer.Running,'on')
                start(obj.hTimer);
            end
                        
        end
    end
    
end

function cb_data_timer(src,evnt,obj) %#ok<*INUSL>

try
    cmdSignals = obj.hInput.tg.getsignal(obj.xpcCmdSignalIds);
    
    obj.HandCmd(2) = cmdSignals(6);
    obj.WristRotCmd = cmdSignals(action_bus_enum.Wrist_Rot);
    obj.HandCmd(1) = cmdSignals(7);

    idx = action_bus_enum.Wrist_FE;
    GAIN = 5;
    if abs(obj.WristRotCmd) > 0
        obj.JointAnglesDegrees(idx) = obj.JointAnglesDegrees(idx) + GAIN*obj.WristRotCmd;
    end
    obj.JointAnglesDegrees(idx) = max(min(obj.JointAnglesDegrees(idx),90),-90);
    
    obj.hHandState.updateState();
    obj.hHandState.putdata(obj.HandCmd/20);
    obj.hLegend.setHandCmd(obj.HandCmd);
    handAngles = obj.hHandState.graspToJointAngles();
    
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
