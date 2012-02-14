classdef HighPass < Inputs.Filter
    % High Pass Filter object, extends filter object
    % Usage: hFilter = Inputs.HighPass(Fc,order,Fs);
    % Example: hFilter = Inputs.HighPass(15,8,1000);
    %
    % 01-Sept-2010 Armiger: Created
    methods
        function obj = HighPass(Fc,order,Fs)
            % Create Filters
            if nargin < 1
                Fc = 15;
            end
            if nargin < 2
                order = 8;
            end
            if nargin < 3
                Fs = 1000;
            end
            F_Nyquist = Fs / 2;
            [obj.Hb obj.Ha] = butter(order,Fc/F_Nyquist,'high');
        end
    end
end
