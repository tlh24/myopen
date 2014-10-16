function [T, A] = MPL_Frames(jointAngles)

theta = jointAngles;

% Define a function for DH convention that can be used with real numbers or
% symbolic representations
DH = @(linkLength,linkTwist,linkOffset,jointAngle)...
    [
    cos(jointAngle) -sin(jointAngle)*cos(linkTwist)  sin(jointAngle)*sin(linkTwist)   linkLength*cos(jointAngle);
    sin(jointAngle)  cos(jointAngle)*cos(linkTwist) -cos(jointAngle)*sin(linkTwist)   linkLength*sin(jointAngle);
    0        sin(linkTwist)          cos(linkTwist)           linkOffset;
    0        0                0                 1;];

%% Part 1B: DH parameters

% DH(a,alpha,d,theta)
% numeric frames (with offsets for theta values)
A(:,:,1) = DH(0,-pi/2,2,theta(1));
A(:,:,2) = DH(0,+pi/2,0,theta(2));
A(:,:,3) = DH(0,-pi/2,3,theta(3));
A(:,:,4) = DH(0,+pi/2,0,theta(4));
A(:,:,5) = DH(0,+pi/2,3,theta(5));

T(:,:,1) = A(:,:,1);
T(:,:,2) = A(:,:,1)*A(:,:,2);
T(:,:,3) = A(:,:,1)*A(:,:,2)*A(:,:,3);
T(:,:,4) = A(:,:,1)*A(:,:,2)*A(:,:,3)*A(:,:,4);
T(:,:,5) = A(:,:,1)*A(:,:,2)*A(:,:,3)*A(:,:,4)*A(:,:,5);
