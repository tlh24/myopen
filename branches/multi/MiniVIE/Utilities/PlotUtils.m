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
                A*cos(2*pi*f*x+c);
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
        function hTriad = triad(F,scale,ax)
            %hTriad = PlotUtils.triad(F,scale,ax)
            %
            % returned handle is to an hgtransform < hggroup object
            %
            % create an x,y,z triad with r,g,b colors
            % note to update use:
            %   set(hTriad,'Matrix',T1)
            
            if nargin < 3
                ax = gca;
            end
            if nargin < 2
                scale = 1;
            end
            if nargin < 1
                F = eye(4);
            end
            
            assert(isequal(size(F),[4 4]),'Error: Expected a 4x4 matrix');
            
            xyz_color = {'r-','g-','b-'};
            
            Xaxis = scale.*[0 1;0 0; 0 0];
            Yaxis = scale.*[0 0;0 1; 0 0];
            Zaxis = scale.*[0 0;0 0; 0 1];
            
            holdState = ishold(ax);
            hold(ax,'on');
            
            hTriad = hgtransform('Parent',ax);
            
            plot3(hTriad,Xaxis(1,:),Xaxis(2,:),Xaxis(3,:),xyz_color{1},'LineWidth',2);
            plot3(hTriad,Yaxis(1,:),Yaxis(2,:),Yaxis(3,:),xyz_color{2},'LineWidth',2);
            plot3(hTriad,Zaxis(1,:),Zaxis(2,:),Zaxis(3,:),xyz_color{3},'LineWidth',2);
            
            set(hTriad,'Matrix',F);
            
            % Restore hold state
            if holdState
                hold(ax,'on');
            else
                hold(ax,'off');
            end
        end
    end
end