classdef CytonEndpointGui
    % Test gui for endpoint veocity control
    % Usage: CytonEndpointGui()
    %
    % 03-Apr-2013 Armiger: Created
    methods (Static = true)
        function Run
            % output
            import Presentation.CytonI.*
            hCyton = CytonI;
            
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
                
                vMove = 5*cmd(1:3);
                wMove = cmd(4:6);
                
                
                % Get current position
                q = hCyton.JointParameters;
                
                % Get dh param constants
                [~, a, d] = hCyton.hControls.getDHParams();
                
                % Get Jacobian at the current position
                J_ = hCyton.hControls.symJacobianFull(a(6),d(2),d(3),d(4),d(5),d(6),q(1),q(2),q(3),q(4),q(5),q(6));
                
                % invert jacobian
                invJ_ = pinv(J_);
                
                % create a joint angle velocity command based on endpoint
                % velocity commmand
                q_dot = invJ_ * [vMove(:); wMove(:)];
                q_dot(8) = 0;
                
                q = q + q_dot;
                
                q(8) = graspVal;
                
                hCyton.setJointParameters(q);
                
                % display position
                p = hCyton.T_0_EndEffector(1:3,4);
                fprintf('[%s] End Effector Position: %6.2f %6.2f %6.2f \n',...
                    mfilename, p)
                
            end
            
        end
    end
end