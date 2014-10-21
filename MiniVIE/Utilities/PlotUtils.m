classdef PlotUtils
    %PlotUtils Collection of plotting utilities
    %
    % Add new stand-alone tools as a static method.  Usage will be
    % PlotUtils.myUtilitiy(args)
    %
    % It is recommended that you include a test function for your utility
    % as well.
    %
    % Show all methods:
    %   methods(PlotUtils)
    % 2013Feb08 Armiger: Created
    %
    methods (Static = true)
        function varargout = plot3(varargin)
            % designed to work just like plot3, but if we assume column
            % vectors the entire array can be passed in as [3 x N]
            %
            % Usage: PlotUtils.plot3(columnVecPts)
            %        PlotUtils.plot3(columnVecPts,'MarkerSize',10)
            %        hPlot = PlotUtils.plot3(...)  returns a handle
            %
            % 6/19/2013 Armiger: Fixed bug with varargin as second
            % argument. varargin inplies all input variables, of which the
            % required point set is the first on (varargin{1}). Optional
            % arguments to plot3 are varargin{2:end}
            
            columnVecPts = varargin{1};
            
            % Column vectors are a must
            if size(columnVecPts,1) ~= 3
                error('Use Column Vectors');
            end
            
            % Note varargin {n:end} has the special property of dissapearing as a
            % function input when the user provides less than n imputs; so the last
            % argument will siply not exist is no data is provided
            hLine = plot3(columnVecPts(1,:),columnVecPts(2,:),columnVecPts(3,:),varargin{2:end});
            
            if nargout > 0
                varargout{1} = hLine;
            end
        end
        function test_plot3
            %% test function for PlotUtils.plot3
            %
            % 6/19/2013 Armiger: Created
            
            % Create random point sets
            pts1 = rand(3,10);
            pts2 = rand(3,10);
            
            % Setup plot
            clf
            hold on
            
            % Plot points two ways: with / without optional extra arguments
            PlotUtils.plot3(pts1)
            h = PlotUtils.plot3(pts2,'r.');
            
            disp(h)
            
            
        end
        
        function varargout = pointNumbers(columnVecPts,varargin)
            % plots point numbers at the locations given by columnVecPts,
            %  which is a [3 x N] array of points.  Typically used after
            %  plotting points with PlotUtils.plot3
            %
            % Usage: PlotUtils.pointNumbers(columnVecPts)
            %        PlotUtils.pointNumbers(columnVecPts,'MarkerSize',10)
            %        hPlot = PlotUtils.pointNumbers(...)  returns a handle
            %
            
            % Column vectors are a must
            if size(columnVecPts,1) ~= 3
                error('Use Column Vectors');
            end
            
            npts = size(columnVecPts,2);
            if 10 <= npts && npts <= 99
                % works for npts 10-99
                str = [' ' num2str(1:npts,'%2d')];
                strTxt = reshape(str,[],npts)';
                hText = text(columnVecPts(1,:),columnVecPts(2,:),columnVecPts(3,:),strTxt,'FontSize',18);
            elseif npts < 10
                str = num2str(1:npts,'%1d');
                strTxt = reshape(str,[],npts)';
                hText = text(columnVecPts(1,:),columnVecPts(2,:),columnVecPts(3,:),strTxt,'FontSize',18);
            end
            
            if nargout > 0
                varargout{1} = hText;
            end
        end
        
        function hPatch = ribbon(p1,p2)
            % take two lists of 3d points and plot a ribbon between the two assuming
            % mutual points are given
            %
            % Usage:
            %   hPatch = PlotUtils.ribbon(p1,p2);
            
            pList = reshape([p1; p2],3,[]);
            nPoints = size(pList,2);
            
            % f = [
            %     1 2 4 3
            %     3 4 6 5
            %     5 6 8 7
            %     ];
            
            fList = reshape(1:nPoints,2,[])';
            
            faces = [fList(1:end-1,:) fliplr(fList(2:end,:))];
            vertices = pList';
            hPatch = patch('faces',faces,'vertices',vertices,'facecolor','blue');
        end
        function test_ribbon
            % Test ribbon function only
            % Plot Ribbon
            clf
            nSegments = 50;
            x = linspace(0,1,nSegments);
            y = zeros(size(x));
            z = zeros(size(x));
            
            axis equal
            view(45,45)
            
            base = [x;y;z];
            f = 2;
            A = 0.1;
            c = 0;
            fin = [
                x
                A*sin(2*pi*f*x+c);
                -0.5*ones(size(x))
                ];
            
            p = PlotUtils.ribbon(base,fin);
            set(p,'FaceAlpha',0.8)
            set(p,'FaceColor',rand(3,1))
            
            base2 = base;
            fin2 = fin;
            base2(1,:) = base2(1,:) + 1;
            fin2(1,:) = fin2(1,:) + 1;
            p2 = PlotUtils.ribbon(base2,fin2);
            set(p,'FaceAlpha',0.8)
            set(p,'FaceColor',rand(3,1))
            
            % Animate
            axis vis3d
            set(gcf,'DoubleBuffer','on')
            set(p,'EraseMode','normal')
            axis manual
            
            while StartStopForm
                c = c + 0.1;
                c = mod(c,2*pi);
                
                xyz = get(p,'vertices')';
                y2 = A*sin(2*pi*f*x+c);
                xyz(2,2:2:end) = y2;
                set(p,'vertices',xyz');
                
                xyz = get(p2,'vertices')';
                y2 = -A*sin(2*pi*f*x-c);
                xyz(2,2:2:end) = y2;
                set(p2,'vertices',xyz');
                
                drawnow
            end
            function isRunning = StartStopForm(manualState)
                % Use as a simple form to control a while loop
                % Example: while StartStopForm
                %               do stuff
                %          end
                % To reset: StartStopForm([])
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
        end
        
        function hTriad = triad(F,scale,ax,label)
            %hTriad = PlotUtils.triad(F,scale,ax,label)
            %
            % F is expected to be a 4x4 transformation matrix to plot.
            % This can be 4x4xN for multiple triads
            %
            % returned handle is to an hgtransform < hggroup object
            %
            % create an x,y,z triad with r,g,b colors
            % note to update use:
            %   set(hTriad,'Matrix',T1)
            
            if nargin < 4
                label = '';
            end
            if nargin < 3
                ax = gca;
            end
            if nargin < 2
                scale = 1;
            end
            if nargin < 1
                F = eye(4);
            end
            
            [d1,d2,d3] = size(F);
            
            assert(isequal([d1 d2],[4 4]),'Error: Expected a 4x4 matrix');
            
            xyz_color = {'r-','g-','b-'};
            
            Xaxis = scale.*[0 1;0 0; 0 0];
            Yaxis = scale.*[0 0;0 1; 0 0];
            Zaxis = scale.*[0 0;0 0; 0 1];
            
            holdState = ishold(ax);
            hold(ax,'on');
            
            hTriad = zeros(d3,1);
            for i = 1:d3
                hTriad(i) = hgtransform('Parent',ax);
            
                plot3(hTriad(i),Xaxis(1,:),Xaxis(2,:),Xaxis(3,:),xyz_color{1},'LineWidth',2);
                plot3(hTriad(i),Yaxis(1,:),Yaxis(2,:),Yaxis(3,:),xyz_color{2},'LineWidth',2);
                plot3(hTriad(i),Zaxis(1,:),Zaxis(2,:),Zaxis(3,:),xyz_color{3},'LineWidth',2);
            
                set(hTriad(i),'Matrix',F(:,:,i));
                
                if ~isempty(label)
                    text(0,0,0,label,'Parent',hTriad(i));
                end
            end
            
            % Restore hold state
            if holdState
                hold(ax,'on');
            else
                hold(ax,'off');
            end
        end
        
        
                function [hBox, volumeProps] = boundingBox(varargin)
            %BOUNDINGBOX - Plot a bounding box
            %
            %   hBox = LinAlg.boundingBox(bb)
            %       Plot a bounding box defined by the points in bb.
            %
            %   hBox = LinAlg.boundingBox(pts)
            %       Plot the bounding box around the points
            %
            %   hBox = LinAlg.boundingBox(maxPts, minPts)
            %       Plot the bounding box when defined by extents
            %
            %   hBox = LinAlg.boundingBox(hAx, ...)
            %       Plot on the provided axis.
            %
            %   [hBox volumeProps] = LinAlg.boundingBox(...)
            %       Also return the volume props, a struct with fields 'dimension' and
            %       'boundVolume'
            %
            
            narginchk(1,3);
            [hAx, bb, volumeProps] = parseArgs(varargin{:});
            
            if isempty(bb)
                fprintf(2,'BOUNDINGBOX: No bounding box could be found\n');
                return;
            end
            
            p1 = bb(:,1);
            p2 = bb(:,2);
            p3 = bb(:,3);
            p4 = bb(:,4);
            p5 = bb(:,5);
            p6 = bb(:,6);
            p7 = bb(:,7);
            p8 = bb(:,8);
            
            lineDat = {...
                [p1 p2],...
                [p2 p3],...
                [p3 p4],...
                [p4 p1],...
                ...
                [p5 p6],...
                [p6 p7],...
                [p7 p8],...
                [p8 p5],...
                ...
                [p1 p5],...
                [p2 p6],...
                [p3 p7],...
                [p4 p8],...
                };
            
            % Construct handle graphics
            holdState = ishold(hAx);
            hold(hAx,'on');
            
            hLine = zeros(1,length(lineDat));
            for i = 1:length(lineDat)
                hLine(i) = line(lineDat{i}(1,:),lineDat{i}(2,:),lineDat{i}(3,:),'Color','r');
            end
            hBox = hggroup;
            set(hLine,'Parent',hBox) % parent the box to the hggroup
            
            if ~holdState
                hold(hAx,'off')
            end
            
            set(hBox,'UserData',volumeProps);
            
            function [hAx, bb, volumeProps] = parseArgs(varargin)
                %PARSEARGS - Parse the arguments
                
                hAx = [];
                bb = [];
                volumeProps = [];
                
                if nargin == 1
                    if size(varargin{1}) == 1
                        return;
                    end
                    
                    [minPts, maxPts, bb]= PlotUtils.defineBoundingBox(varargin{1});
                    
                    hAx = gca;
                elseif nargin == 2
                    
                    if size(varargin{1}) == 1
                        hAx = varargin{1};
                    else
                        hAx = gca;
                        maxPts = varargin{1};
                        minPts = varargin{2};
                    end
                else
                    hAx = varargin{1};
                    maxPts = varargin{2};
                    minPts = varargin{3};
                end
                
                if isempty(bb)
                    p1 = [minPts(1); minPts(2); minPts(3)];
                    p2 = [maxPts(1); minPts(2); minPts(3)];
                    p3 = [maxPts(1); maxPts(2); minPts(3)];
                    p4 = [minPts(1); maxPts(2); minPts(3)];
                    
                    p5 = [minPts(1); minPts(2); maxPts(3)];
                    p6 = [maxPts(1); minPts(2); maxPts(3)];
                    p7 = [maxPts(1); maxPts(2); maxPts(3)];
                    p8 = [minPts(1); maxPts(2); maxPts(3)];
                    
                    bb = [p1 p2 p3 p4 p5 p6 p7 p8];
                end
                
                volumeProps.dimensions = maxPts - minPts;
                volumeProps.boundVolume = prod(volumeProps.dimensions);
                
            end % parseArgs
        end
        function [mins, maxs, bb] = defineBoundingBox(pts)
            %DEFINEBOUNDINGBOX - Define a bounding box for a set of points
            %
            %   [mins maxs bb] = PlotUtils.defineBoundingBox(pts)
            %       For a set of 3d points, a 3 x n vector, we find the min and max of
            %       these points and define an associated bounding box. The bounding
            %       box, bb, is defined 8 vertices.
            %
            
            bb = [];
            [a, b] = size(pts);
            if a ~= 3 && b ~= 3
                fprintf(2,'Use column vectors\n');
                return;
            end
            
            % convert to column vectors if row vectors are passed in
            if a ~= 3
                pts = pts';
            end
            
            mins = min(pts,[],2);
            maxs = max(pts,[],2);
            
            minx = mins(1);
            miny = mins(2);
            minz = mins(3);
            
            maxx = maxs(1);
            maxy = maxs(2);
            maxz = maxs(3);
            
            bb = [...
                [minx miny minz]
                [maxx miny minz]
                [maxx maxy minz]
                [minx maxy minz]
                [minx miny maxz]
                [maxx miny maxz]
                [maxx maxy maxz]
                [minx maxy maxz]]';
        end

    end
end