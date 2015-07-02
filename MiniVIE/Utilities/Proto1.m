classdef Proto1 < handle
    % Simple interface for Proto 1 Comms
    %
    % 7/2/2015 Armiger: Created
    properties
        hSerial;
    end
    methods
        function obj = Proto1(strComPort)
            initialize(obj,strComPort)
        end
        function initialize(obj,strComPort)
            delete(instrfindall('type','serial')); %deletes previous instances of COMs if they exist
            
            obj.hSerial = serial(strComPort); %Creates serial port for BT.
            
            set(obj.hSerial,...
                'Timeout',0.1,...
                'BaudRate',19200);
            
            fopen(obj.hSerial);
        end
        function reply = ping_echo(obj,payload)
            assert(length(payload) == 1,'payload must be a single byte')
            assert(payload<255,'payload must be a single byte')
            
            reply = send_msg(obj,24,payload);
            
        end
        function reply = actuator_command(obj,id,speed,duration)
            %   actuatorID: Actuator to control. One of the following:
            %             BT_MAIN_HAND_DRIVE                          = 0;
            %             BT_WRIST_FLEXION                            = 1;
            %             BT_WRIST_ROTATION                           = 2;
            %             BT_ELBOW                                    = 3;
            %             BT_HUMERAL_ROTATION                         = 4;
            %             BT_SHOULDER_VERTICAL                        = 5;
            %             BT_TACTOR                                   = 6;
            %             BT_THUMB                                    = 7;
            %
            %   duration: Actuator duration: 0 s - 5.1 s, LSB = 0.02 s
            %
            % See also: bt_multiple_actuator_command
            
            payload = [id typecast(int8(speed),'uint8') duration];
            reply = send_msg(obj,53,payload);
            
        end
        function reply = multiple_actuator_command(obj,speed,duration)
            %   actuatorID: Actuator to control. One of the following:
            %             BT_MAIN_HAND_DRIVE                          = 0;
            %             BT_WRIST_FLEXION                            = 1;
            %             BT_WRIST_ROTATION                           = 2;
            %             BT_ELBOW                                    = 3;
            %             BT_HUMERAL_ROTATION                         = 4;
            %             BT_SHOULDER_VERTICAL                        = 5;
            %             BT_TACTOR                                   = 6;
            %             BT_THUMB                                    = 7;
            %
            %   duration: Actuator duration: 0 s - 5.1 s, LSB = 0.02 s
            %
            % See also: bt_multiple_actuator_command
            
            assert(length(speed) == 8,'Array must be length 8')
            
            payload = [duration typecast(int8(speed),'uint8')];
            reply = send_msg(obj,55,payload);
            
        end
        
        function reply = send_msg(obj,msgId,payload)
            
            n = obj.hSerial.BytesAvailable;
            if n > 0
                warning('Purging Buffer')
                % purge buffer
                fread(obj.hSerial,n);
            end
            
            msgLength = 2 + length(payload);
            msg = uint8([msgLength msgId payload]);
            
            chkSum = mod(sum(msg),256);
            
            msgChkSum = uint8([msg chkSum]);
            
            fprintf('LEN=%d ID=%d MSG=[ ',msgLength,msgId)
            fprintf('%d ',payload)
            fprintf('] SUM=%d\n',chkSum)
            
            fwrite(obj.hSerial,msgChkSum);
            
            % wait to read one character
            replyLen = fread(obj.hSerial,1);
            
            if isempty(replyLen)
                reply = [];
                return
            end
            replyMsg = fread(obj.hSerial,replyLen);
            
            reply = cat(1,replyLen,replyMsg);
            
            if obj.hSerial.BytesAvailable > 0
                warning('More bytes remain')
            end
        end
        
    end
    methods (Static = true)
        function Test
            %% open
            obj = Proto1('COM8');
            
            %% Ping
            obj.ping_echo(34)
            
            %% Hand Open
            obj.actuator_command(0,-38,30)
            
            %% Hand Close (Lateral)
            obj.actuator_command(0,38,30)
            
            %% Pronate
            obj.actuator_command(2,80,30)
            
            %% Supinate
            obj.actuator_command(2,-80,30)
            
            %% Elbow Up
            obj.actuator_command(3,30,30)
            
            %% Elbow Down
            obj.actuator_command(3,-30,30)
            
            %% Humeral Rotate In (Left)
            obj.actuator_command(4,-30,30)
            
            %% Humeral Rotate Out (Left)
            obj.actuator_command(4,30,30)
            
            %% Shoulder Up
            obj.actuator_command(5,-30,30)
            
            %% Shoulder Down
            obj.actuator_command(5,30,30)
            
        end
        function Test_Myo
            %%
            hP1 = Proto1('COM8');
            hP1.ping_echo(34)
            hMyo = Inputs.MyoUdp.getInstance();
            hMyo.initialize()
            
            %%
            StartStopForm([])
            while StartStopForm
                drawnow
                cmd = mean(abs(hMyo.getData(150)));
                disp(cmd(1:8))
                
                if cmd(5) > 0.05
                    val = min(abs(round(cmd(1) * 400)),120);
                    hP1.actuator_command(2,80,30);
                elseif cmd(6) > 0.05
                    val = -min(abs(round(cmd(2) * 500)),120);
                    hP1.actuator_command(2,-80,30);
                elseif cmd(8) > 0.1
                    hP1.actuator_command(0,-40,30);
                elseif cmd(2) > 0.1
                    hP1.actuator_command(0,40,30);
                end
                
                
                
            end
            
            
        end
    end
end
