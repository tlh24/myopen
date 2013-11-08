classdef ArmStateModel < handle
    % State controller for handling velocity control of an arm
    %
    % TODO: Add velocity min (if > 0)
    properties

        ApplyValueLimits;
        ApplyVelocityLimits;
        ApplyAccelerationLimits;
        
        structState
        lastTime
        velocity = zeros(1,8);
        
        RocStateId = 8; % not to be confused with RocId/RocValue
    end
    methods
        function obj = ArmStateModel
            % Create state for upper arm joints and roc grasps
            obj.lastTime = tic;
            obj.ApplyValueLimits = 1;
            obj.ApplyVelocityLimits = 1;
            obj.ApplyAccelerationLimits = 0;
            
            obj.structState = repmat(obj.defaultState,8,1);
            
            obj.structState(1).Name = 'Shoulder FE';
            obj.structState(2).Name = 'Shoulder AA';
            obj.structState(3).Name = 'Shoulder ROT';
            obj.structState(4).Name = 'Elbow';
            obj.structState(4).Min = 0;
            obj.structState(5).Name = 'Wrist ROT';
            obj.structState(6).Name = 'Wrist DEV';
            obj.structState(7).Name = 'Wrist FE';
            
            obj.structState(8).Name = 'Roc Hand';
            obj.structState(8).Max = 1;
            obj.structState(8).Min = 0;
            
            
            %obj.test;
        end
        function setRocId(obj,id)
            obj.structState(obj.RocStateId).State = id;
        end
        function setVelocity(obj,id,velocity)
            obj.velocity(id) = velocity;
        end
        function value = getValues(obj)
            value = [obj.structState(:).Value];
        end
        function upperArmValues = getUpperArmValues(obj)
            upperArmValues = [obj.structState(1:7).Value];
        end
        function [rocId, rocValue] = getRocValues(obj)
            rocValue = obj.structState(8).Value;
            rocId = obj.structState(8).State;
        end
        function update(obj)
            % perform the forward integration based on the elapsed time
            % apply rate limits
            % apply range limits
            
            dt = max(toc(obj.lastTime),0.001);
            
            % set the velocity state and copy the old velocity to last
            for i = 1:length(obj.structState)
                s = obj.structState(i);
                v = obj.velocity(i); % no limits on how fast this changes
                s.DesiredVelocity = v;
                
                if obj.ApplyAccelerationLimits
                    desiredAccel = (s.DesiredVelocity - s.LastVelocity) ./ dt;
                    allowedAccel = sign(desiredAccel) * min(abs(desiredAccel),s.MaxAcceleration);
                                        
                    % Integrate acceleration to get velocity
                    newV = s.LastVelocity + (allowedAccel*dt);
                else
                    % Use commanded velocity
                    newV = v;
                end

                % Apply max velocity limits
                if obj.ApplyVelocityLimits
                    newV = sign(newV) * min(abs(newV),s.MaxVelocity);
                end

                s.LastVelocity = s.Velocity;
                s.Velocity = newV;
                
                % Integrate velocity to get position
                s.Value = s.Value + (s.Velocity*dt);
                s.DesiredValue = s.DesiredValue + (s.DesiredVelocity*dt);
                
                % Apply range limits
                if obj.ApplyValueLimits
                    s.Value = min(s.Value,s.Max);
                    s.Value = max(s.Value,s.Min);
                end
                
                obj.structState(i) = s;
                
            end
            
            obj.lastTime = tic;
            
        end
        function test(obj)
            
            h = GUIs.widgetStripChart();
            h.initialize(4,300,{'actual' 'desired' 'v' 'vdesired'});
            
            t1 = tic;
            
            obj.setVelocity(1,2)
            
            while toc(t1) < 7
                pause(0.1*rand)
                
                if toc(t1) > 5
                    obj.setVelocity(1,-2);
                end
                
                obj.update();
                v = obj.getValues();
                h.putdata([
                    obj.structState(1).Value
                    obj.structState(1).DesiredValue
                    obj.structState(1).Velocity
                    obj.structState(1).DesiredVelocity
                    ]);
                
            end
            disp('done')
            
        end
    end
    methods (Static = true)
        function stateStruct = defaultState
            
            stateStruct.Name = 'new state';
            stateStruct.Value = 0;
            stateStruct.State = 0;  % used to store Grasp Id
            stateStruct.Velocity = 0;
            stateStruct.Max = +pi;
            stateStruct.Min = -pi;
            stateStruct.MaxVelocity = 1;
            stateStruct.MaxAcceleration = 1;
            stateStruct.LastValue = 0;
            stateStruct.LastVelocity = 0;
            stateStruct.DesiredValue = 0;
            stateStruct.DesiredVelocity = 0;
            
        end
    end
end