classdef BreakoutSink < handle %< DataSink
    %BREAKOUT  Pong-like arcade game, a.k.a. Arkanoid/Brickles
    %   Breakout begins with five rows of bricks, each row a different color.
    %   The color order from the bottom up is blue, cyan, green, green and red.
    %   Using a single ball, the player must knock down as many bricks as
    %   possible by using the walls and/or the paddle below to ricochet the
    %   ball against the bricks and eliminate them. Blue bricks earn one point
    %   each, cyan bricks earn two points, green bricks earn three points,
    %   yellow bricks earn four and the top-level red bricks score five points
    %   each. To add to the challenge, the paddle shrinks to one-half its size
    %   after the ball has broken through the red row and hit the upper wall.
    %   (adapted from Wikipedia)
    %
    %   Game Controls:
    %   Paddle is controlled with mouse.
    %   Nine speed levels, changed using num-keys: 1...9.
    %   Sound effects are switched on/off using 'S'.
    %   Game is paused either with mouse press or 'P'.
    %
    %   Example:
    %       breakout    % Start Main Breakout Interface
    
    %   Developed by Per-Anders Ekström, 2003-2007 Facilia AB.
    %   New pointer control by Joseph Kirk (jdkirk630@gmail.com)
    properties
        hPaddle
        bricks
        hBall
        paddlePos
        X
        Y
        State
        Sound
        Speed
        Score
        Lives
        hScore
        hSplash
        hSound
        hSpeed
        hFig
        hAxes
        paddleMax
        halfPaddleLength
        normalizedPaddlePosition
        
        id = mfilename;
    end
    methods
        function obj = BreakoutSink()
            init(obj);
        end
        function init(obj)
            if ~isempty(findobj('Tag','Breakout'))
                error('Breakout is already running')
            end
            
            obj.normalizedPaddlePosition = 0.5;
            
            obj.X = 400; obj.Y = 300;
            scrsz = get(0,'ScreenSize');
            % Initialize figure window
            obj.hFig = figure('Name','Breakout',...
                'Numbertitle','off',...
                'Menubar','none',...
                'Pointer','custom',...
                'PointerShapeCData',zeros(16)*NaN,...
                'HandleVisibility','Callback',...
                'Color','k',...
                'Tag','Breakout',...
                'DoubleBuffer','on',...
                'Colormap',[0 0 0;1 1 1],...
                'WindowButtonDownFcn',@(src,evt)NewGame(obj),...
                'WindowButtonMotionFcn',@(src,evt)update(src,evt,obj),...
                'Position',[(scrsz(3)-obj.X)/2 (scrsz(4)-obj.Y)/2 obj.X obj.Y],...
                'CloseRequestFcn',@(src,evt)close(obj),...
                'KeyPressFcn',@(src,evt)update(src,evt,obj));
            % Create The axes
            obj.hAxes = axes('Units','Normalized',...
                'Position', [0 0 1 1],...
                'Visible','off',...
                'DrawMode','fast',...
                'Parent',obj.hFig);
            axis(obj.hAxes,[0,obj.X,0,obj.Y])
            obj.hScore = text(0,obj.Y-obj.Y/20,' Score: 0',...
                'FontName','FixedWidth',...
                'Color','w',...
                'FontWeight','Bold',...
                'FontUnits','normalized',...
                'Parent',obj.hAxes);
            obj.hSpeed = text(obj.X/3,obj.Y-obj.Y/20,'Speed \color[rgb]{.4 0 0}||||',...
                'Color',[.3 .3 .3],...
                'FontWeight','Bold',...
                'Visible','on',...
                'HorizontalAlignment','left',...
                'FontUnits','normalized',...
                'Parent',obj.hAxes);
            obj.hSound = text(obj.X/7*4,obj.Y-obj.Y/20,'Sound \color[rgb]{.4 0 0}on',...
                'Color',[.3 .3 .3],...
                'FontWeight','Bold',...
                'Visible','on',...
                'HorizontalAlignment','left',...
                'FontUnits','normalized',...
                'Parent',obj.hAxes);
            obj.hBall = text(obj.X/2,obj.Y/2,'\bullet',...
                'EraseMode','normal',...
                'Color','w',...
                'FontUnits','normalized',...
                'FontSize',.065,...
                'Visible','off',...
                'HorizontalAlignment','Center',...
                'VerticalAlignment','Middle',...
                'Parent',obj.hAxes);
            obj.paddlePos = [obj.X/4,0,obj.X/6,obj.Y/20];
            obj.hPaddle = rectangle('Position',obj.paddlePos,...
                'FaceColor','m',...
                'EraseMode','background',...
                'Parent',obj.hAxes);
            obj.bricks = zeros(5,10);
            
            obj.Sound = true;
            try
                % will fail with no windows sound HW
                soundsc(0);
            catch ME
                obj.Sound = false;
                warning(ME.identifier,ME.message);
            end
            
            
            obj.Speed = 35;
            NewBricks(obj);
            obj.hSplash = text(obj.X/2,obj.Y/2,sprintf('BREAKOUT\n(click to start a new game)'),...
                'FontName','FixedWidth',...
                'FontWeight','Bold',...
                'FontUnits','normalized',...
                'HorizontalAlignment','Center',...
                'color','w',...
                'Parent',obj.hAxes);
            
        end
        function NewGame(obj)
            delete(findobj(gcbf,'Tag','Lives'))
            set(obj.hSplash,'Visible','off')
            obj.Lives = zeros(3,1);
            for i=1:3
                obj.Lives(i) = text(obj.X-obj.X/17*i,obj.Y-obj.Y/20,'\heartsuit',...
                    'Color','r',...
                    'FontUnits','normalized',...
                    'FontSize',.065,...
                    'HorizontalAlignment','Center',...
                    'VerticalAlignment','Middle',...
                    'Tag','Lives',...
                    'Parent',obj.hAxes);
            end
            set(gcbf,'WindowButtonDownFcn',@(src,evt)PauseGame(obj));
            set(obj.hBall,'Visible','on');
            
            NewBricks(obj);
            obj.State = 1;
            obj.Score = 0;
            ballX = obj.X/2; ballY = obj.Y/2; ballDX = 5; ballDY = -5;
            Half = 1;
            obj.paddlePos = [obj.X/4,0,obj.X/6,obj.Y/20];
            while(obj.State)
                t0 = clock;
                if obj.State==1
                    if ballX<0
                        ballX = 0;
                        ballDX = -ballDX;
                        if obj.Sound,soundsc(sin(1:100),5000);end
                    elseif ballX>obj.X
                        ballX = obj.X;
                        ballDX = -ballDX;
                        if obj.Sound,soundsc(sin(1:100),5000);end
                    end
                    YPos = ceil(ballY/obj.Y*20);
                    switch YPos
                        case 0 % Ball down the drain
                            if ~isempty(obj.Lives)
                                ballX = obj.X/2;
                                ballY = obj.Y/2;
                                ballDX = 5;
                                ballDY = -5;
                                set(obj.hBall,'Position',[ballX ballY])
                                if obj.Sound,soundsc(sin(1:100),1000);end
                                hpos = get(obj.Lives(end),'Position');
                                while(hpos(1)>=0)
                                    hpos(1) = hpos(1)-5;
                                    set(obj.Lives(end),'Position',hpos)
                                    pause(.01)
                                end
                                delete(obj.Lives(end));obj.Lives(end) = [];
                            else
                                set(obj.hSplash,'String',sprintf('GAME OVER\n(click to start a new game)'),'Visible','on')
                                set(obj.hBall,'Visible','off')
                                obj.State = 0;
                                if obj.Sound,soundsc(sin(1:100),1000);end
                            end
                        case 1 % Ball in height of paddle
                            if ballX<obj.paddlePos(1)+obj.paddlePos(3) && ballX>obj.paddlePos(1)
                                ballDY = -ballDY;
                                ballDX = (ballX-(obj.paddlePos(1)+obj.paddlePos(3)/2))/3;
                                if obj.Sound,soundsc(sin(1:100),5000);end
                            end
                        case 21 % Ball hit ceiling
                            ballDY = -ballDY;
                            if obj.Sound,soundsc(sin(1:100),5000);end
                            if Half % Make paddle half if first time
                                obj.paddlePos(3) = obj.paddlePos(3)/2;
                                Half = 0; % Updated for remainder of while loop
                            end
                        case {18 17 16 15 14} % Ball in height of bricks
                            YPos = 19-YPos;
                            if ismember(YPos,[1 2 3 4 5])
                                XPos = max(1,ceil(ballX/obj.X*10));
                                if obj.bricks(YPos,XPos)
                                    delete(obj.bricks(YPos,XPos))
                                    obj.bricks(YPos,XPos) = 0;
                                    ballDY = -ballDY;
                                    obj.Score = obj.Score+(6-YPos);
                                    if obj.Sound,soundsc(sin(1:100),10000);end
                                    set(obj.hScore,'String',sprintf(' Score: %i',obj.Score))
                                    if isempty(find(obj.bricks,1))
                                        NewBricks(obj);
                                    end
                                end
                            end
                    end
                    % Move ball
                    ballX = ballX + ballDX;
                    ballY = ballY + ballDY;
                    set(obj.hBall,'Position',[ballX ballY])
                    while etime(clock,t0)<1/obj.Speed
                        drawnow
                    end
                else
                    pause(.03);
                end
            end
            set(gcbf,'WindowButtonDownFcn',@(src,evt)NewGame(obj))
        end
        function PauseGame(obj)
            if obj.State==1
                set(obj.hSplash,'String',sprintf('PAUSE\n(click to start)'),...
                    'Visible','on')
                set(obj.hBall,'Visible','off')
                obj.State = 2;
            elseif obj.State==2
                set(obj.hSplash,'Visible','off')
                set(obj.hBall,'Visible','on')
                obj.State = 1;
            end
        end
        function NewBricks(obj)
            delete(findobj(gcbf,'Tag','Bricks'))
            colors = 'rygcb';
            for i=1:5
                for j=0:9
                    obj.bricks(i,j+1) = rectangle(...
                        'Position',[j*obj.X/10,obj.Y-obj.Y/20*(2+i),obj.X/10,obj.Y/20],...
                        'Tag','Bricks',...
                        'FaceColor',colors(i),...
                        'Parent',obj.hAxes);
                end
            end
        end
        function close(obj)
            obj.State = 0;
            closereq;
        end
        function setVelocity(obj,vel)
            p = obj.normalizedPaddlePosition;
            setNormalizedPosition(obj,p + vel);
        end
        function setNormalizedPosition(obj,normPos)
            %obj.normalizedPaddlePosition = (1-normPos) ./ 2;
            obj.normalizedPaddlePosition = normPos;
                        
            if isempty(obj.paddleMax)
                pos = get(obj.hFig,'position');
                obj.paddleMax = pos(3); %% width of figure window
            end
            obj.halfPaddleLength = obj.paddlePos(3)/2;
                    
            normPos = max( min(normPos,1) ,0);
             
            obj.normalizedPaddlePosition = normPos;
            obj.paddlePos(1) = (normPos * obj.paddleMax) - obj.halfPaddleLength;
            set(obj.hPaddle,'Position',obj.paddlePos);
        end
        function putdata(obj,ang)
            
            try
                setNormalizedPosition(obj,ang(action_bus_enum.Wrist_FE));
            catch ME
                fprintf(2,[ME.message '\n']);
            end
        end
    end
end

function update(src,evt,obj) %#ok<INUSL>

if isempty(obj.paddleMax)
    pos = get(obj.hFig,'position');
    obj.paddleMax = pos(3); %% width of figure window
end
obj.halfPaddleLength = obj.paddlePos(3)/2;

arrowGain = 0.02;

if isempty(evt) % Pointer Control
    %- Joseph Kirk (jdkirk630@gmail.com) ------------------------------
    ptr = get(0,'pointerlocation');
    pos = get(obj.hFig,'position');
    set(0,'pointerlocation', [ptr(1) pos(2)+pos(4)/2]);
    %------------------------------------------------------------------
    cp = get(gca,'currentpoint');
    obj.paddlePos(1) = cp(1)-obj.paddlePos(3)/2;
    set(obj.hPaddle,'Position',obj.paddlePos);
    
    obj.normalizedPaddlePosition = (obj.paddlePos(1) + obj.halfPaddleLength) / obj.paddleMax;
    return
end

% Previously we were looking for evt.Key.  In R2014b this event is now
% designated by EventName

if ~strcmp(evt.EventName,'KeyPress')
    return
end


switch evt.Key
    case 'leftarrow'
        p = obj.normalizedPaddlePosition;
        setNormalizedPosition(obj,p - arrowGain);
    case 'rightarrow'
        p = obj.normalizedPaddlePosition;
        setNormalizedPosition(obj,p + arrowGain);
    case {'P' 'p'} % pause
        PauseGame(obj)
    case {'S' 's'} % sound
        obj.Sound = ~obj.Sound;
        if obj.Sound
            set(obj.hSound,'String','Sound \color[rgb]{.4 0 0}on')
        else
            set(obj.hSound,'String','Sound \color[rgb]{.4 0 0}off')
        end
    case {'1' '2' '3' '4' '5' '6' '7' '8' '9'} % Speed
        speedVals = linspace(20,60,9); % Hz
        value = str2double(evt.Character);
        
        obj.Speed = speedVals(value);
        set(obj.hSpeed,'String',['Speed \color[rgb]{.4 0 0}' repmat('|',1,value)])
end
end
