classdef CytonEndpointGui
    % Test gui for endpoint velocity control
    % Usage: Presentation.CytonI.CytonEndpointGui.Run()
    %
    % 03-Apr-2013 Armiger: Created
    methods (Static = true)
        function hCyton = Run
            % output
            import Presentation.CytonI.*
            hCyton = CytonI;
            
            % Set an initial condition
            %hCyton.setJointParameters([0 -pi/4 0 -pi/4 0 -pi/2 0 1]);
            
            % figure setup
            f = UiTools.create_figure('EndPointVelocityControl','guiEndpoint');
            clf(f)
            
            sliderNames = {'+/- X','+/- Y','+/- Z','+/- Roll','+/- Pitch','+/- Yaw','+/- Grip'};
            
            N = length(sliderNames);
            s = zeros(1,N);
            h = cell(1,N);
            t = zeros(1,N);
            
            % setup each slider
            xyzRange = [-0.2 0.2];
            for i = 1:N
                s(i) = subplot(1,N,i,'Parent',f);
                set(s(i),'XTick',[]);
                if i > 1
                    set(s(i),'YTick',[]);
                end
                ylim(s(i),xyzRange);
                
                t(i) = text('Position',[0.5 0],'String',sliderNames{i},'Rotation',90,'Parent',s(i));
                
                h{i} = GUIs.widgetSlider('Parent',s(i));
                h{i}.Range = xyzRange;
                h{i}.Type = {'Vertical'};
                h{i}.PatchWidth = 0.03;
                h{i}.Value = 0.0;
                h{i}.PersistLastValue = false;
                h{i}.PersistValue = 0;
                
                
            end
            
            cmd = zeros(1,N);
            
            graspVal = 0;
            
            % create timer so command continually executes
            hTimer = UiTools.create_timer('endpointVelocityTimer',@(src,evt)timerCallback);
            hTimer.Period = 0.05;
            
            % assign callbacks
            for i = 1:N
                h{i}.ButtonUpFcn = @(src,evt)stopCallback(i);
                h{i}.ButtonMotionFcn = @(src,evt)updateSlider(i,evt);
                h{i}.ButtonDownFcn = @(src,evt)start(hTimer);
            end
            
            % callbacks
            function updateSlider(iSlider,val)
                cmd(iSlider) = val;
            end
            
            function stopCallback(iSlider)
                cmd(iSlider) = 0;
                timerCallback
                stop(hTimer)
            end
            function timerCallback
                graspVal = max(min(1,graspVal + cmd(7)),0);
                %fprintf('Command: %6.2f %6.2f %6.2f; %6.2f %6.2f %6.2f; Grasp = %6.2f\n',cmd(1:6),graspVal);
                
                vMove = nan(1,3);
                wMove = nan(1,3);
                vMove = 15*cmd(1:3);
                wMove = cmd(4:6);
                %wMove(3) = nan;
                
                % Get current position
                q = hCyton.JointParameters;

                [q_dot, J]= hCyton.hControls.computeVelocity([vMove(:); wMove(:)]);
                
                if isempty(q_dot)
                    return
                end
                q_dot = min(abs(q_dot),0.1) .* sign(q_dot);
                q = q + q_dot;
                
                q(8) = graspVal;
                
                hCyton.setJointParameters(q);
                
                % display position
                p = hCyton.T_0_EndEffector(1:3,4);
%                 fprintf('[%s] End Effector Position: %6.2f %6.2f %6.2f \n',...
%                     mfilename, p)
%                  fprintf('%d %6.2f %6.2f %6.2f %6.2f %6.2f %6.2f %6.2f %6.2f \n',...
%                      rank(J),q_dot(1:7),graspVal);
                
            end
            
        end
    end
end