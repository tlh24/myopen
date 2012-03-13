classdef PhidgetAccel < handle
    % PhidgetAccel - Class for accessing phidget accelerometer via dll
    %
    % Usage:
    %   hPhidget = Inputs.PhidgetAccel();
    %   hPhidget.initialize();
    %
    %   accelData = hPhidget.getdata;
    %   disp(accelData);
    %
    %   % cleanup
    %   hPhidget.close();
    %
    % 6Feb2012: Armiger Created
    
    properties (SetAccess = private)
        libraryName = 'phidget21';
        headerName = 'phidget21Matlab.h';

        NumAxes;
        AccelMax;
        AccelMin;
        
        hPhid;
    end
    methods
        function initialize(obj)
            
            if ~libisloaded(obj.libraryName)
                pathName = fileparts(which('Inputs.PhidgetAccel'));
                loadlibrary(obj.libraryName,fullfile(pathName,obj.headerName));
            end
            
            phidPtr = libpointer('int32Ptr',0);
            calllib(obj.libraryName, 'CPhidgetAccelerometer_create', phidPtr);
            obj.hPhid = get(phidPtr, 'Value');
            calllib(obj.libraryName, 'CPhidget_open', obj.hPhid, -1);
            
            if calllib(obj.libraryName, 'CPhidget_waitForAttachment', obj.hPhid, 2500)
                disp('Could not open Accelerometer');
                disp('Is the device connected?');
                disp('Was the device closed properly?');
                return
            else
                disp('Opened Accelerometer')
                
                % get properties
                axisCountPtr = libpointer('int32Ptr',0);
                if ~calllib(obj.libraryName, 'CPhidgetAccelerometer_getAxisCount', obj.hPhid, axisCountPtr)
                    obj.NumAxes = get(axisCountPtr, 'Value');
                    fprintf('Axis Count = %d\n',obj.NumAxes);
                end
                
                accelMaxPtr = libpointer('doublePtr',0);
                
                obj.AccelMax = zeros(1,obj.NumAxes);
                for i = 1:get(axisCountPtr, 'Value')
                    if ~calllib(obj.libraryName, 'CPhidgetAccelerometer_getAccelerationMax', obj.hPhid, i-1, accelMaxPtr)
                        obj.AccelMax(i) = get(accelMaxPtr, 'Value');
                        fprintf('Accel max axis %d = %f\n',i,obj.AccelMax(i));
                    end
                end
                
                accelMinPtr = libpointer('doublePtr',0);
                obj.AccelMin = zeros(1,obj.NumAxes);
                for i = 1:get(axisCountPtr, 'Value')
                    if ~calllib(obj.libraryName, 'CPhidgetAccelerometer_getAccelerationMin', obj.hPhid, i-1, accelMaxPtr)
                        obj.AccelMin = get(accelMinPtr, 'Value');
                        fprintf('Accel min axis %d = %f\n',i,obj.AccelMin);
                    end
                end
                
            end
            
            return
        end
        function accelValue = getdata(obj)
            % get values
            accelValuePtr = libpointer('doublePtr',0);
            accelValue = zeros(1,obj.NumAxes);
            
            for i = 1:obj.NumAxes
                if ~calllib(obj.libraryName, 'CPhidgetAccelerometer_getAcceleration', obj.hPhid, i-1, accelValuePtr)
                    accelValue(i) = get(accelValuePtr, 'Value');
                end
            end
        end
        function close(obj)
            % clean up
            calllib(obj.libraryName, 'CPhidget_close', obj.hPhid);
            calllib(obj.libraryName, 'CPhidget_delete', obj.hPhid);
            
            %unloading the library too quickly causes issues.
            pause(1)
            unloadlibrary(obj.libraryName);
            disp('Library unloaded')
        end
    end
end
