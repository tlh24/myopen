classdef UsbDaq < Inputs.SignalInput
    % Class for interfacing data acquisition hardware via the matlab data
    % acquisition toolbox.
    % Sample Usage:
    %     hSignalSource = Inputs.UsbDaq('mcc','0');
    %     hSignalSource.addfilter(Inputs.HighPass());
    %     hSignalSource.addfilter(Inputs.LowPass());
    %     hSignalSource.addfilter(Inputs.Notch());
    %     hSignalSource.NumSamples = 2000;
    %     hSignalSource.initialize();
    %     hSignalSource.preview(1:4)    
    %
    % 01-Sept-2010 Armiger: Created
    properties
        AnalogInput = [];
        AnalogInputName = '';
        
        DaqDeviceName = 'mcc';
        DaqDeviceId = '0';

    end
    methods
        function obj = UsbDaq(deviceName,deviceId,channelIds)
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
            
            if strcmpi(obj.DaqDeviceName,'nidaq')
                % Append MX to nidaq boards using the NI-DAQmx library
                obj.AnalogInputName = [obj.DaqDeviceName 'mx' obj.DaqDeviceId '-AI'];
            else
                obj.AnalogInputName = [obj.DaqDeviceName obj.DaqDeviceId '-AI'];
            end
            
            try
                % Check for existing daq objects:
                hExistingDaqs = daqfind('Name',obj.AnalogInputName);
                numExisting = length(hExistingDaqs);
                if ~isempty(hExistingDaqs)
                    if (obj.Verbose >= 1),fprintf('Found %d Existing "%s" DAQ Objects. Clearing Objects.\n',numExisting,obj.AnalogInputName);end
                    for iExisting = 1:numExisting
                        stop(hExistingDaqs{iExisting});
                        delete(hExistingDaqs{iExisting});
                    end
                end
                obj.AnalogInput = analoginput(obj.DaqDeviceName,obj.DaqDeviceId);
                if (obj.Verbose >= 1),fprintf('Created analoginput for device "%s"\n',obj.AnalogInputName);end
            catch ME
                fprintf(2,'Failed during setup of device "%s"\n',obj.AnalogInputName);
                rethrow(ME);
            end
            
            % Channel Setup
            set(obj.AnalogInput,'InputType','SingleEnded');
            set(obj.AnalogInput,'SampleRate',obj.SampleFrequency);
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
            if ~strcmpi(get(obj.AnalogInput,'Running'),'On')
                if (obj.Verbose >= 1),fprintf('Starting DAQ Object "%s"\n',obj.AnalogInputName);end
                start(obj.AnalogInput);
            end
            
            isReady = obj.AnalogInput.SamplesAvailable >= numSamples;
        end
        function stop(obj)
            stop(obj.SignalSource.AnalogInput);
        end
    end
end