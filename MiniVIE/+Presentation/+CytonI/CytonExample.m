classdef CytonExample
    % Contains selected examples showing some of the finer points of robot
    % control.  Starting with a basic inverse velocity case, the Jacobian
    % can be used to computer joint angle velocities to achieve a given
    % endpoint motion of the end effector.  The first problem we run into
    % is that a joint that hits a limit will 'saturate' and the achieved
    % end effector motion will be incorrect.  There are two ways to
    % approach this problem.  1 is to avoid the limit in the first place
    % and 2 is to remove it from the solution set and relay on other joints
    % to achieve the motion independantly.
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
        
        function DualCyton
            % Dual Cyton Demo
            
            % Create two instances using unique names
            clf
            ax = gca;
            h1 = Presentation.CytonI.CytonI('CytonLeft',ax);
            h2 = Presentation.CytonI.CytonI('CytonRight',ax);
            
            % move the base frames to seperate the robots
            hg = h1.hDisplay.getGraphicsHandles;
            set(hg.Transforms(10),'Matrix',makehgtform('translate',[150 0 0]))
            
            hg = h2.hDisplay.getGraphicsHandles;
            set(hg.Transforms(10),'Matrix',makehgtform('translate',[-150 0 500],'xrotate',pi))
            
            % update lighting
            delete(findall(gca,'type','light'))
            camlight('left')
            
            %% Update joint angles for each robot
            h1.setJointParameters(0.2*randn(8,1))
            h2.setJointParameters(0.2*randn(8,1))
            
        end
    end
    
    
end

