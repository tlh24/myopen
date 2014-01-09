classdef Notch < Inputs.Filter
    % Notch Filter object, extends filter object
    % Note that an array of center frequencies are supported
    % Usage: hFilter = Inputs.Notch(centerFrequency,frequencyWidth,order,Fs);
    % Example: hFilter = Inputs.Notch([60 120 180],5,64,1000);
    %
    % 01-Sept-2010 Armiger: Created
    % 08-Mar-2013 Armiger: If a negative filter order is specified, a FIR filter is returned, else an IIR filter returned
    methods
        function obj = Notch(centerFrequency,frequencyWidth,order,Fs)
            % Create Filters
            if nargin < 1
                centerFrequency = [60 180 280 380];
            end
            if nargin < 2
                frequencyWidth = 5;
            end
            if nargin < 3
                order = 64;
            end
            if nargin < 4
                Fs = 1000;
            end
            
            F_Nyquist = Fs / 2;
            if order < 0
                type = 'Window-based FIR';
            else
                type = 'Butterworth IIR';
            end
            formatFreq = repmat('%d,',1,length(centerFrequency));
            formatFreq(end) = []; % remove training comma
            format = ['[%s] Creating %s Filter with Order = %d; Fc = [' formatFreq ']; Width = %d; Fs = %d \n']; 
            fprintf(format,mfilename,type,order,centerFrequency,frequencyWidth,Fs);
            for i = 1:length(centerFrequency)
                F_Low = (centerFrequency(i)-frequencyWidth)/F_Nyquist;
                F_High =  (centerFrequency(i)+frequencyWidth)/F_Nyquist;
                
                if order < 0
                % The denominator of FIR filters is, by definition, equal to 1
                obj.Hb(i,:) = fir1(abs(order), [F_Low F_High], 'stop');
                obj.Ha(i,:) = 1; 
                else                
                [obj.Hb(i,:), obj.Ha(i,:)] = butter(1, [F_Low F_High], 'stop');
                end
            end
            
            %Window-based finite impulse response filter design
        end
    end
end
