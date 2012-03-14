classdef Pollock < handle
    % Class for displaying jackson pollock app and allowing for external
    % control
    % 
    % 01-Sept-2010 Armiger: Created
    properties
        hRoot
    end
    methods
        function obj = Pollock
        end
        function initialize(obj)
            % Jackson Pollock Robot
            % Created: 12JUL2010 - Armiger
            % Simple script to test mouse control for Jackson Pollock app:
            %   http://www.jacksonpollock.org/
            %   https://wbx-files.s3.amazonaws.com/jacksonpollock_by_miltos_manetas.swf
            
            % local flash file (must be in same directory)
            %cd(fileparts(which(mfilename)))
            
            
            [~, h1] = web(which('jacksonpollock_by_miltos_manetas.swf'));
            obj.hRoot = get_root_obj(h1);
        end
        function move_random(obj)
%%            
            windowOrigin = get(obj.hRoot,'RestoredLocation');
            
            hPane = get(obj.hRoot,'RootPane');
            menuBarHeight = 46;
            paneOffset = [get(hPane,'X') get(hPane,'Y')+menuBarHeight];
            
            upperLeft = windowOrigin+paneOffset;
            lowerRight = windowOrigin + [get(hPane,'Width') get(hPane,'Height')];
            
            paneSize = lowerRight - upperLeft;
            
            obj.update_cursor(lowerRight(1),lowerRight(2))
            

            % set initial position and velocity for cursor
            setPos = upperLeft + (paneSize .* rand(1,2));
            
            obj.update_cursor(setPos(1),setPos(2))
        end
        function minimize_window(obj)
            import java.awt.*
            
            if ~isempty(obj.hRoot)
                obj.hRoot.setState(Frame.ICONIFIED);  % minimize figure
            end
        end
    end
    methods (Static = true)
        function update_cursor(x,y)
            % Import Java classes for mouse control and button click events
            import java.awt.Robot;
            mouse = Robot;
            
            mouse.mouseMove(x, y);
        end
        function click()
            import java.awt.Robot;
            mouse = Robot;
            
            import java.awt.event.*;
            mouse.mousePress(InputEvent.BUTTON1_MASK);
            mouse.mouseRelease(InputEvent.BUTTON1_MASK);
        end
    end
end

function rootObj = get_root_obj(h)
% Intended to recurvisely search through Java graphics objects until top
% level is found
rootObj = [];
recurse(h);

    function recurse(obj)
        % class(obj)
        parent = getParent(obj);
        
        if isempty(parent)
            rootObj = obj;
        else
            % keep looking
            recurse(parent);
        end
    end
end
