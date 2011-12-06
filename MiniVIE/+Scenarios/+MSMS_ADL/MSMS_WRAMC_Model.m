classdef MSMS_WRAMC_Model < handle
    % Class used to send motion data to MSMS
    % Usage:
    % initialize(obj)
    
    properties
        hUdp
        
        numJointParams = 82; % number of joints in MSMS model file
        CurrentClass = ''
        PauseClassId % Used to find
        
        msmsToMplId = [];
        
        udpIpRemoteAddress = '127.0.0.1';
        udpIpRemotePort = 11114;
        udpIpLocalPort = 5264;
        
        ActiveChannels = [];
        
        BroadcastLog = struct('BroadcastTime',[],...
            'BroadcastAngles',[],'BroadcastTag',[]);
        
        isLeftSide = 0;
    end
    properties (Access = private)
        udpMessagePrototype;
        udpMessageJointIds;
    end
    properties (Constant = true)
        modelJointOrder = {
            'translation_x'
            'translation_y'
            'translation_z'
            'rotation_x'
            'rotation_y'
            'rotation_z'
            'LegTorso-Rx'
            'LegTorso-Ry'
            'LegTorso-Rz'
            'SternoClavicular_DE'
            'SternoClavicular_PR'
            'Gleno_Humeral_ABAD'
            'Gleno_Humeral_FE'
            'Gleno_Humeral_IER'
            'Humero_Ulnar_FE'
            'Radio_Ulnar_PS'
            'wrist_flex_l'
            'wrist_dev_l'
            'thumb_abd_l'
            'thumb_flex_l'
            'PP1_flex_l'
            'DP1_flex_l'
            'MCP2_lateral_l'
            'MCP2_flex_l'
            'PIP2_flex_l'
            'DIP2_flex_l'
            'MCP3_lateral_l'
            'MCP3_flex_l'
            'PIP3_flex_l'
            'DIP3_flex_l'
            'MCP4_lateral_l'
            'MCP4_flex_l'
            'PIP4_flex_l'
            'DIP4_flex_l'
            'MCP5_lateral_l'
            'MCP5_flex_l'
            'PIP5_flex_l'
            'DIP5_flex_l'
            'Neck_x'
            'Neck_y'
            'Nexk_z'
            'TorsoStump_DE'
            'TorsoStump_PR'
            'shoulder_rx_r'
            'shoulder_rz_r'
            'shoulder_ry_r'
            'elbow_flex_r'
            'elbow_rot_r'
            'wrist_flex_r'
            'wrist_dev_r'
            'MCP5_lateral_r'
            'MCP5_flex_r'
            'PIP5_flex_r'
            'DIP5_flex_r'
            'MCP4_lateral_r'
            'MCP4_flex_r'
            'PIP4_flex_r'
            'DIP4_flex_r'
            'MCP3_lateral_r'
            'MCP3_flex_r'
            'PIP3_flex_r'
            'DIP3_flex_r'
            'MCP2_lateral_r'
            'MCP2_flex_r'
            'PIP2_flex_r'
            'DIP2_flex_r'
            'thumb_abd_r'
            'thumb_flex_r'
            'PP1_flex_r'
            'DP1_flex_r'
            'hip_add_l'
            'hip_flex_l'
            'hip_rot_l'
            'knee_flex_l'
            'ankle_flex_l'
            'ankle_ps_l'
            'hip_add_r'
            'hip_flex_r'
            'hip_rot_r'
            'knee_flex_r'
            'ankle_flex_r'
            'ankle_ps_r'
            };
    end
    methods
        
        function initialize(obj)
            
            % Initialize UDP
            initializeUdp(obj);
            setupJointMap(obj);
        end
        function setupJointMap(obj)
            % Generate Joint Map
            
            
            ids = zeros(1,29);
            
            if obj.isLeftSide
                % generate map.  These values were entered manually to
                % match the order of the action bus definition
                orderedNames = {
                    'Gleno_Humeral_ABAD'
                    'Gleno_Humeral_FE'
                    'Gleno_Humeral_IER'
                    'Humero_Ulnar_FE'
                    'Radio_Ulnar_PS'
                    'wrist_flex_l'
                    'wrist_dev_l'
                    'MCP2_flex_l'
                    'PIP2_flex_l'
                    'DIP2_flex_l'
                    'MCP2_lateral_l'
                    'MCP3_flex_l'
                    'PIP3_flex_l'
                    'DIP3_flex_l'
                    'MCP3_lateral_l'
                    'MCP4_flex_l'
                    'PIP4_flex_l'
                    'DIP4_flex_l'
                    'MCP4_lateral_l'
                    'MCP5_flex_l'
                    'PIP5_flex_l'
                    'DIP5_flex_l'
                    'MCP5_lateral_l'
                    'thumb_flex_l'
                    'thumb_abd_l'
                    'none'
                    'PP1_flex_l'
                    'DP1_flex_l'
                    'none'
                    };
            
            else
                
                % generate map.  These values were entered manually to
                % match the order of the action bus definition
                orderedNames = {
                    'shoulder_rz_r'
                    'shoulder_rx_r'
                    'shoulder_ry_r'
                    'elbow_flex_r'
                    'elbow_rot_r'
                    'wrist_flex_r'
                    'wrist_dev_r'
                    'MCP2_flex_r'
                    'PIP2_flex_r'
                    'DIP2_flex_r'
                    'MCP2_lateral_r'
                    'MCP3_flex_r'
                    'PIP3_flex_r'
                    'DIP3_flex_r'
                    'MCP3_lateral_r'
                    'MCP4_flex_r'
                    'PIP4_flex_r'
                    'DIP4_flex_r'
                    'MCP4_lateral_r'
                    'MCP5_flex_r'
                    'PIP5_flex_r'
                    'DIP5_flex_r'
                    'MCP5_lateral_r'
                    'thumb_flex_r'
                    'thumb_abd_r'
                    'none'
                    'PP1_flex_r'
                    'DP1_flex_r'
                    'none'
                    };
                
            end
                actionBus = action_bus_definition;
                length(orderedNames)
                for i = 1:length(orderedNames)
                    isMatched = strcmp(orderedNames{i},MSMS_WRAMC_Model.modelJointOrder);
                    if any(isMatched)
                        ids(i) = find(isMatched);
                        fprintf('Mapped: %16s --> %16s \n',orderedNames{i},actionBus{i});
                    else
                        fprintf('Unmatched: %s\n',orderedNames{i});
                    end
                end
            
            obj.msmsToMplId = ids;

        end
        function initializeUdp(obj)
            p = pnet('udpsocket',obj.udpIpLocalPort);
            
            if p < 0
                error('Failed to setup udp');
            else
                obj.hUdp = p;
            end
            
            pnet(obj.hUdp,'udpconnect',...
                obj.udpIpRemoteAddress,obj.udpIpRemotePort);
            
            % This function is used to reverse engineer the MSMS model transmission
            % protocol.  It performs the same function as the simulink block that
            % converts joint parameters to udp packets, adding header and casting as
            % needed.
            
            % Set message prototype;
            obj.udpMessagePrototype = reshape(MotionFile.sampleMessage(),1,[]);
            
            % index to the joint variable array positions in MSMS
            obj.udpMessageJointIds = strfind(char(obj.udpMessagePrototype),fliplr('FIND'))';
            
            % Check that all the tokens were found
            assert(obj.numJointParams == length(obj.udpMessageJointIds));
            
        end
        function resetLog(obj)
            % Reset Data Log
            obj.BroadcastLog = struct('BroadcastTime',[],...
                'BroadcastAngles',[],'BroadcastTag',[]);
        end
        function saveLog(obj)
            broadcastLog = obj.BroadcastLog;
            
            filePrefix = 'MSMS_UDP_BroadcastLog';
            defaultSaveName = [filePrefix '_' datestr(now,'yyyymmdd_HHMMSS') '.dataLog'];
            [FileName,PathName,FilterIndex] = ...
                uiputfile('*.dataLog','Select Log file to Save',defaultSaveName);
            
            if FilterIndex > 0
                save(fullfile(PathName,FileName),'broadcastLog','-mat');
            end
            
        end
        function appendLog(obj,tElapsed,angleData,newTag)
            
            % Log event
            obj.BroadcastLog.BroadcastTime = ...
                [obj.BroadcastLog.BroadcastTime; tElapsed];
            obj.BroadcastLog.BroadcastAngles = ...
                [obj.BroadcastLog.BroadcastAngles; angleData(:)'];
            obj.BroadcastLog.BroadcastTag = ...
                [obj.BroadcastLog.BroadcastTag; newTag];
            
        end
        function writeUdp(obj,uint8Message)
            pnet(obj.hUdp, 'write', uint8(uint8Message) );
            pnet(obj.hUdp, 'writepacket');
        end
        function sendJointParameters(obj,jointParameters)
            transmitBytes = obj.getMessageBytes(jointParameters);
            obj.writeUdp(transmitBytes);
        end
        function transmitBytes = getMessageBytes(obj,jointParameters)
            % convert joint angles to message bytes
            
            assert(length(jointParameters) == obj.numJointParams)
            
            % convert joint params to bytes
            jointParameters = jointParameters * pi/180;
            paramBytes = typecast(single(jointParameters),'uint8');
            paramBytesOrdered = flipud(reshape(paramBytes,4,[]))';
            
            testMsg = obj.udpMessagePrototype;
            
            for i = 1:obj.numJointParams
                id = obj.udpMessageJointIds(i) : obj.udpMessageJointIds(i) + 3;
                testMsg(id) = paramBytesOrdered(i,:);
            end
            
            % Append numFeatures Header
            numFeatures = uint8(49);
            transmitBytes = [numFeatures testMsg];
        end
        function putdata(obj,jointData)
            % Put data according to action bus definition as radians
            
            ids = obj.msmsToMplId;
            
            foundJoints = ids(ids > 0);
            
            msmsJointOrder = zeros(size(obj.modelJointOrder));
            msmsJointOrder(foundJoints) = jointData(ids > 0);
            
            sendJointParameters(obj,msmsJointOrder);
            
        end
    end
end
