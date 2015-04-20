classdef Features
    % Descriptions are from: 
    % Study of stability of time-domain features for electromyographic
    % pattern recognition Dennis Tkach, He Huang and Todd A Kuiken
    %
    % Tkach et al. Journal of NeuroEngineering and Rehabilitation  2010, 
    % 7:21 http://www.jneuroengrehab.com/content/7/1/21

    methods (Static = true)
        function mAV = meanAbsoluteValue(x)
            % Mean Absolute Value (mAV)
            % This feature is the mean absolute value of signal x in an
            % analysis time window with N samples. x_k is the kth sample in
            % this analysis window 
            %
            % mAV = (1 / N) * sum(abs(s))
            %
            mAV = mean(abs(x));
        end
        function ZC = zeroCrossings(x,epsilon)
            % Zero Crossings (ZC)
            % ZC is the number of times signal x crosses zero within an
            % analysis window; it is a simple measure associated with the
            % frequency of the signal. To avoid signal crossing counts due
            % to low-level noise, a threshold ? was included (? = 0.015 V)
            % [27]. 
            
        end
        function SSC = slopeSign(x,epsilon)
            %Slope sign change is related to signal frequency and is
            %defined as the number of times that the slope of the EMG
            %waveform changes sign within an analysis window. A count
            %threshold ? was used to reduce noise-inducedcounts (? = 0.015
            %V) [27]. 
        end
    end
end
