classdef MiniVIE < Common.MiniVieObj
    properties
        SignalSource
        SignalClassifier
        TrainingInterface
        TrainingData
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
            set(obj.hg.popups(MiniVIE.SA),'String',{'None','LDA Classifier','DiscriminantAnalysis','SupportVectorMachine'});
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
            obj.hg.MenuFilePrefix = uimenu(obj.hg.MenuFile,...
                'Label','Set Filename Prefix...',...
                'Callback',@(src,evt)obj.setFilePrefix());
            obj.hg.MenuFileLoad = uimenu(obj.hg.MenuFile,...
                'Label','Load Training Data...',...
                'Callback',@(src,evt)obj.loadData());
            obj.hg.MenuFileSave = uimenu(obj.hg.MenuFile,...
                'Label','Save Training Data...',...
                'Callback',@(src,evt)obj.saveTrainingData());
            
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
            obj.hg.SignalAnalysisButtons(2) = uicontrol(obj.hg.Figure,...
                'Position',pos('cntrl',MiniVIE.SA,4,1,1),...
                'Style','pushbutton',...
                'String','Classifier Parameters',...
                'Enable','off',...
                'Callback',@(src,evt)obj.pbClassifierProperties);
            
            obj.hg.TrainingButtons(1) = uicontrol(obj.hg.Figure,...
                'Position',pos('cntrl',MiniVIE.TRAINING,3,1,1),...
                'Style','pushbutton',...
                'String','Begin Training',...
                'Enable','off',...
                'Callback',@(src,evt)obj.pbBeginTraining());
            obj.hg.TrainingButtons(2) = uicontrol(obj.hg.Figure,...
                'Position',pos('cntrl',MiniVIE.TRAINING,4,1,1),...
                'Style','pushbutton',...
                'String','Clear Training Data',...
                'Enable','off',...
                'Callback',@(src,evt)obj.pbTrainClear());
            obj.hg.TrainingButtons(3) = uicontrol(obj.hg.Figure,...
                'Position',pos('cntrl',MiniVIE.TRAINING,5,1,1),...
                'Style','pushbutton',...
                'String','Train',...
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
        function setFilePrefix(obj)
            
            tempFileName = 'defaultFilePrefix';

            filePrefix = UiTools.load_temp_file(tempFileName);
            if isempty(filePrefix)
                filePrefix = 'FILE_';
            end
            
            % Use these defaults
            prompt={
                'Enter file prefix ( e.g. VIE_03_ ):',...
                };
            name='File Parameters';
            numlines=1;
            defaultanswer={filePrefix};
            answer = inputdlg(prompt,name,numlines,defaultanswer);
            
            if isempty(answer)
                return
            end
            
            assert(length(answer) == 1,'Expected 1 output');
            
            filePrefix = answer{1};
            
            UiTools.save_temp_file(tempFileName,filePrefix);
            
        end
        function loadData(obj)
            if isempty(obj.SignalSource)
                errordlg('Select an Input Source');
                return;
            elseif isempty(obj.SignalClassifier)
                errordlg('Select a Classifier');
                return;
            end
            
            assert(~isempty(obj.TrainingData),'Training Data module does not exist');
            
            success = obj.TrainingData.loadTrainingData;
            if ~success
                return
            end
            
            % TODO: restore majority votes and other classifier settings?
            %obj.SignalClassifier.NumMajorityVotes = 7;
            %obj.SignalClassifier.ActiveChannels = [1 2 3 4 5 6 7 8];
            
            %obj.SignalClassifier.TrainingData = obj.TrainingInterface.getFeatureData;
            %obj.SignalClassifier.TrainingDataLabels = obj.TrainingInterface.getClassLabels;
            %obj.SignalClassifier.TrainingEmg = obj.TrainingInterface.getEmgData;
            obj.SignalClassifier.train();
            obj.SignalClassifier.computeerror();
            obj.SignalClassifier.computeGains();
            
        end
        function saveTrainingData(obj)
            if isempty(obj.SignalSource)
                errordlg('Select an Input Source');
                return;
            elseif isempty(obj.SignalClassifier)
                errordlg('Select a Classifier');
                return;
            end
            
            assert(~isempty(obj.TrainingData),'Training Data module does not exist');
            
            obj.TrainingData.saveTrainingData;
            
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
                        %h = Inputs.DaqHwDevice('nidaq','Dev2');
                        %h = Inputs.DaqHwDevice('mcc','0');
                        h = loadDaqHwDevice();
                    case 'UdpDevice'
                        h = Inputs.UdpDevice();
                    case 'CpchSerial'
                        h = loadCpchSerial();
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
                    case 'SupportVectorMachine'
                        h = SignalAnalysis.Svm();
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
                    
                    NumSamplesPerWindow = 200;
                    fprintf('Setting Window Size to: %d\n',NumSamplesPerWindow);
                    h.NumSamplesPerWindow = NumSamplesPerWindow;
                    
                    if isempty(obj.TrainingData)
                        obj.TrainingData = PatternRecognition.TrainingData();
                        obj.TrainingData.initialize(...
                            obj.SignalSource.NumChannels,...
                            h.NumFeatures,...
                            h.NumSamplesPerWindow);
                    end
                    
                    h.initialize(obj.TrainingData);
                    
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
                            'Show images (y/n)?'
                            };
                        name='Input for Training Interface';
                        numlines=1;
                        defaultanswer={'2','4','3','Y'};
                        answer=inputdlg(prompt,name,numlines,defaultanswer);
                        assert(length(answer) == 4,'Expected 4 outputs');
                        vals = str2double(answer);
                        assert(~any(isnan(vals(1:3))),'Expected 3 numeric values');
                        
                        h.NumRepetitions = vals(1);
                        h.ContractionLengthSeconds = vals(2);
                        h.DelayLengthSeconds = vals(3);
                        h.EnablePictures = strcmpi(answer{4},'y');
                        
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
                    
                    h.initialize(obj.SignalSource,obj.SignalClassifier,obj.TrainingData);
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
                        h.initialize(obj.SignalSource,obj.SignalClassifier,obj.TrainingData);
                        h.update();
                        h.Verbose = 0;
                        start(h.Timer);
                        obj.println('Presentation setup complete',1);
                    case 'MplScenarioMud'
%%                        
                        QA = {
                            'Enable NFU (y/n):'                     'y'
                            'Destination IP (192.168.1.199):'       '127.0.0.1'
                            'Destination Port (9027):'              '9027'
                            'Enable Tactors (y/n)'                  'y'
                            'Tactor Ids ([5 6 7]):'                 '[3 4]'
                            'Enable Orientation Sensors (y/n):'     'n'
                            };
                        name = 'MPL Control Interface';
                        numlines = 1;
                        prompt = QA(:,1);
                        defaultanswer = QA(:,2);
                        answer = inputdlg(prompt,name,numlines,defaultanswer);
                        if isempty(answer)
                            % User Cancelled
                        end
                        
                        assert(length(answer) == 6,'Expected 6 outputs');

                        obj.println('Setting up presentation...',1);
                        h = MPL.MplScenarioMud;
                        h.enableNfu = strncmpi(answer{1},'y',1);
                        h.VulcanXAddress = answer{2}; % TODO: Validate
                        
                        port = str2double(answer{3});
                        assert(~isnan(port),'Invalid Port');
                        h.VulcanXPort = port; 
                        %h.VulcanXPort = answer{3}; 
                        
                        h.EnableFeedback = strncmpi(answer{4},'y',1);
                        h.TactorIds = answer{5}; % TODO: Validate
                        
                        h.enableMicroStrain = strncmpi(answer{6},'y',1);
                        
                        h.initialize(obj.SignalSource,obj.SignalClassifier,obj.TrainingData);
                        h.update();
                        h.Verbose = 0;
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
                rethrow(ME);
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
        function pbBeginTraining(obj)
            
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
                obj.SignalClassifier.train();
                obj.SignalClassifier.computeerror();
                obj.SignalClassifier.computeConfusion();
                obj.SignalClassifier.computeGains();
            end
        end
        function pbClassifierProperties(obj)
            
            % Use these defaults
            prompt = {
                'Enter Majority Votes (e.g. 7):'
                };
            name = 'Classifier Parameters';
            numlines = 1;
            defaultanswer = {'7'};
            answer = inputdlg(prompt,name,numlines,defaultanswer);
            
            if isempty(answer)
                % user cancelled
                return
            end
            
            assert(length(answer) == 1,'Expected 1 output');
            convertedVal = str2double(answer{1});
            assert(~isnan(convertedVal),'Expected a number');
            
            obj.SignalClassifier.NumMajorityVotes = convertedVal;
            
        end
        function pbTrainClear(obj)
            obj.TrainingData.clearData();
        end
        function pbTrain(obj)
            obj.SignalClassifier.train();
            obj.SignalClassifier.computeerror();
            obj.SignalClassifier.computeConfusion();
            obj.SignalClassifier.computeGains();
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

function h = loadCpchSerial()
% Load a CpchSerial with default prompts

tempFileName = 'defaultCpchSerial';
cpchParams = UiTools.load_temp_file(tempFileName);
if isempty(cpchParams)
    % Use these defaults
    prompt={
        'Enter Serial Port Name (e.g. COM1):',...
        'Enter BioAmplifier Channel Mask (e.g. FFFF):',...
        'Enter GPIO Channel Mask (e.g. 0000):',...
        };
    name='CPCH Parameters';
    numlines=1;
    defaultanswer={'COM14','FFFF','FFFF'};
    answer=inputdlg(prompt,name,numlines,defaultanswer);
    assert(length(answer) == 3,'Expected 3 outputs');
    
    cpchParams.SerialPort = answer{1};
    cpchParams.BioampMask = uint16(hex2dec(answer{2}));
    cpchParams.GPIMask = uint16(hex2dec(answer{3}));
end

h = Inputs.CpchSerial(cpchParams.SerialPort,cpchParams.BioampMask,cpchParams.GPIMask);

try
    h.initialize();
catch ME
    % clearing defaults
    UiTools.delete_temp_file(tempFileName);
    rethrow(ME);
end
UiTools.save_temp_file(tempFileName,cpchParams);

end

function h = loadDaqHwDevice()
% Load a dawHwDevice with default prompts

tempFileName = 'defaultDaqHwDevice';
daqParams = UiTools.load_temp_file(tempFileName);
if isempty(daqParams)
    % Use these defaults
    prompt={
        'Enter DAQ Board Name (e.g. mcc):',...
        'Enter DAQ Board Id (e.g. 0):',...
        };
    name='DAQ Parameters';
    numlines=1;
    defaultanswer={'nidaq','Dev2'};
    answer=inputdlg(prompt,name,numlines,defaultanswer);
    assert(length(answer) == 2,'Expected 2 outputs');
    
    daqParams.Name = answer{1};
    daqParams.Id = answer{2};
end

h = Inputs.DaqHwDevice(daqParams.Name,daqParams.Id);

try
    h.initialize();
catch ME
    % clearing defaults
    UiTools.delete_temp_file(tempFileName);
    rethrow(ME);
end

UiTools.save_temp_file(tempFileName,daqParams);

end

