classdef UserDrivenTrainingInterface < Common.MiniVieObj
    properties
        TrainingData
        
        SelectionIndex = 1;
        
        Images          % cell array of class images
        
        hTrainingSource  % has events that will make the gui work
        
        hg % handle graphics
        
    end
    methods
        
        function obj = UserDrivenTrainingInterface(TrainingData)
            
            obj.TrainingData = TrainingData;
            
            obj.loadClassImages();
            obj.SelectionIndex = length(obj.Images);
            
            obj.hg.Figure = UiTools.create_figure('JHU/APL User Driven Training Interface','uiTrainTag');
            numAxes = 5;
            obj.hg.ImAxes = subplot(numAxes,1,1:numAxes-1,'Parent',obj.hg.Figure);
            %             obj.hg.ImLabelAxes = subplot(4,1,1,'Parent',obj.hg.Figure);
            obj.hg.StatusAxes = subplot(numAxes,1,numAxes,'Parent',obj.hg.Figure);
            obj.hg.StatusBar = rectangle('Position',[0.05,0.05,1,0.9],...
                ...'Curvature',[0.8,0.4],...
                'LineWidth',2,'LineStyle','-','FaceColor','r','Parent',obj.hg.StatusAxes);
            
            setDisplay(obj);
            
        end
        function setTrainingSource(obj,hTrainingSource)
            obj.hTrainingSource = hTrainingSource;
            addlistener(hTrainingSource,'NextClass',@(src,evt)obj.previousClass() );
            addlistener(hTrainingSource,'PreviousClass',@(src,evt)obj.nextClass() );
            addlistener(hTrainingSource,'DataCountChange',@(src,evt)obj.updateBar() );
        end
        function nextClass(obj)
            obj.SelectionIndex = obj.SelectionIndex + 1;
            if obj.SelectionIndex > length(obj.Images)
                obj.SelectionIndex = 1;
            end
            obj.setDisplay();
        end
        function previousClass(obj)
            obj.SelectionIndex = obj.SelectionIndex - 1;
            if obj.SelectionIndex < 1
                obj.SelectionIndex = length(obj.Images);
            end
            obj.setDisplay();
        end
        function updateBar(obj)
            labelCounts = max(1,obj.TrainingData.getClassLabelCount);
            cnt = labelCounts(obj.SelectionIndex);
            
            set(obj.hg.StatusBar,'Position',[0.05 0.05 cnt 0.9])
            if cnt < 50
                set(obj.hg.StatusBar,'FaceColor','r')
            elseif cnt < 200
                set(obj.hg.StatusBar,'FaceColor','y')
            else
                set(obj.hg.StatusBar,'FaceColor','g')
            end
            ylim(obj.hg.StatusAxes,[0 1]);
            %ytick([])
            maxNum = 200;
            if cnt < 200
                xlim(obj.hg.StatusAxes,[0 200]);
            else
                xlim(obj.hg.StatusAxes,'auto');
            end
        end
        function setDisplay(obj)
            
            i = obj.SelectionIndex;
            
            image(obj.Images{i},'Parent',obj.hg.ImAxes);
            axis(obj.hg.ImAxes,'off')
            %             plot(obj.hg.StatusAxes,rand(5))
            %axis(obj.hg.StatusAxes,'off')
            updateBar(obj);
            
            
            h = title(obj.hg.ImAxes,obj.TrainingData.ClassNames{i});
            set(h,'FontSize',18)
        end
        
        function loadClassImages(obj)
            % on startup load all class images
            classNames = obj.TrainingData.ClassNames;
            
            % picture path
            pathstr = fileparts(which('PatternRecognition.SimpleTrainer'));
            pathImages = fullfile(pathstr,'Images');
            
            for iClass = 1:obj.TrainingData.NumClasses
                className = classNames{iClass};
                
                % first assume classname equals the filename
                structDir = dir(fullfile(pathImages,[className '.*']));
                if length(structDir) == 1
                    fileName = fullfile(pathImages,structDir(1).name);
                else
                    % check manual mapping to filename
                    % TODO abstract this into an xml or otherwise
                    switch className
                        case 'Humeral Internal Rotation'
                            imgName = 'shoulder(humeral) rotation in.jpg';
                        case 'Humeral External Rotation'
                            imgName = 'shoulder(humeral) rotation out.jpg';
                        case 'Elbow Flexion'
                            imgName = 'elbow flexion.jpg';
                        case 'Elbow Extension'
                            imgName = 'elbow extension.jpg';
                        case 'Wrist Rotate In'
                            imgName = 'wrist pronation.jpg';
                        case 'Wrist Rotate Out'
                            imgName = 'wrist supination.jpg';
                        case 'Wrist Flex In'
                            imgName = 'wrist flexion.jpg';
                        case 'Wrist Extend Out'
                            imgName = 'wrist extension.jpg';
                        case {'Up','Hand Up', 'Radial Deviation','Wrist Abduction'}
                            imgName = 'wrist abduction.jpg';
                        case {'Down','Hand Down', 'Ulnar Deviation','Wrist Adduction'}
                            imgName = 'wrist adduction.jpg';
                        case 'Hand Open'
                            imgName = 'hand open.jpg';
                        case 'Lateral Grasp'
                            imgName = 'lateral grip.jpg';
                        case 'Cylindrical Grasp'
                            imgName = 'cylindrical grip.jpg';
                        case 'Tip Grasp'
                            imgName = 'fine pinch grip.jpg';
                        case 'Hook Grasp'
                            imgName = 'hook grip.jpg';
                        case 'Spherical Grasp'
                            imgName = 'power grip mode.jpg';
                        case 'Pointer Grasp'
                            imgName = 'point grip.jpg';
                        case 'No Movement'
                            imgName = 'no movement (rest).jpg';
                        case {'Index' 'Index Grasp'}
                            imgName = 'IndexFinger.png';
                        case {'Middle' 'Middle Grasp'}
                            imgName = 'MiddleFinger.png';
                        case {'Ring' 'Ring Grasp'}
                            imgName = 'RingFinger.png';
                        case {'Little' 'Little Grasp'}
                            imgName = 'LittleFinger.png';
                        case {'Thumb' 'Thumb Grasp'}
                            imgName = 'ThumbFinger.png';
                        otherwise
                            fprintf('Unmatched class: "%s"\n',className);
                            imgName = '';
                    end
                    
                    fileName = fullfile(pathImages,imgName);
                end
                
                if exist(fileName,'file') ~= 2
                    fprintf('Image failed: "%s\n"',fileName);
                    obj.Images{iClass} = [];
                else
                    img = imread(fileName);
                    obj.Images{iClass} = img;
                end
            end
        end
        function close(obj)
            % close figure
            if ishandle(obj.hg.Figure)
                delete(obj.hg.Figure);
            end
        end
    end
    methods (Static = true)
        function obj = Test
            %%
            obj = MiniVIE.Default;
            ui = UserDrivenTrainingInterface(obj.TrainingData);
            ui.setTrainingSource(obj.Presentation);
            obj.Presentation.Verbose = 0;
            obj.Presentation.start;
        end
    end
end


