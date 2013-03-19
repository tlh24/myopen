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
            
        end
        function [success, msg] = getdata(obj)
            %[success, msg] = getdata(obj)
            % Call JoyMex function to get latest button and axis values.
            % Returns true on successful read
            % If unsuccessful, error message is passed back

            success = false;
            msg = '';
            
            try
                % Call MEX Function
                [obj.axisVal, obj.buttonVal] = JoyMEX(obj.id);
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
