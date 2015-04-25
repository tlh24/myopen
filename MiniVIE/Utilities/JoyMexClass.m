classdef JoyMexClass < handle
    % Class Wrapper for JoyMex function
    % Emulates JavaJoystick class, but without haptic effect, however this has
    % been tested on both win32 and win64 systems
    % Created:  6/25/2011 Armiger
    
    properties
        
        id
        doSwapAxes = true;
        
        name
        nButtons
        nAxes
        nPov
        buttonVal
        axisVal
        povVal
        
        % Logical array of buttons that went from up to down on last update 
        buttonsPressed
        
        % Logical array of buttons that went from down to up on last update 
        buttonsReleased

        % Logical array of buttons that went from down to down (held)
        buttonsHeld

        % double array of number of updates each button has been down
        buttonsHeldCount

        % Logical array of axes outside of deadband
        axisActive

        % Logical array of axes that went from up to down on last update 
        axisPressed
        
        % Logical array of axes that went from down to up on last update 
        axisReleased

        % Logical array of axes that went from down to down (held)
        axisHeld

        % double array of number of updates each axis has been down
        axisHeldCount
        
        % double array of number the normalized dead for each axis
        axisDeadband

        % Internal state of axis and buttons at last update
        axisValLast
        buttonValLast
        
    end
    methods
        function obj = JoyMexClass(joyId)
            % JoyMexClass(joyId)
            % joyId should be a number 0 to 3 for which joystick to select
            %
            % Example Usage:
            %    myJoy = JoyMexClass(0)
            %    myJoy.preview
            %
            %    myJoy.getdata()
            %    myJoy.buttonVal(4)
            %    myJoy.axisVal(2)
            
            if nargin < 1
                obj.id = 0;
            else
                obj.id = joyId;
            end
            
            try
                % Calling init twice will result in error
                JoyMEX('init',obj.id); 
            catch ME
                if strcmp(ME.identifier,'JoyMEX:NotFound')
                    error('Error Initializing Joystick Id = %d\n Error was: "%s"',obj.id,ME.message);
                else
                    disp(ME.message);
                end
            end
            
            [a, b] = JoyMEX(obj.id);
            
            obj.name = 'Unknown Joystick';
            obj.nAxes = length(a);
            obj.nButtons = length(b);
            obj.nPov = 0;

            obj.axisDeadband = 0.02*ones(1,obj.nAxes);
            
            % initialize joystick activity counters
            obj.buttonsHeldCount = zeros(1,obj.nButtons);
            obj.axisHeldCount = zeros(1,obj.nAxes);
            
        end
        function update(obj)
            % Call MEX Function
            
            % get current state
            [obj.axisVal, obj.buttonVal] = JoyMEX(obj.id);

            % Handle the init case with unknown state
            if isempty(obj.axisValLast)
                obj.axisValLast = obj.axisVal;
            end
            if isempty(obj.buttonValLast)
                obj.buttonValLast = obj.buttonVal;
            end
            
            % Compare the two states to determine what changed
            buttonDiff = obj.buttonVal - obj.buttonValLast;
            obj.buttonsPressed = buttonDiff == 1;
            obj.buttonsReleased = buttonDiff == -1;

            % this could be | to return true the first press rather than
            % update#2 which is the first hold.  For that, the user can
            % just read obj.buttonVal
            obj.buttonsHeld = obj.buttonVal & obj.buttonValLast; 
            
            obj.buttonsHeldCount(obj.buttonsReleased) = 0;
            obj.buttonsHeldCount(obj.buttonsPressed) = 1;
            obj.buttonsHeldCount(obj.buttonsHeld) = obj.buttonsHeldCount(obj.buttonsHeld) + 1;

            % Compute difference of axis value
            % Axes outside deadband
            obj.axisActive = abs(obj.axisVal) > obj.axisDeadband;
            % Axes outside deadband @ last update
            axisActiveLast = abs(obj.axisValLast) > obj.axisDeadband;
            % Axis activation changes
            axisDiff = obj.axisActive - axisActiveLast;

            obj.axisPressed = axisDiff == 1;
            obj.axisReleased = axisDiff == -1;
            obj.axisHeld = obj.axisActive & axisActiveLast;
            
            obj.axisHeldCount(obj.axisReleased) = 0;
            obj.axisHeldCount(obj.axisPressed) = 1;
            obj.axisHeldCount(obj.axisHeld) = obj.axisHeldCount(obj.axisHeld) + 1;
            
            % Store state for next update
            obj.axisValLast = obj.axisVal;
            obj.buttonValLast = obj.buttonVal;

            %obj.axisHeldCount
            
        end
        
        function [success, msg] = getdata(obj)
            %[success, msg] = getdata(obj)
            % Call JoyMex function to get latest button and axis values.
            % Returns true on successful read
            % If unsuccessful, error message is passed back

            success = false;
            msg = '';
            
            try
                update(obj);
            catch ME
                msg = ME.message;
                return
            end
            
            obj.povVal = -1;
            
            % Axis swapping
            if obj.doSwapAxes
                swapaxes(obj);
            end
            
            success = true;
            
        end
        function swapaxes(obj)
            % Swap axes for compatability with JavaJoystick Class
            obj.axisVal([1 2 3 4 5 6]) = obj.axisVal([2 1 6 3 4 5]);
            obj.axisValLast([1 2 3 4 5 6]) = obj.axisValLast([2 1 6 3 4 5]);
        end
        function preview(obj)
            
            t = tic;
            while toc(t) < 15
                
                getdata(obj);
                
                for i = 1:length(obj.axisVal)
                    fprintf('| %d ',i)
                    fprintf('%6.2f ',obj.axisVal(i));
                end
                
                for i = 1:obj.nPov
                    fprintf('| POV %d: ',i);
                    fprintf('%6.2f ',obj.povVal(i));
                end
                
                for i = 1:length(obj.buttonVal)
                    if obj.buttonVal(i)
                        fprintf('| %s ',num2str(i));
                    end
                end
                fprintf('\n')
                drawnow
            end
            disp('Done')
        end
    end
    methods (Static=true)
        
        function close
            clear('JoyMEX')
        end
    end
    
end
