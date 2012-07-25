classdef HapticAlgorithm < handle
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
            
            % Transient state on startup
            if isempty(obj.tLast)
                obj.tLast = clock;            
            end
            
            % Reduce transmission speeds
            elapsedTime = etime(clock,obj.tLast);
            if elapsedTime < 0.2
                return
            else
                obj.tLast = clock;
                %'send'
            end
            
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
