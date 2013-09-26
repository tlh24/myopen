%%

obj = CytonI;
obj.hDisplay.showSurfaces(0);
obj.hPlant.stop;
%%

obj.setJointParameters([ 0.1727 -0.5451 0.9727 -1.9838 1.2427 0 0 0 ]);

%%


%% Jacobian endpoint solution
pTarget = [99 150 50]';
q = zeros(8,1);
obj.setJointParameters(q);
pError = [10 10 10]';
dt = 0.05;

[T a d] = CytonControls.getDHParams();

while norm(pError) > 1;

    J15_ = symJacobianWrist(a(6),d(2),d(3),d(4),d(5),d(6),q(1),q(2),q(3),q(4),q(5),q(6));
    
    T = obj.getT_0_N(5);
    pEE = T(1:3,4);
    pError = pTarget - pEE;
        
    P = 10
    vMove = pError * P;
    
    q_dot = pinv(J15_) * vMove;
    
    % Apply joint speed limits
    q_dot = min(abs(q_dot),1) .* sign(q_dot);
    
    % Apply Joint limits
    q(2) = max(min(q(2),pi/3),-pi/3)
    q(6) = max(min(q(6),pi/3),-pi/3)
    
    q(1:5) = q(1:5) + (q_dot*dt)
    obj.setJointParameters(q);
    pause(0.02)
end

%%
pEndpoint = [80 80 250]';

qAll = obj.hControls.solveWristEndpoint(pEndpoint)
obj.hPlant.ApplyLimits = 0;
for i = 1:length(qAll)
    obj.setJointParameters([qAll(:,i)' 0 0 0 0]);
    T = obj.getT_0_N(5);
    T(1:3,4)
    pause(0.01)
end

%%
[val id] = min(qAll(2,:))
obj.setJointParameters([qAll(:,id)' 0 0 0 0]);

T = makehgtform('translate',pEndpoint+90);
obj.hDisplay.setTarget(T)

%%

figure(2)
plot(qAll')
legend('1','2','3','4')

