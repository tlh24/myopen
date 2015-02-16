classdef PhidgetAccel < handle
    % PhidgetAccel - MATLAB Class for accessing phidget accelerometer via
    % dll.  Part of the myopen/MiniVIE Project.
    %
    % For use with 32-bit Matlab on windows based systems only.  Note that
    % 32 bit matlab will run on 32/64 bit Windows XP/Vista/7
    %
    % Refer to product documentation at:
    % "http://www.phidgets.com/products.php?product_id=1059"
    %
    % Interface type:
    % This device communicates via USB using the Phidgets driver library.  The
    % Phidget21 C library is contained in phidget21.dll, and referenced using
    % the phidget21Matlab.h header file.  These files are stored in the package
    % folder: C:\svn\myopen\MiniVIE\+Inputs\@PhidgetAccel
    % 
    % C library files in matlab are interfaced using the following commands:
    % - loadlibrary
    % - libpointer
    % - libstruct
    % - calllib
    % More info can be found via MATLAB Documentation: 
    % MATLAB > Advanced Software Development > Calling External Functions >
    % Call C Shared Libraries
    %
    %
    % Example 1:
    %   hPhidget = Inputs.PhidgetAccel();
    %   hPhidget.initialize();
    %
    %   accelData = hPhidget.getData;
    %   disp(accelData);
    %
    %   % cleanup: Note it's important to close properly since the direct
    %   % access to the dll can cause memory issues / crashes if not
    %   % properly managed
    %   hPhidget.close();
    %
    % Example 2:
    %   hPhidget = Inputs.PhidgetAccel();
    %   hPhidget.initialize();
    %   hPhidget.preview;
    %   hPhidget.close();
    %
    % Example 3:
    %   hPhidget = Inputs.PhidgetAccel();
    %   hPhidget.initialize();
    %   hPhidget.previewAngles;
    %   hPhidget.close();    
    %
    % See Also: Inputs.PhidgetSource
    %
    % 06Feb2012 Armiger: Created
    % 11Feb2013 Armiger: Added angle measurement and interface for
    %                    guiSignalViewer
    properties (SetAccess = private)
        libraryName = 'phidget21';
        headerName = 'phidget21Matlab.h';
        
        NumAxes;
        AccelMax;
        AccelMin;
        
        NumChannels;
        
        hPhid;
        
        isInitialized = false;
    end
    methods
        function obj = PhidgetAccel
            % Create PhidgetAccel object
            % Current support is only for 32-bit MATLAB installations on
            % windows.
            % 
            % initialize() method must be called before use.
            % close() method must be called before reinitialization
            %
            assert(strcmpi(computer('arch'),'WIN32'),...
                'Phidget interface currently only supported on 32bit matlab running on windows architecture');
            
        end
        function initialize(obj)
            % obj.initialize()
            % Initialize Phidget Accelerometer 
            if obj.isInitialized
                fprintf('Device already initialized\n');
                return
            end
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
                error('Device attach failed');
            end
            
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
            
            obj.isInitialized = true;
            obj.NumChannels = 3;
        end
        function accelValue = getData(obj)
            if ~obj.isInitialized
                error('Device not initialized\n');
            end
            
            % get accel values
            accelValuePtr = libpointer('doublePtr',0);
            accelValue = zeros(1,obj.NumAxes);
            
            for i = 1:obj.NumAxes
                if ~calllib(obj.libraryName, 'CPhidgetAccelerometer_getAcceleration', obj.hPhid, i-1, accelValuePtr)
                    accelValue(i) = get(accelValuePtr, 'Value');
                end
            end
        end
        function anglesDegrees = getAngle(obj)
            % anglesDegrees = getAngle(obj)
            % Get angles in degrees for each of the reported accel
            % directions
            %
            % Order is: [XY YX XZ ZX YZ ZY]

            if ~obj.isInitialized
                error('Device not initialized\n');
            end
            
            accelValue = getData(obj);
            if isempty(accelValue)
                anglesDegrees = [];
                return
            end
            a12 = atan2d(accelValue(1),accelValue(2));
            a13 = atan2d(accelValue(1),accelValue(3));
            a21 = atan2d(accelValue(2),accelValue(1));
            a23 = atan2d(accelValue(2),accelValue(3));
            a31 = atan2d(accelValue(3),accelValue(1));
            a32 = atan2d(accelValue(3),accelValue(2));
            
            anglesDegrees = [a12 a21 a13 a31 a23 a32];
            
        end
        function close(obj)
            % clean up
            calllib(obj.libraryName, 'CPhidget_close', obj.hPhid);
            calllib(obj.libraryName, 'CPhidget_delete', obj.hPhid);
            
            %unloading the library too quickly causes issues.
            pause(1)
            
            unloadlibrary(obj.libraryName);
            disp('Library unloaded')
            obj.isInitialized = false;
        end
        function preview(obj)
            % Opens strip-chart preview of the accel device output and
            % plots data in real-time
            %
            % Requires MiniVIE env to be configured

            if ~obj.isInitialized
                error('Device not initialized\n');
            end
            
            hP = LivePlot(3,100,{'AccX','AccY','AccZ'});
            
            StartStopForm([]);
            while StartStopForm
                a = obj.getData;
                hP.putdata(a);
                fprintf('AccX = %6.2f AccY = %6.2f AccZ = %6.2f \n',a);
                drawnow
            end
            
        end
        function previewAngles(obj)
            % Opens strip-chart preview of the accel device output and
            % plots angle measurements in real-time

            if ~obj.isInitialized
                error('Device not initialized\n');
            end
            
            hP = LivePlot(6,100,{'XY','YX','XZ','ZX','YZ','ZY'});
            hP.AxisLimits = [-185 185];
            
            StartStopForm([]);
            while StartStopForm()
                angles = getAngle(obj);
                hP.putdata(angles);
                fprintf('[ XY: %6.1f YX: %6.1f | XZ: %6.1f ZX: %6.1f | YZ: %6.1f ZY: %6.1f ]\n',angles);
                pause(0.02);
            end
            
        end
    end
    methods (Static = true)
        function [newData, t] = Test
            % Test Phidget device and return the true sample rate (since
            % library may be called faster but return duplicate samples
            
            a = Inputs.PhidgetAccel;
            a.initialize
            
            tStop = 10; %seconds
            t0 = clock;
            newData = [];
            t = [];
            while 1
                
                newData = [newData; getData(a)]; %#ok<AGROW>
                t = [t etime(clock,t0)]; %#ok<AGROW>
                if t(end) >= tStop;
                    break;
                end
            end
            
            close(a);
            
            fprintf('Unique Sample Rate is ~ %6.1f samples per second\n',...
                length(unique(newData,'rows'))/tStop);
        end
        function TestAngles
            % Test Phidget device and return angle measurements
            
            obj = Inputs.PhidgetAccel;
            obj.initialize
            
            % Cleanup on close
            cleanupObj = onCleanup(@() obj.close);
            
            while StartStopForm()
                angles = getAngle(obj);
                fprintf('[ XY: %6.1f YX: %6.1f | XZ: %6.1f ZX: %6.1f | YZ: %6.1f ZY: %6.1f ]\n',angles);
                pause(0.02);
            end
            
        end
    end
end
