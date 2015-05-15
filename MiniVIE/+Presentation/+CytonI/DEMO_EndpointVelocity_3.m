%% Illustrate a case in which a simple Jacobian solution is invalid

% Setup Cyton VIE
h = Presentation.CytonI.CytonI;
h.hPlant.stop()

%%
N = 150;  % number of timesteps

% set initial joint angles in non singular configuration
q = zeros(7,1);
q(2) = pi/8;
q(4) = -pi/4;
q(6) = pi/8;

endpointVelocity = [0 0 -1 0 0 0]';

% solve IK and log results
qLog = repmat(q,1,N+1);
for i = 1:N
    
    % compute Jacobian
    J = Presentation.CytonI.CytonControls.numericJacobian(q);
    
    isLocked = zeros(7,1);
    numTries = 0;
    while numTries < 10
        numTries = numTries + 1;
        % Compute pseudo-inverse
        
        J(:,isLocked ~= 0) = 0;
        
        % compute joint velocities to acheive endpoint motion
        % Damped least squares:
        lambda = 1e-1;
        q_dot = (J'*J + lambda^2.*eye(7)) \ J' * endpointVelocity;
        
        % compute updated joint angles
        q = q + q_dot;
        
        % Subject q to joint limits
        [q, isLockedNew] = Presentation.CytonI.CytonControls.applyJointLimits(q);
        
        if any(isLocked ~= isLockedNew)
            isLocked = isLockedNew;
            disp('Trouble')
        else
            break
        end
    end
    
    qLog(:,i+1) = q;
    
    % update VIE
    h.setJointParameters([q; 0])
    
    pause(0.01)
end

clf
plot(qLog')
ylabel('joint angle, rad')
