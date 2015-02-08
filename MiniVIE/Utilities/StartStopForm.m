function isRunning = StartStopForm(manualState)
% Use as a simple form to control a while loop
% Example: 
%          
%           while StartStopForm
%               do stuff
%           end
%
% To reset: 
%           StartStopForm([])
% 
% Created 2009-Apr-21 Robert Armiger, Johns Hopkins University Applied
% Physics Lab

    persistent internalState isRead

    if nargin > 0
        internalState = manualState;
        isRead = manualState;
        return
    end
    
    if isempty(internalState) && isempty(isRead)
        % Create the GUI form.
        stopForm = figure('visible', 'on', 'Name', 'Running . . .', ...
            'MenuBar', 'none', 'IntegerHandle', 'off', 'NumberTitle', 'off', ...
            'HandleVisibility','Callback',...
            'Position', [300, 300, 250, 100]);

        drawnow;
        alwaysontop(stopForm);  % Keep control box on top
        
        internalState = true;

        uicontrol(stopForm, 'Style', 'pushbutton', 'String', 'Stop', ...
            'Position', [30, 30, 200, 40], 'Callback', {@stop_cb});
    end

    % Tell program to stop.
        function stop_cb(src, evt) %#ok<INUSD>
            internalState = [];
            % Clean up.
            close(stopForm);
            isRead = true;
        end

    isRunning = internalState;

    % Make sure that this function returns 0 once before restarting
    if isRead
        isRunning = 0;
        isRead = [];
    end

end
