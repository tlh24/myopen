classdef LowPass < Inputs.Filter
    % Low Pass Filter object, extends filter object
    % Usage: hFilter = Inputs.LowPass(Fc,order,Fs);
    % Example: hFilter = Inputs.LowPass(450,8,1000);
    %
    % 01-Sept-2010 Armiger: Created
    methods
        function obj = LowPass(Fc,order,Fs)
            % Create Filters
            if nargin < 1
                Fc = 450;
            end
            if nargin < 2
                order = 8;
            end
            if nargin < 3
                Fs = 1000;
            end
            F_Nyquist = Fs / 2;
            fprintf('[%s] Creating Lowpass Butterworth IIR Filter with Order = %d; Fc = %d; Fs = %d;\n',...
                mfilename,order,Fc,Fs);
            [obj.Hb, obj.Ha] = butter(order,Fc / F_Nyquist,'low');
        end
    end
end
