% Create a handle to the MiniV animated arm
hMiniV = Presentation.MiniV;
hMiniV.redraw

%%
pctGrasp = 1.0;
[enumGrasp, strGrasps] = enumeration('Controls.GraspTypes');
id = enumGrasp(1);
handAngles = Controls.graspInterpolation(pctGrasp, id);

% set the new angles and redraw
hMiniV.set_hand_angles_degrees(handAngles)
% a.set_upper_arm_angles_degrees(handAngles)
hMiniV.redraw 


%%
hCyberGlove = Inputs.CyberGloveSerial('COM11');
%%
StartStopForm([])
while StartStopForm
    
    handAngles = getdata(hCyberGlove);

    handAnglesDegrees = handAngles * 180 / pi;

    % set the new angles and redraw
    hMiniV.set_hand_angles_degrees(handAnglesDegrees)
    hMiniV.redraw 
    drawnow
end


