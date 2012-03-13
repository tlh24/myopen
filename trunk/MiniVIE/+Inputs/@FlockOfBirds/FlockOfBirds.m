classdef FlockOfBirds < handle
    %FLOCKOFBIRDE Class based on bird_io_in_matlab interface for the
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
        
        function [pos ang] = getBirdGroup(obj)
            
            bird = obj.Bird;
            
            [bird_bytes] = bird_group_bytes(bird);   % will read position of all birds in flock
            [pos, ang] = bird_group_bytes_2_data(bird_bytes,bird);   % will convert bytes off all birds in flock
        end
    end
    
end

