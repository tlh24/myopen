classdef MiniVIE < Common.MiniVieObj
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
    methods
        function obj = MiniVIE
            obj.configurePath;
            setupFigure(obj);
            
            % Set valid input options
            set(obj.hg.popups(MiniVIE.INPUT),'String',{'None','Signal Simulator','EMG Simulator','DaqHwDevice','CpchSerial','NfuUdp','UdpDevice'});
            set(obj.hg.popups(MiniVIE.INPUT),'Value',1);
            set(obj.hg.popups(MiniVIE.SA),'String',{'None','LDA Classifier','DiscriminantAnalysis'});
            set(obj.hg.popups(MiniVIE.SA),'Value',1);
            set(obj.hg.popups(MiniVIE.TRAINING),'String',{'None','Simple Trainer','Mini Guitar Hero','Bar Trainer'});
            set(obj.hg.popups(MiniVIE.TRAINING),'Value',1);
            set(obj.hg.popups(MiniVIE.PRESENTATION),'String',{'None','MiniV','Breakout','AGH','MplScenarioMud'});
            set(obj.hg.popups(MiniVIE.PRESENTATION),'Value',1);
        end
        function setupFigure(obj)
            obj.hg.Figure = UiTools.create_figure('MiniVIE Configuration Utility','MiniVIE');
            %             pos = get(obj.hg.Figure,'Position');
            %             pos(3) = 700;
            set(obj.hg.Figure,'Position',pos('fig'));
            set(obj.hg.Figure,'CloseRequestFcn',@(src,evnt)closeFig(obj));
            
            function closeFig(obj)
                try
                    close(obj);
                catch ME
                    fprintf(2,'Error closing objects:\n"%s"\n',ME.message);
                end
                delete(obj.hg.Figure);
            end
            
            header = {'Inputs:','Signal Analysis:','Training:','Plant:','Presentation:'};
            puCallbacks = {
                @(src,evt)setSignalSource(obj,src)
                @(src,evt)setSignalAnalysis(obj,src)
                @(src,evt)setTrainer(obj,get(src,'String'),get(src,'Value'))
                []
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
                    'String','None',...
                    'Callback',puCallbacks{iColumn},...
                    'Background','White');
                
            end
            
            % pb
            obj.hg.SignalSourceButtons(1) = uicontrol(obj.hg.Figure,...
                'Position',pos('cntrl',MiniVIE.INPUT,3,1,1),...
                'Style','pushbutton',...
                'Enable','off',...
                'String','SignalViewer',...
                'Callback',@(src,evt)GUIs.SignalViewer(obj.SignalSource));
            obj.hg.SignalSourceButtons(2) = uicontrol(obj.hg.Figure,...
                'Position',pos('cntrl',MiniVIE.INPUT,4,1,1),...
                'Style','pushbutton',...
                'Enable','off',...
                'String','Audio Preview',...
                'Callback',@(src,evt)obj.SignalSource.audiopreview(1));
            
            obj.hg.SignalAnalysisButtons(1) = uicontrol(obj.hg.Figure,...
                'Position',pos('cntrl',MiniVIE.SA,3,1,1),...
                'Style','pushbutton',...
                'String','Select Classes',...
                'Enable','off',...
                'Callback',@(src,evt)obj.SignalClassifier.uiEnterClassNames);
            
            obj.hg.TrainingButtons(1) = uicontrol(obj.hg.Figure,...
                'Position',pos('cntrl',MiniVIE.TRAINING,3,1,1),...
                'Style','pushbutton',...
                'String','Begin Training',...
                'Callback',@(src,evt)obj.pbTrain());
        end
        function close(obj)
            
            try obj.SignalSource.close();end
            try obj.SignalClassifier.close();end
            try obj.TrainingInterface.close();end
            try obj.Presentation.close();end
            
        end
        function setPresentation(obj,string,value)
            try
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
                    case 'MplScenarioMud'
                        obj.println('Setting up presentation...',1);
                        h = MPL.MplScenarioMud;
                        h.hScenario = obj;
                        start(h.hTimer);
                        obj.println('Presentation setup complete',1);
                    case 'Breakout'
                        h = Presentation.MiniBreakout(obj.SignalSource,obj.SignalClassifier);
                    case 'AGH'
                        h = Presentation.AirGuitarHero.AirGuitarHeroEmg(obj.SignalSource,obj.SignalClassifier);
                        
                    otherwise
                        % None
                        h = [];
                end
                
                if ~isempty(h)
                end
                
                obj.Presentation = h;
            catch ME
                errordlg(ME.message);
            end
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
                    h = PatternRecognition.SimpleTrainer();
                    h.NumRepetitions = 3;
                    h.ContractionLengthSeconds = 2;
                    h.DelayLengthSeconds = 1;
                case 'Bar Trainer'
                    h = PatternRecognition.BarTrainer();
                case 'Mini Guitar Hero'
                    h = PatternRecognition.MiniGuitarHero();
                otherwise
                    % None
                    h = [];
            end
            
            if ~isempty(h)
                if isempty(obj.SignalSource)
                    errordlg('Select an Input Source');
                    return;
                elseif isempty(obj.SignalClassifier)
                    errordlg('Select a Classifier');
                    return;
                end
                
                h.initialize(obj.SignalSource,obj.SignalClassifier);
            end
            
            obj.TrainingInterface = h;
            
        end
        
        function setSignalAnalysis(obj,src)
            persistent lastValue
            if isempty(lastValue)
                lastValue = 1;
            end

            string = get(src,'String');
            value = get(src,'Value');
            
            try
                h = obj.SignalClassifier;
                
                if ~isempty(h)
                    try
                        close(h);
                    end
                end
                
                if isempty(obj.SignalSource)
                    errordlg('Select an Input Source');
                    set(src,'Value',lastValue);
                    return;
                end
                
                switch string{value}
                    case 'LDA Classifier'
                        h = SignalAnalysis.Lda();
                    case 'DiscriminantAnalysis'
                        h = SignalAnalysis.DiscriminantAnalysis();
                    otherwise
                        % None
                        h = [];
                end
                
                if isempty(h)
                    set(obj.hg.SignalAnalysisButtons(:),'Enable','off');
                else
                    set(obj.hg.SignalAnalysisButtons(:),'Enable','on');
                
                    % TODO: Note signals only updated on classifier
                    % creation
                    defaultChannels = GUIs.guiChannelSelect.getLastChannels();
                    fprintf('Setting Active Channels to: [');
                    fprintf(' %d',defaultChannels);
                    fprintf(' ]\n');
                    h.ActiveChannels = defaultChannels;
                    
                    h.ClassNames = SignalAnalysis.ClassifierChannels.getSavedDefaults();
                    
                    if (isempty(h.ClassNames))
                        h.ClassNames = SignalAnalysis.ClassifierChannels.getDefaultNames;
                    end
                    
                    h.NumMajorityVotes = 0;
                    h.initialize();
                    
                    NumSamplesPerWindow = 250;
                    fprintf('Setting Window Size to: %d\n',NumSamplesPerWindow);
                    h.NumSamplesPerWindow = NumSamplesPerWindow;
                end
                
                obj.SignalClassifier = h;
                
            catch ME
                errordlg({'Error Initializing Signal Analysis.',ME.message});
                set(src,'Value',lastValue);
                rethrow(ME);
                return
            end
            
            obj.SignalClassifier = h;
            lastValue = value;
            
        end
        function setSignalSource(obj,src)
            persistent lastValue
            if isempty(lastValue)
                lastValue = 1;
            end
            
            string = get(src,'String');
            value = get(src,'Value');
            
            try
                
                h = obj.SignalSource;
                
                if ~isempty(h)
                    try
                        close(h);
                    end
                end
                
                switch string{value}
                    case 'Signal Simulator'
                        h = Inputs.SignalSimulator();
                    case 'EMG Simulator'
                        h = Inputs.EmgSimulator();
                    case 'DaqHwDevice'
                        % h = Inputs.DaqHwDevice('nidaq','Dev2');
                        h = Inputs.DaqHwDevice('mcc','0');
                    case 'UdpDevice'
                        % h = Inputs.DaqHwDevice('nidaq','Dev2');
                        h = Inputs.UdpDevice();
                    case 'CpchSerial'
                        h = Inputs.CpchSerial('COM13');
                    case 'NfuUdp'
                        h = Inputs.NfuUdp();
                    otherwise
                        % None
                        h = [];
                end
                
                if isempty(h)
                    set(obj.hg.SignalSourceButtons(:),'Enable','off');
                else
                    set(obj.hg.SignalSourceButtons(:),'Enable','on');
                
                    obj.println('Adding Filters',1);
                    h.addfilter(Inputs.HighPass());
                    % h.addfilter(Inputs.LowPass());
                    h.addfilter(Inputs.Notch(60.*(1:4),5,1000));
                    % obj.SignalSource.addfilter(Inputs.MAV(150));
                    h.NumSamples = 2000;
                    h.initialize();
                end
                
            catch ME
                errordlg({'Error Initializing Input Device.',ME.message});
                set(src,'Value',lastValue);
                return
            end
            
            obj.SignalSource = h;
            lastValue = value;
            
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
            elseif isempty(obj.TrainingInterface)
                errordlg('Select a Training Interface');
                return;
            end
            
            obj.TrainingInterface.collectdata();
            if ~isa(obj.TrainingInterface,'PatternRecognition.AdaptiveTrainingInterface')
                % If adaptive, no need to retrain
                obj.SignalClassifier.TrainingData = obj.TrainingInterface.Features3D(:,:,1:obj.TrainingInterface.SampleCount);
                obj.SignalClassifier.TrainingDataLabels = obj.TrainingInterface.ClassLabelId(1:obj.TrainingInterface.SampleCount);
                obj.SignalClassifier.train();
                obj.SignalClassifier.computeerror();
                obj.SignalClassifier.computeGains();
            end
        end
    end
    methods (Static = true)
        function configurePath
            pathName = fileparts(which('MiniVIE'));
            addpath(pathName);
            addpath([pathName filesep 'Utilities']);
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

