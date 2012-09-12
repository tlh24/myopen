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
    properties (Access = private)
        SignalViewer = [];
    end
    methods
        function obj = MiniVIE
            obj.configurePath;
            obj.initialize();
        end
        function initialize(obj)
            setupFigure(obj);
            
            % Set valid input options
            set(obj.hg.popups(MiniVIE.INPUT),'String',{'None','Signal Simulator','EMG Simulator','DaqHwDevice','CpchSerial','NfuInput','UdpDevice'});
            set(obj.hg.popups(MiniVIE.INPUT),'Value',1);
            set(obj.hg.popups(MiniVIE.SA),'String',{'None','LDA Classifier','DiscriminantAnalysis'});
            set(obj.hg.popups(MiniVIE.SA),'Value',1);
            set(obj.hg.popups(MiniVIE.TRAINING),'String',{'None','Simple Trainer','Mini Guitar Hero','Bar Trainer','Motion Trainer'});
            set(obj.hg.popups(MiniVIE.TRAINING),'Value',1);
            set(obj.hg.popups(MiniVIE.PRESENTATION),'String',{'None','MiniV','Breakout','AGH','MplScenarioMud','MSMS_ADL'});
            set(obj.hg.popups(MiniVIE.PRESENTATION),'Value',1);
        end
        function setupFigure(obj)
            obj.hg.Figure = UiTools.create_figure('MiniVIE Configuration Utility','MiniVIE');
            oldPos = get(obj.hg.Figure,'Position');
            
            newPos = pos('fig');
            newPos(1) = oldPos(1);
            newPos(2) = oldPos(2);
            
            set(obj.hg.Figure,'Position',newPos);
            set(obj.hg.Figure,'CloseRequestFcn',@(src,evnt)closeFig(obj));
            
            % Setup Menu
            obj.hg.MenuFile = uimenu(obj.hg.Figure,...
                'Label','File');
            obj.hg.MenuFileLoad = uimenu(obj.hg.MenuFile,...
                'Label','Load',...
                'Callback',@(src,evt)obj.loadData());
            
            
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
                @(src,evt)setTrainer(obj,src)
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
                'Callback',@(src,evt)obj.pbSignalView);
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
                'Enable','off',...
                'Callback',@(src,evt)obj.pbTrain());
            
            obj.hg.PresentationButtons(1) = uicontrol(obj.hg.Figure,...
                'Position',pos('cntrl',MiniVIE.PRESENTATION,3,1,1),...
                'Style','pushbutton',...
                'String','Adjust Gains',...
                'Enable','off',...
                'Callback',@(src,evt)obj.pbAdjustGains());
            obj.hg.PresentationButtons(2) = uicontrol(obj.hg.Figure,...
                'Position',pos('cntrl',MiniVIE.PRESENTATION,4,1,1),...
                'Style','pushbutton',...
                'String','Stop',...
                'Enable','off',...
                'Callback',@(src,evt)obj.pbPresentationStop());
            obj.hg.PresentationButtons(3) = uicontrol(obj.hg.Figure,...
                'Position',pos('cntrl',MiniVIE.PRESENTATION,5,1,1),...
                'Style','pushbutton',...
                'String','Assessment',...
                'Enable','off',...
                'Callback',@(src,evt)obj.pbAssessment());
            
        end
        function loadData(obj)
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
            
            success = obj.TrainingInterface.loadTrainingData();
            if ~success
                return
            end
            
            %obj.SignalClassifier.NumMajorityVotes = 7;
            %obj.SignalClassifier.ActiveChannels = [1 2 3 4 5 6 7 8];
            obj.SignalClassifier.TrainingData = obj.TrainingInterface.getFeatureData;
            obj.SignalClassifier.TrainingDataLabels = obj.TrainingInterface.getClassLabels;
            obj.SignalClassifier.TrainingEmg = obj.TrainingInterface.getEmgData;
            obj.SignalClassifier.train();
            obj.SignalClassifier.computeerror();
            obj.SignalClassifier.computeGains();
            
        end
        function close(obj)
            
            try obj.SignalSource.close();end
            try obj.SignalClassifier.close();end
            try obj.TrainingInterface.close();end
            try obj.Presentation.close();end
            
        end
        function setSignalSource(obj,src)
            % Callback for selecting an input
            
            % Hold teh last value in case of error, restore
            persistent lastValue
            if isempty(lastValue)
                lastValue = 1;
            end
            
            % Get callback properties
            string = get(src,'String');
            value = get(src,'Value');
            
            try
                % get existing source
                h = obj.SignalSource;
                % in there's an old one, try to close it
                if ~isempty(h)
                    try, close(h); end
                end
                
                % match the newly selected input
                switch string{value}
                    case 'Signal Simulator'
                        h = Inputs.SignalSimulator();
                    case 'EMG Simulator'
                        h = Inputs.EmgSimulator();
                    case 'DaqHwDevice'
                        h = Inputs.DaqHwDevice('nidaq','Dev2');
                        % h = Inputs.DaqHwDevice('mcc','0');
                    case 'UdpDevice'
                        h = Inputs.UdpDevice();
                    case 'CpchSerial'
                        h = Inputs.CpchSerial('COM11',...
                            uint16(hex2dec('FFFF')),uint16(hex2dec('FFFF')));
                        %uint16(hex2dec('FFFF')),uint16(hex2dec('0000')));
                    case 'NfuInput'
                        h = Inputs.NfuInput();
                    otherwise
                        % None
                        h = [];
                end
                
                if isempty(h)
                    % Disable buttons
                    set(obj.hg.SignalSourceButtons(:),'Enable','off');
                else
                    % Enable buttons
                    set(obj.hg.SignalSourceButtons(:),'Enable','on');
                    
                    % Setup filters and remaining properties
                    obj.println('Adding Filters',1);
                    Fs = h.SampleFrequency;
                    h.addfilter(Inputs.HighPass(10,8,Fs));
                    %h.addfilter(Inputs.LowPass(350,8,Fs));
                    %h.addfilter(Inputs.Notch(60.*(1:4),5,Fs));
                    h.addfilter(Inputs.Notch(60.*(1:4),5,Fs));
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
                    
                    h.ClassNames = GUIs.guiClassifierChannels.getSavedDefaults();
                    
                    if (isempty(h.ClassNames))
                        h.ClassNames = GUIs.guiClassifierChannels.getDefaultNames;
                    end
                    
                    h.NumMajorityVotes = 0;
                    h.initialize();
                    
                    NumSamplesPerWindow = 200;
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
        function setTrainer(obj,src)
            persistent lastValue
            if isempty(lastValue)
                lastValue = 1;
            end
            
            % Get callback properties
            string = get(src,'String');
            value = get(src,'Value');
            
            try
                h = obj.TrainingInterface;
                
                if ~isempty(h)
                    try
                        close(h);
                    end
                end
                
                switch string{value}
                    case 'Simple Trainer'
                        h = PatternRecognition.SimpleTrainer();
                        prompt={'Enter Number of Repetitions:',...
                            'Enter Contraction Length (sec):',...
                            'Enter Delay Length (sec):'...
                            };
                        name='Input for Training Interface';
                        numlines=1;
                        defaultanswer={'4','2','3'};
                        answer=inputdlg(prompt,name,numlines,defaultanswer);
                        assert(length(answer) == 3,'Expected 3 outputs');
                        vals = str2double(answer);
                        assert(~any(isnan(vals)),'Expected 3 numeric values');
                        
                        h.NumRepetitions = vals(1);
                        h.ContractionLengthSeconds = vals(2);
                        h.DelayLengthSeconds = vals(3);
                        
                    case 'Bar Trainer'
                        h = PatternRecognition.BarTrainer();
                    case 'Mini Guitar Hero'
                        h = PatternRecognition.MiniGuitarHero();
                    case 'Motion Trainer'
                        h = PatternRecognition.MotionTrainer();
                    otherwise
                        % None
                        h = [];
                end
                
                if isempty(h)
                    % Disable buttons
                    set(obj.hg.TrainingButtons(:),'Enable','off');
                else
                    % Enable buttons
                    set(obj.hg.TrainingButtons(:),'Enable','on');
                    if isempty(obj.SignalSource)
                        errordlg('Select an Input Source');
                        return;
                    elseif isempty(obj.SignalClassifier)
                        errordlg('Select a Classifier');
                        return;
                    end
                    
                    h.initialize(obj.SignalSource,obj.SignalClassifier);
                end
                
            catch ME
                errordlg({'Error Initializing Training Interface.',ME.message});
                set(src,'Value',lastValue);
                return
            end
            
            obj.TrainingInterface = h;
            lastValue = value;
            
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
                        h.initialize(obj.SignalSource,obj.SignalClassifier);
                        h.CloseGain = [80 80 80 80];
                        start(h.Timer);
                        obj.println('Presentation setup complete',1);
                    case 'MplScenarioMud'
                        obj.println('Setting up presentation...',1);
                        h = MPL.MplScenarioMud;
                        h.initialize(obj.SignalSource,obj.SignalClassifier);
                        start(h.Timer);
                        obj.println('Presentation setup complete',1);
                    case 'Breakout'
                        h = Presentation.MiniBreakout(obj.SignalSource,obj.SignalClassifier);
                    case 'AGH'
                        h = Presentation.AirGuitarHero.AirGuitarHeroEmg(obj.SignalSource,obj.SignalClassifier);
                    case 'MSMS_ADL'
                        h = Scenarios.MSMS_ADL.MsmsDisplayScenario(obj.SignalSource,obj.SignalClassifier);
                        
                        response = questdlg('Which Side?','Select Side','Left','Right','Left');
                        
                        switch response
                            case 'Left'
                                h.isLeftSide = 1;
                            case 'Right'
                                h.isLeftSide = 0;
                            otherwise
                                % User Cancelled
                                return
                        end
                        %isLeftSide = 1;   % <---- Use this parameter to select Left=1/Right=0
                        h.initialize();
                        
                        h.start();
                        
                    otherwise
                        % None
                        h = [];
                end
                
                if isempty(h)
                    % Disable buttons
                    set(obj.hg.PresentationButtons(:),'Enable','off');
                else
                    % Enable buttons
                    set(obj.hg.PresentationButtons(:),'Enable','on');
                end
                
                obj.Presentation = h;
            catch ME
                errordlg(ME.message);
            end
        end
        
        function println(obj,str,verboseLevel)
            if obj.Verbose >= verboseLevel
                fprintf('%s\n',str);
            end
        end
        function hViewer = getSignalViewer(obj)
            if isempty(obj.SignalViewer) || ~isvalid(obj.SignalViewer)
                obj.SignalViewer = [];
            end
            
            hViewer = obj.SignalViewer;
            
        end
    end
    methods (Access = private)
        function pbSignalView(obj)
            obj.SignalViewer = GUIs.guiSignalViewer(obj.SignalSource);
        end
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
            if isa(obj.TrainingInterface,'PatternRecognition.AdaptiveTrainingInterface')
                % If adaptive, no need to retrain
            else
                % else we need to train the classifier with the collected
                % data
                obj.SignalClassifier.TrainingData = obj.TrainingInterface.getFeatureData;
                obj.SignalClassifier.TrainingDataLabels = obj.TrainingInterface.getClassLabels;
                obj.SignalClassifier.train();
                obj.SignalClassifier.computeerror();
                obj.SignalClassifier.computeConfusion();
                obj.SignalClassifier.computeGains();
            end
        end
        function pbAdjustGains(obj)
            GUIs.guiGainAdjust(obj);
        end
        function pbPresentationStop(obj)
            if ~isempty(obj.Presentation)
                stop(obj.Presentation);
            end
        end
        function pbAssessment(obj)
            guiClassifierAssessment(obj.SignalSource,obj.SignalClassifier);
        end
    end
    methods (Static = true)
        function configurePath
            pathName = fileparts(which('MiniVIE'));
            addpath(pathName);
            addpath([pathName filesep 'Utilities']);
        end
        function obj = Default
            MiniVIE.configurePath
            
            obj.SignalSource = Inputs.SignalSimulator();
            obj.SignalSource.addfilter(Inputs.HighPass());
            obj.SignalSource.addfilter(Inputs.LowPass());
            obj.SignalSource.addfilter(Inputs.Notch(60.*(1:4),5,1000));
            obj.SignalSource.NumSamples = 2000;
            obj.SignalSource.initialize();
            
            obj.SignalClassifier = SignalAnalysis.Lda();
            defaultChannels = GUIs.guiChannelSelect.getLastChannels();
            fprintf('Setting Active Channels to: [');
            fprintf(' %d',defaultChannels);
            fprintf(' ]\n');
            obj.SignalClassifier.ActiveChannels = defaultChannels;
            
            obj.SignalClassifier.ClassNames = GUIs.guiClassifierChannels.getSavedDefaults();
            
            if (isempty(obj.SignalClassifier.ClassNames))
                obj.SignalClassifier.ClassNames = GUIs.guiClassifierChannels.getDefaultNames;
            end
            
            obj.SignalClassifier.NumMajorityVotes = 0;
            obj.SignalClassifier.initialize();
            
            NumSamplesPerWindow = 200;
            fprintf('Setting Window Size to: %d\n',NumSamplesPerWindow);
            obj.SignalClassifier.NumSamplesPerWindow = NumSamplesPerWindow;
            
            obj.TrainingInterface = PatternRecognition.SimpleTrainer();
            obj.TrainingInterface.NumRepetitions = 3;
            obj.TrainingInterface.ContractionLengthSeconds = 2;
            obj.TrainingInterface.DelayLengthSeconds = 1;
            obj.TrainingInterface.initialize(obj.SignalSource,obj.SignalClassifier);
            
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

