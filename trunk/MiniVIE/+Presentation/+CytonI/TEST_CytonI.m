
% Create the robot
hCyton = Presentation.CytonI.CytonI;
%%
% set joint values in radians for joints with ids 1-8
hCyton.setJointIdValue(1,1)
hCyton.setJointIdValue(2,1)

% wait for movements to complete
while ~hCyton.hPlant.allMovesComplete,disp('waiting');drawnow;end

% return the joint parameters:
q = hCyton.JointParameters

% Get the 'A' matrix frames for the given set of joint angles.
% The A matrices represent the [DH] transformation between adjacent frames
A = hCyton.hControls.getJointFrames

% Multiplying the A matrices gives the transformation from the base frame
% to each specified joint frame.
T_0_1 = A(:,:,1);
T_0_2 = A(:,:,1)*A(:,:,2)
T_0_3 = A(:,:,1)*A(:,:,2)*A(:,:,3)
T_0_4 = A(:,:,1)*A(:,:,2)*A(:,:,3)*A(:,:,4)
T_0_5 = A(:,:,1)*A(:,:,2)*A(:,:,3)*A(:,:,4)*A(:,:,5)

% Get the transformation from the base frame to the specified frame
% directly.  Note this is the same as T_0_3 above
hCyton.hControls.getT_0_N(3)

% Manipulate display settings:
% Turn off the surface render display
hCyton.hDisplay.showSurfaces(0)

% Use the target tool to position a target and adjust size
hCyton.hDisplay.setTarget([50 50 150])
hCyton.hDisplay.setTargetSphereRadius(50)

% Set target position to a specific link by multiplying A matrices together
T = A(:,:,1)*A(:,:,2)*A(:,:,3)*A(:,:,4)*A(:,:,5)
hCyton.hDisplay.setTarget(T(1:3,4))

% get display handles
hg = hCyton.hDisplay.getGraphicsHandles
% enable figure resize
set(hg.Figure,'Resize','on')

% expand the axes by 50%
ax = axis(hg.hAxes);
axis(hg.hAxes,ax.*1.5)

% reset axes to default
axis(hg.hAxes,'tight')
drawnow
axis(hg.hAxes,'auto')

% hide target
hCyton.hDisplay.setTargetSphereRadius(0)
hCyton.hDisplay.setTarget(eye(4))

%% move Cyton with endpoint velocity control

% move down (-z) without retaining endpoint orientation
endpointVelocity = [0 0 -1 NaN NaN NaN];
[jointVelocity, J] = hCyton.hControls.computeVelocity(endpointVelocity);
q = hCyton.JointParameters;
q = q + jointVelocity
hCyton.setJointParameters(q);
hCyton.hControls.getT_0_N

