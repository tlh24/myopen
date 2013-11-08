classdef DirectControl < Common.MiniVieObj
    %   This class is basically a plant model that has a built in timer.
    %   When executed, it will get data from the signal source, classify it
    %   to extract intent, map the intent to the appropriate control
    %   variables (and apply rate limiting and range limiting) and then
    %   send the data to the appropriate sink
    %
    % 07NOV2013 Armiger: Created
    
    properties
        SignalSource;
        ArmStateModel;
        RocTable
        
        Timer;
        
        Verbose = 1;
        
        hSink
        hMud
    end
    
    methods
        function initialize(obj,SignalSource)
            % initialize(obj,SignalSource)
            obj.SignalSource = SignalSource;
            obj.ArmStateModel = Controls.ArmStateModel();
            
            obj.Timer = UiTools.create_timer(mfilename,@(src,evt)update(obj));
            period = 0.02;
            fprintf('[%s] Setting timer refresh rate to %4.2f s\n',mfilename,period);
            obj.Timer.Period = period;
            
            obj.RocTable = MPL.RocTable.createRocTables();
            
            UdpLocalPort = 56789;
            UdpDestinationPort = 9027; %9024 = Left; 9027 = Right; (see
            UdpAddress = '127.0.0.1'; % '192.168.1.101';
            % PnetClass(localPort,remotePort,remoteIP)
            obj.hSink = PnetClass(UdpLocalPort,UdpDestinationPort,UdpAddress);
            obj.hSink.initialize()
            
            % Create the command encoder which translates joint angles to
            % command bytes
            obj.hMud = MPL.MudCommandEncoder;
            
        end
        function start(obj)
            % && ishandle(obj.Timer) <-- this is always false
            if ~isempty(obj.Timer) && strcmpi(obj.Timer.Running,'off')
                start(obj.Timer);
            end
        end
        function stop(obj)
            % && ishandle(obj.Timer) <-- this is always false
            if ~isempty(obj.Timer) && strcmpi(obj.Timer.Running,'on')
                stop(obj.Timer);
            end
        end
        function update(obj)
            %update(obj)
            % Called by timer function, Get intent and update arm
            
            % Use a try block to display more info if an error occurs
            try
                % Step 1: Get Intent
                signalDcOffset = 1.2;
                MAV = mean(abs(obj.SignalSource.getData(150)-signalDcOffset));
                
                jointId = mpl_upper_arm_enum.ELBOW;
                thresholdA = 0.1;
                gainA = 2;
                diffInputA = max(0,MAV(1) - thresholdA) * gainA;
                thresholdB = 0.1;
                gainB = 2;
                diffInputB = max(0,MAV(2) - thresholdB) * gainB;
                velocity = diffInputA - diffInputB;
                obj.ArmStateModel.setVelocity(jointId,velocity);
                

                jointId = obj.ArmStateModel.RocStateId;
                thresholdA = 0.1;
                gainA = 2;
                diffInputA = max(0,MAV(3) - thresholdA) * gainA;
                thresholdB = 0.1;
                gainB = 2;
                diffInputB = max(0,MAV(4) - thresholdB) * gainB;
                velocity = diffInputA - diffInputB;
                obj.ArmStateModel.setVelocity(jointId,velocity);
                obj.ArmStateModel.update();

                % Send Data
                mplArmAngles = obj.ArmStateModel.getUpperArmValues();
                [graspId, graspValue] = obj.ArmStateModel.getRocValues();
                graspId = 2;
                
                % Send to vulcanX.  If local roc table exists, use it
                if ~isempty(obj.RocTable)
                    % interpolate roc table locally
                    graspValue = max(min(graspValue,1),0);
                    roc = obj.RocTable(graspId+1);
                    handPos = interp1(roc.waypoint,roc.angles,graspValue);
                    msg = obj.hMud.AllJointsPosVelCmd(mplArmAngles,zeros(1,7),handPos,zeros(1,20));
                else
                    % send roc command
                    msg = obj.hMud.ArmPosVelHandRocGrasps(mplArmAngles,zeros(1,7),1,graspId,graspValue,1);
                end
                
                % write message
                obj.hSink.putData(msg);
                
            catch ME
                UiTools.display_error_stack(ME);
            end
            
        end
        function close(obj)
            try
                stop(obj.Timer);
                delete(obj.Timer);
                
                UiTools.save_temp_file(obj.TempFileName,obj.JointAnglesDegrees);
                
            end
        end
        
    end
    methods(Static = true)
        function Test
            %Scenarios.DirectControl.Test
            hSource = Inputs.SignalSimulator;
            hSource.initialize();
            
            obj = Scenarios.DirectControl;
            obj.initialize(hSource);
            
            obj.start();
            
        end
    end
end
