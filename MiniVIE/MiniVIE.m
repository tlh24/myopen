classdef MiniVIE < handle
    properties
        SignalSource
        SignalClassifier
        TrainingInterface
        Presentation
        
        hg;  % handle graphics
        
        Verbose = 1;
    end
    properties (Constant = true)
        %enum
        INPUT = 1;
        SA = 2;
        TRAINING = 3;
        PLANT = 4;
        PRESENTATION = 5;
    end
    properties (SetAccess = private)
        InputChoiceLookup = {'UsbDaq' }
        
    end
    methods
        function obj = MiniVIE
            obj.configurePath;
            setupFigure(obj);
            
            % Set valid input options
            
            set(obj.hg.popups(MiniVIE.INPUT),'String',{'None','EMG Simulator','UsbDaq'});
            set(obj.hg.popups(MiniVIE.INPUT),'Value',1);
            set(obj.hg.popups(MiniVIE.PRESENTATION),'String',{'None','MiniV'});
            set(obj.hg.popups(MiniVIE.PRESENTATION),'Value',1);
            set(obj.hg.popups(MiniVIE.SA),'String',{'None','LDA Classifier'});
            set(obj.hg.popups(MiniVIE.SA),'Value',1);
            set(obj.hg.popups(MiniVIE.TRAINING),'String',{'None','Simple Trainer','Mini Guitar Hero'});
            set(obj.hg.popups(MiniVIE.TRAINING),'Value',1);
            
        end
        function setupFigure(obj)
            obj.hg.Figure = UiTools.create_figure('MiniVIE Configuration Utility','MiniVIE');
            %             pos = get(obj.hg.Figure,'Position');
            %             pos(3) = 700;
            set(obj.hg.Figure,'Position',pos('fig'));
            
            
            header = {'Inputs:','Signal Analysis:','Training:','Plant:','Presentation:'};
            puCallbacks = {
                @(src,evt)setInput(obj,get(src,'String'),get(src,'Value'))
                @(src,evt)setSignalAnalysis(obj,get(src,'String'),get(src,'Value'))
                @(src,evt)setTrainer(obj,get(src,'String'),get(src,'Value'))
                @(src,evt)setSignalAnalysis(obj,get(src,'String'),get(src,'Value'))
                @(src,evt)setPresentation(obj,get(src,'String'),get(src,'Value'))
                };
                        
            for iColumn = 1:5
                % title:
                uicontrol(...
                    'Parent',obj.hg.Figure,...
                    'String',header{iColumn},...
                    'Style','text',...
                    'Position',pos('cntrl',iColumn,1,1,1),...
                    'HorizontalAlignment','Left'...
                    );
                
                % popup
                obj.hg.popups(iColumn) = uicontrol(obj.hg.Figure,...
                    'Position',pos('cntrl',iColumn,2,1,1),...
                    'Style','popupmenu',...
                    'String','Temp',...
                    'Callback',puCallbacks{iColumn},...
                    'Background','White');
                
            end
            
            % pb
            uicontrol(obj.hg.Figure,...
                'Position',pos('cntrl',MiniVIE.INPUT,3,1,1),...
                'Style','pushbutton',...
                'String','Preview Analog',...
                'Callback',@(src,evt)obj.SignalSource.preview(1:4));
            uicontrol(obj.hg.Figure,...
                'Position',pos('cntrl',MiniVIE.INPUT,4,1,1),...
                'Style','pushbutton',...
                'String','Preview Filtered',...
                'Callback',@(src,evt)obj.SignalSource.previewFiltered(1:4));
            uicontrol(obj.hg.Figure,...
                'Position',pos('cntrl',MiniVIE.INPUT,5,1,1),...
                'Style','pushbutton',...
                'String','Preview Features',...
                'Callback',@(src,evt)obj.SignalSource.previewFeatures(1:4));
            uicontrol(obj.hg.Figure,...
                'Position',pos('cntrl',MiniVIE.INPUT,6,1,1),...
                'Style','pushbutton',...
                'String','Audio Preview',...
                'Callback',@(src,evt)obj.SignalSource.audiopreview(1));
            
            uicontrol(obj.hg.Figure,...
                'Position',pos('cntrl',MiniVIE.SA,3,1,1),...
                'Style','pushbutton',...
                'String','Select Channels',...
                'Callback',@(src,evt)obj.SignalClassifier.uiEnterClassNames);
            
            uicontrol(obj.hg.Figure,...
                'Position',pos('cntrl',MiniVIE.TRAINING,3,1,1),...
                'Style','pushbutton',...
                'String','Begin Training',...
                'Callback',@(src,evt)obj.pbTrain());
            
            
        end
        function setPresentation(obj,string,value)
            h = obj.Presentation;
            if ~isempty(h)
                try
                    close(h);
                end
            end
            
            switch string{value}
                case 'MiniV'
                    obj.println('Setting up presentation...',1);
                    h = Scenarios.MiniVDisplayScenario;
                    h.setup_display;
                    h.hScenario = obj;
                    h.CloseGain = [80 80 80 80];
                    start(h.hTimer);
                    obj.println('Presentation setup complete',1);
                otherwise
                    % None
                    h = [];
            end
            
            if ~isempty(h)
            end
            
            obj.Presentation = h;
        end
        function setTrainer(obj,string,value)
            h = obj.TrainingInterface;
            
            if ~isempty(h)
                try
                    close(h);
                end
            end
            
            switch string{value}
                case 'Simple Trainer'
                    h = PatternRecognition.SimpleTrainer(obj.SignalSource,obj.SignalClassifier);
                case 'Mini Guitar Hero'
                    h = PatternRecognition.MiniGuitarHero(obj.SignalSource,obj.SignalClassifier);
                otherwise
                    % None
                    h = [];
            end
            
            if ~isempty(h)
                h.initialize();
            end
            
            obj.TrainingInterface = h;
            
        end
        
        function setSignalAnalysis(obj,string,value)
            h = obj.SignalClassifier;
            
            if ~isempty(h)
                try
                    close(h);
                end
            end
            
            switch string{value}
                case 'LDA Classifier'
                    h = SignalAnalysis.Classifier();
                otherwise
                    % None
                    h = [];
            end
            
            if ~isempty(h)
                h.ActiveChannels = 1:4;
                h.NumMajorityVotes = 0;
                h.initialize();
            end
            
            obj.SignalClassifier = h;
            
        end
        function setInput(obj,string,value)
            h = obj.SignalSource;
            
            if ~isempty(h)
                try
                    close(h);
                end
            end
            
            switch string{value}
                case 'EMG Simulator'
                    h = Inputs.SignalSimulator();
                case 'UsbDaq'
                    h = Inputs.UsbDaq('mcc','0');
                otherwise
                    % None
                    h = [];
            end
            
            if ~isempty(h)
                obj.println('Adding Filters',1);
                h.addfilter(Inputs.HighPass());
                h.addfilter(Inputs.LowPass());
                h.addfilter(Inputs.Notch());
                % obj.SignalSource.addfilter(Inputs.MAV(150));
                h.NumSamples = 2000;
                h.initialize();
            end
            
            obj.SignalSource = h;
            
        end
        function println(obj,str,verboseLevel)
            if obj.Verbose >= verboseLevel
                fprintf('%s\n',str);
            end
        end
    end
    methods (Access = private)
        function pbTrain(obj)
            
            if isempty(obj.SignalSource)
                errordlg('Select an Input Source');
                return;
            elseif isempty(obj.SignalClassifier)
                errordlg('Select a Classifier');
                return;
            end
            
            obj.TrainingInterface.collectdata();
            
        end
    end
    methods (Static = true)
        function configurePath
            addpath(pwd);
            addpath('Utilities');
        end
        function obj = go
            
            obj = MiniVIE;
            return
            
            %% Combine pieces to make a scenario (EMG Painting)
            hPollock = Scenarios.EmgJacksonPollock;
            hPollock.SignalSource = obj.SignalSource;
            obj.SignalClassifier.ClassNames = {'No Movement' 'Wrist Flex' 'Wrist Extend' 'Pronate' 'Supinate' 'Hand Open' 'Hand Close'};
            obj.TrainingInterface = PatternRecognition.SimpleTrainer;
            
            hPollock.EmgClassifier = obj.SignalClassifier;
            hPollock.TrainingInterface = obj.TrainingInterface;
            hPollock.begin_training
            
            %% Run the Scenario
            hPollock.run
            
            %% Combine pieces differently to create an interactive training module (periodically updates classifier)
            obj.SignalClassifier.ClassNames = {'No Movement' 'Index' 'Middle' 'Ring' 'Little'};
            obj.SignalClassifier.reset();
            
            hMiniAGH = Scenarios.GuitarHeroTrainer;
            hMiniAGH.SignalSource = obj.SignalSource;
            hMiniAGH.EmgClassifier = obj.SignalClassifier;
            hMiniAGH.ResetClassifierOnInitialization = 1;
            hMiniAGH.initialize();
            hMiniAGH.run
            
            
            %% Once Classifier is trained
            hMiniV = Scenarios.MiniVDisplayScenario;
            hMiniV.setup_display;
            hMiniV.EmgClassifier = obj.SignalClassifier;
            hMiniV.SignalSource = obj.SignalSource;
            hMiniV.CloseGain = [80 80 80 80];
            start(hMiniV.hTimer);
            
            %% Adjust Gains as needed
            hMiniV.CloseGain = [80 80 80 80];
            
            %% Yet another Scenario that allows you to play wii with a video capture device
            obj = Presentation.AirGuitarHero.AirGuitarHeroEmg;
        end
    end
end

