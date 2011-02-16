classdef MiniBreakout < Common.MiniViePresentation
    %MINIBREAKOUT Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        hTimer;
        hSink;
        
        FlipDirection = false;
        
        % TODO Abstract here
        ChannelLeft = 'Wrist Extend Out';
        ChannelRight = 'Wrist Flex In';
    end
    properties (SetAccess = private)
        NormalizedPaddlePosition = 0;
    end
    methods
        function obj = MiniBreakout(hSignalSource,hSignalClassifier)
            % Constructor
            obj.hSink = Presentation.BreakoutSink();
            set(obj.hSink.hFig,'CloseRequestFcn',@(src,evt)close(obj));
            
            obj.SignalSource = hSignalSource;
            obj.SignalClassifier = hSignalClassifier;
            
            obj.hTimer = UiTools.create_timer(mfilename,@(src,evt)update(obj));
            obj.hTimer.Period = 0.05;
            
            start(obj.hTimer);
        end
        function close(obj)
            stop(obj.hTimer);
            delete(obj.hSink.hFig);
        end

        function [virtualChannels cursorMoveClass] = getdata(obj)
            obj.SignalSource.NumSamples = obj.SignalClassifier.NumSamplesPerWindow;
            windowData = obj.SignalSource.getFilteredData();
            
            features2D = obj.SignalClassifier.extractfeatures(windowData);
            activeChannelFeatures = features2D(obj.SignalClassifier.ActiveChannels,:);
            [classOut voteDecision] = obj.SignalClassifier.classify(reshape(activeChannelFeatures',[],1));
            
            if obj.SignalClassifier.NumMajorityVotes > 1
                cursorMoveClass = voteDecision;
            else
                cursorMoveClass = classOut;
            end
            
            fprintf('Class Decision: %3d; Vote Decision: %3d; Class = %10s\n',...
                classOut,voteDecision,obj.SignalClassifier.ClassNames{cursorMoveClass})
            
            virtualChannels = obj.SignalClassifier.virtual_channels(features2D,cursorMoveClass);
        end
        function update(obj)
            
            if isempty(obj.SignalSource)
                disp('No Input');
                return
            end
            
            try
                [virtualChannels cursorMoveClass] = getdata(obj);
                class = obj.SignalClassifier.ClassNames{cursorMoveClass};
                
                speed = max(virtualChannels);
                gain = 0.2;
                switch class
                    case obj.ChannelLeft 
                        vel = (speed*gain);
                    case obj.ChannelRight
                        vel = -(speed*gain);
                    otherwise
                        vel = 0;
                end

                if obj.FlipDirection
                    vel = -vel;
                end
                
                obj.hSink.setVelocity(vel);
                
%                 return;
%                 
%                 obj.NormalizedPaddlePosition = obj.NormalizedPaddlePosition + vel;
%                     
%                 obj.NormalizedPaddlePosition = max(min(obj.NormalizedPaddlePosition,1),-1);
%                 obj.hSink.setNormalizedPosition(obj.NormalizedPaddlePosition);
                                
            catch ME
                stop(obj.hTimer)
                rethrow(ME)
            end
        end
    end
end