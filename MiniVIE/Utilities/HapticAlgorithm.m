classdef HapticAlgorithm < handle
    % Class for converting sensor data into an actuation command
    %
    % Usage: HapticAlgorithm(obj.hNfu,idTactor)
    %
    % 
    % Notes: 
    % Parse percepts data
    %1      PERCEPTID_INDEX_AB_AD,
    %2      PERCEPTID_INDEX_MCP,
    %3      PERCEPTID_MIDDLE_MCP,
    %4      PERCEPTID_RING_MCP,
    %5      PERCEPTID_LITTLE_AB_AD,
    %6      PERCEPTID_LITTLE_MCP,
    %7      PERCEPTID_THUMB_CMC_AD_AB,
    %8      PERCEPTID_THUMB_CMC_FE,
    %9      PERCEPTID_THUMB_MCP,
    %0      PERCEPTID_THUMB_DIP,
    %      PERCEPT_NUM_IDS
    
    % Read first 70 bytes (percepts) 16s 16s 16s 8u * 10
    % unactuated percepts (16 bytes) 16s 16s * 8
    % ftsn (45 bytes) 16s 16s 16s 16s Acel XYZ: 8s 8s 8s *5
    
    properties
        
        SensorLowHigh = [15 100];
        ActuatorLowHigh = [40 127];
        
        ActuationRepeatTimeout = 20;
        
        Verbose = 1;
        
        TactorId
        
    end
    properties (Access = private)
        TactorState
        TactorCounter = 0;

        tLast
        hNfu
    end
    
    methods
        function obj = HapticAlgorithm(hNfu,tactorId)
            % Creator
            obj.hNfu = hNfu;
            obj.TactorId = tactorId;
        end
        function update(obj,inputSensor)
            %update_on_off(obj,inputSensor);
            update_continuous(obj,inputSensor);
        end
        function update_on_off(obj,inputSensor)
            if inputSensor > obj.SensorLowHigh(1)
                % sensor over activation threshold, actuate until value
                % drops or timeout
                
                if obj.TactorState == 0
                    % if not on , turn on
                    val = interp1(obj.SensorLowHigh,obj.ActuatorLowHigh,inputSensor,'linear','extrap');
                    % enforce actuator range limit
                    val = min(max(val,obj.ActuatorLowHigh(1)),obj.ActuatorLowHigh(2));
                    
                    obj.hNfu.tactorControl(obj.TactorId, 100, val, 100, 100, 0);
                    
                    if obj.Verbose >= 1
                        fprintf('Tactor %d ON with sensor val = %6.1f\n',obj.TactorId,inputSensor);
                    end
                    
                    obj.TactorState = 1;
                end
                
            elseif inputSensor <= obj.SensorLowHigh(1)
                % Signal dropped below activation threshold
                
                % if on, turn off
                if obj.TactorState
                    obj.hNfu.tactorControl(obj.TactorId, 100, 0, 100, 100, 0);
                end
                obj.TactorState = 0;
            end
            
            if obj.TactorState
                % continue to count number of times tactor is 'on'
                obj.TactorState = obj.TactorState + 1;
                
                if obj.TactorState == obj.ActuationRepeatTimeout
                    % Timeout
                    fprintf('Tactor %d TIMEOUT\n',obj.TactorId);
                    obj.hNfu.tactorControl(obj.TactorId, 100, 0, 100, 100, 0);
                end
            end
            
        end
        function update_continuous(obj,inputSensor)
            
            % Transient state on startup
            if isempty(obj.tLast)
                obj.tLast = clock;            
            end
            
%             % Reduce transmission speeds
%             elapsedTime = etime(clock,obj.tLast);
%             if elapsedTime < 0.2
%                 return
%             else
%                 obj.tLast = clock;
%                 %'send'
%             end
            
            val = 0;
            % Check sensor range
            if inputSensor < obj.SensorLowHigh(1)
                obj.TactorState = 0;
                val = 0;
            elseif obj.SensorLowHigh(1) < inputSensor && inputSensor <= obj.SensorLowHigh(2)
                obj.TactorState = 1;
                val = obj.ActuatorLowHigh(1);
            elseif obj.SensorLowHigh(2) < inputSensor
                obj.TactorState = 2;
                val = obj.ActuatorLowHigh(2);
            end
            
            % Count duration when tactor is on
            if obj.TactorState
                obj.TactorCounter = obj.TactorCounter + 1;
            else
                obj.TactorCounter = 0;
            end
            
            % Check timeout condition
            if obj.TactorCounter > obj.ActuationRepeatTimeout
                fprintf('Tactor %d TIMEOUT\n',obj.TactorId);
                val = 0;
            end
            
            % send command
            obj.hNfu.tactorControl(obj.TactorId, 100, val, 100, 100, 0);
                        
        end
    end
end
