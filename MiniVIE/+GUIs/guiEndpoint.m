function guiEndpoint()
% Test gui for endpoint veocity control to Vulcan X
% Usage: guiEndpoint()
%
% 03-Apr-2013 Armiger: Created

% output
hSink = PnetClass(56999,9027,'127.0.0.1');  % check port number against VulcanX config
hSink.initialize();
hMud = MPL.MudCommandEncoder();

% figure setup
f = UiTools.create_figure('EndPointVelocityControl','guiEndpoint');
clf(f)

sliderNames = {'In/Out','Up/Down','Left/Right','+/- Roll','+/- Pitch','+/- Yaw','Open/Close'};

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

graspId = 1;
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
        fprintf('Command: %6.2f %6.2f %6.2f; %6.2f %6.2f %6.2f; Grasp = %6.2f\n',...
            cmd(1:6),graspVal);
        msg = hMud.EndpointVelocity6HandRocGrasps(...
            cmd(1:3),5*cmd(4:6),1,graspId,graspVal,1);
        hSink.putData(msg);
    end

end
