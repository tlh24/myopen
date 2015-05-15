%% Illustrate a case in which a simple Jacobian solution is valid

% Setup Cyton VIE
h = Presentation.CytonI.CytonI;
h.hPlant.stop()

%%
N = 50;  % number of timesteps

% set initial joint angles in non singular configuration
q = zeros(7,1);
q(2) = pi/8;
q(4) = -pi/4;
q(6) = pi/8;

endpointVelocity = [0 0 -1 0 0 0]';

% solve IK and log results
qLog = repmat(q,1,N+1);
for i = 1:N
    pause(0.01)
    
    % compute Jacobian
    J = Presentation.CytonI.CytonControls.numericJacobian(q);
    
    % Compute pseudo-inverse
    pinvJ = pinv(J);
    
    % compute joint velocities to acheive endpoint motion
    q_dot = pinvJ * endpointVelocity;
    
    % computer updated joint angles
    q = q + q_dot;
        
    qLog(:,i+1) = q;

    % update VIE
    h.setJointParameters([q; 0])
    
end

clf
plot(qLog')
ylabel('joint angle, rad')
