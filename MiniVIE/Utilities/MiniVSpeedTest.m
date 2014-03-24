
% Create a handle to the MiniV animated arm
hFig = UiTools.create_figure('test');
p = get(hFig,'Position');
p = [300 150 800 600];
set(hFig,'Position',p)
hAxes = axes('Parent',hFig);
hold(hAxes,'on');
hUser = Presentation.MiniV(hAxes);
hTarget = Presentation.MiniV(hAxes);
view(hAxes,0,0);
axis(hAxes,'equal')
hLight = light('Parent',hAxes);
camlight(hLight,'left');
axis(hAxes,[0 0.4 -0.4 0.4 0.3 0.7])

StartStopForm([])

while StartStopForm()
    tRefresh = tic;
    handAngles = rand(1,29)*180/pi;
    hUser.set_hand_angles_degrees(handAngles);
    aUser = rand(1,7)*180/pi;
    hUser.set_upper_arm_angles_degrees(aUser)
    hUser.redraw
    
    drawnow
    
    fprintf('Rate is: %6.3f Hz\n',1/toc(tRefresh))
end

