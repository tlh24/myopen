function [jointVelocity, J, theta] = MPL_JacobianBound(...
    jointAngles,endpointVelocity)

% jointAngles(3) = -jointAngles(3);

[T, A] = MPL_Frames(jointAngles);

% Define components for Jacobian
z0 = [0 0 1]';
z1 = T(1:3,3,1);
z2 = T(1:3,3,2);
z3 = T(1:3,3,3);
z4 = T(1:3,3,4);
z5 = T(1:3,3,5);

o0 = [0 0 0]';
o1 = T(1:3,4,1);
o2 = T(1:3,4,2);
o3 = T(1:3,4,3);
o4 = T(1:3,4,4);
o5 = T(1:3,4,5);

% Per Eq. 4.64, J is the Geometric Jacobian
oc = o5;
J1 = cross(z0,(oc-o0));
J2 = cross(z1,(oc-o1));
J3 = cross(z2,(oc-o2));
J4 = cross(z3,(oc-o3));
J5 = cross(z4,(oc-o4));
J6 = cross(z5,(oc-o5));

J11 = [J1 J2 J3 J4 J5 J6];

J = [J11; z0 z1 z2 z3 z4 z5];

x0 = endpointVelocity(1:3)';
x0 = x0(:);

constrain = @(x,rng) min(max(x,rng(1)),rng(2));

% Determine if the position is feasible
newEndpoint = oc + x0;

newEndpoint(1) = constrain(newEndpoint(1),[1 3.5]);
newEndpoint(2) = constrain(newEndpoint(2),[1 4.5]);
newEndpoint(3) = constrain(newEndpoint(3),[1 3]);

x0 = newEndpoint - oc;
if ~isequal(newEndpoint,oc+x0)
    x0 = x0 ./ norm(x0);
end



% PseudoInverse
% jointVelocity = pinv(J(1:3,:))*x0;
% jointVelocity = jointVelocity(1:5);

% Damped Least Squares
lambda = 1e-1;
jointVelocity = (J'*J + lambda^2.*eye(6)) \ J' * [x0; 0;0;0];
jointVelocity = jointVelocity(1:5);


theta = jointVelocity + jointAngles(:);
if theta(4) < 0
    jointVelocity(4) = -jointVelocity(4);
    theta(4) = -theta(4);
end
% 
% theta(1) = constrain(theta(1),deg2rad([-30 120]));
% theta(2) = constrain(theta(2),deg2rad([0 100]));
% theta(3) = constrain(theta(3),deg2rad([45 135]));
% theta(4) = constrain(theta(4),deg2rad([0 135]));
% theta(4) = constrain(theta(4),deg2rad([-45 45]));

