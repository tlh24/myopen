classdef HandStateLegend < handle
    properties
        Verbose = 1;
        EnableStateChangeBeep = 0;
        %StateChangeSound = 'C:\WINDOWS\Media\Windows XP Balloon.wav';
        StateChangeSound = 'C:\WINDOWS\Media\Windows Navigation Start.wav';
        hAudioPlayer = []
        isLeftHanded = 1;
        HandCmd = [0 0];
        
    end
    properties (SetAccess = private)
        hLegendFig = [];
        hLegendAx = [];
        hStateImages = [];
        hStateListener = [];
        hArrowPatches = [];
    end
    methods
        function obj = HandStateLegend(hHandStateMachine,isLeft)
            if nargin >= 2
                obj.isLeftHanded = isLeft;
            end
            if nargin < 1
                hHandStateMachine = [];
            end
            obj.hLegendFig = figure(11);
            
            clf(obj.hLegendFig);
            set(obj.hLegendFig,'Name','Hand State');
            set(obj.hLegendFig,'NumberTitle','off');
            
            set(obj.hLegendFig,'HandleVisibility','Callback');
            set(obj.hLegendFig,'CloseRequestFcn',@(src,evnt)closeRequestFcn(src,obj))
            
            obj.hLegendAx = zeros(9,1);
            for i = 1:9
                obj.hLegendAx(i) = subplot(3, 3, i,'Parent',obj.hLegendFig);
                set(obj.hLegendAx(i),'xtick',[],'ytick',[])
                axis(obj.hLegendAx(i),'off');
            end
            
            drawConnectionLines(obj,strfind(hHandStateMachine.Name,'HandStateHook'));
            
            stateNames = {
                'Platform'
                'Point'
                'Hook'
                'Key'
                'Opposition'
                'CylinderTip'
                };
            inactiveImageNames = {
                'Platform.tif'
                'Point.tif'
                'Hook.tif'
                'Key.tif'
                'Opposition.tif'
                'CylinderTip.tif'
                };
            activeImageNames = {
                'Platform_Active.tif'
                'Point_Active.tif'
                'Hook_Active.tif'
                'Key_Active.tif'
                'Opposition_Active.tif'
                'CylinderTip_Active.tif'
                };
            if strfind(hHandStateMachine.Name,'HandStateHook')
                if obj.isLeftHanded
                    idSubplot = [7 1 4 5 2 3];
                    idArrows = 9;
                else
                    idSubplot = [9 6 3 2 5 4];
                    idArrows = 7;
                end
            elseif strfind(hHandStateMachine.Name,'HandStatePointer')
                if obj.isLeftHanded
                    idSubplot = [7 4 1 2 5 6];
                    idArrows = 9;
                else
                    idSubplot = [9 6 3 2 5 4];
                    idArrows = 7;
                end
            end
            
            % Draw Images
            for i = 1:length(idSubplot)
                hAx = obj.hLegendAx(idSubplot(i));
                show_image(obj.hLegendAx(idSubplot(i)),inactiveImageNames{i},obj.isLeftHanded);
                obj.hStateImages(i) = show_image(hAx,activeImageNames{i},obj.isLeftHanded);
                show_text(obj.hLegendAx(idSubplot(i)),stateNames{i});
            end
            
            %Draw Arrows + Border
            hold(obj.hLegendAx(idArrows),'on');
            hAx = obj.hLegendAx(idArrows);
            obj.hArrowPatches = drawArrowGroup(hAx);
            daspect(obj.hLegendAx(idArrows),[1 1 1]);
            a = 1.7;
            plot(hAx,[-a a a -a -a],[a a -a -a a],'k-','LineWidth',2);
            
            set(obj.hStateImages,'Visible','off');
            
            % ensure correct display on startup
            if ~isempty(hHandStateMachine)
                updateStateDiagram(hHandStateMachine,obj);
                obj.hStateListener = addlistener(hHandStateMachine,'StateChange',@(src,evnt)updateStateDiagram(src,obj));
            end
            
        end
        function setHandCmd(obj,value)
            
            set(obj.hArrowPatches,'FaceColor',[1 1 1]);
            map = [1 1 1; flipud(hot(256))];
            if value(2) > 0
                idArrow = 1;
            else
                idArrow = 3;
            end
            absValue = max(min(abs(value(2)),1),0);
            idx = round(absValue * 256)+1;
            set(obj.hArrowPatches(idArrow),'FaceColor',map(idx,:))
            
            if obj.isLeftHanded
                if value(1) > 0
                    idArrow = 2;
                else
                    idArrow = 4;
                end
            else
                if value(1) > 0
                    idArrow = 4;
                else
                    idArrow = 2;
                end
            end
            absValue = max(min(abs(value(1)),1),0);
            idx = round(absValue * 256)+1;
            set(obj.hArrowPatches(idArrow),'FaceColor',map(idx,:))
            
        end
    end
end

%Private
function closeRequestFcn(src,obj)
try delete(obj.hStateListener);end
try delete(src);end
end

function hImage = show_image(hAx,imName,isLeftHanded)
im = imread(which(imName));
%crop
im(1:76,:,:) = [];
im(end-60:end,:,:) = [];
im(:,1:60,:) = [];
%im = im(1:4:end,1:4:end,:);
if ~isLeftHanded
    im(:,:,1) = fliplr(im(:,:,1));
    im(:,:,2) = fliplr(im(:,:,2));
    im(:,:,3) = fliplr(im(:,:,3));
end

% im(:,:,1) = flipud(im(:,:,1));
% im(:,:,2) = flipud(im(:,:,2));
% im(:,:,3) = flipud(im(:,:,3));

hImage = image(im,'Parent',hAx);
set(hAx,'xtick',[],'ytick',[]);
hold(hAx,'on');

end
function hText = show_text(hAx,strLabel)
imLimits = axis(hAx);
hText = text((imLimits(2)-imLimits(1))/2,imLimits(4) - 60,strLabel,...
    'Parent',hAx,'HorizontalAlignment','Center','FontSize',14);

end

function drawConnectionLines(obj,altTopoLayout)
hAx = axes('Position', [0,0,1,1],'Parent',obj.hLegendFig);
axis(hAx,'off')
% Breakpoint Here to Fine-tune Line Display
c = [0.2353    0.2353    0.2353];
cla(hAx)
hold(hAx,'on')
if obj.isLeftHanded
    x = 0.24;
    plot(hAx,[x x],[0.325 0.407],'LineWidth',5,'Color',c);
    plot(hAx,[x x],[0.625 0.707],'LineWidth',5,'Color',c);
    y2 = 0.81;
    plot(hAx,[0.346 0.414],[y2 y2],'LineWidth',5,'Color',c);
    y1 = 0.51;
    plot(hAx,[0.346 0.414],[y1 y1],'LineWidth',5,'Color',c);
    if altTopoLayout
        plot(hAx,[0.628 0.694],[y2 y2],'LineWidth',5,'Color',c);
    else
        plot(hAx,[0.628 0.694],[y1 y1],'LineWidth',5,'Color',c);
    end
else
    x = 0.8;
    plot(hAx,[x x],[0.325 0.407],'LineWidth',5,'Color',c);
    plot(hAx,[x x],[0.625 0.707],'LineWidth',5,'Color',c);
    y = 0.81;
    plot(hAx,[0.628 0.694],[y y],'LineWidth',5,'Color',c);
    y = 0.51;
    plot(hAx,[0.346 0.414],[y y],'LineWidth',5,'Color',c);
    plot(hAx,[0.628 0.694],[y y],'LineWidth',5,'Color',c);
end
axis(hAx,[0 1 0 1])
axis(hAx,'off')

end

function updateStateDiagram(src,obj)

if obj.EnableStateChangeBeep
    if isempty(obj.hAudioPlayer)
        try
            [y,Fs] = wavread(obj.StateChangeSound);
            obj.hAudioPlayer = audioplayer(y,Fs);
            play(obj.hAudioPlayer);
        catch ME
            obj.EnableStateChangeBeep = 0;
            fprintf(2,'[%s] Could not read audio file: "%s"\n',mfilename,obj.StateChangeSound);
            warning(ME);
        end
    else
        play(obj.hAudioPlayer);
    end
end

if src.CurrentState == Controls.HandStateEnum.PointExtend
    imageId = Controls.HandStateEnum.Point + 1;
else
    imageId = src.CurrentState + 1;
end
if ~isempty(obj.hStateImages) && all(ishandle(obj.hStateImages))
    set(obj.hStateImages,'Visible','off');
    set(obj.hStateImages(imageId),'Visible','on');
end

end


function [hTransform hPatch] = drawArrow(hAx)
w = 0.4;
h1 = 0.7;
t = 0.3;
h2 = 1.2;

vertices = [
    -(w/2) 0
    -(w/2) h1
    -t-(w/2) h1
    0 h2
    (w/2)+t h1
    (w/2) h1
    (w/2) 0
    ];
faces = [1 2 3 4 5 6 7 1];

hTransform = hgtransform('Parent',hAx);
hPatch = patch('Parent',hTransform,'Faces',faces,'Vertices',vertices);
end

function hPatch = drawArrowGroup(hAx)
[hTransform(1) hPatch(1)] = drawArrow(hAx);
[hTransform(2) hPatch(2)] = drawArrow(hAx);
[hTransform(3) hPatch(3)] = drawArrow(hAx);
[hTransform(4) hPatch(4)] = drawArrow(hAx);
set(hTransform(1),'Matrix',...
    makehgtform('zrotate',0,'translate',[0 0.3 0]));
set(hTransform(2),'Matrix',...
    makehgtform('zrotate',-pi/2,'translate',[0 0.3 0]));
set(hTransform(3),'Matrix',...
    makehgtform('zrotate',pi,'translate',[0 0.3 0]));
set(hTransform(4),'Matrix',...
    makehgtform('zrotate',pi/2,'translate',[0 0.3 0]));

end

