classdef CyberGrasp < hgsetget
    %% Create a cyberGrasp class and initialize
    % Methods:
    % 	int initialize(void);
    % 	int disconnect(int handle);
    %   int setMode(int handle, int mode);
    %   int getMode(int handle);
    %   void setForce( int handle, double fd[5] );
    %   void setForceEffectActive( int handle,  int finger, int active );
    %   void setForceEffectActiveAll
    properties
        handle;
        libPointer;
        id = mfilename;
    end
    properties (Constant = true)
        libName = 'CyberGraspMatlabDll';
    end
    methods
        function obj = CyberGrasp
            
            obj.handle = initialize_device(CyberGrasp.libName);
            
            %%Handle should be non-zero
            if obj.handle
                disp('CyberGrasp Initialized')
            else
                error('Error setting up device.  Try (re)starting the device manager\n')
            end
            
            %%currentMode is 4 on startup
            currentMode = calllib(CyberGrasp.libName, 'getMode', obj.handle);
            
            %%set to idle
            IDLE_MODE = 3;
            if currentMode ~= IDLE_MODE
                calllib(CyberGrasp.libName, 'setMode', obj.handle, IDLE_MODE);
            end
            
            pause(1);
            
            %%activate force mode
            FORCE_MODE = 1;
            calllib(CyberGrasp.libName, 'setMode', obj.handle, FORCE_MODE);
            
            %%initializePointer for force commands (normalized 0->1)
            defaultForce = 0.15;
            forcePtr = libpointer('doublePtr', defaultForce*ones(1,5));
            
            %%apply light force to rewind cuffs
            calllib(CyberGrasp.libName, 'setForce', obj.handle, forcePtr );
            
            %%store vars into object
            obj.libPointer = forcePtr;
            
        end
        function setforce( obj, forceVal )
            %SETFORCE sets force value for fingers
            %   if scalar input, applies to all fingers
            
            if isscalar(forceVal)
                forceVal = forceVal*ones(1,5);
            elseif length(forceVal) ~= 5
                error('Invalid force settings');
            end
            
            forceVal = max(forceVal,0);
            forceVal = min(forceVal,1);
            
            set(obj.libPointer,'Value',forceVal)
            calllib(obj.libName, 'setForce', obj.handle, obj.libPointer )
        end
        function close(obj)
            %%Disconnect physical device and unload lib
            
            success = calllib(obj.libName, 'disconnect', obj.handle);
            
            if success
                disp([obj.libName ' device sucessfully removed'])
            end
            
            unloadlibrary(obj.libName);
        end
    end
end
% initialize_cyberglove
function objHandle = initialize_device(libName)

if ~libisloaded(libName)
    
    loadlibrary(libName,libName)
    
    if libisloaded(libName)
        disp([libName ' library successfully loaded']);
    else
        error('Library not loaded')
    end
    
else
    disp([libName ' already loaded'])
end

objHandle = calllib(libName, 'initialize');

end
