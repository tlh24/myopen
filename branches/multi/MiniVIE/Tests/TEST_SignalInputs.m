function TEST_SignalInputs( )
%TEST_SIGNALINPUTS Test harness for Signal Input Classes
%   Use for testing new concrete classes that inherit from
%   Inputs.SignalInput
%
%   Log:
%       22Feb2013 Armiger: Created

MiniVIE.configurePath;

% Inputs.SignalInput types:
test(Inputs.SignalSimulator);
test(Inputs.EmgSimulator);
test(Inputs.DaqHwDevice('mcc','0'));
test(Inputs.DaqHwDevice('nidaq','Dev1'));



    function [result, msg] = test(SignalSource)
        
        result = false;
        msg = '';
        
        try
            
            % hardware configuration
            
            % The device must be initialized prior to use
            SignalSource.initialize();
            
            % Step 2: Add input filters
            % Associate filters with the input source
            % TODO: This really should be on a per-channel basis
            SignalSource.addfilter(Inputs.HighPass());
            SignalSource.addfilter(Inputs.LowPass());
            SignalSource.addfilter(Inputs.Notch());
            % SignalSource.addfilter(Inputs.MAV);
            
            %Set the number of samples to return when getting data:
            SignalSource.NumSamples = 2000;
            
            %Get raw samples from the DAQ and access from the workspace and plot:
            data = SignalSource.getData;
            assert(isequal(size(data),[2000 SignalSource.NumChannels]),'getData returned wrong size');

            data = SignalSource.getData(150);
            assert(isequal(size(data),[150 SignalSource.NumChannels]),'getData returned wrong size');
            
            tic
            data = SignalSource.getData;
            assert(isequal(size(data),[2000 SignalSource.NumChannels]),'getData returned wrong size');
            assert( toc < 0.1 ,'getData is too slow!');

            data = SignalSource.getFilteredData(150);
            assert(isequal(size(data),[150 SignalSource.NumChannels]),'getFilteredData returned wrong size');
            
            % Test other methods:
            ready = isReady(SignalSource,150);
            start(SignalSource);
            stop(SignalSource);
            close(SignalSource);
            
            
            % Success
            result = true;
            fprintf('\t[%s] %s was successful\n',mfilename,class(SignalSource));

            drawnow
            return
        catch ME
            msg = ME.message;
            fprintf('\t[%s] %s Failed!  Message: %s\n',mfilename,class(SignalSource),msg);
        end
        
    end

end