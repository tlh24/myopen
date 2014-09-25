classdef AirGuitarHeroBase < hgsetget
    % Base Class (Abstract) for Air Guitar Hero
    % Contains info for seetting up display
    % Classes to control the game via xpc or daq should
    % inherit from here
    %
    % 01-Sept-2010 Armiger: Created
    properties
        
        VideoSize = [480 640 3]; % pixels, RGB layers
        
        % Device Handles
        hTimer = [];
        hOutput = [];
        hAudioVideoIn = [];
        hNoteDetector = [];
        
        % Graphics Handles
        hFigure = [];
        hAxes = [];
        hFrame = [];
        
        DisplayState = 0;
        
        FrameDelay = 3;  % Integer number of frames between when notes graphically detected until note is played
        
        isValidImageAcqToolbox = 0;
    end
    properties (Access = private)
        LastKey = '';
    end
    properties (Constant = true)
        % These are the different modes of play
        Off             = 1;
        DisplayOnly     = 2;
        AutoPlay        = 3;
        Training        = 4;
        Playing         = 5;
    end
    methods (Abstract)
        initialize(obj);
        %sendButtonDownCommand(obj,id);
        %sendButtonUpCommand(obj,id);
    end
    methods
        function setupDisplay(obj)
            obj.hFigure = figure(99);
            clf(obj.hFigure);
            set(obj.hFigure,'Name','Air Guitar Hero');
            set(obj.hFigure,'NumberTitle','off');
            set(obj.hFigure,'Color',[ 0 0 0 ]);
            set(obj.hFigure,'ToolBar','none');
            %             set(obj.hFigure,'MenuBar','none');
            set(obj.hFigure,'CloseRequestFcn',@(src,evnt)closeRequestFcn(src,obj))
            set(obj.hFigure,'HandleVisibility','callback');
            
            obj.hAxes = axes('Parent',obj.hFigure);
            cla(obj.hAxes);
            view(obj.hAxes,0,0);
            axis(obj.hAxes,'equal')
            axis(obj.hAxes,'off')
            
            
            obj.hFrame = image(zeros(obj.VideoSize,'uint8'),'Parent',obj.hAxes);
            set(obj.hFigure,'Position',[320 220 800 600]);
            hold(obj.hAxes,'on');
            
        end
        function enableKeyboardCallbacks(obj)
            set(obj.hFigure,'WindowKeyPressFcn',@(src,evt)cb_key_press(src,evt,obj));
            set(obj.hFigure,'WindowKeyReleaseFcn',@(src,evt)cb_key_release(src,evt,obj));
        end
        function disableKeyboardCallbacks(obj)
            set(obj.hFigure,'WindowKeyPressFcn','');
            set(obj.hFigure,'WindowKeyReleaseFcn','');
        end
        
        function SetRunState(obj,state)
            if state
                % Start
                if ~strcmpi(obj.hTimer.Running,'on')
                    start(obj.hTimer);
                end
            else
                % Stop
                if ~strcmpi(obj.hTimer.Running,'off')
                    stop(obj.hTimer);
                end
                
                % TODO: button control shouldn't be here if displaying only
                % Ensure Buttons are up
                sendButtonCommand(obj,~(zeros(1,8)));
                
                % Can't make calls to Signal Source -- Doesn't exist in
                % Autoplay mode
                
                %                 if ~strcmpi(obj.SignalSource.AnalogInput.Running,'off')
                %                     stop(obj.SignalSource.AnalogInput);
                %                 end
            end
        end
        function refresh(obj)
            
            try
                frame = getFrame(obj);
                if ~isempty(frame)
                    annotatedFrame = obj.hNoteDetector.process_frame(frame);
                    drawFrame(obj,annotatedFrame);
                end
                
                switch obj.DisplayState
                    case obj.Off
                        SetRunState(obj,0);
                    case obj.DisplayOnly
                        % ensure output is off
                        sendButtonCommand(obj,~(zeros(1,8)));
                    case obj.AutoPlay
                        % AutoPlay
                        % Note detection -> actuation delay here
                        noteMask = obj.hNoteDetector.noteHistory(obj.FrameDelay,:);
                        strumOn = any(noteMask);
                        sendButtonCommand(obj,~([noteMask 0 0 strumOn]));
                end
                drawnow
            catch ME
                stop(obj.hTimer);
                rethrow(ME);
            end
        end
        function frame = getFrame(obj)
            %             if obj.readFramesFromDisk
            %                 frame = obj.read_frame();
            %                 pause(0.03);  % try to match frame rate
            %             else
            %                 frame = vcapg2;
            %             end
            try
                frame = vcapg2;
            catch
                frame = [];
            end
                return
            if obj.isValidImageAcqToolbox
                trigger(obj.hAudioVideoIn);
                frame = getdata(obj.hAudioVideoIn);
            else
                frame = vcapg2;
            end
        end
        function setFrameDelay(obj,numFrameDelay)
            % Ensure numFrameDelay is a positive integer from 1 to 10;
            numFrameDelay = max(min(round(numFrameDelay),10),1);
            obj.FrameDelay = numFrameDelay;
            fprintf('Frame Delay is: %d\n',numFrameDelay);
        end
        function drawFrame(obj,frame)
            set(obj.hFrame,'CData',frame);
        end
        
        
        
        % Common output functions
        function sendButtonDownCommand(obj,id)
            if isa(obj.hOutput,'serial')
                fprintf('[%s] sendButtonDownCommand not implemented for serial output\n',mfilename);
                return
            else
            v = getvalue(obj.hOutput);
            v(id) = 0;
            putvalue(obj.hOutput,v);
            end
        end
        function sendButtonCommand(obj,cmd)
            
            % Switch out the physical command send depending on
            % if the guitar is direct digital or arduino based
            %
            % Armiger 5/25/2013
            if isa(obj.hOutput,'serial')
                % Serial command is a single byte with bit's
                % set for
                val = uint8(binvec2dec(~cmd));
                try
                    fwrite(obj.hOutput,val);
                catch ME
                    warning(ME.message);
                end
            else
                % send digital command to daq hw
                %sendButtonCommand(obj,~([noteMask 0 0 strumOn]));
                v = getvalue(obj.hOutput);
                if ~isequal(cmd,v)
                    putvalue(obj.hOutput,cmd);
                end
            end

            
        end
        function sendButtonUpCommand(obj,id)
            if isa(obj.hOutput,'serial')
                fprintf('[%s] sendButtonUpCommand not implemented for serial output\n',mfilename);
                return
            else
                v = getvalue(obj.hOutput);
                v(id) = 1;
                putvalue(obj.hOutput,v);
            end
        end
        
        
    end
end

function cb_key_press(src,evnt,obj) %#ok<*INUSL>

if strcmpi(obj.LastKey,evnt.Key)
    % prevent multiple callbacks on button held down
    drawnow
    return
else
    obj.LastKey = evnt.Key;
end

id = keyMap(evnt.Key);
if ~isempty(id)
    sendButtonDownCommand(obj,id);
end

end

function cb_key_release(src,evnt,obj)

obj.LastKey = '';

id = keyMap(evnt.Key);
if ~isempty(id)
    sendButtonUpCommand(obj,id);
end

end
%Private
function closeRequestFcn(src,obj)

stop(obj.hTimer);
delete(obj.hTimer)
delete(src);

end

function id = keyMap(strKey)

switch strKey
    case 'space'
        id = double(Presentation.AirGuitarHero.HwLinesEnum.Strum);
    case 'z'
        id = double(Presentation.AirGuitarHero.HwLinesEnum.GreenButton);
    case 'x'
        id = double(Presentation.AirGuitarHero.HwLinesEnum.RedButton);
    case 'c'
        id = double(Presentation.AirGuitarHero.HwLinesEnum.YellowButton);
    case 'v'
        id = double(Presentation.AirGuitarHero.HwLinesEnum.BlueButton);
    case 'b'
        id = double(Presentation.AirGuitarHero.HwLinesEnum.OrangeButton);
    otherwise
        id = [];
end

end
