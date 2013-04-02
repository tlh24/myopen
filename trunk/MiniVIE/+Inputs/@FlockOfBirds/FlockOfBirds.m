classdef FlockOfBirds < handle
    %FLOCKOFBIRD Class based on bird_io_in_matlab interface for the
    %Ascension Flock Of Birds System
    %   Class for interfacing Flock of Birds System.  This uses the
    %   bird_io_in_matlab functions for basic communications.  A single
    %   serial port interface to the bird master is used.
    %
    %   See: obj = Inputs.FlockOfBirds.Demo;
    %
    %   Usage:
    %     obj = Inputs.FlockOfBirds;
    %     obj.initialize('COM1');
    %     [pos, ang] = obj.getBirdGroup;
    %
    %   Armiger 3/5/2012: Created
    
    properties
        Bird % handle to flock of birds object
        
        NumSensors = 3;
        IsSimulator = false; %Controls whether real data or random output is returned (debugging)
    end
    
    methods
        function obj = FlockOfBirds
        end
        function initialize(obj,strComPort)
            
            bird.nbird = obj.NumSensors;   % number of birds in flock (can be set to one)

            bird_setting_default; % holds default bird settings

            if nargin < 2
                bird.com_port = 'COM1';
            else
                bird.com_port = strComPort;
            end

            bird = bird_setup(bird);          % setups up serial port and bird settings (bird.bird_port is the serial port object which is returned)
            
            obj.Bird = bird;
            
        end
        
        function [pos ang R] = getSingleBird(obj)
            
            bird = obj.Bird;
            
            bird_bytes = bird_point_bytes(bird);  % gathers a point of data from a single bird, and returns gathered bytes as bird_bytes
            [pos, ang] = bird_bytes_2_data(bird_bytes,bird);   % converts bird_bytes to position and angle values (default units are meters and radians)
            [R] = birdR(ang);          % converts angles to Rotation matrix, where the columns of R are the axes of the bird coordinate systems (note R is the transpose of that used in Bird manual).
            
        end
        
        function [pos, ang] = getBirdGroup(obj)
            
            if obj.IsSimulator
                pos = rand(3,obj.NumSensors);
                ang = rand(3,obj.NumSensors);
                %ang = makehgtform('xrotate',rand,'yrotate',rand,'zrotate',rand);
                return
            end
            
            bird = obj.Bird;
            
            [bird_bytes] = bird_group_bytes(bird);   % will read position of all birds in flock
            if isempty(bird_bytes);
                fprintf('Read Failed\n');
                [pos, ang] = deal([]);
                return
            end
            try
                [pos, ang] = bird_group_bytes_2_data(bird_bytes,bird);   % will convert bytes off all birds in flock
            catch ME
                fprintf('Caught Error: %s\n',ME.message);
                [pos, ang] = deal([]);
                return
            end
        end
        
        function F = getframes(obj)
            %F = getframes(obj)
            % returns 4x4xobj.NumSensors frame transforms for Flock of
            % Birds
            
            [pos, ang] = getBirdGroup(obj);
            
            if isempty(pos)
                F = [];
                return
            end
            
            F = repmat(eye(4),[1 1 obj.NumSensors]);
            for i = 1:obj.NumSensors
%                 [R] = birdR(ang(i,:));
%                 F(1:3,1:3,i) = R;
%                 F(1:3,4,i) = pos(i,:);
                
                F(:,:,i) = makehgtform('translate',pos(i,:),...
                    'zrotate',ang(i,3),...
                    'yrotate',ang(i,2),...
                    'xrotate',ang(i,1));
            end
            
        end
        
        function preview(obj)
            
            F_ERT = eye(4);%obj.F_WCS_TRNS;
            
            tmr = timer;
            set(tmr,'Period',0.15); %% seconds
            set(tmr,'TimerFcn',@cb_plot_data);
            set(tmr,'ExecutionMode','fixedRate');
            
            % Setup plots
            hTriad = setup_plot(obj.NumSensors,F_ERT);
            fprintf('[%s] Starting Preview...\n',mfilename);
            start(tmr);
            
            function cb_plot_data(src,evt) %#ok<INUSD>
                drawnow
                
                F_GCS_RB = obj.getframes();
                
                if isempty(F_GCS_RB)
                    return
                end
                
                if all(ishandle(hTriad))
                    for iSensor = 1:obj.NumSensors
                        %f_update_triad(F_GCS_RB(:,:,iSensor),hTriad(iSensor));
                        set(hTriad(iSensor),'Matrix',F_GCS_RB(:,:,iSensor));
                    end
                else
                    fprintf('[%s] Preview Stopped.\n',mfilename);
                    stop(src);
                    delete(src);
                end
            end %% plot_data
            
        end %% preview
        
    end
    methods (Static = true)
        function obj = Demo
            % Requires MiniVIE Utilities
            obj = Inputs.FlockOfBirds;
            obj.NumSensors = 2;
            obj.initialize;
            obj.preview;
            %obj.IsSimulator = true;
            
%             hPlot = LivePlot(9,100);
%             StartStopForm([]);
%             while StartStopForm
%                 [pos, ang] = obj.getBirdGroup;
%                 if isempty(pos)
%                     continue;
%                 end
%                 hPlot.putdata(pos(:));
%                 
%                 for i = 1:obj.NumSensors
%                     fprintf('Bird %i\t%+3.3f\t%+3.3f\t%+3.3f\t%+3.1f\t%+3.1f\t%+3.1f\n',i,pos(i,:),ang(i,:)*180/pi);
%                 end
%                 pause(0.05);
%             end
        end
    end
end

function hTriad = setup_plot(nSensors,F_ERT)
f = figure(9);
%f_setWindowState(f,'maximize');
clf(f)
hold on
hAxes = gca;
hTriad = zeros(nSensors,1);
for i = 1:nSensors
    scale = 0.1;
    % color = {'c-','m-','y-','k'}
    % hTriad(i) = f_plot_triad(eye(4),scale,color{i});
    %hTriad(i) = f_plot_triad(eye(4),scale);
    hTriad(i) = PlotUtils.triad(eye(4),scale,hAxes);
end

PlotUtils.triad(eye(4),1.0);
PlotUtils.triad(F_ERT,0.1);

axis equal
view(-75,20)
set(gca,'Projection','perspective');

xlabel('')
ylabel('')
zlabel('')

drawnow
end %% setup_plot
