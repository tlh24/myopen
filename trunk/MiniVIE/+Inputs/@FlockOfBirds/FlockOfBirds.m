classdef FlockOfBirds < handle
    %FLOCKOFBIRD Class based on bird_io_in_matlab interface for the
    %Ascension Flock Of Birds System
    %   Detailed explanation goes here
    %   Armiger 3/5/2012: Created
    
    properties
        Bird
    end
    
    methods
        function obj = FlockOfBirds
        end
        function initialize(obj)
            
            bird.nbird = 3;   % number of birds in flock (can be set to one)
            bird_setting_default
            
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
    end
    methods (Static = true)
        function Demo
            % Requires MiniVIE Utilities
            obj = Inputs.FlockOfBirds;
            obj.initialize;
            hPlot = LivePlot(9,100);
            StartStopForm([]);
            while StartStopForm
                [pos, ang] = obj.getBirdGroup;
                if isempty(pos)
                    continue;
                end
                hPlot.putdata(pos(:));
                
                for ibird=1:obj.Bird.nbird
                    fprintf('Bird %i\t%+3.3f\t%+3.3f\t%+3.3f\t%+3.1f\t%+3.1f\t%+3.1f\n',ibird,pos(ibird,:),ang(ibird,:)*180/pi);
                end
                pause(0.05);
            end
        end
    end
end
