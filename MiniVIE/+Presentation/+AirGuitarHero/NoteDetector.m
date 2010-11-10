classdef NoteDetector < handle
    % Image Processing class for detecting notes from a video capture frame
    %
    % 01-Sept-2010 Armiger: Created
    properties
        Parent = [];
        
        % line defs: [x1 x2; y1 y2]; normalized based on screen size
        % 16:9
        % greenLine   = [0.321 0.4375; 0.9625 0.4521];
        % redLine     = [0.4110 0.4708; 0.9625 0.4521];
        % yellowLine  = [0.4986 0.4986; 0.9625 0.4521];
        % blueLine    = [0.590 0.5286; 0.9525 0.4521];
        % orangeLine  = [0.686 0.556; 0.9625 0.4521];

        % 4:3
        greenLine   = [0.3 0.43; 0.9625 0.4521];
        redLine     = [0.4 0.47; 0.9625 0.4521];
        yellowLine  = [0.5 0.50; 0.9625 0.4521];
        blueLine    = [0.6 0.53; 0.9625 0.4521];
        orangeLine  = [0.7 0.56; 0.9625 0.4521];
        
        % RGB values for detecting each note
        greenThresh  = [0 120 0];
        redThresh    = [120 0 0];
        yellowThresh = [120 120 0];
        blueThresh   = [0 0 120];
        orangeThresh = [120 120 0];
        
        % Note regions (in pixel space)
        greenRegion;
        redRegion;
        yellowRegion;
        blueRegion;
        orangeRegion;
        
        numNotes = 5;
        
        boxXSize = 10; % size in pixels of the note capture box
        boxYSize = 20; % size in pixels of the note capture box
        
        notePct = [0.54 0.56];    % this is the percentage along the note lines where the 'detector' lives
        
        pixelDistance = 5;  % pixels to search around line detector segment
        
        frameSize;
        hLines;
        
        noteHistory = zeros(200,5);
        
    end
    properties (SetAccess = private)
        ShowAnnotations = 1;
    end
    methods
        function obj = NoteDetector(hParent)
            obj.Parent = hParent;
            obj.frameSize = hParent.VideoSize;
            
            obj.hLines = plot(hParent.hAxes,zeros(2,obj.numNotes));
            set(obj.hLines(1),'Color','green');
            set(obj.hLines(2),'Color','red');
            set(obj.hLines(3),'Color','yellow');
            set(obj.hLines(4),'Color','blue');
            set(obj.hLines(5),'Color',[1.0000    0.6941    0.3922]);
            
            obj.updateStringLocations();
        end
        function SetVisibility(obj,isVisible)
            if isVisible
                set(obj.hLines,'Visible','On');
                obj.ShowAnnotations = 1;
            else
                set(obj.hLines,'Visible','Off');
                obj.ShowAnnotations = 0;
            end
        end
        function updateStringLocations(obj)
            H = obj.frameSize(1);
            W = obj.frameSize(2);
            
            set(obj.hLines(1),'XData',W*obj.greenLine(1,:));
            set(obj.hLines(1),'YData',H*obj.greenLine(2,:));
            
            set(obj.hLines(2),'XData',W*obj.redLine(1,:));
            set(obj.hLines(2),'YData',H*obj.redLine(2,:));
            
            set(obj.hLines(3),'XData',W*obj.yellowLine(1,:));
            set(obj.hLines(3),'YData',H*obj.yellowLine(2,:));
            
            set(obj.hLines(4),'XData',W*obj.blueLine(1,:));
            set(obj.hLines(4),'YData',H*obj.blueLine(2,:));
            
            set(obj.hLines(5),'XData',W*obj.orangeLine(1,:));
            set(obj.hLines(5),'YData',H*obj.orangeLine(2,:));
            
            obj.greenRegion = obj.getPixelRegions(obj.greenLine,obj.frameSize,obj.notePct);
            obj.redRegion = obj.getPixelRegions(obj.redLine,obj.frameSize,obj.notePct);
            obj.yellowRegion = obj.getPixelRegions(obj.yellowLine,obj.frameSize,obj.notePct);
            obj.blueRegion = obj.getPixelRegions(obj.blueLine,obj.frameSize,obj.notePct);
            obj.orangeRegion = obj.getPixelRegions(obj.orangeLine,obj.frameSize,obj.notePct);
            
        end
        function frame = process_frame(obj,frame)
            % find notes within frame.  returned 'frame' is annotated with
            % notes detected
            
            noteMask = false(1,obj.numNotes);
            
            [noteMask(1) frame] = check_for_note(obj,frame,obj.greenRegion,obj.greenThresh);
            [noteMask(2) frame] = check_for_note(obj,frame,obj.redRegion,obj.redThresh);
            [noteMask(3) frame] = check_for_note(obj,frame,obj.yellowRegion,obj.yellowThresh);
            [noteMask(4) frame] = check_for_note(obj,frame,obj.blueRegion,obj.blueThresh);
            [noteMask(5) frame] = check_for_note(obj,frame,obj.orangeRegion,obj.orangeThresh);
            
            obj.noteHistory = circshift(obj.noteHistory,[1 0]);
            
            obj.noteHistory(1,:) = noteMask;
            
            if obj.ShowAnnotations
                
                % clear a region for display
                frame(1:210,580:640,:) = 0;
                
                frame(1:200,590,:) = repmat(obj.noteHistory(:,1) * 255,[1 3]);
                frame(1:200,600,:) = repmat(obj.noteHistory(:,2) * 255,[1 3]);
                frame(1:200,610,:) = repmat(obj.noteHistory(:,3) * 255,[1 3]);
                frame(1:200,620,:) = repmat(obj.noteHistory(:,4) * 255,[1 3]);
                frame(1:200,630,:) = repmat(obj.noteHistory(:,5) * 255,[1 3]);
            end
            
            
            % if obj.debug
            %    putdata(hL,[y(:); 50*noteMask(3)]);
            % end
        end
        function [isHit frame] = check_for_note(obj,frame,pixelRegion,threshRGB)
            
            H = obj.frameSize(1);
            W = obj.frameSize(2);
            
            colorLayerOffset = H*W;
            redLayer = frame(pixelRegion);
            greenLayer = frame(pixelRegion+colorLayerOffset);
            blueLayer = frame(pixelRegion+2*colorLayerOffset);
            avgRed = mean(redLayer);
            avgGreen = mean(greenLayer);
            avgBlue = mean(blueLayer);
            
            isHit = ( avgRed > threshRGB(1) ) && ...
                ( avgGreen > threshRGB(2) ) && ...
                ( avgBlue > threshRGB(3) );
            
            if obj.ShowAnnotations
                if isHit
                    % Show white
                    frame(pixelRegion) = 255;
                    frame(pixelRegion+colorLayerOffset) = 255;
                    frame(pixelRegion+2*colorLayerOffset) = 255;
                else
                    % Highlight Red
                    frame(pixelRegion) = 255;
                end
            end
        end
        
    end
    methods (Static)
        function pixelIndices = getPixelRegions(lineDat,frameSize,notePct)
            % Use the detector line segment to compute the indices of
            % nearby pixels, which will be used to check intensity
            
            H = frameSize(1);
            W = frameSize(2);
            
            lineDat = max(min(lineDat,1),0);
            
            % interp line given [x1 x2; y1 y2] and a normalized value 0.0->1.0
            myInterp = @(xy,n) [xy(1,1)+n*(xy(1,2)-xy(1,1)) xy(2,1)+n*(xy(2,2)-xy(2,1))];
            
            noteRegionBottom = [myInterp(lineDat,notePct(1)).* [W H] 0]';
            noteRegionTop = [myInterp(lineDat,notePct(2)).* [W H] 0]';
            
            [X Y] = meshgrid(1:H,1:W);
            px = [Y(:) X(:) zeros(H*W,1)]';
            
            cProjected = f_project_on_segment(px,noteRegionBottom,noteRegionTop);
            dist = f_magnitude(cProjected,px);
            isAlongString = dist < 5;
            
            pixelIndices = sub2ind([H W],X(isAlongString),Y(isAlongString));
        end
    end
end

% private
function [cProjected,lambda] = f_project_on_segment(c,p,q)
% given line segment pq, project point c onto line
% Names: Bobby Armiger and Carol Reiley
% Assignment CIS programming assignment 3
% Professor: Dr. Taylor

% ensure column vectors
assert(size(c,1) == 3)
assert(size(p,1) == 3)
assert(size(q,1) == 3)

% To project a list of points
if size(c,2) ~= 1
    p = repmat(p,1,size(c,2));
    q = repmat(q,1,size(c,2));
end

% lambda is the distance along the line segment
lambda = dot( c-p, q-p ) ./ dot( q-p, q-p );
lambda = repmat(lambda,3,1);
lambda_star = max(0,min(lambda,1));

cProjected = p + lambda_star .* (q-p);
end

function mag = f_magnitude(v1,v2)
% Compute vector magnitude
% find the Euclidean distance between two vectors
% This function expects 3xn column vectors
% Two argument case computes base to tip vector magnitude
% Single argument case computes origin to tip vector magnitude
%
% Armiger: Created
% 18-Oct-2009 Armiger: Updated with bsxfun to handle [3 1],[3 N] cases
% where a single point is compared to a set of points

if size(v1,1) ~= 3
    error('Use 3xn Column Vectors');
end

if nargin < 2
    mag = sum((v1).^2).^0.5;
else
    mag = sum((bsxfun(@minus,v1,v2)).^2).^0.5;
end

%mag = sqrt(diag((v1-v2)' * (v1-v2))); %% inefficient
% Note: not using norm() because that won't work for vectors
end

