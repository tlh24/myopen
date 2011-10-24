classdef DaqHwDevice < Inputs.SignalInput
    % Class for interfacing data acquisition hardware via the matlab data
    % acquisition toolbox.
    % Sample Usage:
    %     hSignalSource = Inputs.DaqHwDevice('mcc','0');
    %     hSignalSource.addfilter(Inputs.HighPass());
    %     hSignalSource.addfilter(Inputs.LowPass());
    %     hSignalSource.addfilter(Inputs.Notch());
    %     hSignalSource.NumSamples = 2000;
    %     hSignalSource.initialize();
    %     hSignalSource.preview(1:4)    
    %
    % 01-Sept-2010 Armiger: Created
    properties
        DaqDeviceName = 'mcc';  % Default is Measurement Computing
        DaqDeviceId = '0';
    end
    properties (SetAccess = private)
        AnalogInput = [];
        AnalogInputName = '';
    end
    methods
        function obj = DaqHwDevice(deviceName,deviceId,channelIds)
            % Constructor
            if nargin > 0
                obj.DaqDeviceName = deviceName;
            end
            if nargin > 1
                obj.DaqDeviceId = deviceId;
            end
            if nargin > 2
                obj.ChannelIds = channelIds;
            else
                obj.ChannelIds = 0:7;
            end
        end
        function initialize(obj)

            assert(ischar(obj.DaqDeviceName));
            assert(ischar(obj.DaqDeviceId));
            
            % verify that adaptor family is installed
            if obj.Verbose
                fprintf('[%s] Getting data acquisition hardware information for "%s"...',mfilename,obj.DaqDeviceName);
            end
            
            try
                hw = daqhwinfo(obj.DaqDeviceName);  % will error if unknown device
                fprintf('Done\n');
            catch ME
                fprintf('FAILED\n');
                fprintf('[%s] Device "%s" is installed.\n',mfilename,obj.DaqDeviceName);
                rethrow(ME);
            end
                   
            % verify board id is valid
            if ~strcmp(obj.DaqDeviceId,hw.InstalledBoardIds)
                disp(hw)
                error('[%s] Board Id: "%s" not found\n',mfilename,obj.DaqDeviceId);
            end
            
            % AnalogInputName string is constructed here to support daqfind.
            % Append "MX" to nidaq boards using the NI-DAQmx library.
            if strcmpi(obj.DaqDeviceName,'nidaq')
                obj.AnalogInputName = [obj.DaqDeviceName 'mx' obj.DaqDeviceId '-AI'];
            else
                obj.AnalogInputName = [obj.DaqDeviceName obj.DaqDeviceId '-AI'];
            end
            
            % Begin device creation
            try
                % Check for existing daq objects:
                hExistingDaqs = daqfind('Name',obj.AnalogInputName);
                numExisting = length(hExistingDaqs);
                if ~isempty(hExistingDaqs)
                    
                    if obj.Verbose
                        fprintf('[%s] Found %d Existing "%s" DAQ Objects. Clearing Objects.\n',mfilename,numExisting,obj.AnalogInputName);
                    end
                    
                    for iExisting = 1:numExisting
                        stop(hExistingDaqs{iExisting});
                        delete(hExistingDaqs{iExisting});
                    end
                end
                
                % Call object constructor
                obj.AnalogInput = analoginput(obj.DaqDeviceName,obj.DaqDeviceId);
                
                if obj.Verbose
                    fprintf('[%s] Created analoginput for device "%s"\n',mfilename ,obj.AnalogInputName);
                end
            catch ME
                fprintf(2,'[%s] Failed during setup of device "%s"\n',mfilename,obj.AnalogInputName);
                rethrow(ME);
            end
            
            % Channel Setup
            set(obj.AnalogInput,'InputType','SingleEnded');
            
            % Set-Verify sample rate since this depends on number of
            % channels
            %set(obj.AnalogInput,'SampleRate',obj.SampleFrequency);
            actualSampleFrequency = setverify(obj.AnalogInput,'SampleRate',obj.SampleFrequency);
            
            if ~isequal(actualSampleFrequency,obj.SampleFrequency)
                fprintf('[%s] Actual sample frequency [%f] differs from requested sample frequency [%f]\n',...
                    mfilename ,actualSampleFrequency, obj.SampleFrequency);
                obj.SampleFrequency = actualSampleFrequency;
            end
            
            set(obj.AnalogInput,'TriggerType','Manual');
            set(obj.AnalogInput,'LoggingMode','Memory');
            set(obj.AnalogInput,'TriggerType','Immediate');
            set(obj.AnalogInput,'TriggerRepeat',Inf);
            
            addchannel(obj.AnalogInput,obj.ChannelIds);
        end
        function data = getData(obj)
            % This function will always return the correct size for data
            % (based on the number of samples) however results will be
            % padded with zeros.  User should check obj.AnalogInput.SamplesAvailable
            % for a deterministic result
            
            if isempty(obj.AnalogInput)
                error('DAQ Object "%s" Not Initialized\n',obj.AnalogInputName);
            end
            
            if ~strcmpi(get(obj.AnalogInput,'Running'),'On')
                if (obj.Verbose >= 1),fprintf('Starting DAQ Object "%s"\n',obj.AnalogInputName);end
                start(obj.AnalogInput);
            end
            
            numSamples = obj.NumSamples;
            numAvailable = obj.AnalogInput.SamplesAvailable;
            if numAvailable < numSamples
                % Not enough data, get whatever is there
                pad = zeros(numSamples-numAvailable,obj.NumChannels);
                data = [pad; peekdata(obj.AnalogInput,numAvailable)];
            else
                data = peekdata(obj.AnalogInput,numSamples);
            end
        end
        function isReady = isReady(obj,numSamples)
            % ensure daq device is ready with the right number of samples
            obj.start();
            
            isReady = obj.AnalogInput.SamplesAvailable >= numSamples;
        end
        function start(obj)
            if ~strcmpi(get(obj.AnalogInput,'Running'),'On')
                if (obj.Verbose >= 1)
                    fprintf('Starting DAQ Object "%s"\n',obj.AnalogInputName);
                end
                start(obj.AnalogInput);
            end
        end
        function stop(obj)
            if strcmpi(get(obj.AnalogInput,'Running'),'On')
                stop(obj.AnalogInput);
            end
        end
        function close(obj)
            stop(obj);
            delete(obj.AnalogInput);
        end
    end
end
