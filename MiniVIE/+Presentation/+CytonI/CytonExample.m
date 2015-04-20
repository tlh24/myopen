classdef CytonExample
    methods (Static = true)
        function CytonExample_rvc_toolbox
            % Control the cyton using Peter Corke's robot vision and
            % control toolbox for MATLAB (RVC toolbox required)
            
        end
        
        function CytonExample_IK1
            %% Basic inverse kinematic example
            
            
            % create Cyton VIE
            hCyton = Presentation.CytonI.CytonI();
            % allow instant updates by turning off real-time control timing
            hCyton.hPlant.stop();
            % set the arm to a bent position
            q = [0 0 0 -pi/4 0 -pi/4 0 0];
            hCyton.setJointParameters(q);
            
            %% specify a motion in cartesian space: negative z-axis == down
            endpointVelocity = [0 0 -100]';
            % get the current joint angle (since the jacobian depends on this)
            q = hCyton.JointParameters;
            % Compute jacobian
            J = hCyton.hControls.numericJacobian(q);
            J = J(1:3,:); % consider position only
            
            % pseudo-inverse method for inverting non-square jacobian
            pinvJ = pinv(J);
            % joint angle velocities are the product of J^-1 * endpoint velocity
            q_dot = pinvJ * endpointVelocity;
            % set new joint values as position + incremental velocity
            dt = 0.1
            qNew = q + [q_dot; 0]*dt;
            hCyton.setJointParameters(qNew);
            
        end
        function CytonExample_IK2
            %% Basic inverse kinematic example
            % Extend to include simple position control loop
            
            
            % create Cyton VIE
            hCyton = Presentation.CytonI.CytonI();
            % allow instant updates by turning off real-time control timing
            hCyton.hPlant.stop();
            %% set the arm to a bent position
            q = [0 0 0 -pi/4 0 -pi/4 0 0];
            hCyton.setJointParameters(q);
            
            % Specify end goal
            finalPosition = [250 0 200]';
            
            err = 1;
            pause(0.1)
            while err > 1e-5
                %% Get the current position
                F = hCyton.T_0_EndEffector;
                pos = F(1:3,4);
                
                % Determine required movement velocity:
                posError = finalPosition - pos;
                err = norm(posError);
                % specify a motion in cartesian space to close the error
                endpointVelocity = posError;
                
                % get the current joint angle (since the jacobian depends on this)
                q = hCyton.JointParameters;
                % Compute jacobian
                J = hCyton.hControls.numericJacobian(q);
                J = J(1:3,:); % consider position only
                
                % pseudo-inverse method for inverting non-square jacobian
                pinvJ = pinv(J);
                % joint angle velocities are the product of J^-1 * endpoint velocity
                q_dot = pinvJ * endpointVelocity;
                % set new joint values as position + incremental velocity
                dt = 0.1;
                qNew = q + [q_dot; 0]*dt;
                hCyton.setJointParameters(qNew);
                drawnow
            end
        end
        function CytonExample_IK3
            %% Basic inverse kinematic example
            % Extend to include simple position control loop
            
            
            % create Cyton VIE
            hCyton = Presentation.CytonI.CytonI();
            % allow instant updates by turning off real-time control timing
            hCyton.hPlant.stop();
            %% set the arm to a bent position
            q = [0 0 0 -pi/4 0 -pi/4 0 0];
            hCyton.setJointParameters(q);
            
            % Specify end goal
            finalPosition = [250 0 250]';
            
            err = 1;
            pause(0.4)
            while err > 1e-5
                %% Get the current position
                F = hCyton.T_0_EndEffector;
                pos = F(1:3,4);
                
                % Determine required movement velocity:
                posError = finalPosition - pos;
                err = norm(posError);
                % specify a motion in cartesian space to close the error
                endpointVelocity = [posError; 0; 0; 0;];
                
                % get the current joint angle (since the jacobian depends on this)
                q = hCyton.JointParameters;
                % Compute jacobian
                J = hCyton.hControls.numericJacobian(q);
                
                % pseudo-inverse method for inverting non-square jacobian
                pinvJ = pinv(J);
                % joint angle velocities are the product of J^-1 * endpoint velocity
                q_dot = pinvJ * endpointVelocity;
                % set new joint values as position + incremental velocity
                dt = 0.1;
                qNew = q + [q_dot; 0]*dt;
                hCyton.setJointParameters(qNew);
                drawnow
            end
        end
        
    end
    
    
end

