classdef Notch < Inputs.Filter
    % Notch Filter object, extends filter object
    % Note that an array of center frequencies are supported
    %
    % 01-Sept-2010 Armiger: Created
    methods
        function obj = Notch(centerFrequency,frequencyWidth,Fs)
            % Create Filters
            if nargin < 1
                centerFrequency = [60 180 280 380];
            end
            if nargin < 2
                frequencyWidth = 5;
            end
            if nargin < 3
                Fs = 1000;
            end
            
            F_Nyquist = Fs / 2;
            
            for i = 1:length(centerFrequency)
                [obj.Hb(i,:) obj.Ha(i,:)] = butter(1, [(centerFrequency(i)-frequencyWidth)/F_Nyquist (centerFrequency(i)+frequencyWidth)/F_Nyquist], 'stop');
            end
        end
    end
end
