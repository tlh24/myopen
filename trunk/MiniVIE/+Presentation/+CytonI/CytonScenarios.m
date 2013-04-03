classdef CytonScenarios
    % Collection of scenarios for using cyton robot
    % 
    %
    % Armiger 1-Apr-2013: Created
    methods (Static = true)
        function jointControlSerial
            %Presentation.CytonI.CytonScenarios.jointControlSerial
            % in this scenario the cyton VIE will respond as if commands
            % are being sent to the robot directly.  User enters commands
            % following the lynxterm format at the command prompt
            %
            % Armiger 1-Apr-2013: Created. Speed control not yet implemented
            
            import Presentation.CytonI.*
            hCyton = CytonI;

            cmd_str = '#0 P1000 #6 P1200';
            newTheta = CytonSerial.parse_lynxterm_cmd(cmd_str);
            theta = hCyton.JointParameters;
            
            theta(~isnan(newTheta)) = newTheta(~isnan(newTheta));
            hCyton.setJointParameters(theta);
            
            % Enter interactive prompt for input:
            while 1
                fprintf('[Cyton:]');
                strExpr = input('>>','s');
                if isempty(strExpr)
                    break;
                else
                    newTheta = CytonSerial.parse_lynxterm_cmd(strExpr);
                    theta = hCyton.JointParameters;
                    
                    theta(~isnan(newTheta)) = newTheta(~isnan(newTheta));
                    hCyton.setJointParameters(theta);
                end
            end
            
            fprintf('Done\n')
        end
        function jointControlJoystick
            %Presentation.CytonI.CytonScenarios.jointControlJoystick
            %
            % Example scenario in which Cyton is controlled by a joytick.
            % Left Analog Stick Left-Right (axisVal(2)) changes joint
            % angle, buttons 1,3 change the joint id
            %
            % Armiger 2-Apr-2013: Created
            
            % Maintain a button state so joint id doesn't fast cycle when
            % held down
            persistent buttonState
            
            if isempty(buttonState)
                buttonState = 0;
            end
            
            % Setup Cyton
            import Presentation.CytonI.*
            hCyton = CytonI;

            
            StartStopForm([]);
            hJoystick = JoyMexClass(0);
            id = 1;
            GAIN = 0.002;
            while StartStopForm
                drawnow;
                
                hJoystick.getdata();
                
                b = find(hJoystick.buttonVal,1,'first');
                
                if ~isempty(b) && (b == 3) && ~buttonState
                   id = id + 1; 
                   buttonState = 1;
                elseif ~isempty(b) && (b == 1) && ~buttonState
                    id = id - 1;
                    buttonState = 1;
                end
                
                if isempty(b);
                    buttonState = 0;
                end
                
                % wrap joint id
                if id > 8
                    id = 1;
                end
                
                if id < 1
                    id = 8;
                end
                
                theta = hCyton.JointParameters;
                
                axisDeadband = 0.1;
                if abs(hJoystick.axisVal(2)) > axisDeadband
                    vel = hJoystick.axisVal(2);
                    theta(id) = theta(id) + (vel * GAIN); 
                end
                
                hCyton.setJointParameters(theta);
                
            end
        end
        function jointControlEmg
            %Presentation.CytonI.CytonScenarios.jointControlEmg
            %
            % Example scenario in which Cyton is controlled by EMG.
            %
            % Armiger 2-Apr-2013: Created
            %
            % Calls:
            %       Presentation.CytonI.CytonEmgScenario.Run
            Presentation.CytonI.CytonEmgScenario.Run;
            
        end
        function endpointVelocityJoystick
            %Presentation.CytonI.CytonScenarios.endpointVelocityJoystick
            % Demonstrate endpoint velocity control with Cyton
            %
            % Example scenario in which Cyton is controlled by a joystick
            % in an endpoint velocity mode.
            % Left Analog Stick moves in XY plane, right analog stick moves
            % in Z direction.  Buttons change orientation
            %
            % Armiger 2-Apr-2013: Created
            
            % Setup Cyton
            import Presentation.CytonI.*
            hCyton = CytonI;

            
            StartStopForm([]);
            hJoystick = JoyMexClass(0);
            
            while StartStopForm
                drawnow;
                
                hJoystick.getdata();
                
                % create endpoint velocity command from joystick
                vMove = [hJoystick.axisVal(1); hJoystick.axisVal(2); -hJoystick.axisVal(3);];
                deadband = abs(vMove) < 0.1;
                vMove(deadband) = 0;
                % orientation uses buttons
                wMove = 0.01 * [
                    hJoystick.buttonVal(1) - hJoystick.buttonVal(2);
                    hJoystick.buttonVal(3) - hJoystick.buttonVal(4);
                    hJoystick.buttonVal(5) - hJoystick.buttonVal(6);
                    ];
                vGripper = hJoystick.buttonVal(7) - hJoystick.buttonVal(8);
                
                
                % Get current position
                q = hCyton.JointParameters;
                
                % Get dh param constants
                [~, a, d] = hCyton.hControls.getDHParams();
                
                % Get Jacobian at the current position
                J_ = hCyton.hControls.symJacobianFull(a(6),d(2),d(3),d(4),d(5),d(6),q(1),q(2),q(3),q(4),q(5),q(6));

                % invert jacobian
                invJ_ = pinv(J_);
                
                % create a joint angle velocity command based on endpoint
                % velocity commmand
                q_dot = invJ_ * [vMove; wMove];
                q_dot(8) = 0.01 * vGripper;
                
                q = q + q_dot;
                
                hCyton.setJointParameters(q);
                
                % display position
                p = hCyton.T_0_EndEffector(1:3,4);
                fprintf('[%s] End Effector Position: %6.2f %6.2f %6.2f \n',...
                    mfilename, p)
                
            end
        end
        function endpointVelocitySliders
            %Presentation.CytonI.CytonEndpointGui()
            Presentation.CytonI.CytonEndpointGui()
        end
    end
end