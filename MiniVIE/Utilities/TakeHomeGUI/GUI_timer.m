function GUI_timer(Provided_Cues,movement_list, hFig)

% hfig = figure;

% % Stopwatch Time Display
% DISPLAY = uicontrol(hfig,'Style','text',...
%     'Position',[10 45 330 55],...
%     'BackgroundColor',[0.8 0.8 0.8],...
%     'FontSize',35);
%
% %set(hfig,'HandleVisibility','off');

% Figure out how long the simulation will be.
total_time = length(Provided_Cues)/1000;
% Find out how long the cues are...
different_cue = Provided_Cues(2,1);
counter = 1;
while different_cue == Provided_Cues(2,counter)
    counter = counter+1;
end
cue_length = (counter-1) / 1000;

%Determine the image sequence that will be shown corresponding to the
%desired cues.
image_sequence = zeros(total_time,1);
transition_image_sequence = zeros(total_time,1);
for i = 1:1:total_time-1
    image_sequence(i) = movement_list(Provided_Cues(2,(i-1)*1000+1),2);
    if Provided_Cues(2,(i-1)*1000+999)~=Provided_Cues(2,(i*1000)+1)
        transition_image_sequence(i) = 1;
    end
end
transition_image_sequence(total_time) = 1;
image_sequence(end) = image_sequence(end-1);

%get a handle to the GUI's 'textStatus' window
session_timer = findobj('Tag','timerStatus');
%get a handle to the GUI's cue axes.
cue_axes = findobj('Tag','CueAxes');

cueFig = hFig;

T1 = clock;
STOPPED = 1;
TIME = 0;

htimer = timer('TimerFcn',@timerFcn,'Period',1,'ExecutionMode','FixedRate','TasksToExecute',total_time+1);

str = formatTimeFcn(TIME);
%update the GUI
set(session_timer,'String',str);

STOPPED = 0;
start(htimer);

    function str = formatTimeFcn(float_time)

        % Format the Time String
        float_time = floor(float_time);

        if float_time == total_time
            %             set(0,'CurrentFigure',EMG_GUI_handle);
            %             cue_axes = findobj(gcf,'Tag','CueAxes');
            %             set(gcf,'CurrentAxes',cue_axes);
            %             if transition_image_sequence(cast(float_time,'int16')+1) == 1
            %                 imshow(strcat('red_hand_',num2str(image_sequence(cast(float_time,'int16'))),'.jpg'));
            %             else
            %                 imshow(strcat('hand_',num2str(image_sequence(cast(float_time,'int16'))),'.jpg'));
            %             end
            %            set(0,'CurrentFigure',Cue_Presentation_GUI_handle);
            %             cue_axes = findobj(gcf,'Tag','CueAxes');
            %             set(gcf,'CurrentAxes',cue_axes);
            if transition_image_sequence(cast(float_time,'int16')) == 1
                %                imshow(strcat('red_hand_',num2str(image_sequence(cast(float_time,'int16'))),'.jpg'));
            else
                %                imshow(strcat('hand_',num2str(image_sequence(cast(float_time,'int16'))),'.jpg'));
            end
        else
            %figHandles = findall(0,'Type','figure');
            %             set(0,'CurrentFigure',EMG_GUI_handle);
            %             cue_axes = findobj(gcf,'Tag','CueAxes');
            %             set(gcf,'CurrentAxes',cue_axes);
            %             if transition_image_sequence(cast(float_time,'int16')+1) == 1
            %                 imshow(strcat('red_hand_',num2str(image_sequence(cast(float_time,'int16')+1)),'.jpg'));
            %             else
            %                 imshow(strcat('hand_',num2str(image_sequence(cast(float_time,'int16')+1)),'.jpg'));
            %             end
            %             set(0,'CurrentFigure',Cue_Presentation_GUI_handle);
            %             cue_axes = findobj(gcf,'Tag','CueAxes');
            %             set(gcf,'CurrentAxes',cue_axes);
            
            pathImageData = fullfile(fileparts(which('GUI_timer')),'GUI_Hand_Images');
            figHandles = guidata(cueFig);
            hAxes = figHandles.CueAxes;
            if transition_image_sequence(cast(float_time,'int16')+1) == 1
                imshow(fullfile(pathImageData,strcat('red_hand_',num2str(image_sequence(cast(float_time,'int16')+1)),'.jpg')),'Parent',hAxes);
            else
                imshow(fullfile(pathImageData,strcat('hand_',num2str(image_sequence(cast(float_time,'int16')+1)),'.jpg')),'Parent',hAxes);
            end
        end
        
        %         if float_time >= 1
        %             if transition_image_sequence(cast(float_time,'int16')) == 1
        %                 green_panel = findobj('Tag','Movement_Complete_Panel');
        %                 set(green_panel,'BackgroundColor', [.933 .933 .933]);
        %             end
        %         end
        mins = floor(float_time/60);
        secs = float_time - 60*(mins);
        time_left = total_time - (mins*60+secs);
        
        mins = floor(time_left/60);
        secs = mod(time_left,60);
        m = sprintf('%1.0f:',mins);
        s = sprintf('%1.0f',secs);
        
        if mins < 10
            m = sprintf('0%1.0f:',mins);
        end
        if secs < 9.9995
            s = sprintf('0%1.0f',secs);
        end
        str = [m s];
        
        if mins == 0 && secs == 0
            STOPPED = 1;
%             try
%                 stop(htimer)
%                 close Cue_Presentation_GUI;
%                 %disp('Timer Stopped by Reaching 0!');
%             catch errmsg
% %                rethrow(errmsg);
%             end
        end
    end

    function timerFcn(varargin)
        if ~STOPPED
            timerStatus = findobj('Tag','pushbutton9');
            STOPPED = get(timerStatus,'UserData');
            %disp(STOPPED);
            time_elapsed = etime(clock,T1);
            str = formatTimeFcn(TIME + time_elapsed);
            %update the GUI
            set(session_timer,'String',str);
            %disp(str);
            if STOPPED == 1
                try
                    stop(htimer)
                    %clear htimer;
                    close Cue_Presentation_GUI;
                catch errmsg
%                    rethrow(errmsg);
                end
            end   
        end
    end
end