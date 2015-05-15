classdef CytonI < Presentation.CytonI.Robot
    % Virtual Cyton Robot System Class Definition
    % 
    % This class is the main object for the CytonI robot.  Additional
    % helper classes exist:
    % 	CytonPlant - maintain state machine and rate limits
    %   CytonControls - Jacobian parameters and endpoint algorithms
    %   CytonDisplay - Virtual rendering of robot
    %   CytonSerial - Handles serial connection to physical robot
    %   CytonScenarios - Collection of use-case scenarios
    %
    % Cyton VIE has an internal state which means that issuing commands
    % will take 'real-time' to conclude.
    % Usage:
    %   import Presentation.CytonI.*
    %   obj = CytonI;
    %   obj.setJointParameters(0.5*randn(8,1));
    %
    % %Note you can set the speed as
    %   obj.hPlant.setDesiredSpeed(1); % rad/s (globally)
    % % Or set speeds on a per joint basis
    %   obj.hPlant.setDesiredSpeed([1 0.2 0.3 0.4 0.5 0.6 0.7 0.8]); % rad/s
    %
    % %Additionally you can check to see if all moves are complete by
    %   allComplete = obj.hPlant.allMovesComplete
    %
    % %or return an array of which joints are complete:
    %   isComplete = obj.hPlant.isMoveComplete
    %
    % Get the endpoint / end effector frame:
    %   obj.T_0_EndEffector
    %
    % Connecting real hardware:
    %   obj.connectToHardware('COM1'); % PC
    %   obj.connectToHardware('/dev/tty.PL2303-00001004'); % MAC
    %
    % The Display:
    %   hDisplay = obj.hDisplay;
    %
    %   hDisplay.showSurfaces(0)
    %   hDisplay.showTriads(1)
    %   hDisplay.showTarget(1)
    %   setTarget(hDisplay,makehgtform('translate',[100 100 100],'yrotate',randn))
    %
    %   hSphere = hDisplay.setTargetSphereRadius(50)
    %   set(hSphere,'FaceAlpha',0.2)
    %
    %
    % The Control Module:
    %   hControls = obj.hControls;
    %
    %     % Get dh param constants
    %     [~, a, d] = hControls.getDHParams();
    % 
    %     % Get Jacobian at the current position
    %     J_ = hControls.symJacobianFull(a(6),d(2),d(3),d(4),d(5),d(6),q(1),q(2),q(3),q(4),q(5),q(6));
    %   
    %     % Goto endpoint position
    %     hControls.goto([-100 200 300]);
    %
    % run a demo via
    %   CytonI.Demo
    %
    % Example with user interface for sliders:
    % 
    %   import Presentation.CytonI.*
    %   hCyton = CytonI;
    %   hCyton.guiJointSliders;
    %
    %
    % This is just a first cut and we can elaborate more as we go.  (e.g. TODO: add individual joint speeds).
    % I also incorporated the Cyton Serial functions into a single class file.  I did this by adding the
    % theta = cyton_serial_cmd2theta(cmd_str, oldTheta)
    % function as a 'static' method.  This means that the internal function can be called anytime so long as you give the full name as:
    % CytonSerial.cyton_serial_cmd2theta
    %
    % "Plant Running" means that the commands to the robot will be limited
    % to actual movement velocities in approximately real time.  If the
    % plant is 'off' then position updates will happen instantaneously
    %
    % See Also:
    %   CytonScenarios
    % 
    % Revision History:
    % 2011Jan01 Armiger: Created
    % 2012Mar05 Armiger: Updated comments to reflect private plant properties
    % 2013Jan25 Armiger: Added slider interface
    
    properties
        Name
        ControlMode = Presentation.CytonI.CytonControls.JointPositionMode;
        %JointPositionSetpoint;
        %EndpointPositionSetpoint;
    end
    properties (SetAccess = private)
        hPlant = []; % handle to plant state model
        hDisplay = []; % handle to display model
        hControls = []; % handle to kinematics contoller
    end
    properties (Dependent = true)
        T_0_EndEffector;
        JointParameters;
    end
    properties (Constant = true)
        NumDof = 8;
    end
    
    methods
        function obj = CytonI(name,hDisplayAxes)
            
            if nargin < 1
                obj.Name = 'NewCyton';
            else
                obj.Name = name;
            end
                        
            if nargin < 2
                hDisplayAxes = gca;
            end
            
            % Create control and plant blocks
            import Presentation.CytonI.*
            
            obj.hControls = CytonControls(obj);
            obj.hPlant = CytonPlant(obj.Name);
            
            % Set Default Position
            setJointParameters(obj,zeros(obj.NumDof,1));
            
            obj.hDisplay = CytonDisplay(obj);
            obj.hDisplay.initialize(hDisplayAxes);
            obj.hDisplay.updateFigure;
            
            start(obj.hPlant);
            start(obj.hDisplay);
        end
        function guiJointSliders(obj)
            % Launch a slider control window
            %
            % 1/25/2013 Armiger: Created
            
            % Cyton I
            jointNames = {
                'SHOULDER_ROLL'
                'SHOULDER_PITCH'
                'SHOULDER_YAW'
                'ELBOW_PITCH'
                'WRIST_ROLL'
                'WRIST_PITCH'
                'WRIST_YAW'
                'GRIPPER'
                };
            % Cyton Gamma
            % jointNames = {
            %     'SHOULDER_ROLL'
            %     'SHOULDER_PITCH'
            %     'SHOULDER_YAW'
            %     'ELBOW_PITCH'
            %     'ELBOW_YAW'
            %     'WRIST_PITCH'
            %     'WRIST_ROLL'
            %     'GRIPPER'
            %     };
            numJoints = length(jointNames);
            
            % Variable to store angles while updated
            jointAngles = zeros(1,numJoints);
            
            % Create GUI
            guiName = 'Cyton Sliders';
            hFigure = UiTools.create_figure(guiName,'guiClassifierChannels');
            clf(hFigure);
            
            hAxes = zeros(1,numJoints);
            hSlider = cell(1,numJoints);
            hText = zeros(1,numJoints);
            for i = 1:numJoints
                hAxes(i) = subplot(1,numJoints,i,'Parent',hFigure);
                set(hAxes(i),'XTick',[]);
                if i > 1
                    set(hAxes(i),'YTick',[]);
                end
                ylim(hAxes(i),[-2 2]);
                
                hText(i) = text('Position',[0.5 1.9],'String',jointNames{i},...
                    'Rotation',90,'Parent',hAxes(i),'Interpreter','None','HorizontalAlignment','Right');
                
                hSlider{i} = GUIs.widgetSlider('Parent',hAxes(i));
                hSlider{i}.Range = [-2 2];
                hSlider{i}.Type = {'Vertical'};
                hSlider{i}.PatchWidth = 0.15;
                hSlider{i}.Value = 0;
                
            end
            
            % Set GUI callbacks to update robot position
            for i = 1:numJoints
                % Send update on motion
                hSlider{i}.ButtonMotionFcn = @(src,evt)updateAngles(i,evt);
                % Send update on button up
                hSlider{i}.ButtonUpFcn = @(src,evt)updateAngles(i,evt);
            end
            
            % nested callback function to send updates joint angles
            function updateAngles(classId,val)
                jointAngles(classId) = val;
                %cyton(0,jointAngles);
                obj.setJointIdValue(classId,val);
                %fprintf('Angles = [ %6.2f %6.2f %6.2f %6.2f %6.2f %6.2f %6.2f %12.8f ]\n',jointAngles);
                p = obj.T_0_EndEffector(1:3,4);
                fprintf('[%s] End Effector Position: %6.2f %6.2f %6.2f \n',...
                    mfilename, p)

                T1 =  obj.hControls.getT_0_N(1);
                T7 =  obj.hControls.getT_0_N(7);
                
                p1 = T1(1:3,4);
                p7 = T7(1:3,4);
                
                norm(p7-p1);
                
            end
        end
        
        function connectToHardware(obj,strComPort)
            % Synchronize motions of the real Cyton to the Cyton VIE
            obj.hPlant.connectToHardware(strComPort);
        end
        function jointParameters = get.JointParameters(obj)
            % return the joint parameters stored in the Plant object
            jointParameters = obj.hPlant.CurrentPosition;
        end
        function setJointParameters(obj,jointParameters)
            % Function to set joint parameters
            % Exaple:
            % obj.setJointParameters(0.5*randn(8,1));
            
            assert(size(jointParameters(:),1) == obj.NumDof,...
                'Expected a [%d n] vector of joint parameters\n',obj.NumDof);
            
            obj.hPlant.setDesiredPosition(jointParameters(:));
        end
        function setJointIdValue(obj,jointId,jointParameter)
            % Function to set joint parameters
            % Example:
            % obj.setJointIdValue(4,rand);
            
            if length(jointId) ~= length(jointParameter)
                error('Expected joint id and joint parameter\n');
            end
            
            p = obj.hPlant.DesiredPosition;
            p(jointId) = jointParameter;
            obj.hPlant.setDesiredPosition(p);
        end
        function T_0_EndEffector = get.T_0_EndEffector(obj)
            T_0_EndEffector = obj.hControls.getT_0_N();
        end
        function testStateROM(obj)
            % Usage: testStateROM(CytonI)
            obj.hDisplay.showTriads(0);
            
            % these are the joint parameters
            freevars = deg2rad([-30 30 45 90 0 40 0 0]);
            
            obj.setJointParameters(freevars);
            
            while ~obj.hPlant.allMovesComplete
                disp('Waiting for move complete...');
                drawnow
            end
            disp('Move completed');
        end
        
        function testROM(obj)
            % Usage:  testROM(CytonI)
            % Loop through each joint and draw
            N = 10; % Angle Increment
            nSegments = 8;
            obj.hDisplay.showTriads(0);
            for i = 1:nSegments
                
                % these are the joint parameters
                freevars = deg2rad([0 0 0 0 0 0 0 0]);
                
                range = 90; %degrees
                if i == 8 %gripper
                    % go from 0 to maxRange to 0
                    ang = [linspace(0,range,N) linspace(range,0,N)];
                else
                    % go from 0 to Range to 0 to -Range to 0
                    ang = [linspace(0,range,N) linspace(range,0,N) linspace(0,-range,N) linspace(-range,0,N)];
                end
                
                for j = 1:length(ang)
                    freevars(i) = deg2rad(ang(j));
                    obj.setJointParameters(freevars);
                    obj.hDisplay.updateFigure();
                    drawnow
                end
            end
            obj.hDisplay.showTriads(0);
        end
        function testCMD(obj)
            freevars = deg2rad([0 0 0 0 0 0 0 0]);
            obj.hDisplay.showTriads(0);
            hCyton = CytonSerial('/dev/tty.PL2303-00001004');
            %    Get a command string from the user and redraw the robot
            %    in the VIE using the commanded values.
            
            theta=freevars;
            cmd_str='  ';
            while length(cmd_str) > 1;
                cmd_str=input('Enter Cyton Command string  -> ','s');
                fprintf(hCyton.hPort,cmd_str);
                theta=CytonSerial.cyton_serial_cmd2theta(cmd_str,theta);
                if ( length(cmd_str) > 1)
                    obj.setJointParameters(theta);
                    obj.hDisplay.updateFigure();
                    drawnow
                end
                isComplete = wait_until_complete(hCyton);
            end
        end
        function solutionLocus = testElbow(obj,endpointPosition)
            
            solutionLocus = CytonControls.solveWristEndpoint(endpointPosition);
            
            setJointParameters(obj,zeros(8,1))
            while ~all(obj.hPlant.isMoveComplete)
                disp('Going to home');
                drawnow
            end
            stop(obj.hPlant)
            for i = 1:2:size(solutionLocus,2)
                q = solutionLocus(1:4,i)
                q(2) = q(2) - pi/2;
                obj.setJointParameters([q' 0 0 0 0]);
                obj.hDisplay.updateFigure;
                
                drawnow
            end
        end
        function testEndpoint(obj)
            % Test that the 'goto' (endpoint position) command is working
            % properly by first setting the arm to home, them providing an
            % endpoint position
            
            % Home
            setJointParameters(obj,zeros(8,1));
            while ~obj.hPlant.allMovesComplete()
                disp('Going to home');
                drawnow
            end
            disp('Home complete');
            pause(1);
            
            % Goto position
            p = [-100 150 280];
            M = makehgtform('translate',p);
            obj.hDisplay.setTarget(M)
            obj.hControls.goto(p);
            
        end
    end
    methods (Static = true)
        function Default
            
        end
        function obj = Demo
            import Presentation.CytonI.*
            
            obj = CytonI;
            obj.testROM;
            
        end
        function hCyton = TestHardware(comPort)
            %Presentation.CytonI.CytonI.TestHardware('COM1')
            %
            % Perform Test by connecting to physical device

            import Presentation.CytonI.*
            
            delete(instrfindall)

            % Launch the cyton virtual integration environment (VIE)
            hCyton = CytonI;
            
            drawnow

            % Link the cyton VIE to the physical device
            hCyton.connectToHardware(comPort)

            % Launch the joint control gui
            hCyton.guiJointSliders

        end
    end
end
