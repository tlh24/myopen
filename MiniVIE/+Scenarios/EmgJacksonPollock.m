classdef EmgJacksonPollock < handle
    % Scenario that involves a user interface for painting with EMG
    %
    % 01-Sept-2010 Armiger: Created
    
    properties
        SignalSource;
        EmgClassifier;
        TrainingInterface;
    end
    methods
        function obj = EmgJacksonPollock
            % Creator
        end
        
        function initialize(obj)
            assert(~isempty(obj.SignalSource));
            assert(~isempty(obj.EmgClassifier));
            assert(~isempty(obj.TrainingInterface));
        end
        
        function begin_training(obj)
            
            [features3D classLabelId] = obj.TrainingInterface.collectdata(obj.SignalSource,obj.EmgClassifier);
            %save('test3.dat','features3D','classLabelId')
            %load('test3.dat','-mat')
            
            obj.EmgClassifier.TrainingData = features3D;
            obj.EmgClassifier.TrainingDataLabels = classLabelId;
            obj.EmgClassifier.train();
            obj.EmgClassifier.computeerror();
        end
        function run(obj)
            a = Presentation.Pollock;
            a.initialize;
            cursorPosition = [50 50];
            lastCursorPosition = cursorPosition;
            timeoutCount = 0;
            
            screenSize = get(0, 'screensize');
            limits = [ 50 150 screenSize(3)-750 screenSize(4)-150];

            dX = 0;
            dY = 0;
            
            obj.SignalSource.NumSamples = obj.EmgClassifier.NumSamplesPerWindow;
            
            tic
            while toc < 120
                drawnow
                windowData = obj.SignalSource.getFilteredData();
                features2D = obj.EmgClassifier.extractfeatures(windowData);
                activeChannelFeatures = features2D(obj.EmgClassifier.ActiveChannels,:);
                [classOut voteDecision] = obj.EmgClassifier.classify(reshape(activeChannelFeatures',[],1));
                
                if obj.EmgClassifier.NumMajorityVotes > 1
                    cursorMoveClass = voteDecision;
                else
                    cursorMoveClass = classOut;
                end
                
                virtualChannels = obj.EmgClassifier.virtual_channels(features2D,cursorMoveClass);
                
                speed = max(virtualChannels);
                switch obj.EmgClassifier.ClassNames{cursorMoveClass}
                    case 'No Movement'
                        dX = 0;
                        dY = 0;
                    case'Right'
                        dX = 50*speed*rand;
                    case 'Left'
                        dX = -50*speed*rand;
                    case 'Down'
                        dY = 50*speed*rand;
                    case 'Up'
                        dY = -50*speed*rand;
                    otherwise
                end
                
                cursorPosition = cursorPosition + [dX dY];
                
                cursorPosition(1) = max(limits(1),min(cursorPosition(1),limits(3)));
                cursorPosition(2) = max(limits(2),min(cursorPosition(2),limits(4)));

                if isequal(lastCursorPosition,cursorPosition)
                    timeoutCount = timeoutCount + 1;
                else
                    timeoutCount = 0;
                end
                
                if timeoutCount == 50
                    a.click;
                    beep;
                end
                
                if timeoutCount > 500
                    break;
                end
                
                a.update_cursor(cursorPosition(1),cursorPosition(2));
                lastCursorPosition = cursorPosition;
            end
            a.minimize_window;
        end
    end
    methods (Static = true)
        function obj = Default
            
            obj = Scenarios.EmgJacksonPollock();
            
            obj.SignalSource = Inputs.UsbDaq('mcc',0);
            obj.SignalSource.initialize();
            obj.SignalSource.addfilter(Inputs.HighPass());
            obj.SignalSource.addfilter(Inputs.LowPass());
            obj.SignalSource.addfilter(Inputs.Notch());
            
            obj.EmgClassifier = PatternRecognition.Classifier();
            obj.EmgClassifier.ClassNames = {'No Movement' 'Up' 'Down' 'Left' 'Right'};
            obj.EmgClassifier.ActiveChannels = 1:4;
            obj.EmgClassifier.NumMajorityVotes = 7;
            obj.EmgClassifier.initialize();

            obj.TrainingInterface = PatternRecognition.SimpleTrainer;
            obj.TrainingInterface.NumRepetitions = 2;
            obj.TrainingInterface.ContractionLengthSeconds = 1;
            obj.TrainingInterface.DelayLengthSeconds = 2;
            
        end
    end
end
