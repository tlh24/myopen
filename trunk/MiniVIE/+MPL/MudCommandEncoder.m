% This class provides a way to create messages in the MUD protocol

classdef MudCommandEncoder < handle
    
    properties (Constant = true)
        
        % public array index names that could be useful
        
        ROLL = 1;
        PITCH = 2;
        YAW = 3;
        NUM_ENDPT_ORIENTATION_AXES = 3;
        
        X = 1;
        Y = 2;
        Z = 3;
        NUM_ENDPT_AXES = 3;
        
        NUM_ENDPT_JOINTS = 7;

        INDEX_AB_AD = 1;
        INDEX_MCP = 2;
        INDEX_PIP = 3;
        INDEX_DIP = 4;
        MIDDLE_AB_AD = 5;
        MIDDLE_MCP = 6;
        MIDDLE_PIP = 7;
        MIDDLE_DIP = 8;
        RING_AB_AD = 9;
        RING_MCP = 10;
        RING_PIP = 11;
        RING_DIP = 12;
        LITTLE_AB_AD = 13;
        LITTLE_MCP = 14;
        LITTLE_PIP = 15;
        LITTLE_DIP = 16;
        THUMB_CMC_AD_AB = 17;
        THUMB_CMC = 18;
        THUMB_MCP = 19;
        THUMB_DIP = 20;
        
        NUM_FINGER_JOINTS = 20;
        
        ROC_MODE_NO_MOTION = 0;
        ROC_MODE_POSITION = 1;
        ROC_MODE_VELOCITY = 2;        
    end
    
    properties (Hidden = true, Constant = true)
    
        % 0-based emums for messages
        
        ENDPOINT_V6_FINGERS_PV = 0;
        ALL_JOINTS_PV = 1
        ENDPOINT_P6_FINGERS_PV = 2;        
        ENDPOINT_V6_HAND_ROC_GRASPS = 3;
        ENDPOINT_P6_HAND_ROC_GRASPS = 4;
        ENDPOINT_V6_FINGERS_V = 5;
        ARM_PV_HAND_ROC_GRASPS = 6;
        ARM_V_HAND_ROC_GRASPS = 7;
        ALL_JOINTS_PVI = 8;
        ENDPOINT_V6_HAND_ROC_GRASPS_I = 9;

        WRITE_MPL_CONFIGURATION_VALUES = 1;
        READ_MPL_CONFIGURATION_VALUES = 2;
        PING_ECHO_VULCANX = 3;
        RESET_MPL_PARAMETERS_TO_DEFAULTS = 4;
        ACTUATE_MPL = 5;
        SET_MPL_IMPEDANCE = 6;
        READ_MPL_STATUS = 7;
        CONFIGURE_PERCEPT_DATA = 8;        
    end
    
    properties (Hidden = true)
        dummy;
    end
        
    methods

        function obj = MudCommandEncoder()
            obj.dummy = 0;
        end
        
        function msg = EndpointVelocity6FingerPosVelCmd(...
                                obj,...
                                endPtVelocities, ...
                                endPtOrientationVelocities, ...
                                fingerPositions, ...
                                fingerVelocities)
            
            assert(length(endPtVelocities) == obj.NUM_ENDPT_AXES);
            assert(length(endPtOrientationVelocities) == obj.NUM_ENDPT_ORIENTATION_AXES);
            assert(length(fingerPositions) == obj.NUM_FINGER_JOINTS);
            assert(length(fingerVelocities) == obj.NUM_FINGER_JOINTS);

            numMsgSingles = ...
                length(endPtVelocities) +  ...
                length(endPtOrientationVelocities) + ...
                length(fingerPositions) + ...
                length(fingerVelocities);

            % preallocate the msg: msgId + EndPointVelocity6FingerPosVelCmdType
            %
            msg = zeros(1 + (length(obj.SingleBytes(0)) * numMsgSingles), 1, 'uint8');

            nextByte = 1;
            
            % msgId...
            bytes = cast(obj.ENDPOINT_V6_FINGERS_PV, 'uint8');            
            msg(nextByte : (nextByte-1) + length(bytes)) = bytes;
            nextByte = nextByte + length(bytes);
            
            % EndPointVelocity6FingerPosVelCmdType...
            %
            bytes = obj.SingleBytes(endPtVelocities);
            msg(nextByte : (nextByte-1) + length(bytes)) = bytes;
            nextByte = nextByte + length(bytes);
            
            bytes = obj.SingleBytes(endPtOrientationVelocities);
            msg(nextByte : (nextByte-1) + length(bytes)) = bytes;
            nextByte = nextByte + length(bytes);
            
            bytes = obj.SingleBytes(fingerPositions);
            msg(nextByte : (nextByte-1) + length(bytes)) = bytes;
            nextByte = nextByte + length(bytes);
            
            bytes = obj.SingleBytes(fingerVelocities);
            msg(nextByte : (nextByte-1) + length(bytes)) = bytes;
            %nextByte = nextByte + length(bytes);
            
            msg = obj.CreateCmdMessage(obj.ACTUATE_MPL, msg);
                        
        end % EndpointVelocity6FingerPosVelCmd

        
       function msg = EndpointPosition6FingerPosVelCmd(...
                                obj,...
                                endPtPositions, ...
                                endPtOrientationPositions, ...
                                fingerPositions, ...
                                fingerVelocities)
            
            assert(length(endPtPositions) == obj.NUM_ENDPT_AXES);
            assert(length(endPtOrientationPositions) == obj.NUM_ENDPT_ORIENTATION_AXES);
            assert(length(fingerPositions) == obj.NUM_FINGER_JOINTS);
            assert(length(fingerVelocities) == obj.NUM_FINGER_JOINTS);

            numMsgSingles = ...
                length(endPtPositions) +  ...
                length(endPtOrientationPositions) + ...
                length(fingerPositions) + ...
                length(fingerVelocities);

            % preallocate the msg: msgId + EndPointVelocity6FingerPosVelCmdType
            %
            msg = zeros(1 + (length(obj.SingleBytes(0)) * numMsgSingles), 1, 'uint8');

            nextByte = 1;
            
            % msgId...
            bytes = cast(obj.ENDPOINT_P6_FINGERS_PV, 'uint8');            
            msg(nextByte : (nextByte-1) + length(bytes)) = bytes;
            nextByte = nextByte + length(bytes);
            
            % EndPointVelocity6FingerPosVelCmdType...
            %
            bytes = obj.SingleBytes(endPtPositions);
            msg(nextByte : (nextByte-1) + length(bytes)) = bytes;
            nextByte = nextByte + length(bytes);
            
            bytes = obj.SingleBytes(endPtOrientationPositions);
            msg(nextByte : (nextByte-1) + length(bytes)) = bytes;
            nextByte = nextByte + length(bytes);
            
            bytes = obj.SingleBytes(fingerPositions);
            msg(nextByte : (nextByte-1) + length(bytes)) = bytes;
            nextByte = nextByte + length(bytes);
            
            bytes = obj.SingleBytes(fingerVelocities);
            msg(nextByte : (nextByte-1) + length(bytes)) = bytes;
            %nextByte = nextByte + length(bytes);
            
            msg = obj.CreateCmdMessage(obj.ACTUATE_MPL, msg);
                        
        end % EndpointVelocity6FingerPosVelCmd
        
        function msg = EndpointVelocity6FingerVelCmd(...
                obj,...
                endPtVelocities, ...
                endPtOrientationVelocities, ...
                fingerVelocities)
            
            assert(length(endPtVelocities) == obj.NUM_ENDPT_AXES);
            assert(length(endPtOrientationVelocities) == obj.NUM_ENDPT_ORIENTATION_AXES);
            assert(length(fingerVelocities) == obj.NUM_FINGER_JOINTS);
            
            numMsgSingles = ...
                length(endPtVelocities) +  ...
                length(endPtOrientationVelocities) + ...
                length(fingerVelocities);
            
            % preallocate the msg: msgId + EndPointVelocity6FingerPosVelCmdType
            %
            msg = zeros(1 + (length(obj.SingleBytes(0)) * numMsgSingles), 1, 'uint8');
            
            nextByte = 1;
            
            % msgId...
            bytes = cast(obj.ENDPOINT_V6_FINGERS_V, 'uint8');
            msg(nextByte : (nextByte-1) + length(bytes)) = bytes;
            nextByte = nextByte + length(bytes);
            
            % EndPointVelocity6FingerPosVelCmdType...
            %
            bytes = obj.SingleBytes(endPtVelocities);
            msg(nextByte : (nextByte-1) + length(bytes)) = bytes;
            nextByte = nextByte + length(bytes);
            
            bytes = obj.SingleBytes(endPtOrientationVelocities);
            msg(nextByte : (nextByte-1) + length(bytes)) = bytes;
            nextByte = nextByte + length(bytes);
            
            bytes = obj.SingleBytes(fingerVelocities);
            msg(nextByte : (nextByte-1) + length(bytes)) = bytes;
            %nextByte = nextByte + length(bytes);
            
            msg = obj.CreateCmdMessage(obj.ACTUATE_MPL, msg);
        end
        
        function msg = DOMPositionCmd(...
                                obj,...
                                q)
            
            assert(length(q) == obj.NUM_ENDPT_JOINTS + obj.NUM_FINGER_JOINTS);
            msg = obj.AllJointsPosVelCmd(q(1:7), zeros(1,7), q(8:27), zeros(1,20));
        end
        
        function msg = AllJointsPosVelCmd(...
                                obj,...
                                endPtPositions, ...
                                endPtVelocities, ...
                                fingerPositions, ...
                                fingerVelocities)
            
            assert(length(endPtPositions) == obj.NUM_ENDPT_JOINTS);
            assert(length(endPtVelocities) == obj.NUM_ENDPT_JOINTS);
            assert(length(fingerPositions) == obj.NUM_FINGER_JOINTS);
            assert(length(fingerVelocities) == obj.NUM_FINGER_JOINTS);

            numMsgSingles = ...
                length(endPtPositions) +  ...
                length(endPtVelocities) +  ...
                length(fingerPositions) + ...
                length(fingerVelocities);

            % preallocate the msg: msgId + AllJointsPosCmd
            %
            msg = zeros(1 + (length(obj.SingleBytes(0)) * numMsgSingles), 1, 'uint8');

            nextByte = 1;
            
            % msgId...
            bytes = cast(obj.ALL_JOINTS_PV, 'uint8');            
            msg(nextByte : (nextByte-1) + length(bytes)) = bytes;
            nextByte = nextByte + length(bytes);

            % AllJointsPosCmd...
            %
            bytes = obj.SingleBytes(endPtPositions);
            msg(nextByte : (nextByte-1) + length(bytes)) = bytes;
            nextByte = nextByte + length(bytes);
            
            bytes = obj.SingleBytes(fingerPositions);
            msg(nextByte : (nextByte-1) + length(bytes)) = bytes;
            nextByte = nextByte + length(bytes);
            
            bytes = obj.SingleBytes(endPtVelocities);
            msg(nextByte : (nextByte-1) + length(bytes)) = bytes;
            nextByte = nextByte + length(bytes);
            
            bytes = obj.SingleBytes(fingerVelocities);
            msg(nextByte : (nextByte-1) + length(bytes)) = bytes;
            
            msg = obj.CreateCmdMessage(obj.ACTUATE_MPL, msg);

        end
        
        function msg = EndpointVelocity6HandRocGrasps( ...
                                obj, ...
                                endPtVelocities, ...
                                endPtOrientationVelocities, ...
                                rocMode, ...
                                rocTableIDs, ...
                                rocTableValues, ...
                                rocWeights)
            
            assert( length(endPtVelocities) == obj.NUM_ENDPT_AXES );
            assert( length(endPtOrientationVelocities) == obj.NUM_ENDPT_ORIENTATION_AXES );
            assert( numel(rocMode) == numel(rocTableIDs) && numel(rocMode) == numel(rocTableValues) && numel(rocMode) == numel(rocWeights), ...
                'rocMode, rocTableIDs, rocTableValues, and rocWeights must all be the same length');
            assert( all(ismember(rocMode, [obj.ROC_MODE_NO_MOTION obj.ROC_MODE_POSITION obj.ROC_MODE_VELOCITY])), ...
                'rocMode must be ROC_MODE_NO_MOTION, ROC_MODE_POSITION, or ROC_MODE_VELOCITY');
            assert( min(rocTableIDs) >= 0 && max(rocTableIDs) <= 255 && all(rocTableIDs - mod(rocTableIDs,1) == rocTableIDs), ...
                'rocTableIDs must be integers on the interval [0 255]');
            assert( all(rocWeights >= 0) && all(rocWeights <= 1) && abs(sum(rocWeights) - 1) < 1e-6, ...
                'rocWeights must be on the interval [0 1] and sum to 1');
            PosInds = find( rocMode == obj.ROC_MODE_POSITION );
            VelInds = find( rocMode == obj.ROC_MODE_VELOCITY );
            if ~isempty(PosInds)
                assert( min(rocTableValues(PosInds)) >= 0 && max(rocTableValues(PosInds)) <= 1, ...
                    'rocTableValues for positions must be on the interval [0 1]');
            end
            if ~isempty(VelInds)
                assert( min(rocTableValues(VelInds)) >= -1 && max(rocTableValues(VelInds)) <= 1, ...
                    'rocTableValues for velocities must be on the interval [-1 1]');
            end
            
            % preallocate the msg: msgId + EndPointVelocity6FingerPosVelCmdType
            %
            % 6 floats for endpoint, 2 floats for rocValues, 1 float for
            % weight, one byte for rocMode, one byte for the msgId,
            % and 2 bytes for rocTables
            num_simultaneous_roc = uint8(numel(rocMode));
            msg = zeros(6*4 + num_simultaneous_roc*10, 1, 'uint8'); 
            
            nextByte = 1;
            
            % msgId...
            bytes = cast(obj.ENDPOINT_V6_HAND_ROC_GRASPS, 'uint8');
            msg(nextByte : (nextByte-1) + length(bytes)) = bytes;
            nextByte = nextByte + length(bytes);

            % endpoint...
            bytes = obj.SingleBytes(endPtVelocities);
            msg(nextByte : (nextByte-1) + length(bytes)) = bytes;
            nextByte = nextByte + length(bytes);
            
            bytes = obj.SingleBytes(endPtOrientationVelocities);
            msg(nextByte : (nextByte-1) + length(bytes)) = bytes;
            nextByte = nextByte + length(bytes);
            
            % ROC...                     
            bytes = num_simultaneous_roc;
            for ii = 1:num_simultaneous_roc
                bytes = [bytes uint8(rocTableIDs(ii)) uint8(rocMode(ii)) ...
                    obj.SingleBytes(rocTableValues(ii)) obj.SingleBytes(rocWeights(ii))];
            end
            msg(nextByte : (nextByte-1) + length(bytes)) = bytes;
            nextByte = nextByte + length(bytes);
            
            msg = obj.CreateCmdMessage(obj.ACTUATE_MPL, msg);
            assert(nextByte+4 == length(msg)+1); % 2 byte length, ACTUATE_MPL, Checksum
            
        end
        
        function msg = EndpointPosition6HandRocGrasps( ...
                                obj, ...
                                endPtPositions, ...
                                endPtOrientationPositions, ...
                                rocMode, ...
                                rocTableIDs, ...
                                rocTableValues, ...
                                rocWeights)
            
            assert(length(endPtPositions) == obj.NUM_ENDPT_AXES, 'length(endPtPositions) must be 3');
            assert(length(endPtOrientationPositions) == obj.NUM_ENDPT_ORIENTATION_AXES, 'length(endPtOrientationPositions) must be 3');
            assert( numel(rocMode) == numel(rocTableIDs) && numel(rocMode) == numel(rocTableValues) && numel(rocMode) == numel(rocWeights), ...
                'rocMode, rocTableIDs, rocTableValues, and rocWeights must all be the same length');
            assert( all(ismember(rocMode, [obj.ROC_MODE_NO_MOTION obj.ROC_MODE_POSITION obj.ROC_MODE_VELOCITY])), ...
                'rocMode must be ROC_MODE_NO_MOTION, ROC_MODE_POSITION, or ROC_MODE_VELOCITY');
            assert( min(rocTableIDs) >= 0 && max(rocTableIDs) <= 255 && all(rocTableIDs - mod(rocTableIDs,1) == rocTableIDs), ...
                'rocTableIDs must be integers on the interval [0 255]');
            assert( all(rocWeights >= 0) && all(rocWeights <= 1) && abs(sum(rocWeights) - 1) < 1e-6, ...
                'rocWeights must be on the interval [0 1] and sum to 1');
            PosInds = find( rocMode == obj.ROC_MODE_POSITION );
            VelInds = find( rocMode == obj.ROC_MODE_VELOCITY );
            if ~isempty(PosInds)
                assert( min(rocTableValues(PosInds)) >= 0 && max(rocTableValues(PosInds)) <= 1, ...
                    'rocTableValues for positions must be on the interval [0 1]');
            end
            if ~isempty(VelInds)
                assert( min(rocTableValues(VelInds)) >= -1 && max(rocTableValues(VelInds)) <= 1, ...
                    'rocTableValues for velocities must be on the interval [-1 1]');
            end
            
            % preallocate the msg: msgId + EndPointVelocity6FingerPosVelCmdType
            %
            % 6 floats for endpoint, 2 floats for rocValues, 1 float for
            % weight, one byte for rocMode, one byte for the msgId,
            % and 2 bytes for rocTables
            num_simultaneous_roc = uint8(numel(rocMode));
            msg = zeros(6*4 + num_simultaneous_roc*10, 1, 'uint8'); 
            
            nextByte = 1;
            
            % msgId...
            bytes = cast(obj.ENDPOINT_P6_HAND_ROC_GRASPS, 'uint8');
            msg(nextByte : (nextByte-1) + length(bytes)) = bytes;
            nextByte = nextByte + length(bytes);

            % endpoint...
            bytes = obj.SingleBytes(endPtPositions);
            msg(nextByte : (nextByte-1) + length(bytes)) = bytes;
            nextByte = nextByte + length(bytes);
            
            bytes = obj.SingleBytes(endPtOrientationPositions);
            msg(nextByte : (nextByte-1) + length(bytes)) = bytes;
            nextByte = nextByte + length(bytes);

            % ROC...                     
            bytes = num_simultaneous_roc;
            for ii = 1:num_simultaneous_roc
                bytes = [bytes uint8(rocTableIDs(ii)) uint8(rocMode(ii)) ...
                    obj.SingleBytes(rocTableValues(ii)) obj.SingleBytes(rocWeights(ii))];
            end
            msg(nextByte : (nextByte-1) + length(bytes)) = bytes;
            nextByte = nextByte + length(bytes);
            
            msg = obj.CreateCmdMessage(obj.ACTUATE_MPL, msg);
            assert(nextByte+4 == length(msg)+1); % 2 byte length, ACTUATE_MPL, Checksum
            
        end
        
        function msg = ArmPosVelHandRocGrasps( ...
                                obj, ...
                                endPtPositions, ...
                                endPtVelocities, ...
                                rocMode, ...
                                rocTableIDs, ...
                                rocTableValues, ...
                                rocWeights)
            
            assert(length(endPtPositions) == obj.NUM_ENDPT_JOINTS);
            assert(length(endPtVelocities) == obj.NUM_ENDPT_JOINTS);
            assert( numel(rocMode) == numel(rocTableIDs) && numel(rocMode) == numel(rocTableValues) && numel(rocMode) == numel(rocWeights), ...
                'rocMode, rocTableIDs, rocTableValues, and rocWeights must all be the same length');
            assert( all(ismember(rocMode, [obj.ROC_MODE_NO_MOTION obj.ROC_MODE_POSITION obj.ROC_MODE_VELOCITY])), ...
                'rocMode must be ROC_MODE_NO_MOTION, ROC_MODE_POSITION, or ROC_MODE_VELOCITY');
            assert( min(rocTableIDs) >= 0 && max(rocTableIDs) <= 255 && all(rocTableIDs - mod(rocTableIDs,1) == rocTableIDs), ...
                'rocTableIDs must be integers on the interval [0 255]');
            assert( all(rocWeights >= 0) && all(rocWeights <= 1) && abs(sum(rocWeights) - 1) < 1e-6, ...
                'rocWeights must be on the interval [0 1] and sum to 1');
            PosInds = find( rocMode == obj.ROC_MODE_POSITION );
            VelInds = find( rocMode == obj.ROC_MODE_VELOCITY );
            if ~isempty(PosInds)
                assert( min(rocTableValues(PosInds)) >= 0 && max(rocTableValues(PosInds)) <= 1, ...
                    'rocTableValues for positions must be on the interval [0 1]');
            end
            if ~isempty(VelInds)
                assert( min(rocTableValues(VelInds)) >= -1 && max(rocTableValues(VelInds)) <= 1, ...
                    'rocTableValues for velocities must be on the interval [-1 1]');
            end
            
            % preallocate the msg: msgId + EndPointVelocity6FingerPosVelCmdType
            %
            % 6 floats for endpoint, 2 floats for rocValues, 1 float for
            % weight, one byte for rocMode, one byte for the msgId,
            % and 2 bytes for rocTables
            numMsgSingles = length(endPtPositions) + length(endPtVelocities);

            num_simultaneous_roc = uint8(numel(rocMode));
            msg = zeros(1 + (length(obj.SingleBytes(0)) * numMsgSingles) + num_simultaneous_roc*10, 1, 'uint8'); 
            
            nextByte = 1;
            
            % msgId...
            bytes = cast(obj.ARM_PV_HAND_ROC_GRASPS, 'uint8');
            msg(nextByte : (nextByte-1) + length(bytes)) = bytes;
            nextByte = nextByte + length(bytes);

            % Arm PV...
            bytes = obj.SingleBytes(endPtPositions);
            msg(nextByte : (nextByte-1) + length(bytes)) = bytes;
            nextByte = nextByte + length(bytes);
            
            bytes = obj.SingleBytes(endPtVelocities);
            msg(nextByte : (nextByte-1) + length(bytes)) = bytes;
            nextByte = nextByte + length(bytes);
            
            % ROC...                        
            bytes = num_simultaneous_roc;
            for ii = 1:num_simultaneous_roc
                bytes = [bytes uint8(rocTableIDs(ii)) uint8(rocMode(ii)) ...
                    obj.SingleBytes(rocTableValues(ii)) obj.SingleBytes(rocWeights(ii))];
            end
            msg(nextByte : (nextByte-1) + length(bytes)) = bytes;
            nextByte = nextByte + length(bytes);       
            
            msg = obj.CreateCmdMessage(obj.ACTUATE_MPL, msg);
            assert(nextByte+4 == length(msg)+1); % 2 byte length, ACTUATE_MPL, Checksum
            
        end
        
        function msg = ArmVelHandRocGrasps( ...
                                obj, ...
                                endPtVelocities, ...
                                rocMode, ...
                                rocTableIDs, ...
                                rocTableValues, ...
                                rocWeights)
            
            assert(length(endPtVelocities) == obj.NUM_ENDPT_JOINTS);
            assert( numel(rocMode) == numel(rocTableIDs) && numel(rocMode) == numel(rocTableValues) && numel(rocMode) == numel(rocWeights), ...
                'rocMode, rocTableIDs, rocTableValues, and rocWeights must all be the same length');
            assert( all(ismember(rocMode, [obj.ROC_MODE_NO_MOTION obj.ROC_MODE_POSITION obj.ROC_MODE_VELOCITY])), ...
                'rocMode must be ROC_MODE_NO_MOTION, ROC_MODE_POSITION, or ROC_MODE_VELOCITY');
            assert( min(rocTableIDs) >= 0 && max(rocTableIDs) <= 255 && all(rocTableIDs - mod(rocTableIDs,1) == rocTableIDs), ...
                'rocTableIDs must be integers on the interval [0 255]');
            assert( all(rocWeights >= 0) && all(rocWeights <= 1) && abs(sum(rocWeights) - 1) < 1e-6, ...
                'rocWeights must be on the interval [0 1] and sum to 1');
            PosInds = find( rocMode == obj.ROC_MODE_POSITION );
            VelInds = find( rocMode == obj.ROC_MODE_VELOCITY );
            if ~isempty(PosInds)
                assert( min(rocTableValues(PosInds)) >= 0 && max(rocTableValues(PosInds)) <= 1, ...
                    'rocTableValues for positions must be on the interval [0 1]');
            end
            if ~isempty(VelInds)
                assert( min(rocTableValues(VelInds)) >= -1 && max(rocTableValues(VelInds)) <= 1, ...
                    'rocTableValues for velocities must be on the interval [-1 1]');
            end
            
            % preallocate the msg: msgId + EndPointVelocity6FingerPosVelCmdType
            %
            % 7 floats for arm velocities, 2 floats for rocValues, 1 float for
            % weight, one byte for rocMode, one byte for the msgId,
            % and 2 bytes for rocTables
            numMsgSingles = length(endPtVelocities);

            num_simultaneous_roc = uint8(numel(rocMode));
            msg = zeros(1 + (length(obj.SingleBytes(0)) * numMsgSingles) + num_simultaneous_roc*10, 1, 'uint8'); 
            
            nextByte = 1;
            
            % msgId...
            bytes = cast(obj.ARM_V_HAND_ROC_GRASPS, 'uint8');
            msg(nextByte : (nextByte-1) + length(bytes)) = bytes;
            nextByte = nextByte + length(bytes);

            % Arm V...
            bytes = obj.SingleBytes(endPtVelocities);
            msg(nextByte : (nextByte-1) + length(bytes)) = bytes;
            nextByte = nextByte + length(bytes);
            
            % ROC...                     
            bytes = num_simultaneous_roc;
            for ii = 1:num_simultaneous_roc
                bytes = [bytes uint8(rocTableIDs(ii)) uint8(rocMode(ii)) ...
                    obj.SingleBytes(rocTableValues(ii)) obj.SingleBytes(rocWeights(ii))];
            end
            msg(nextByte : (nextByte-1) + length(bytes)) = bytes;
            nextByte = nextByte + length(bytes);
            
            msg = obj.CreateCmdMessage(obj.ACTUATE_MPL, msg);
            assert(nextByte+4 == length(msg)+1); % 2 byte length, ACTUATE_MPL, Checksum
            
        end
        
        function msg = AllJointsPosVelImpCmd(...
                                obj,...
                                endPtPositions, ...
                                endPtVelocities, ...
                                fingerPositions, ...
                                fingerVelocities, ...
                                stiffnesses)
            
            assert(length(endPtPositions) == obj.NUM_ENDPT_JOINTS);
            assert(length(endPtVelocities) == obj.NUM_ENDPT_JOINTS);
            assert(length(fingerPositions) == obj.NUM_FINGER_JOINTS);
            assert(length(fingerVelocities) == obj.NUM_FINGER_JOINTS);
            assert(length(stiffnesses) == obj.NUM_ENDPT_JOINTS+obj.NUM_FINGER_JOINTS);

            numMsgSingles = ...
                length(endPtPositions) +  ...
                length(endPtVelocities) +  ...
                length(fingerPositions) + ...
                length(fingerVelocities) + ...
                length(stiffnesses);

            % preallocate the msg: msgId + AllJointsPosCmd
            %
            msg = zeros(1 + (length(obj.SingleBytes(0)) * numMsgSingles), 1, 'uint8');

            nextByte = 1;
            
            % msgId...
            bytes = cast(obj.ALL_JOINTS_PVI, 'uint8');            
            msg(nextByte : (nextByte-1) + length(bytes)) = bytes;
            nextByte = nextByte + length(bytes);

            % AllJointsPosCmd...
            %
            bytes = obj.SingleBytes(endPtPositions);
            msg(nextByte : (nextByte-1) + length(bytes)) = bytes;
            nextByte = nextByte + length(bytes);
            
            bytes = obj.SingleBytes(fingerPositions);
            msg(nextByte : (nextByte-1) + length(bytes)) = bytes;
            nextByte = nextByte + length(bytes);
            
            bytes = obj.SingleBytes(endPtVelocities);
            msg(nextByte : (nextByte-1) + length(bytes)) = bytes;
            nextByte = nextByte + length(bytes);
            
            bytes = obj.SingleBytes(fingerVelocities);
            msg(nextByte : (nextByte-1) + length(bytes)) = bytes;
            nextByte = nextByte + length(bytes);
            
            % Stiffness
            bytes = obj.SingleBytes(stiffnesses);
            msg(nextByte : (nextByte-1) + length(bytes)) = bytes;
            nextByte = nextByte + length(bytes);

            msg = obj.CreateCmdMessage(obj.ACTUATE_MPL, msg);

        end
        
        function msg = EndpointVelocity6HandRocGraspsImp( ...
                                obj, ...
                                endPtVelocities, ...
                                endPtOrientationVelocities, ...
                                rocMode, ...
                                rocTableIDs, ...
                                rocTableValues, ...
                                rocWeights, ...
                                stiffnesses)
            
            assert( length(endPtVelocities) == obj.NUM_ENDPT_AXES );
            assert( length(endPtOrientationVelocities) == obj.NUM_ENDPT_ORIENTATION_AXES );
            assert(length(stiffnesses) == obj.NUM_ENDPT_JOINTS+obj.NUM_FINGER_JOINTS);
            assert( numel(rocMode) == numel(rocTableIDs) && numel(rocMode) == numel(rocTableValues) && numel(rocMode) == numel(rocWeights), ...
                'rocMode, rocTableIDs, rocTableValues, and rocWeights must all be the same length');
            assert( all(ismember(rocMode, [obj.ROC_MODE_NO_MOTION obj.ROC_MODE_POSITION obj.ROC_MODE_VELOCITY])), ...
                'rocMode must be ROC_MODE_NO_MOTION, ROC_MODE_POSITION, or ROC_MODE_VELOCITY');
            assert( min(rocTableIDs) >= 0 && max(rocTableIDs) <= 255 && all(rocTableIDs - mod(rocTableIDs,1) == rocTableIDs), ...
                'rocTableIDs must be integers on the interval [0 255]');
            assert( all(rocWeights >= 0) && all(rocWeights <= 1) && abs(sum(rocWeights) - 1) < 1e-6, ...
                'rocWeights must be on the interval [0 1] and sum to 1');
            PosInds = find( rocMode == obj.ROC_MODE_POSITION );
            VelInds = find( rocMode == obj.ROC_MODE_VELOCITY );
            if ~isempty(PosInds)
                assert( min(rocTableValues(PosInds)) >= 0 && max(rocTableValues(PosInds)) <= 1, ...
                    'rocTableValues for positions must be on the interval [0 1]');
            end
            if ~isempty(VelInds)
                assert( min(rocTableValues(VelInds)) >= -1 && max(rocTableValues(VelInds)) <= 1, ...
                    'rocTableValues for velocities must be on the interval [-1 1]');
            end
            
            % preallocate the msg: msgId + EndPointVelocity6FingerPosVelCmdType
            %
            % 6 floats for endpoint, 2 floats for rocValues, 1 float for
            % weight, one byte for rocMode, one byte for the msgId,
            % and 2 bytes for rocTables
            num_simultaneous_roc = uint8(numel(rocMode));
            msg = zeros(6*4 + num_simultaneous_roc*10 + 27*4, 1, 'uint8'); 
            
            nextByte = 1;
            
            % msgId...
            bytes = cast(obj.ENDPOINT_V6_HAND_ROC_GRASPS_I, 'uint8');
            msg(nextByte : (nextByte-1) + length(bytes)) = bytes;
            nextByte = nextByte + length(bytes);

            % endpoint...
            bytes = obj.SingleBytes(endPtVelocities);
            msg(nextByte : (nextByte-1) + length(bytes)) = bytes;
            nextByte = nextByte + length(bytes);
            
            bytes = obj.SingleBytes(endPtOrientationVelocities);
            msg(nextByte : (nextByte-1) + length(bytes)) = bytes;
            nextByte = nextByte + length(bytes);
            
            % ROC...                     
            bytes = num_simultaneous_roc;
            for ii = 1:num_simultaneous_roc
                bytes = [bytes uint8(rocTableIDs(ii)) uint8(rocMode(ii)) ...
                    obj.SingleBytes(rocTableValues(ii)) obj.SingleBytes(rocWeights(ii))];
            end
            msg(nextByte : (nextByte-1) + length(bytes)) = bytes;
            nextByte = nextByte + length(bytes);
            
            % Stiffness
            bytes = obj.SingleBytes(stiffnesses);
            msg(nextByte : (nextByte-1) + length(bytes)) = bytes;
            nextByte = nextByte + length(bytes);
            
            
            msg = obj.CreateCmdMessage(obj.ACTUATE_MPL, msg);
            assert(nextByte+4 == length(msg)+1); % 2 byte length, ACTUATE_MPL, Checksum
            
        end

        function msg = ConfigurePerceptDataCmd(...
                                obj,...
                                limbPerceptMapType, ...
                                jointPerceptMapType, ...
                                rocPerceptMapType, ...
                                segmentPerceptMapType)
                            
            % preallocate the msg: msgId + AllJointsPosCmd
            msg = zeros(4, 1, 'uint8');
            msg(1) = limbPerceptMapType;
            msg(2) = jointPerceptMapType;
            msg(3) = rocPerceptMapType;
            msg(4) = segmentPerceptMapType;
            
            msg = obj.CreateCmdMessage(obj.CONFIGURE_PERCEPT_DATA, msg);
            
        end
                            
                                
        function result = SingleBytes(obj, x)
            result = typecast(cast(x,'single'),'uint8');
        end

        % sb private but this lets you play :)
        %
        function msg = CreateCmdMessage(...
                            obj, ...
                            msgId,...   %MplCmdMessageIdType
                            cmd)      % CmdMessagePayloadType.cmd                            

            assert(strcmp(class(cmd), 'uint8'));
            
            MSG_LENGTH_FIELD_BYTES = 2;
            MSD_ID_FIELD_BYTES = 1;
            MSG_CHECKSUM_FIELD_BYTES = 1;
            
            msgLengthField = ...
                cast( ...
                    MSD_ID_FIELD_BYTES + length(cmd) + MSG_CHECKSUM_FIELD_BYTES, ...
                    'uint16');
            
            % preallocate the CmdMessageType            
            %
            msg = zeros(MSG_LENGTH_FIELD_BYTES + msgLengthField, 1, 'uint8');
            
            nextByte = 1;
            
            %% CmdMessageType.messageLength
            bytes = typecast(msgLengthField, 'uint8');
            msg(nextByte : (nextByte-1) + length(bytes)) = bytes;
            nextByte = nextByte + length(bytes);

            %% CmdMessageType.message
            bytes = cast(msgId, 'uint8');
            msg(nextByte : (nextByte-1) + length(bytes)) = bytes;
            nextByte = nextByte + length(bytes);
            
            msg(nextByte : (nextByte-1) + length(cmd)) = cmd;
            nextByte = nextByte + length(cmd);
            
            
            %% CmdMessageType.messageChecksum
            bytes = ComputeChecksum(msg(1:(nextByte-1)));
            msg(nextByte : (nextByte-1) + length(bytes)) = bytes;
            %nextByte = nextByte + length(bytes);
            
            function result = ComputeChecksum(bytes)
                
                % in double but should have enough precision for us
                result = sum(bytes);
                                
                % get least significant byte
                result = cast( mod(result, 256), 'uint8' );
            end
            
        end
        
    end % methods
    
end