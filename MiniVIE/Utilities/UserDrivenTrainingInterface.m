classdef UserDrivenTrainingInterface < Common.MiniVieObj
    properties
        TrainingData    % Handle to Training Data Storge Object
        
        SelectionIndex = 1;
        
        Images          % cell array of class images
        
        hTrainingSource  % has events that will make the gui work
        
        hg % handle graphics
        
    end
    events
        % Events triggered by GUI
        ClearClass      % the clear pushbutton was pressed
        ClassChange     % the list box value was changed
        StartAdd        % the add data togglebutton pressed
        StopAdd         % the add data togglebutton released
    end
    methods
        
        function obj = UserDrivenTrainingInterface(TrainingData)
            
            obj.TrainingData = TrainingData;
            
            obj.loadClassImages();
            obj.SelectionIndex = length(obj.Images);
            
            % Setup the Display
            obj.hg.Figure = UiTools.create_figure('User Driven Training Interface','uiTrainTag');
            
            pos = get(obj.hg.Figure,'Position');
            pos(3) = 1.3*pos(3);
            pos(4) = 1.1*pos(4);
            set(obj.hg.Figure,'Position',pos)
            
            obj.hg.hSelection = uicontrol('Parent',obj.hg.Figure,'Style','listbox',...
                'Units','Normalized',...
                'Position',[0.01 0.1 0.296 0.88],'Callback',@(src,evt)cbChangedClass(obj));
            set(obj.hg.hSelection,'String',obj.TrainingData.ClassNames);
            set(obj.hg.hSelection,'FontSize',14);
            
            obj.hg.hAdd = uicontrol('Parent',obj.hg.Figure,'Style','togglebutton',...
                'Units','Normalized',...
                'Position',[0.05 0.01 0.1 0.088],...
                'String','Add',...
                'Callback',@(src,evt) cbAdd(obj) );
            obj.hg.hClear = uicontrol('Parent',obj.hg.Figure,'Style','pushbutton',...
                'Units','Normalized',...
                'Position',[0.16 0.01 0.1 0.088],...
                'String','Clear',...
                'Callback',@(src,evt) notify(obj,'ClearClass') );
            
            obj.hg.ImAxes = axes('Parent',obj.hg.Figure,'Units','Normalized',...
                'Position',[0.35 0.125 0.6 0.8]);
            obj.hg.StatusAxes = axes('Parent',obj.hg.Figure,'Units','Normalized',...
                'Position',[0.35 0.06 0.6 0.12]);
            obj.hg.StatusBar = rectangle('Position',[0.05,0.05,1,0.9],...
                ...'Curvature',[0.8,0.4],...
                'LineWidth',2,'LineStyle','-','FaceColor','r','Parent',obj.hg.StatusAxes);
            
            % update the display parameters
            setDisplay(obj);
            
        end
        function setTrainingSource(obj,hTrainingSource)
            obj.hTrainingSource = hTrainingSource;
            addlistener(hTrainingSource,'NextClass',@(src,evt)obj.previousClass() );
            addlistener(hTrainingSource,'PreviousClass',@(src,evt)obj.nextClass() );
            addlistener(hTrainingSource,'DataCountChange',@(src,evt)obj.updateBar() );
        end
        function nextClass(obj)
            % method to move to the next class inthe list
            obj.SelectionIndex = obj.SelectionIndex + 1;
            if obj.SelectionIndex > length(obj.Images)
                obj.SelectionIndex = 1;
            end
            
            % pull up the training button since class has changed
            if get(obj.hg.hAdd,'Value')
                set(obj.hg.hAdd,'Value',0)
                notify(obj, 'StopAdd')
            end

            obj.setDisplay();
        end
        function previousClass(obj)
            % method to move to the previous class inthe list
            obj.SelectionIndex = obj.SelectionIndex - 1;
            if obj.SelectionIndex < 1
                obj.SelectionIndex = length(obj.Images);
            end
            
            % pull up the training button since class has changed
            set(obj.hg.hAdd,'Value',0)
            
            obj.setDisplay();
        end
%         function add = doAddData(obj)
%             % Return the state of the training button
%             add = get(obj.hg.hAdd,'Value');
%         end
        function updateBar(obj)
            % Update the smaple count progress bar
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
            set(obj.hg.StatusAxes,'YTick',[]);
            maxNum = 200;
            if cnt < maxNum
                xlim(obj.hg.StatusAxes,[0 maxNum]);
            else
                xlim(obj.hg.StatusAxes,'auto');
            end
        end
        function setDisplay(obj)
            
            i = obj.SelectionIndex;
            
            classNames = obj.TrainingData.ClassNames;
            currentClass = classNames{i};

            % set(obj.hg.hSelection,'String',classNames)
            % set(obj.hg.hSelection,'FontSize',14)
            
            set(obj.hg.hSelection,'Value',obj.SelectionIndex);
            % Prevent changing class while adding data
            if get(obj.hg.hAdd,'Value')
                set(obj.hg.hSelection,'Enable','off');
            else
                set(obj.hg.hSelection,'Enable','on');
            end

            image(obj.Images{i},'Parent',obj.hg.ImAxes);
            axis(obj.hg.ImAxes,'off')
            daspect(obj.hg.ImAxes,[1 1 1]);
            %axis(obj.hg.StatusAxes,'off')
            updateBar(obj);
            
            h = title(currentClass,'Parent',obj.hg.ImAxes);
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
    methods (Access = 'private')
        function cbChangedClass(obj)
            % Callback for selecting a new class from the list box
            obj.SelectionIndex = get(obj.hg.hSelection,'Value');
            notify(obj, 'ClassChange');
            
            obj.setDisplay();
        end
        
        function cbAdd(obj)
            % Toggle button callback
            if get(obj.hg.hAdd,'Value')
                notify(obj, 'StartAdd')
            else
                notify(obj, 'StopAdd')
            end

            setDisplay(obj)
        end
    end
    methods (Static = true)
        function [ui, obj] = Test
            %% UserDrivenTrainingInterface.Test
            obj = MiniVIE.Default;
            ui = UserDrivenTrainingInterface(obj.TrainingData);
            ui.setTrainingSource(obj.Presentation);
            obj.Presentation.Verbose = 0;
            obj.Presentation.start;
        end
    end
end

