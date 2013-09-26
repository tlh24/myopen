classdef AGH < Presentation.AirGuitarHero.AirGuitarHeroBase
    % Extends Air Guitar Hero Class to add play (digital output)
    % capabilities
    % This allows playing the game using the keyboard and using the
    % autoplay configuration mode
    %
    % 01-Sept-2010 Armiger: Created
    methods
        function obj = AGH()
            obj.hTimer = UiTools.create_timer('AGH_Display',@(src,evt)refresh(obj));
            obj.hTimer.Period = 0.03;
            
            %initialize(obj);
        end
        function initialize(obj,outputDevice)
            % initialize object with a string input describing output
            % device.
            % Examples:
            %   initialize(obj,'COM4')
            %   initialize(obj,'mcc')
            
            if nargin < 2
                error('Usage: initialize(obj,''COM4''); ');
            end
            
            % Disabled auto check for image acquisition toolbox.  User can
            % still re-enable manually after creating object, but before
            % initializing
            %obj.isValidImageAcqToolbox = license('checkout','Image_Acquisition_Toolbox');
            
            if obj.isValidImageAcqToolbox
                dev = 'winvideo';
                id = 1;
                mode = 'YUY2_640x480';
                vid = videoinput(dev,id,mode);
                %src = getselectedsource(vid);
                vid.ReturnedColorspace = 'rgb';
                
                % TriggerRepeat is zero based and is always one
                % less than the number of triggers.
                vid.TriggerRepeat = Inf;
                vid.FramesPerTrigger = 1;
                triggerconfig(vid, 'manual');
                fprintf('Starting Image_Acquisition_Toolbox Video Device=%s Id=%d Mode=%s...',dev,id,mode);
                start(vid);
                fprintf('OK\n');
                obj.hAudioVideoIn = vid;
            else
                % setup video stream using vcapg2
                try
                    clear('vcapg2');
                    avHandle = vcapg2([],0);
                    if isequal(size(avHandle),[1 1])
                        obj.hAudioVideoIn = avHandle;
                    end
                catch ME
                    warning(ME.message);
                    warning('AGH_Trainer:NoCaptureDevice','No Capture device found using vcapg2!')
                    obj.hAudioVideoIn = [];
                end
            end
            setupDisplay(obj);
            obj.hNoteDetector = Presentation.AirGuitarHero.NoteDetector(obj);
            
            pxButtonWidth = 80;
            
            iColumn = 0;
            defaultRunState = 0;
            hRun = uicontrol(obj.hFigure);
            set(hRun,'Units','pixels');
            set(hRun,'Position',[20+iColumn*pxButtonWidth 20 pxButtonWidth 20]);
            set(hRun,'String','Run');
            set(hRun,'Style','Togglebutton');
            set(hRun,'Value',defaultRunState);
            set(hRun,'Callback', @(src,evnt) obj.SetRunState(get(src,'Value')));

            iColumn = 1;
            hAutoPlay = uicontrol(obj.hFigure);
            set(hAutoPlay,'Units','pixels');
            set(hAutoPlay,'Position',[20+iColumn*pxButtonWidth 20 pxButtonWidth 20]);
            set(hAutoPlay,'String','Autoplay');
            set(hAutoPlay,'Style','Togglebutton');
            set(hAutoPlay,'Callback', @(src,evnt) set(obj,'DisplayState',(get(src,'Value')*obj.AutoPlay + ~get(src,'Value')*obj.DisplayOnly)));

            
            iColumn = 2;
            defaultVisibility = 1;
            obj.hNoteDetector.SetVisibility(defaultVisibility);
            hAutoPlay = uicontrol(obj.hFigure);
            set(hAutoPlay,'Units','pixels');
            set(hAutoPlay,'Position',[20+iColumn*pxButtonWidth 20 pxButtonWidth 20]);
            set(hAutoPlay,'String','ShowLines');
            set(hAutoPlay,'Style','Togglebutton');
            set(hAutoPlay,'Value',defaultVisibility);
            set(hAutoPlay,'Callback', @(src,evnt) obj.hNoteDetector.SetVisibility(get(src,'Value')));

            iColumn = 7;
            hDelayIncrease = uicontrol(obj.hFigure);
            set(hDelayIncrease,'Units','pixels');
            set(hDelayIncrease,'Position',[20+iColumn*pxButtonWidth 20 pxButtonWidth 20]);
            set(hDelayIncrease,'String','+ Delay');
            set(hDelayIncrease,'Style','Pushbutton');
            set(hDelayIncrease,'Callback', @(src,evnt) obj.setFrameDelay(obj.FrameDelay+1) );

            iColumn = 8;
            hDelayDecrease = uicontrol(obj.hFigure);
            set(hDelayDecrease,'Units','pixels');
            set(hDelayDecrease,'Position',[20+iColumn*pxButtonWidth 20 pxButtonWidth 20]);
            set(hDelayDecrease,'String','- Delay');
            set(hDelayDecrease,'Style','Pushbutton');
            set(hDelayDecrease,'Callback', @(src,evnt) obj.setFrameDelay(obj.FrameDelay-1) );
            
            % TODO: Abstract hardware outputs
            try
                %obj.hOutput = digitalio('mcc',0);
                %addline(obj.hOutput,0:7,'out');

                useSerial = ~isempty(strfind(upper(outputDevice),'COM'));
                if useSerial
                    obj.hOutput = serial(outputDevice);
                    fopen(obj.hOutput);
                    fwrite(obj.hOutput,uint8(0));
                else
                    % TODO: change output device id
                    %obj.hOutput = digitalio('mcc',0);
                    obj.hOutput = digitalio(outputDevice,0);
                    addline(obj.hOutput,0:7,'out');
                    vals = ones(8,1);
                    putvalue(obj.hOutput,vals);
                end
            
            
            catch ME
                errordlg({'Error setting up output device.  Error was:' ME.message});
                return
                rethrow(ME);
            end
%             vals = ones(8,1);
%             putvalue(obj.hOutput,vals);
            

            % Enable key presses for 'zxcvb' and space for strum
            enableKeyboardCallbacks(obj);
        end
%         function sendButtonDownCommand(obj,id)
%             v = getvalue(obj.hOutput);
%             v(id) = 0;
%             putvalue(obj.hOutput,v);
%         end
%         function sendButtonCommand(obj,cmd)
%             v = getvalue(obj.hOutput);
%             if ~isequal(cmd,v)
%                 putvalue(obj.hOutput,cmd);
%             end
%         end
%         function sendButtonUpCommand(obj,id)
%             v = getvalue(obj.hOutput);
%             v(id) = 1;
%             putvalue(obj.hOutput,v);
%         end
    end
end
