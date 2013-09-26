% Ensure you've added the Utilities path  e.g. addpath('Utilities')
% Create a handle to the MiniV animated arm
a = Presentation.MiniV;
a.redraw

%%
% create an array of angles for the arm
angles = zeros(size(action_bus_definition));

% get the joint id numbers
id = action_bus_enum;

% update individual joints to create different postures
angles([id.Index_DIP id.Index_MCP id.Index_PIP]) = 45;

% set the new angles and redraw
a.set_hand_angles_degrees(angles)
a.redraw
%%
[enumGrasp, cellGrasps] = enumeration('Controls.GraspTypes');
grasp = cellGrasps{1}
pctGrasp = 1;
handAngles = Controls.graspInterpolation(pctGrasp, grasp)'

a.set_hand_angles_degrees(handAngles)
a.redraw

