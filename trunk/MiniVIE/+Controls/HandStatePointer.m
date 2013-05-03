classdef HandStatePointer < Controls.HandState
    methods
        function obj = HandStatePointer
            obj.initialize();
            obj.Name = mfilename;
        end
        function updateState(obj)
            % State machine looks for state transitions
            switch obj.CurrentState
                
                case Controls.HandStateEnum.Platform
                    if obj.Actuators.MiddleRingLittle.Position > 0.6
                        obj.setState(Controls.HandStateEnum.Point);
                    end
                    
                case Controls.HandStateEnum.Point
                    if obj.Actuators.MiddleRingLittle.Position < (10/22) && obj.Actuators.ThumbAdAb.Position < (1/8)
                        obj.setState(Controls.HandStateEnum.Platform);
                    elseif obj.Actuators.Index.Position > (20/30) && obj.Actuators.ThumbAdAb.Position < (1/8)
                        obj.setState(Controls.HandStateEnum.Hook);
                    elseif obj.Actuators.ThumbAdAb.Position > (6/8)
                        obj.setState(Controls.HandStateEnum.Opposition);
                    end
                    
                case Controls.HandStateEnum.Hook
                    if obj.Actuators.ThumbFE.Position > (10/16)
                        obj.setState(Controls.HandStateEnum.Key);
                    elseif obj.Actuators.Index.Position < (6/30)
                        obj.setState(Controls.HandStateEnum.Point);
                    end
                    
                case Controls.HandStateEnum.Key
                    if obj.Actuators.ThumbFE.Position < (5/16)
                        obj.setState(Controls.HandStateEnum.Hook)
                    end
                    
                case Controls.HandStateEnum.Opposition
                    if obj.Actuators.ThumbAdAb.Position < (3/8)
                        obj.setState(Controls.HandStateEnum.Point);
                    elseif obj.Actuators.ThumbFE.Position > (10/16) && obj.Actuators.ThumbAdAb.Position > (6/8)
                        obj.setState(Controls.HandStateEnum.CylinderTip);
                    end
                    
                case Controls.HandStateEnum.CylinderTip
                    if obj.Actuators.ThumbFE.Position < (5/16)
                        obj.setState(Controls.HandStateEnum.Opposition);
                    end
                    
                otherwise
                    error('Unknown State %d\n',obj.CurrentState);
            end
        end
        function setState(obj, newState)
            
            obj.setInactive();
            obj.setDefaultRange();
            
            switch newState
                case Controls.HandStateEnum.Platform
                    obj.Actuators.MiddleRingLittle.InputSrc = obj.Input.UP_DOWN;
                    obj.ActiveJoints = {'MiddleRingLittle'};
                case Controls.HandStateEnum.Point
                    obj.Actuators.Index.InputSrc            = obj.Input.UP_DOWN;
                    obj.Actuators.MiddleRingLittle.InputSrc = obj.Input.UP_DOWN;
                    obj.Actuators.ThumbAdAb.InputSrc        = obj.Input.LEFT_RIGHT;
                    obj.ActiveJoints = {'Index', 'MiddleRingLittle', 'ThumbAdAb'};
                case Controls.HandStateEnum.Hook
                    obj.Actuators.Index.InputSrc = obj.Input.UP_DOWN;
                    obj.Actuators.ThumbFE.InputSrc = obj.Input.LEFT_RIGHT;
                    obj.ActiveJoints = {'Index', 'ThumbFE'};
                case Controls.HandStateEnum.Key
                    obj.Actuators.ThumbFE.InputSrc = obj.Input.LEFT_RIGHT;
                    obj.Actuators.ThumbFE.Max = 0.7;
                    obj.ActiveJoints = {'ThumbFE'};
                case Controls.HandStateEnum.Opposition
                    obj.Actuators.Index.InputSrc        = obj.Input.LEFT_RIGHT;
                    obj.Actuators.ThumbAdAb.InputSrc    = obj.Input.LEFT_RIGHT;
                    obj.Actuators.ThumbFE.InputSrc      = obj.Input.LEFT_RIGHT;
                    obj.Actuators.Index.Max = 0.6;
                    obj.ActiveJoints = {'Index', 'ThumbAdAb', 'ThumbFE'};
                case Controls.HandStateEnum.CylinderTip
                    obj.Actuators.Index.InputSrc        = obj.Input.LEFT_RIGHT;
                    obj.Actuators.ThumbFE.InputSrc      = obj.Input.LEFT_RIGHT;
                    obj.Actuators.Index.Max = 0.6;
                    obj.ActiveJoints = {'Index', 'ThumbFE'};
                otherwise
                    error('Unknown State %d\n',obj.CurrentState);
            end
            
            if (obj.Verbose > 0)
                fprintf('[%s] Changing State from "%s" to "%s"\n',...
                    mfilename,...
                    Controls.HandStateEnum.getStateName(obj.CurrentState),...
                    Controls.HandStateEnum.getStateName(newState));
                fprintf('[%s] Active Joints are:',mfilename);
                fprintf(' %s',obj.ActiveJoints{:});
                fprintf('\n');
            end
            
            obj.CurrentState = newState;
            
            notify(obj,'StateChange');

        end
    end
end
