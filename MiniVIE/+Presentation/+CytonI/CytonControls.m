classdef CytonControls < hgsetget
    % Class for holding kinematics of Cyton and methods for endpoint
    % based control
    %
    % Usage Example:
    %
    %     % Get the 'A' matrix frames for the given set of joint angles.
    %     % The A matrices represent the [DH] transformation between adjacent frames
    %     A = hControls.getJointFrames
    %
    %     % Multiplying the A matrices gives the transformation from the base frame
    %     % to each specified joint frame.
    %     T_0_1 = A(:,:,1);
    %     T_0_2 = A(:,:,1)*A(:,:,2)
    %     T_0_3 = A(:,:,1)*A(:,:,2)*A(:,:,3)
    %     T_0_4 = A(:,:,1)*A(:,:,2)*A(:,:,3)*A(:,:,4)
    %     T_0_5 = A(:,:,1)*A(:,:,2)*A(:,:,3)*A(:,:,4)*A(:,:,5)
    %
    %     % Get the transformation from the base frame to the specified frame
    %     % directly.  Note this is the same as T_0_3 above
    %     hControls.getT_0_N(3)
    %
    %     %% move Cyton with endpoint velocity control
    %
    %     % move down (-z) without retaining endpoint orientation
    %     endpointVelocity = [0 0 -1 NaN NaN NaN];
    %     [jointVelocity, J] = hControls.computeVelocity(endpointVelocity);
    %     q = hCyton.JointParameters;
    %     q = q + jointVelocity
    %     hCyton.setJointParameters(q);
    %     hCyton.hControls.getT_0_N
    %
    %
    %
    % Log:
    %   06Feb2012 Armiger: Created
    %   03Apr2013 Armiger: Added note about incomplete endpoint position and
    %   orientation functions.  The user should come up with their own
    %   inverse kinematics using the Jacobian solution provided
    properties
        JacobianMethod = 'DampedLeastSquares';  % Select Jacobian Method {Transpose|PseudoInverse|DampedLeastSquares}
    end
    properties (Dependent = true)
        DH_Params;
    end
    properties (Constant = true) %(SetAccess = private)
        % Symbolically solved kinematic equations
        %
        %     % Get dh param constants
        %     [~, a, d] = hControls.getDHParams();
        %
        %     % Get Jacobian at the current position
        %     J_ = hControls.symJacobianFull(a(6),d(2),d(3),d(4),d(5),d(6),q(1),q(2),q(3),q(4),q(5),q(6));
        
        symJacobianFull = @(a6,d2,d3,d4,d5,d6,th1,th2,th3,th4,th5,th6)...
            reshape([d4.*(cos(th1).*cos(th3)-cos(th2).*sin(th1).*sin(th3))+d2.*cos(th1)+d5.*(sin(th4).*(cos(th1).*sin(th3)+cos(th2).*cos(th3).*sin(th1))+cos(th4).*sin(th1).*sin(th2))+d3.*sin(th1).*sin(th2),d4.*(cos(th3).*sin(th1)+cos(th1).*cos(th2).*sin(th3))+d2.*sin(th1)+d5.*(sin(th4).*(sin(th1).*sin(th3)-cos(th1).*cos(th2).*cos(th3))-cos(th1).*cos(th4).*sin(th2))-d3.*cos(th1).*sin(th2),0.0,0.0,0.0,1.0,-cos(th1).*(d5.*(cos(th2).*cos(th4)-cos(th3).*sin(th2).*sin(th4))+d3.*cos(th2)+d4.*sin(th2).*sin(th3)),...
            -sin(th1).*(d5.*(cos(th2).*cos(th4)-cos(th3).*sin(th2).*sin(th4))+d3.*cos(th2)+d4.*sin(th2).*sin(th3)),...
            -d3.*sin(th2)+d4.*cos(th2).*sin(th3)-d5.*cos(th4).*sin(th2)-d5.*cos(th2).*cos(th3).*sin(th4),sin(th1),...
            -cos(th1),0.0,-d4.*sin(th1).*sin(th3)+d4.*cos(th1).*cos(th2).*cos(th3)+d5.*cos(th3).*sin(th1).*sin(th4)+d5.*cos(th1).*cos(th2).*sin(th3).*sin(th4),d4.*cos(th1).*sin(th3)+d4.*cos(th2).*cos(th3).*sin(th1)-d5.*cos(th1).*cos(th3).*sin(th4)+d5.*cos(th2).*sin(th1).*sin(th3).*sin(th4),sin(th2).*(d4.*cos(th3)+d5.*sin(th3).*sin(th4)),...
            -cos(th1).*sin(th2),...
            -sin(th1).*sin(th2),cos(th2),d5.*cos(th1).*sin(th2).*sin(th4)+d5.*cos(th4).*sin(th1).*sin(th3)-d5.*cos(th1).*cos(th2).*cos(th3).*cos(th4),...
            -d5.*cos(th1).*cos(th4).*sin(th3)+d5.*sin(th1).*sin(th2).*sin(th4)-d5.*cos(th2).*cos(th3).*cos(th4).*sin(th1),...
            -d5.*cos(th2).*sin(th4)-d5.*cos(th3).*cos(th4).*sin(th2),cos(th3).*sin(th1)+cos(th1).*cos(th2).*sin(th3),...
            -cos(th1).*cos(th3)+cos(th2).*sin(th1).*sin(th3),sin(th2).*sin(th3),0.0,0.0,0.0,sin(th4).*(sin(th1).*sin(th3)-cos(th1).*cos(th2).*cos(th3))-cos(th1).*cos(th4).*sin(th2),...
            -sin(th4).*(cos(th1).*sin(th3)+cos(th2).*cos(th3).*sin(th1))-cos(th4).*sin(th1).*sin(th2),cos(th2).*cos(th4)-cos(th3).*sin(th2).*sin(th4),0.0,0.0,0.0,-sin(th5).*(cos(th4).*(sin(th1).*sin(th3)-cos(th1).*cos(th2).*cos(th3))+cos(th1).*sin(th2).*sin(th4))+cos(th5).*(cos(th3).*sin(th1)+cos(th1).*cos(th2).*sin(th3)),sin(th5).*(cos(th4).*(cos(th1).*sin(th3)+cos(th2).*cos(th3).*sin(th1))-sin(th1).*sin(th2).*sin(th4))-cos(th5).*(cos(th1).*cos(th3)-cos(th2).*sin(th1).*sin(th3)),sin(th5).*(cos(th2).*sin(th4)+cos(th3).*cos(th4).*sin(th2))+cos(th5).*sin(th2).*sin(th3),...
            -a6.*cos(th3).*cos(th5).*sin(th1)-a6.*cos(th1).*cos(th2).*cos(th5).*sin(th3)-d6.*cos(th1).*cos(th4).*cos(th6).*sin(th2)+a6.*cos(th1).*sin(th2).*sin(th4).*sin(th5)+a6.*cos(th4).*sin(th1).*sin(th3).*sin(th5)+d6.*cos(th6).*sin(th1).*sin(th3).*sin(th4)+d6.*cos(th3).*sin(th1).*sin(th5).*sin(th6)-a6.*cos(th1).*cos(th2).*cos(th3).*cos(th4).*sin(th5)-d6.*cos(th1).*cos(th2).*cos(th3).*cos(th6).*sin(th4)+d6.*cos(th1).*cos(th2).*sin(th3).*sin(th5).*sin(th6)+d6.*cos(th1).*cos(th5).*sin(th2).*sin(th4).*sin(th6)+d6.*cos(th4).*cos(th5).*sin(th1).*sin(th3).*sin(th6)-d6.*cos(th1).*cos(th2).*cos(th3).*cos(th4).*cos(th5).*sin(th6),a6.*cos(th1).*cos(th3).*cos(th5)-a6.*cos(th2).*cos(th5).*sin(th1).*sin(th3)-a6.*cos(th1).*cos(th4).*sin(th3).*sin(th5)-d6.*cos(th4).*cos(th6).*sin(th1).*sin(th2)-d6.*cos(th1).*cos(th6).*sin(th3).*sin(th4)-d6.*cos(th1).*cos(th3).*sin(th5).*sin(th6)+a6.*sin(th1).*sin(th2).*sin(th4).*sin(th5)-a6.*cos(th2).*cos(th3).*cos(th4).*sin(th1).*sin(th5)-d6.*cos(th2).*cos(th3).*cos(th6).*sin(th1).*sin(th4)-d6.*cos(th1).*cos(th4).*cos(th5).*sin(th3).*sin(th6)+d6.*cos(th2).*sin(th1).*sin(th3).*sin(th5).*sin(th6)+d6.*cos(th5).*sin(th1).*sin(th2).*sin(th4).*sin(th6)-d6.*cos(th2).*cos(th3).*cos(th4).*cos(th5).*sin(th1).*sin(th6),d6.*cos(th2).*cos(th4).*cos(th6)-a6.*cos(th5).*sin(th2).*sin(th3)-a6.*cos(th2).*sin(th4).*sin(th5)-a6.*cos(th3).*cos(th4).*sin(th2).*sin(th5)-d6.*cos(th3).*cos(th6).*sin(th2).*sin(th4)-d6.*cos(th2).*cos(th5).*sin(th4).*sin(th6)+d6.*sin(th2).*sin(th3).*sin(th5).*sin(th6)-d6.*cos(th3).*cos(th4).*cos(th5).*sin(th2).*sin(th6),...
            -cos(pi.*(1.0./2.0)+th6).*(sin(th4).*(sin(th1).*sin(th3)-cos(th1).*cos(th2).*cos(th3))-cos(th1).*cos(th4).*sin(th2))-sin(pi.*(1.0./2.0)+th6).*(cos(th5).*(cos(th4).*(sin(th1).*sin(th3)-cos(th1).*cos(th2).*cos(th3))+cos(th1).*sin(th2).*sin(th4))+sin(th5).*(cos(th3).*sin(th1)+cos(th1).*cos(th2).*sin(th3))),cos(pi.*(1.0./2.0)+th6).*(sin(th4).*(cos(th1).*sin(th3)+cos(th2).*cos(th3).*sin(th1))+cos(th4).*sin(th1).*sin(th2))+sin(pi.*(1.0./2.0)+th6).*(cos(th5).*(cos(th4).*(cos(th1).*sin(th3)+cos(th2).*cos(th3).*sin(th1))-sin(th1).*sin(th2).*sin(th4))+sin(th5).*(cos(th1).*cos(th3)-cos(th2).*sin(th1).*sin(th3))),sin(pi.*(1.0./2.0)+th6).*(cos(th5).*(cos(th2).*sin(th4)+cos(th3).*cos(th4).*sin(th2))-sin(th2).*sin(th3).*sin(th5))-cos(pi.*(1.0./2.0)+th6).*(cos(th2).*cos(th4)-cos(th3).*sin(th2).*sin(th4))],...
            [6,7])
        symJacobian = @(a6,a7,d2,d3,d4,d5,d6,d7,th1,th2,th3,th4,th5,th6,th7)...
            reshape([d4.*(cos(th1).*cos(th3)-cos(th2).*sin(th1).*sin(th3))-d6.*(sin(th5).*(cos(th4).*(cos(th1).*sin(th3)+cos(th2).*cos(th3).*sin(th1))-sin(th1).*sin(th2).*sin(th4))-cos(th5).*(cos(th1).*cos(th3)-cos(th2).*sin(th1).*sin(th3)))-d7.*(cos(pi.*(1.0./2.0)+th6).*(sin(th4).*(cos(th1).*sin(th3)+cos(th2).*cos(th3).*sin(th1))+cos(th4).*sin(th1).*sin(th2))+sin(pi.*(1.0./2.0)+th6).*(cos(th5).*(cos(th4).*(cos(th1).*sin(th3)+cos(th2).*cos(th3).*sin(th1))-sin(th1).*sin(th2).*sin(th4))+sin(th5).*(cos(th1).*cos(th3)-cos(th2).*sin(th1).*sin(th3))))+d2.*cos(th1)+d5.*(sin(th4).*(cos(th1).*sin(th3)+cos(th2).*cos(th3).*sin(th1))+cos(th4).*sin(th1).*sin(th2))-a6.*cos(pi.*(1.0./2.0)+th6).*(cos(th5).*(cos(th4).*(cos(th1).*sin(th3)+cos(th2).*cos(th3).*sin(th1))-sin(th1).*sin(th2).*sin(th4))+sin(th5).*(cos(th1).*cos(th3)-cos(th2).*sin(th1).*sin(th3)))-a7.*sin(th7).*(sin(th5).*(cos(th4).*(cos(th1).*sin(th3)+cos(th2).*cos(th3).*sin(th1))-sin(th1).*sin(th2).*sin(th4))-cos(th5).*(cos(th1).*cos(th3)-cos(th2).*sin(th1).*sin(th3)))+a7.*cos(th7).*(sin(pi.*(1.0./2.0)+th6).*(sin(th4).*(cos(th1).*sin(th3)+cos(th2).*cos(th3).*sin(th1))+cos(th4).*sin(th1).*sin(th2))-cos(pi.*(1.0./2.0)+th6).*(cos(th5).*(cos(th4).*(cos(th1).*sin(th3)+cos(th2).*cos(th3).*sin(th1))-sin(th1).*sin(th2).*sin(th4))+sin(th5).*(cos(th1).*cos(th3)-cos(th2).*sin(th1).*sin(th3))))+d3.*sin(th1).*sin(th2)+a6.*sin(pi.*(1.0./2.0)+th6).*(sin(th4).*(cos(th1).*sin(th3)+cos(th2).*cos(th3).*sin(th1))+cos(th4).*sin(th1).*sin(th2)),...
            -d6.*(sin(th5).*(cos(th4).*(sin(th1).*sin(th3)-cos(th1).*cos(th2).*cos(th3))+cos(th1).*sin(th2).*sin(th4))-cos(th5).*(cos(th3).*sin(th1)+cos(th1).*cos(th2).*sin(th3)))+d4.*(cos(th3).*sin(th1)+cos(th1).*cos(th2).*sin(th3))-d7.*(cos(pi.*(1.0./2.0)+th6).*(sin(th4).*(sin(th1).*sin(th3)-cos(th1).*cos(th2).*cos(th3))-cos(th1).*cos(th4).*sin(th2))+sin(pi.*(1.0./2.0)+th6).*(cos(th5).*(cos(th4).*(sin(th1).*sin(th3)-cos(th1).*cos(th2).*cos(th3))+cos(th1).*sin(th2).*sin(th4))+sin(th5).*(cos(th3).*sin(th1)+cos(th1).*cos(th2).*sin(th3))))+d2.*sin(th1)+d5.*(sin(th4).*(sin(th1).*sin(th3)-cos(th1).*cos(th2).*cos(th3))-cos(th1).*cos(th4).*sin(th2))-a6.*cos(pi.*(1.0./2.0)+th6).*(cos(th5).*(cos(th4).*(sin(th1).*sin(th3)-cos(th1).*cos(th2).*cos(th3))+cos(th1).*sin(th2).*sin(th4))+sin(th5).*(cos(th3).*sin(th1)+cos(th1).*cos(th2).*sin(th3)))+a7.*cos(th7).*(sin(pi.*(1.0./2.0)+th6).*(sin(th4).*(sin(th1).*sin(th3)-cos(th1).*cos(th2).*cos(th3))-cos(th1).*cos(th4).*sin(th2))-cos(pi.*(1.0./2.0)+th6).*(cos(th5).*(cos(th4).*(sin(th1).*sin(th3)-cos(th1).*cos(th2).*cos(th3))+cos(th1).*sin(th2).*sin(th4))+sin(th5).*(cos(th3).*sin(th1)+cos(th1).*cos(th2).*sin(th3))))-a7.*sin(th7).*(sin(th5).*(cos(th4).*(sin(th1).*sin(th3)-cos(th1).*cos(th2).*cos(th3))+cos(th1).*sin(th2).*sin(th4))-cos(th5).*(cos(th3).*sin(th1)+cos(th1).*cos(th2).*sin(th3)))-d3.*cos(th1).*sin(th2)+a6.*sin(pi.*(1.0./2.0)+th6).*(sin(th4).*(sin(th1).*sin(th3)-cos(th1).*cos(th2).*cos(th3))-cos(th1).*cos(th4).*sin(th2)),0.0,-d5.*cos(th1).*(cos(th2).*cos(th4)-cos(th3).*sin(th2).*sin(th4))-d7.*cos(th1).*(sin(pi.*(1.0./2.0)+th6).*(cos(th5).*(cos(th2).*sin(th4)+cos(th3).*cos(th4).*sin(th2))-sin(th2).*sin(th3).*sin(th5))-cos(pi.*(1.0./2.0)+th6).*(cos(th2).*cos(th4)-cos(th3).*sin(th2).*sin(th4)))-d3.*cos(th1).*cos(th2)-d6.*cos(th1).*(sin(th5).*(cos(th2).*sin(th4)+cos(th3).*cos(th4).*sin(th2))+cos(th5).*sin(th2).*sin(th3))-a6.*cos(th1).*sin(pi.*(1.0./2.0)+th6).*(cos(th2).*cos(th4)-cos(th3).*sin(th2).*sin(th4))-a7.*cos(th1).*cos(th7).*(cos(pi.*(1.0./2.0)+th6).*(cos(th5).*(cos(th2).*sin(th4)+cos(th3).*cos(th4).*sin(th2))-sin(th2).*sin(th3).*sin(th5))+sin(pi.*(1.0./2.0)+th6).*(cos(th2).*cos(th4)-cos(th3).*sin(th2).*sin(th4)))-d4.*cos(th1).*sin(th2).*sin(th3)-a6.*cos(th1).*cos(pi.*(1.0./2.0)+th6).*(cos(th5).*(cos(th2).*sin(th4)+cos(th3).*cos(th4).*sin(th2))-sin(th2).*sin(th3).*sin(th5))-a7.*cos(th1).*sin(th7).*(sin(th5).*(cos(th2).*sin(th4)+cos(th3).*cos(th4).*sin(th2))+cos(th5).*sin(th2).*sin(th3)),...
            -d5.*sin(th1).*(cos(th2).*cos(th4)-cos(th3).*sin(th2).*sin(th4))-d7.*sin(th1).*(sin(pi.*(1.0./2.0)+th6).*(cos(th5).*(cos(th2).*sin(th4)+cos(th3).*cos(th4).*sin(th2))-sin(th2).*sin(th3).*sin(th5))-cos(pi.*(1.0./2.0)+th6).*(cos(th2).*cos(th4)-cos(th3).*sin(th2).*sin(th4)))-d3.*cos(th2).*sin(th1)-d6.*sin(th1).*(sin(th5).*(cos(th2).*sin(th4)+cos(th3).*cos(th4).*sin(th2))+cos(th5).*sin(th2).*sin(th3))-a6.*sin(th1).*sin(pi.*(1.0./2.0)+th6).*(cos(th2).*cos(th4)-cos(th3).*sin(th2).*sin(th4))-a7.*cos(th7).*sin(th1).*(cos(pi.*(1.0./2.0)+th6).*(cos(th5).*(cos(th2).*sin(th4)+cos(th3).*cos(th4).*sin(th2))-sin(th2).*sin(th3).*sin(th5))+sin(pi.*(1.0./2.0)+th6).*(cos(th2).*cos(th4)-cos(th3).*sin(th2).*sin(th4)))-d4.*sin(th1).*sin(th2).*sin(th3)-a6.*cos(pi.*(1.0./2.0)+th6).*sin(th1).*(cos(th5).*(cos(th2).*sin(th4)+cos(th3).*cos(th4).*sin(th2))-sin(th2).*sin(th3).*sin(th5))-a7.*sin(th1).*sin(th7).*(sin(th5).*(cos(th2).*sin(th4)+cos(th3).*cos(th4).*sin(th2))+cos(th5).*sin(th2).*sin(th3)),...
            -d3.*sin(th2)+d4.*cos(th2).*sin(th3)-d5.*cos(th4).*sin(th2)-a6.*cos(th4).*cos(th6).*sin(th2)-d5.*cos(th2).*cos(th3).*sin(th4)+d6.*cos(th2).*cos(th5).*sin(th3)-d7.*cos(th4).*sin(th2).*sin(th6)-d6.*sin(th2).*sin(th4).*sin(th5)-a6.*cos(th2).*cos(th3).*cos(th6).*sin(th4)-a7.*cos(th4).*cos(th6).*cos(th7).*sin(th2)+d6.*cos(th2).*cos(th3).*cos(th4).*sin(th5)+a7.*cos(th2).*cos(th5).*sin(th3).*sin(th7)-d7.*cos(th2).*cos(th3).*sin(th4).*sin(th6)-d7.*cos(th2).*cos(th6).*sin(th3).*sin(th5)-d7.*cos(th5).*cos(th6).*sin(th2).*sin(th4)+a6.*cos(th2).*sin(th3).*sin(th5).*sin(th6)+a6.*cos(th5).*sin(th2).*sin(th4).*sin(th6)-a7.*sin(th2).*sin(th4).*sin(th5).*sin(th7)-a6.*cos(th2).*cos(th3).*cos(th4).*cos(th5).*sin(th6)-a7.*cos(th2).*cos(th3).*cos(th6).*cos(th7).*sin(th4)+a7.*cos(th2).*cos(th3).*cos(th4).*sin(th5).*sin(th7)+a7.*cos(th2).*cos(th7).*sin(th3).*sin(th5).*sin(th6)+a7.*cos(th5).*cos(th7).*sin(th2).*sin(th4).*sin(th6)+d7.*cos(th2).*cos(th3).*cos(th4).*cos(th5).*cos(th6)-a7.*cos(th2).*cos(th3).*cos(th4).*cos(th5).*cos(th7).*sin(th6),...
            -d4.*sin(th1).*sin(th3)+d4.*cos(th1).*cos(th2).*cos(th3)+d5.*cos(th3).*sin(th1).*sin(th4)-d6.*cos(th5).*sin(th1).*sin(th3)+d6.*cos(th1).*cos(th2).*cos(th3).*cos(th5)+a6.*cos(th3).*cos(th6).*sin(th1).*sin(th4)+d5.*cos(th1).*cos(th2).*sin(th3).*sin(th4)-d6.*cos(th3).*cos(th4).*sin(th1).*sin(th5)-a7.*cos(th5).*sin(th1).*sin(th3).*sin(th7)+d7.*cos(th3).*sin(th1).*sin(th4).*sin(th6)+d7.*cos(th6).*sin(th1).*sin(th3).*sin(th5)-a6.*sin(th1).*sin(th3).*sin(th5).*sin(th6)+a7.*cos(th1).*cos(th2).*cos(th3).*cos(th5).*sin(th7)-d7.*cos(th1).*cos(th2).*cos(th3).*cos(th6).*sin(th5)-d7.*cos(th3).*cos(th4).*cos(th5).*cos(th6).*sin(th1)+a6.*cos(th1).*cos(th2).*cos(th6).*sin(th3).*sin(th4)+a6.*cos(th1).*cos(th2).*cos(th3).*sin(th5).*sin(th6)+a6.*cos(th3).*cos(th4).*cos(th5).*sin(th1).*sin(th6)+a7.*cos(th3).*cos(th6).*cos(th7).*sin(th1).*sin(th4)-d6.*cos(th1).*cos(th2).*cos(th4).*sin(th3).*sin(th5)-a7.*cos(th3).*cos(th4).*sin(th1).*sin(th5).*sin(th7)+d7.*cos(th1).*cos(th2).*sin(th3).*sin(th4).*sin(th6)-a7.*cos(th7).*sin(th1).*sin(th3).*sin(th5).*sin(th6)-d7.*cos(th1).*cos(th2).*cos(th4).*cos(th5).*cos(th6).*sin(th3)+a6.*cos(th1).*cos(th2).*cos(th4).*cos(th5).*sin(th3).*sin(th6)+a7.*cos(th1).*cos(th2).*cos(th6).*cos(th7).*sin(th3).*sin(th4)+a7.*cos(th1).*cos(th2).*cos(th3).*cos(th7).*sin(th5).*sin(th6)+a7.*cos(th3).*cos(th4).*cos(th5).*cos(th7).*sin(th1).*sin(th6)-a7.*cos(th1).*cos(th2).*cos(th4).*sin(th3).*sin(th5).*sin(th7)+a7.*cos(th1).*cos(th2).*cos(th4).*cos(th5).*cos(th7).*sin(th3).*sin(th6),d4.*cos(th1).*sin(th3)+d4.*cos(th2).*cos(th3).*sin(th1)-d5.*cos(th1).*cos(th3).*sin(th4)+d6.*cos(th1).*cos(th5).*sin(th3)-a6.*cos(th1).*cos(th3).*cos(th6).*sin(th4)+d6.*cos(th2).*cos(th3).*cos(th5).*sin(th1)+d6.*cos(th1).*cos(th3).*cos(th4).*sin(th5)+a7.*cos(th1).*cos(th5).*sin(th3).*sin(th7)-d7.*cos(th1).*cos(th3).*sin(th4).*sin(th6)-d7.*cos(th1).*cos(th6).*sin(th3).*sin(th5)+a6.*cos(th1).*sin(th3).*sin(th5).*sin(th6)+d5.*cos(th2).*sin(th1).*sin(th3).*sin(th4)-a6.*cos(th1).*cos(th3).*cos(th4).*cos(th5).*sin(th6)-a7.*cos(th1).*cos(th3).*cos(th6).*cos(th7).*sin(th4)+a7.*cos(th2).*cos(th3).*cos(th5).*sin(th1).*sin(th7)+a7.*cos(th1).*cos(th3).*cos(th4).*sin(th5).*sin(th7)-d7.*cos(th2).*cos(th3).*cos(th6).*sin(th1).*sin(th5)+a6.*cos(th2).*cos(th6).*sin(th1).*sin(th3).*sin(th4)+a6.*cos(th2).*cos(th3).*sin(th1).*sin(th5).*sin(th6)+a7.*cos(th1).*cos(th7).*sin(th3).*sin(th5).*sin(th6)-d6.*cos(th2).*cos(th4).*sin(th1).*sin(th3).*sin(th5)+d7.*cos(th2).*sin(th1).*sin(th3).*sin(th4).*sin(th6)+d7.*cos(th1).*cos(th3).*cos(th4).*cos(th5).*cos(th6)-a7.*cos(th2).*cos(th4).*sin(th1).*sin(th3).*sin(th5).*sin(th7)-a7.*cos(th1).*cos(th3).*cos(th4).*cos(th5).*cos(th7).*sin(th6)-d7.*cos(th2).*cos(th4).*cos(th5).*cos(th6).*sin(th1).*sin(th3)+a6.*cos(th2).*cos(th4).*cos(th5).*sin(th1).*sin(th3).*sin(th6)+a7.*cos(th2).*cos(th6).*cos(th7).*sin(th1).*sin(th3).*sin(th4)+a7.*cos(th2).*cos(th3).*cos(th7).*sin(th1).*sin(th5).*sin(th6)+a7.*cos(th2).*cos(th4).*cos(th5).*cos(th7).*sin(th1).*sin(th3).*sin(th6),sin(th2).*(d4.*cos(th3)+d6.*cos(th3).*cos(th5)+d5.*sin(th3).*sin(th4)+a7.*cos(th3).*cos(th5).*sin(th7)-d7.*cos(th3).*cos(th6).*sin(th5)+a6.*cos(th6).*sin(th3).*sin(th4)+a6.*cos(th3).*sin(th5).*sin(th6)-d6.*cos(th4).*sin(th3).*sin(th5)+d7.*sin(th3).*sin(th4).*sin(th6)-d7.*cos(th4).*cos(th5).*cos(th6).*sin(th3)+a6.*cos(th4).*cos(th5).*sin(th3).*sin(th6)+a7.*cos(th6).*cos(th7).*sin(th3).*sin(th4)+a7.*cos(th3).*cos(th7).*sin(th5).*sin(th6)-a7.*cos(th4).*sin(th3).*sin(th5).*sin(th7)+a7.*cos(th4).*cos(th5).*cos(th7).*sin(th3).*sin(th6)),d5.*cos(th1).*sin(th2).*sin(th4)+d5.*cos(th4).*sin(th1).*sin(th3)-d5.*cos(th1).*cos(th2).*cos(th3).*cos(th4)+a6.*cos(th1).*cos(th6).*sin(th2).*sin(th4)+a6.*cos(th4).*cos(th6).*sin(th1).*sin(th3)-d6.*cos(th1).*cos(th4).*sin(th2).*sin(th5)+d7.*cos(th1).*sin(th2).*sin(th4).*sin(th6)+d7.*cos(th4).*sin(th1).*sin(th3).*sin(th6)+d6.*sin(th1).*sin(th3).*sin(th4).*sin(th5)-d7.*cos(th1).*cos(th2).*cos(th3).*cos(th4).*sin(th6)-d7.*cos(th1).*cos(th4).*cos(th5).*cos(th6).*sin(th2)+a6.*cos(th1).*cos(th4).*cos(th5).*sin(th2).*sin(th6)+a7.*cos(th1).*cos(th6).*cos(th7).*sin(th2).*sin(th4)+a7.*cos(th4).*cos(th6).*cos(th7).*sin(th1).*sin(th3)-d6.*cos(th1).*cos(th2).*cos(th3).*sin(th4).*sin(th5)-a7.*cos(th1).*cos(th4).*sin(th2).*sin(th5).*sin(th7)+d7.*cos(th5).*cos(th6).*sin(th1).*sin(th3).*sin(th4)-a6.*cos(th5).*sin(th1).*sin(th3).*sin(th4).*sin(th6)+a7.*sin(th1).*sin(th3).*sin(th4).*sin(th5).*sin(th7)-a6.*cos(th1).*cos(th2).*cos(th3).*cos(th4).*cos(th6)-a7.*cos(th5).*cos(th7).*sin(th1).*sin(th3).*sin(th4).*sin(th6)-a7.*cos(th1).*cos(th2).*cos(th3).*cos(th4).*cos(th6).*cos(th7)-d7.*cos(th1).*cos(th2).*cos(th3).*cos(th5).*cos(th6).*sin(th4)+a6.*cos(th1).*cos(th2).*cos(th3).*cos(th5).*sin(th4).*sin(th6)+a7.*cos(th1).*cos(th4).*cos(th5).*cos(th7).*sin(th2).*sin(th6)-a7.*cos(th1).*cos(th2).*cos(th3).*sin(th4).*sin(th5).*sin(th7)+a7.*cos(th1).*cos(th2).*cos(th3).*cos(th5).*cos(th7).*sin(th4).*sin(th6),...
            -d5.*cos(th1).*cos(th4).*sin(th3)+d5.*sin(th1).*sin(th2).*sin(th4)-a6.*cos(th1).*cos(th4).*cos(th6).*sin(th3)-d5.*cos(th2).*cos(th3).*cos(th4).*sin(th1)-d7.*cos(th1).*cos(th4).*sin(th3).*sin(th6)+a6.*cos(th6).*sin(th1).*sin(th2).*sin(th4)-d6.*cos(th4).*sin(th1).*sin(th2).*sin(th5)-d6.*cos(th1).*sin(th3).*sin(th4).*sin(th5)+d7.*sin(th1).*sin(th2).*sin(th4).*sin(th6)-a6.*cos(th2).*cos(th3).*cos(th4).*cos(th6).*sin(th1)-a7.*cos(th1).*cos(th4).*cos(th6).*cos(th7).*sin(th3)-d7.*cos(th2).*cos(th3).*cos(th4).*sin(th1).*sin(th6)-d7.*cos(th4).*cos(th5).*cos(th6).*sin(th1).*sin(th2)-d7.*cos(th1).*cos(th5).*cos(th6).*sin(th3).*sin(th4)+a6.*cos(th4).*cos(th5).*sin(th1).*sin(th2).*sin(th6)+a6.*cos(th1).*cos(th5).*sin(th3).*sin(th4).*sin(th6)+a7.*cos(th6).*cos(th7).*sin(th1).*sin(th2).*sin(th4)-d6.*cos(th2).*cos(th3).*sin(th1).*sin(th4).*sin(th5)-a7.*cos(th4).*sin(th1).*sin(th2).*sin(th5).*sin(th7)-a7.*cos(th1).*sin(th3).*sin(th4).*sin(th5).*sin(th7)-a7.*cos(th2).*cos(th3).*sin(th1).*sin(th4).*sin(th5).*sin(th7)-a7.*cos(th2).*cos(th3).*cos(th4).*cos(th6).*cos(th7).*sin(th1)-d7.*cos(th2).*cos(th3).*cos(th5).*cos(th6).*sin(th1).*sin(th4)+a6.*cos(th2).*cos(th3).*cos(th5).*sin(th1).*sin(th4).*sin(th6)+a7.*cos(th4).*cos(th5).*cos(th7).*sin(th1).*sin(th2).*sin(th6)+a7.*cos(th1).*cos(th5).*cos(th7).*sin(th3).*sin(th4).*sin(th6)+a7.*cos(th2).*cos(th3).*cos(th5).*cos(th7).*sin(th1).*sin(th4).*sin(th6),...
            -d5.*cos(th2).*sin(th4)-a6.*cos(th2).*cos(th6).*sin(th4)-d5.*cos(th3).*cos(th4).*sin(th2)+d6.*cos(th2).*cos(th4).*sin(th5)-d7.*cos(th2).*sin(th4).*sin(th6)+d7.*cos(th2).*cos(th4).*cos(th5).*cos(th6)-a6.*cos(th3).*cos(th4).*cos(th6).*sin(th2)-a6.*cos(th2).*cos(th4).*cos(th5).*sin(th6)-a7.*cos(th2).*cos(th6).*cos(th7).*sin(th4)+a7.*cos(th2).*cos(th4).*sin(th5).*sin(th7)-d7.*cos(th3).*cos(th4).*sin(th2).*sin(th6)-d6.*cos(th3).*sin(th2).*sin(th4).*sin(th5)-a7.*cos(th3).*cos(th4).*cos(th6).*cos(th7).*sin(th2)-a7.*cos(th2).*cos(th4).*cos(th5).*cos(th7).*sin(th6)-d7.*cos(th3).*cos(th5).*cos(th6).*sin(th2).*sin(th4)+a6.*cos(th3).*cos(th5).*sin(th2).*sin(th4).*sin(th6)-a7.*cos(th3).*sin(th2).*sin(th4).*sin(th5).*sin(th7)+a7.*cos(th3).*cos(th5).*cos(th7).*sin(th2).*sin(th4).*sin(th6),...
            -d6.*cos(th3).*sin(th1).*sin(th5)-d7.*cos(th3).*cos(th5).*cos(th6).*sin(th1)+a6.*cos(th3).*cos(th5).*sin(th1).*sin(th6)-d6.*cos(th1).*cos(th2).*sin(th3).*sin(th5)-d6.*cos(th1).*cos(th5).*sin(th2).*sin(th4)-d6.*cos(th4).*cos(th5).*sin(th1).*sin(th3)-a7.*cos(th3).*sin(th1).*sin(th5).*sin(th7)-d7.*cos(th1).*cos(th2).*cos(th5).*cos(th6).*sin(th3)+a6.*cos(th1).*cos(th2).*cos(th5).*sin(th3).*sin(th6)+a7.*cos(th3).*cos(th5).*cos(th7).*sin(th1).*sin(th6)-a7.*cos(th1).*cos(th2).*sin(th3).*sin(th5).*sin(th7)-a7.*cos(th1).*cos(th5).*sin(th2).*sin(th4).*sin(th7)-a7.*cos(th4).*cos(th5).*sin(th1).*sin(th3).*sin(th7)+d7.*cos(th1).*cos(th6).*sin(th2).*sin(th4).*sin(th5)+d7.*cos(th4).*cos(th6).*sin(th1).*sin(th3).*sin(th5)-a6.*cos(th1).*sin(th2).*sin(th4).*sin(th5).*sin(th6)-a6.*cos(th4).*sin(th1).*sin(th3).*sin(th5).*sin(th6)+d6.*cos(th1).*cos(th2).*cos(th3).*cos(th4).*cos(th5)-a7.*cos(th1).*cos(th7).*sin(th2).*sin(th4).*sin(th5).*sin(th6)-a7.*cos(th4).*cos(th7).*sin(th1).*sin(th3).*sin(th5).*sin(th6)+a7.*cos(th1).*cos(th2).*cos(th3).*cos(th4).*cos(th5).*sin(th7)-d7.*cos(th1).*cos(th2).*cos(th3).*cos(th4).*cos(th6).*sin(th5)+a6.*cos(th1).*cos(th2).*cos(th3).*cos(th4).*sin(th5).*sin(th6)+a7.*cos(th1).*cos(th2).*cos(th5).*cos(th7).*sin(th3).*sin(th6)+a7.*cos(th1).*cos(th2).*cos(th3).*cos(th4).*cos(th7).*sin(th5).*sin(th6),d6.*cos(th1).*cos(th3).*sin(th5)+d7.*cos(th1).*cos(th3).*cos(th5).*cos(th6)-a6.*cos(th1).*cos(th3).*cos(th5).*sin(th6)+d6.*cos(th1).*cos(th4).*cos(th5).*sin(th3)+a7.*cos(th1).*cos(th3).*sin(th5).*sin(th7)-d6.*cos(th2).*sin(th1).*sin(th3).*sin(th5)-d6.*cos(th5).*sin(th1).*sin(th2).*sin(th4)-a7.*cos(th1).*cos(th3).*cos(th5).*cos(th7).*sin(th6)+d6.*cos(th2).*cos(th3).*cos(th4).*cos(th5).*sin(th1)+a7.*cos(th1).*cos(th4).*cos(th5).*sin(th3).*sin(th7)-d7.*cos(th2).*cos(th5).*cos(th6).*sin(th1).*sin(th3)-d7.*cos(th1).*cos(th4).*cos(th6).*sin(th3).*sin(th5)+a6.*cos(th2).*cos(th5).*sin(th1).*sin(th3).*sin(th6)+a6.*cos(th1).*cos(th4).*sin(th3).*sin(th5).*sin(th6)-a7.*cos(th2).*sin(th1).*sin(th3).*sin(th5).*sin(th7)-a7.*cos(th5).*sin(th1).*sin(th2).*sin(th4).*sin(th7)+d7.*cos(th6).*sin(th1).*sin(th2).*sin(th4).*sin(th5)-a6.*sin(th1).*sin(th2).*sin(th4).*sin(th5).*sin(th6)-a7.*cos(th7).*sin(th1).*sin(th2).*sin(th4).*sin(th5).*sin(th6)+a7.*cos(th2).*cos(th3).*cos(th4).*cos(th5).*sin(th1).*sin(th7)-d7.*cos(th2).*cos(th3).*cos(th4).*cos(th6).*sin(th1).*sin(th5)+a6.*cos(th2).*cos(th3).*cos(th4).*sin(th1).*sin(th5).*sin(th6)+a7.*cos(th2).*cos(th5).*cos(th7).*sin(th1).*sin(th3).*sin(th6)+a7.*cos(th1).*cos(th4).*cos(th7).*sin(th3).*sin(th5).*sin(th6)+a7.*cos(th2).*cos(th3).*cos(th4).*cos(th7).*sin(th1).*sin(th5).*sin(th6),d6.*cos(th2).*cos(th5).*sin(th4)-d6.*sin(th2).*sin(th3).*sin(th5)+d6.*cos(th3).*cos(th4).*cos(th5).*sin(th2)+a7.*cos(th2).*cos(th5).*sin(th4).*sin(th7)-d7.*cos(th5).*cos(th6).*sin(th2).*sin(th3)-d7.*cos(th2).*cos(th6).*sin(th4).*sin(th5)+a6.*cos(th5).*sin(th2).*sin(th3).*sin(th6)+a6.*cos(th2).*sin(th4).*sin(th5).*sin(th6)-a7.*sin(th2).*sin(th3).*sin(th5).*sin(th7)+a7.*cos(th3).*cos(th4).*cos(th5).*sin(th2).*sin(th7)-d7.*cos(th3).*cos(th4).*cos(th6).*sin(th2).*sin(th5)+a6.*cos(th3).*cos(th4).*sin(th2).*sin(th5).*sin(th6)+a7.*cos(th5).*cos(th7).*sin(th2).*sin(th3).*sin(th6)+a7.*cos(th2).*cos(th7).*sin(th4).*sin(th5).*sin(th6)+a7.*cos(th3).*cos(th4).*cos(th7).*sin(th2).*sin(th5).*sin(th6),...
            -d7.*cos(th1).*cos(th4).*cos(th6).*sin(th2)+a6.*cos(th1).*cos(th4).*sin(th2).*sin(th6)+a6.*cos(th3).*cos(th6).*sin(th1).*sin(th5)+d7.*cos(th6).*sin(th1).*sin(th3).*sin(th4)+d7.*cos(th3).*sin(th1).*sin(th5).*sin(th6)-a6.*sin(th1).*sin(th3).*sin(th4).*sin(th6)-d7.*cos(th1).*cos(th2).*cos(th3).*cos(th6).*sin(th4)+a6.*cos(th1).*cos(th2).*cos(th3).*sin(th4).*sin(th6)+a6.*cos(th1).*cos(th2).*cos(th6).*sin(th3).*sin(th5)+a6.*cos(th1).*cos(th5).*cos(th6).*sin(th2).*sin(th4)+a6.*cos(th4).*cos(th5).*cos(th6).*sin(th1).*sin(th3)+a7.*cos(th1).*cos(th4).*cos(th7).*sin(th2).*sin(th6)+a7.*cos(th3).*cos(th6).*cos(th7).*sin(th1).*sin(th5)+d7.*cos(th1).*cos(th2).*sin(th3).*sin(th5).*sin(th6)+d7.*cos(th1).*cos(th5).*sin(th2).*sin(th4).*sin(th6)+d7.*cos(th4).*cos(th5).*sin(th1).*sin(th3).*sin(th6)-a7.*cos(th7).*sin(th1).*sin(th3).*sin(th4).*sin(th6)-a6.*cos(th1).*cos(th2).*cos(th3).*cos(th4).*cos(th5).*cos(th6)-d7.*cos(th1).*cos(th2).*cos(th3).*cos(th4).*cos(th5).*sin(th6)+a7.*cos(th1).*cos(th2).*cos(th3).*cos(th7).*sin(th4).*sin(th6)+a7.*cos(th1).*cos(th2).*cos(th6).*cos(th7).*sin(th3).*sin(th5)+a7.*cos(th1).*cos(th5).*cos(th6).*cos(th7).*sin(th2).*sin(th4)+a7.*cos(th4).*cos(th5).*cos(th6).*cos(th7).*sin(th1).*sin(th3)-a7.*cos(th1).*cos(th2).*cos(th3).*cos(th4).*cos(th5).*cos(th6).*cos(th7),...
            -a6.*cos(th1).*cos(th3).*cos(th6).*sin(th5)-d7.*cos(th4).*cos(th6).*sin(th1).*sin(th2)-d7.*cos(th1).*cos(th6).*sin(th3).*sin(th4)-d7.*cos(th1).*cos(th3).*sin(th5).*sin(th6)+a6.*cos(th4).*sin(th1).*sin(th2).*sin(th6)+a6.*cos(th1).*sin(th3).*sin(th4).*sin(th6)-a6.*cos(th1).*cos(th4).*cos(th5).*cos(th6).*sin(th3)-a7.*cos(th1).*cos(th3).*cos(th6).*cos(th7).*sin(th5)-d7.*cos(th2).*cos(th3).*cos(th6).*sin(th1).*sin(th4)-d7.*cos(th1).*cos(th4).*cos(th5).*sin(th3).*sin(th6)+a6.*cos(th2).*cos(th3).*sin(th1).*sin(th4).*sin(th6)+a6.*cos(th2).*cos(th6).*sin(th1).*sin(th3).*sin(th5)+a6.*cos(th5).*cos(th6).*sin(th1).*sin(th2).*sin(th4)+a7.*cos(th4).*cos(th7).*sin(th1).*sin(th2).*sin(th6)+a7.*cos(th1).*cos(th7).*sin(th3).*sin(th4).*sin(th6)+d7.*cos(th2).*sin(th1).*sin(th3).*sin(th5).*sin(th6)+d7.*cos(th5).*sin(th1).*sin(th2).*sin(th4).*sin(th6)-a6.*cos(th2).*cos(th3).*cos(th4).*cos(th5).*cos(th6).*sin(th1)-a7.*cos(th1).*cos(th4).*cos(th5).*cos(th6).*cos(th7).*sin(th3)-d7.*cos(th2).*cos(th3).*cos(th4).*cos(th5).*sin(th1).*sin(th6)+a7.*cos(th2).*cos(th3).*cos(th7).*sin(th1).*sin(th4).*sin(th6)+a7.*cos(th2).*cos(th6).*cos(th7).*sin(th1).*sin(th3).*sin(th5)+a7.*cos(th5).*cos(th6).*cos(th7).*sin(th1).*sin(th2).*sin(th4)-a7.*cos(th2).*cos(th3).*cos(th4).*cos(th5).*cos(th6).*cos(th7).*sin(th1),d7.*cos(th2).*cos(th4).*cos(th6)-a6.*cos(th2).*cos(th4).*sin(th6)-a6.*cos(th2).*cos(th5).*cos(th6).*sin(th4)-a7.*cos(th2).*cos(th4).*cos(th7).*sin(th6)-d7.*cos(th3).*cos(th6).*sin(th2).*sin(th4)-d7.*cos(th2).*cos(th5).*sin(th4).*sin(th6)+a6.*cos(th3).*sin(th2).*sin(th4).*sin(th6)+a6.*cos(th6).*sin(th2).*sin(th3).*sin(th5)+d7.*sin(th2).*sin(th3).*sin(th5).*sin(th6)-a6.*cos(th3).*cos(th4).*cos(th5).*cos(th6).*sin(th2)-a7.*cos(th2).*cos(th5).*cos(th6).*cos(th7).*sin(th4)-d7.*cos(th3).*cos(th4).*cos(th5).*sin(th2).*sin(th6)+a7.*cos(th3).*cos(th7).*sin(th2).*sin(th4).*sin(th6)+a7.*cos(th6).*cos(th7).*sin(th2).*sin(th3).*sin(th5)-a7.*cos(th3).*cos(th4).*cos(th5).*cos(th6).*cos(th7).*sin(th2),a7.*cos(th3).*cos(th5).*cos(th7).*sin(th1)+a7.*cos(th1).*cos(th2).*cos(th5).*cos(th7).*sin(th3)+a7.*cos(th1).*cos(th4).*cos(th6).*sin(th2).*sin(th7)-a7.*cos(th1).*cos(th7).*sin(th2).*sin(th4).*sin(th5)-a7.*cos(th4).*cos(th7).*sin(th1).*sin(th3).*sin(th5)-a7.*cos(th6).*sin(th1).*sin(th3).*sin(th4).*sin(th7)-a7.*cos(th3).*sin(th1).*sin(th5).*sin(th6).*sin(th7)-a7.*cos(th1).*cos(th2).*sin(th3).*sin(th5).*sin(th6).*sin(th7)-a7.*cos(th1).*cos(th5).*sin(th2).*sin(th4).*sin(th6).*sin(th7)-a7.*cos(th4).*cos(th5).*sin(th1).*sin(th3).*sin(th6).*sin(th7)+a7.*cos(th1).*cos(th2).*cos(th3).*cos(th4).*cos(th7).*sin(th5)+a7.*cos(th1).*cos(th2).*cos(th3).*cos(th6).*sin(th4).*sin(th7)+a7.*cos(th1).*cos(th2).*cos(th3).*cos(th4).*cos(th5).*sin(th6).*sin(th7),...
            -a7.*cos(th1).*cos(th3).*cos(th5).*cos(th7)+a7.*cos(th2).*cos(th5).*cos(th7).*sin(th1).*sin(th3)+a7.*cos(th1).*cos(th4).*cos(th7).*sin(th3).*sin(th5)+a7.*cos(th4).*cos(th6).*sin(th1).*sin(th2).*sin(th7)+a7.*cos(th1).*cos(th6).*sin(th3).*sin(th4).*sin(th7)+a7.*cos(th1).*cos(th3).*sin(th5).*sin(th6).*sin(th7)-a7.*cos(th7).*sin(th1).*sin(th2).*sin(th4).*sin(th5)-a7.*cos(th2).*sin(th1).*sin(th3).*sin(th5).*sin(th6).*sin(th7)-a7.*cos(th5).*sin(th1).*sin(th2).*sin(th4).*sin(th6).*sin(th7)+a7.*cos(th2).*cos(th3).*cos(th4).*cos(th7).*sin(th1).*sin(th5)+a7.*cos(th2).*cos(th3).*cos(th6).*sin(th1).*sin(th4).*sin(th7)+a7.*cos(th1).*cos(th4).*cos(th5).*sin(th3).*sin(th6).*sin(th7)+a7.*cos(th2).*cos(th3).*cos(th4).*cos(th5).*sin(th1).*sin(th6).*sin(th7),...
            -a7.*cos(th2).*cos(th4).*cos(th6).*sin(th7)+a7.*cos(th5).*cos(th7).*sin(th2).*sin(th3)+a7.*cos(th2).*cos(th7).*sin(th4).*sin(th5)+a7.*cos(th3).*cos(th4).*cos(th7).*sin(th2).*sin(th5)+a7.*cos(th3).*cos(th6).*sin(th2).*sin(th4).*sin(th7)+a7.*cos(th2).*cos(th5).*sin(th4).*sin(th6).*sin(th7)-a7.*sin(th2).*sin(th3).*sin(th5).*sin(th6).*sin(th7)+a7.*cos(th3).*cos(th4).*cos(th5).*sin(th2).*sin(th6).*sin(th7)],...
            [3,7]);
        symJacobianWrist = @(d2,d3,d4,d5,th1,th2,th3,th4)reshape([d4.*(cos(th1).*cos(th3)-cos(th2).*sin(th1).*sin(th3))+d2.*cos(th1)+d5.*(sin(th4).*(cos(th1).*sin(th3)+cos(th2).*cos(th3).*sin(th1))+cos(th4).*sin(th1).*sin(th2))+d3.*sin(th1).*sin(th2),d4.*(cos(th3).*sin(th1)+cos(th1).*cos(th2).*sin(th3))+d2.*sin(th1)+d5.*(sin(th4).*(sin(th1).*sin(th3)-cos(th1).*cos(th2).*cos(th3))-cos(th1).*cos(th4).*sin(th2))-d3.*cos(th1).*sin(th2),0.0,-cos(th1).*(d5.*(cos(th2).*cos(th4)-cos(th3).*sin(th2).*sin(th4))+d3.*cos(th2)+d4.*sin(th2).*sin(th3)),...
            -sin(th1).*(d5.*(cos(th2).*cos(th4)-cos(th3).*sin(th2).*sin(th4))+d3.*cos(th2)+d4.*sin(th2).*sin(th3)),...
            -d3.*sin(th2)+d4.*cos(th2).*sin(th3)-d5.*cos(th4).*sin(th2)-d5.*cos(th2).*cos(th3).*sin(th4),...
            -d4.*sin(th1).*sin(th3)+d4.*cos(th1).*cos(th2).*cos(th3)+d5.*cos(th3).*sin(th1).*sin(th4)+d5.*cos(th1).*cos(th2).*sin(th3).*sin(th4),d4.*cos(th1).*sin(th3)+d4.*cos(th2).*cos(th3).*sin(th1)-d5.*cos(th1).*cos(th3).*sin(th4)+d5.*cos(th2).*sin(th1).*sin(th3).*sin(th4),sin(th2).*(d4.*cos(th3)+d5.*sin(th3).*sin(th4)),d5.*cos(th1).*sin(th2).*sin(th4)+d5.*cos(th4).*sin(th1).*sin(th3)-d5.*cos(th1).*cos(th2).*cos(th3).*cos(th4),...
            -d5.*cos(th1).*cos(th4).*sin(th3)+d5.*sin(th1).*sin(th2).*sin(th4)-d5.*cos(th2).*cos(th3).*cos(th4).*sin(th1),...
            -d5.*cos(th2).*sin(th4)-d5.*cos(th3).*cos(th4).*sin(th2),0.0,0.0,0.0],...
            [3,5]);
        
        symT_0_n;
        
    end
    properties (Access = private)
        hCyton;  % Handle to Parent Cyton Robot
        a_;
        d_;
    end
    properties (Constant = true)
        JointPositionMode = 1;
        EndpointPositionMode = 2;
    end
    methods
        function obj = CytonControls(hCyton)
            obj.hCyton = hCyton;
        end
        function Value = get.DH_Params(obj)
            if isempty(obj.a_) || isempty(obj.d_)
                % Compute the first time
                [T, a d] = getDHParams(); %#ok<ASGLU>
                obj.a_ = a;
                obj.d_ = d;
            end
            Value.a = obj.a_;
            Value.d = obj.d_;
        end
        function [A, T_0_n] = getJointFrames(obj)
            % This function contains all the kinematics of the Cyton I
            import Presentation.CytonI.*
            
            %q = obj.JointParameters;
            q = obj.hCyton.hPlant.CurrentPosition;
            
            % orients local coordinate system to D-H convention
            [T_0_n, a, d]= CytonControls.getDHParams();
            
            % law of cosines
            % LOC = @(r,l,theta) r*cos(theta) - sqrt(l.^2 - (r.^2 * sin(theta) .^2));
            A(:,:,1) = Robot.DH_transformation(0,pi/2,d(1),q(1));
            A(:,:,2) = Robot.DH_transformation(0,-pi/2,d(2),q(2));
            A(:,:,3) = Robot.DH_transformation(0,pi/2,d(3),q(3));
            A(:,:,4) = Robot.DH_transformation(0,-pi/2,d(4),q(4));
            A(:,:,5) = Robot.DH_transformation(0,pi/2,d(5),q(5));
            A(:,:,6) = Robot.DH_transformation(a(6),pi/2,d(6),q(6)+pi/2);
            A(:,:,7) = Robot.DH_transformation(a(7),0,d(7),q(7));
            
            %d8 = sin(q(8)) * d(8);
            d8 = -20*q(8);
            d9 = -d8;
            A8 = Robot.DH_transformation(a(8),0,d8,0);
            %A8(3,4) = -20*q(8);
            A(:,:,8) = A8;
            A(:,:,9) = Robot.DH_transformation(a(9),0,d9,0);
        end
        function T_0_N = getT_0_N(obj,N)
            % Get Joint transformations relative to base frame
            % T_0_n = A_0_1*A_1_2*...*A_n-1_n
            
            A = obj.getJointFrames();
            
            if nargin < 2
                % Get product of all frames
                N = size(A,3);
            end
            
            % Transform to end effector
            T_0_N = eye(4);
            for i = 1:N
                T_0_N = T_0_N * A(:,:,i);
            end
        end
        function q = setEndEffectorPose(obj,T_Target)
            % RSA: 4/3/2013 Disabled this beta functions.
            % TODO: Add cases in which joint limits are reached
            error('Incomplete');
            
            if nargin < 2
                T_Target = makehgtform('translate',[50 180 300],...
                    'xrotate',-1,'yrotate',0,'zrotate',0);
            end
            pTarget = T_Target(1:3,4);
            
            obj.hCyton.hDisplay.setTarget(T_Target);
            
            drawnow;
            
            
            [T_0_n a d] = obj.getDHParams();
            [pError phi] = deal(100);
            [pErrorLast phiLast] = deal(1000);
            
            convergenceThreshold = 1e-3;
            
            tJacobian = tic;
            
            countMax = 5000;
            count = 0;
            isConverged = false;
            while ((norm(pError) > 1) || (phi > 1)) && (count < countMax) && ~isConverged
                count = count + 1;
                q = obj.hCyton.hPlant.CurrentPosition;
                %J_ = obj.symJacobian(a(6),a(7),d(2),d(3),d(4),d(5),d(6),d(7),q(1),q(2),q(3),q(4),q(5),q(6),q(7));
                J_ = obj.symJacobianFull(a(6),d(2),d(3),d(4),d(5),d(6),q(1),q(2),q(3),q(4),q(5),q(6));
                %J_ = obj.hCyton.hControls.symJacobian(a(6),d(2),d(3),d(4),d(5),d(6),q(1),q(2),q(3),q(4),q(5),q(6));
                
                N = 7;
                T = obj.getT_0_N(N);
                
                % Compute position error
                pEndEffector = T(1:3,4);
                pError = pTarget - pEndEffector;
                
                dE = norm(pError - pErrorLast);
                pErrorLast = pError;
                isConverged = (abs(dE) < convergenceThreshold);
                
                %fprintf('pError = [%6.2f %6.2f %6.2f]\tdE = %6.2f\n',pError,dE);
                
                % Compute orientation error
                T_error = pinv(T)*T_Target;
                [n,point,phi,t] = f_screw(T_error,1);
                
                % Compute velocity moves based on error
                P = 0.1;
                P2 = 0.005;
                
                vMove = pError * P;
                wMove = phi*n*P2;
                
                invJ_ = pinv(J_);
                p = norm(pError)/5;
                
                invJ_(1:4,4:6) = invJ_(1:4,4:6)/max(1,p);
                invJ_(5:7,1:3) = invJ_(5:7,1:3)/max(1,p);
                
                % disp(invJ_)
                
                q_dot = invJ_ * [vMove; wMove];
                
                % Apply joint speed limits
                q_dot = min(abs(q_dot),1) .* sign(q_dot);
                
                % Apply Joint limits
                q(2) = max(min(q(2),pi/2),-pi/2);
                q(6) = max(min(q(6),pi/2),-pi/2);
                q(7) = max(min(q(6),pi/2),-pi/2);
                
                q(1:7) = q(1:7) + q_dot;
                
                obj.hCyton.setJointParameters(q);
                %obj.hCyton.hDisplay.updateFigure();
                %drawnow
            end
            disp('setEndEffectorPose Complete');
            toc(tJacobian);
        end
        function [jointVelocity, J] = computeVelocity(obj,endpointVelocity)
            % Notes on building an endpoint velocity controller
            %
            % Basic form:
            % q_dot = pinvJ * x_dot
            %
            % This has issues when a joint limit is reached
            %
            %
            % Joint Limit Avoidance:
            % Null space can be used to delay contact with joint limits
            %
            % (Liegeois 1977)
            % q_dot = pinvJ * x_dot + (I - pinvJ*J) * q0_dot
            % where q0_dot is a velocity away from the joint limits
            %
            %
            %
            % Invalid Jacobian
            %
            %
            % Workspace constraint:
            % Avoid commanding beyond workspace
            
            jointVelocity = [];
            
            maxTries = 10;
            
            isIgnoredDof = isnan(endpointVelocity);
            endpointVelocity(isIgnoredDof) = 0;
            
            % Get current position
            q = obj.hCyton.JointParameters;
            
            % Compute jacobian
            J = obj.numericJacobian(q);
            
            lockedJoints = false(1,8);
            while maxTries >= 0
                maxTries = maxTries - 1;
                
                J(:,lockedJoints) = 0;
                
                J(isIgnoredDof,:) = 0;
                
                q0_dot = zeros(7,1);
                applyNullSpace = 1;
                if applyNullSpace
                    
                    distLowerLim = q(1:7) - obj.hCyton.hPlant.JointLimits(1:7,1);
                    distUpperLim = q(1:7) - obj.hCyton.hPlant.JointLimits(1:7,2);
                    
                    %[distLowerLim distUpperLim]'
                    
                    limThresh = 0.25;
                    isCloseLower = distLowerLim < limThresh;
                    isCloseUpper = distUpperLim > -limThresh;
                    
                    q0_dot(isCloseLower) = -(distLowerLim(isCloseLower)-limThresh);
                    q0_dot(isCloseUpper) = -(distUpperLim(isCloseUpper)+limThresh);
                    if any(q0_dot)
                        q0_dot'
                    end
                end
                
                % Compute the joint velocities, q_dot
                x_dot = endpointVelocity(:);
                switch lower(obj.JacobianMethod)
                    case lower('Transpose')
                        % Transpose method
                        pinvJ = J';
                        q_dot = pinvJ * x_dot;
                    case lower('PseudoInverse')
                        % pseudo-inverse
                        pinvJ = pinv(J);
                        q_dot = pinvJ * x_dot;
                    case lower('DampedLeastSquares')
                        % Damped least squares:
                        lambda = 1e-1;
                        q_dot = (J'*J + lambda^2.*eye(7)) \ J' * x_dot;
                    otherwise
                        error('Unknown Jacobian Inversion Method. Expected {Transpose|PseudoInverse|DampedLeastSquares}');
                end
                
                nullVelocity = (eye(7) - pinv(J)*J) * q0_dot;
                q_dot = q_dot + nullVelocity;
                
                
                % check desired velocity against joint limits
                recompute = false;
                for iJoint = 1:7
                    
                    atLimitPos = obj.hCyton.hPlant.IsLimit(iJoint) > 0 && q_dot(iJoint) > 0;
                    atLimitNeg = obj.hCyton.hPlant.IsLimit(iJoint) < 0 && q_dot(iJoint) < 0;
                    if ~lockedJoints(iJoint) && atLimitPos
                        fprintf('Joint %d commanded against + limit\n',iJoint)
                        lockedJoints(iJoint) = true;
                        recompute = true;
                    elseif ~lockedJoints(iJoint) && atLimitNeg
                        fprintf('Joint %d commanded against - limit\n',iJoint)
                        lockedJoints(iJoint) = true;
                        recompute = true;
                    end
                    
                end
                
                if ~recompute
                    jointVelocity = [q_dot; 0];
                    break;
                end
            end
            
        end
        function goto(obj,pos)
            
            % RSA: 4/3/2013 Disabled this beta functions.
            % TODO: Add cases in which joint limits are reached
            error('Incomplete');
            
            
            if nargin < 2
                pos = [-70 200 310];
            end
            import Presentation.CytonI.*
            % Jacobian endpoint solution
            pTarget = pos(:);
            
            % get DH params:
            [T_0_n, a, d] = CytonControls.getDHParams();
            
            errorMag = 10;
            dt = 0.05;
            TIMEOUT = 5;
            isTimeout = false;
            isMoving = true;
            t0 = clock;
            while errorMag > 1 && ~isTimeout && isMoving
                %%
                q = obj.hCyton.hPlant.CurrentPosition;
                
                J = obj.hCyton.hControls.symJacobian(a(6),a(7),d(2),d(3),d(4),d(5),d(6),d(7),q(1),q(2),q(3),q(4),q(5),q(6),q(7));
                %J = obj.hControls.symJacobianWrist(d(2),d(3),d(4),d(5),q(1),q(2),q(3),q(4));
                
                N = 7;
                T_0_N = obj.hCyton.hControls.getT_0_N(N);
                pEE = T_0_N(1:3,4);
                pError = pTarget - pEE;
                
                errorMag = norm(pError);
                
                P = 10; %GAIN
                vMove = pError * P;
                
                q_dot = pinv(J) * vMove;
                
                % Apply joint speed limits
                %q_dot = min(abs(q_dot),1) .* sign(q_dot);
                if any(q_dot > 1)
                    q_dot = q_dot./max(abs(q_dot));
                end
                
                q_dot = min(abs(q_dot),1) .* sign(q_dot);
                
                isMoving = any(abs(q_dot) > 0.1) || ...
                    any(~obj.hCyton.hPlant.isMoveComplete);
                %~all(abs(q_dot) > 0.1) || ~all(obj.hCyton.hPlant.isMoveComplete);
                
                
                % Apply Joint limits
                q(1) = max(min(q(1),7*pi/8),-7*pi/8);
                q(2) = max(min(q(2),pi/2),-pi/2);
                q(4) = max(min(q(4),pi/2),-pi/2);
                q(6) = max(min(q(6),pi/3),-pi/3);
                
                q(1:N) = q(1:N) + (q_dot*dt);
                q_dot';
                obj.hCyton.setJointParameters(q);
                
                drawnow
                
                isTimeout = (etime(clock,t0) > TIMEOUT);
            end
            
            if isTimeout
                fprintf('Timed Out.  Error is: %6.2f\n',errorMag);
            else
                fprintf('Move Complete.  Error is: %6.2f\n',errorMag);
            end
            
        end
        
    end
    methods (Static = true)
        function [T_0_n, a, d] = getDHParams()
            % This function contains all the kinematics of the Cyton I with respect to
            % the global coordinate system
            
            nSegments = 10;
            
            % orients local coordinate system to D-H convention
            T_0_n = repmat(eye(4),[1 1 nSegments]);
            
            % these are rotation matrices to align global coordinate system to segment
            % local CS
            R1 = [0  1 0; 0 0 1; 1 0 0];
            R2 = [0 -1 0; 1 0 0; 0 0 1];
            R3 = [0 0 -1; 0 1 0; 1 0 0];
            
            % These T_0_n- matrices give the absolute transform of the robot
            % joints frames with respect to the GCS (in mm)
            % This is analogous to starting with the DH "A-matrices" and
            % then multiplying A_n-1*A_n to give the T matrices T_0_n
            
            % The values here were derived by manually reverse engineering
            % the CytonI CAD Data
            
            T_0_n(:,:,1) = [R1 [-14.19; 49.46; -0.41]; 0 0 0 1];
            T_0_n(:,:,2) = [R3 [-14.19; 87.39; -0.41]; 0 0 0 1];
            T_0_n(:,:,3) = [R1 [-9.57;  87.39; -0.41]; 0 0 0 1];
            T_0_n(:,:,4) = [R3 [-9.57; 232.39; -0.41]; 0 0 0 1];
            T_0_n(:,:,5) = [R1 [-20.57; 232.39; -0.41]; 0 0 0 1];
            T_0_n(:,:,6) = [R3 [-20.57; 407.39; -0.41]; 0 0 0 1];
            T_0_n(:,:,7) = [R2 [-27.97; 475.09; -0.41]; 0 0 0 1];
            T_0_n(:,:,8) = [R2 [-28.30; 528.24; -8.06]; 0 0 0 1];
            T_0_n(:,:,9) = [R2 [-28.12; 536.24; -26.19]; 0 0 0 1];
            T_0_n(:,:,10) = [R2 [-28.12; 536.24; 9.06]; 0 0 0 1];
            
            
            % get DH params:
            T_1_2 = pinv(T_0_n(:,:,1))*T_0_n(:,:,2);
            T_2_3 = pinv(T_0_n(:,:,2))*T_0_n(:,:,3);
            T_3_4 = pinv(T_0_n(:,:,3))*T_0_n(:,:,4);
            T_4_5 = pinv(T_0_n(:,:,4))*T_0_n(:,:,5);
            T_5_6 = pinv(T_0_n(:,:,5))*T_0_n(:,:,6);
            T_6_7 = pinv(T_0_n(:,:,6))*T_0_n(:,:,7);
            T_7_8 = pinv(T_0_n(:,:,7))*T_0_n(:,:,8);
            % Note both grippers w.r.t Frame 8
            T_8_9 = pinv(T_0_n(:,:,8))*T_0_n(:,:,9);
            T_8_10 = pinv(T_0_n(:,:,8))*T_0_n(:,:,10);
            
            [a, d] = deal(zeros(9,1));
            
            d(1) = T_1_2(3,4);
            d(2) = T_2_3(3,4);
            d(3) = T_3_4(3,4);
            d(4) = T_4_5(3,4);
            d(5) = T_5_6(3,4);
            d(6) = T_6_7(3,4);
            d(7) = T_7_8(3,4);
            
            a(6) = T_6_7(2,4);
            a(7) = T_7_8(1,4);
            a(8) = T_8_9(1,4);
            a(9) = T_8_10(1,4);
        end
        function pElbow = solveElbowPositions(pWrist)
            % Given a wrist position, this is acheivable via a circular
            % locus of elbow positions
            
            [T a d] = CytonControls.getDHParams();
            
            D1 = sqrt(d(2)^2 + d(3)^2);  % Effective length of the 'humerus'
            D2 = sqrt(d(4)^2 + d(5)^2);  % Effective length of the 'forearm'
            
            pShoulder = [0 0 d(1)]';
            
            [x n_hat a] = Utils.sphereIntersect(pShoulder,pWrist(:),D1,D2);
            pElbow = Utils.disc(x,n_hat,a);
            
        end
        function qAll = solveWristEndpoint(pWrist)
            
            pWrist = pWrist(:); % ensure column vector
            
            [T a d] = CytonControls.getDHParams();
            pDisc = CytonControls.solveElbowPositions(pWrist);
            
            qAll = zeros(4,length(pDisc));
            isLimit = zeros(1,length(pDisc));
            
            
            T_0_2_f = @(d1,d2,th1,th2)reshape([cos(th1).*cos(th2),cos(th2).*sin(th1),...
                sin(th2),0.0,-sin(th1),cos(th1),0.0,0.0,-cos(th1).*sin(th2),...
                -sin(th1).*sin(th2),cos(th2),0.0,d2.*sin(th1),-d2.*cos(th1),d1,1.0],[4,4]);
            
            for i = 1:length(pDisc)
                pElbow = pDisc(:,i);
                
                y = (pElbow(3) - d(1)) ./ d(3);
                y = max(min(y,1),-1);
                
                if abs(y) == 1
                    isLimit(i) = 1;
                    %warning('Joint 2 is at limit');
                end
                %q(2) = acos( y );
                
                th2_p = +atan2(sqrt(1-y.^2),y);
                th2_n = -atan2(sqrt(1-y.^2),y);
                % TODO Choose Solutions
                
                q(2) = Utils.wrapToPi(th2_n);
                
                r = sqrt(d(2)^2 + (sin(q(2))*d(3)) ^2); %exact
                q(1) = atan2( pElbow(2),pElbow(1) ) - atan2(-d(2),-sqrt(r^2 - d(2)^2)); %exact
                
                q(1) = Utils.wrapToPi(q(1));
                
                % End closed form solution for elbow position
                
                % Begin closed form solution of elbow to wrist
                T_0_2 = T_0_2_f(d(1),d(2),q(1),q(2));
                pWrist_2 = pinv(T_0_2)*[pWrist; 1];
                
                h = (d(3) - pWrist_2(3)) ./ d(5);
                h = max(min(h,1),-1);
                if abs(h) == 1
                    isLimit(i) = 1;
                    %warning('Joint 4 is at limit');
                end
                %q(4) =  asin( h );
                th4_p = atan2(h,+sqrt(1-h.^2));
                th4_n = atan2(h,-sqrt(1-h.^2));
                
                q(4) = Utils.wrapToPi(th4_p + pi/2);
                
                r = sqrt(d(4)^2 + (sin(q(4))*d(5)) ^2);
                q(3) = -atan2( pWrist_2(2), -pWrist_2(1) ) - ...
                    atan2(d(4),sqrt(r^2 - d(4)^2));
                q(3) = Utils.wrapToPi(q(3));
                
                qAll(:,i) = q;
            end
        end
        
        function debugKinematics
            % For debug purposes, if you plot all these transformations, it
            % will show the robot in a 'home' position.
            %%
            patchData = Presentation.CytonI.CytonDisplay.quickLoadPatchData();
            T_0_n = Presentation.CytonI.CytonControls.getDHParams();
            clf
            axis equal
            rotate3d on
            N = 10;
            for i = 1:N
                PlotUtils.triad(T_0_n(:,:,i),50);
            end
            %%
            for i = 1:N
                hT(i) = hgtransform();
                patch(patchData(i),'FaceColor','b','FaceAlpha',0.1,'EdgeColor','none','Parent',hT(i));
            end
            %%
            for i = 1:N
                set(hT(i),'Matrix',T_0_n(:,:,i))
            end
            %%
            for i = 1:N
                set(hT(i),'Matrix',eye(4))
            end
        end
        function symJacobian = computeJacobian()
            %%
            % Ai = DH(linkLength,linkTwist,linkOffset,jointAngle); ref Eq. 3.10
            DH = @(linkLength,linkTwist,linkOffset,jointAngle)...
                [
                cos(jointAngle) -sin(jointAngle)*cos(linkTwist)  sin(jointAngle)*sin(linkTwist)   linkLength*cos(jointAngle);
                sin(jointAngle)  cos(jointAngle)*cos(linkTwist) -cos(jointAngle)*sin(linkTwist)   linkLength*sin(jointAngle);
                0        sin(linkTwist)          cos(linkTwist)           linkOffset;
                0        0                0                 1;];
            
            % DH for Elbow Manipulator robot
            piOver2 = sym('pi/2');
            A1 = DH(0,piOver2,sym('d1'),sym('th1'));
            A2 = DH(0,-piOver2,sym('d2'),sym('th2'));
            A3 = DH(0,piOver2,sym('d3'),sym('th3'));
            A4 = DH(0,-piOver2,sym('d4'),sym('th4'));
            A5 = DH(0,piOver2,sym('d5'),sym('th5'));
            A6 = DH(sym('a6'),piOver2,sym('d6'),sym('th6')+piOver2);
            A7 = DH(sym('a7'),0,sym('d7'),sym('th7'));
            
            T_0_1 = A1;
            T_0_2 = A1*A2;
            T_0_3 = A1*A2*A3;
            T_0_4 = A1*A2*A3*A4;
            T_0_5 = A1*A2*A3*A4*A5;
            T_0_6 = A1*A2*A3*A4*A5*A6;
            T_0_7 = A1*A2*A3*A4*A5*A6*A7;
            
            % Define components for Jacobian
            z0 = [0 0 1]';
            z1 = T_0_1(1:3,3);
            z2 = T_0_2(1:3,3);
            z3 = T_0_3(1:3,3);
            z4 = T_0_4(1:3,3);
            z5 = T_0_5(1:3,3);
            z6 = T_0_6(1:3,3);
            z7 = T_0_7(1:3,3);
            
            o0 = sym('[0;0;0]');
            o1 = simplify(T_0_1(1:3,4,1));
            o2 = simplify(T_0_2(1:3,4,1));
            o3 = simplify(T_0_3(1:3,4,1));
            o4 = simplify(T_0_4(1:3,4,1));
            o5 = simplify(T_0_5(1:3,4,1));
            o6 = simplify(T_0_6(1:3,4,1));
            o7 = simplify(T_0_7(1:3,4,1));
            
            % Per Eq. 4.64, J is the Geometric Jacobian
            oc = o5;
            J1 = simplify(cross(z0,(oc-o0)));
            J2 = simplify(cross(z1,(oc-o1)));
            J3 = simplify(cross(z2,(oc-o2)));
            J4 = simplify(cross(z3,(oc-o3)));
            J5 = simplify(cross(z4,(oc-o4)));
            J6 = simplify(cross(z5,(oc-o5)));
            J7 = simplify(cross(z6,(oc-o6)));
            
            J11 = [J1 J2 J3 J4 J5 J6 J7];
            %J11 = [J1 J2 J3 J4 J5];
            
            J = [J11; z0 z1 z2 z3 z4 z5 z6];
            
            % matlabFunction converts symbolic functions to anonymous (faster)
            % J_f = matlabFunction(J);
            symJacobian = matlabFunction(J11);
            
            % Jinv = inv(J11);
            % Jinv_f = matlabFunction(Jinv);
            
            disp('Done');
            
        end
        function [A, T] = forwardKinematics(q)
            % Computer forward Kinematics for Cyton
            % Returns 4x4 'A' matrices of each joint kinematics
            DH = @Presentation.CytonI.Robot.DH_transformation;
            
            % Computed statically from getDHParams()
            d = [37.9300 -4.6200 145.0000 11.0000 175.0000 7.4000 -7.6500 0 0];
            a = [0 0 0 0 0 67.7000 53.1500 8.0000 8.0000];
            
            % [A] matrices represent the kinematics of each joint relative
            % to the previous link (relative transformations)
            piOver2 = pi/2;
            A(:,:,1) = DH(a(1),  piOver2, d(1), q(1) );
            A(:,:,2) = DH(a(2), -piOver2, d(2), q(2) );
            A(:,:,3) = DH(a(3),  piOver2, d(3), q(3) );
            A(:,:,4) = DH(a(4), -piOver2, d(4), q(4) );
            A(:,:,5) = DH(a(5),  piOver2, d(5), q(5) );
            A(:,:,6) = DH(a(6),  piOver2, d(6), q(6) + piOver2 );
            A(:,:,7) = DH(a(7),  0, d(7), q(7) );

            if nargout > 1
                % Forward multiply the [A] matrices to get the [T] matrices
                % relative to the base frame (global transformations)
                T(:,:,1) = A(:,:,1);
                T(:,:,2) = T(:,:,1)*A(:,:,2);
                T(:,:,3) = T(:,:,2)*A(:,:,3);
                T(:,:,4) = T(:,:,3)*A(:,:,4);
                T(:,:,5) = T(:,:,4)*A(:,:,5);
                T(:,:,6) = T(:,:,5)*A(:,:,6);
                T(:,:,7) = T(:,:,6)*A(:,:,7);
            end
            
        end
        function [J, A] = numericJacobian(q)
            % Compute numeric Jacobian for the given joint position
            %
            % Kinematics for the Cyton Robot
            
            [A, T] = Presentation.CytonI.CytonControls.forwardKinematics(q);
                        
            % Define components for Jacobian:
            % z-axis is just the 3rd column of the transforms
            z0 = [0 0 1]';
            z1 = T(1:3,3,1);
            z2 = T(1:3,3,2);
            z3 = T(1:3,3,3);
            z4 = T(1:3,3,4);
            z5 = T(1:3,3,5);
            z6 = T(1:3,3,6);
            
            % The joint centers are just the 4th column from each
            % transformation matrix to the base
            o0 = [0 0 0]';
            o1 = T(1:3,4,1);
            o2 = T(1:3,4,2);
            o3 = T(1:3,4,3);
            o4 = T(1:3,4,4);
            o5 = T(1:3,4,5);
            o6 = T(1:3,4,6);
            o7 = T(1:3,4,7);
            
            % Per Eq. 4.64, J is the Geometric Jacobian
            oc = o7;
            J1 = cross(z0,(oc-o0));
            J2 = cross(z1,(oc-o1));
            J3 = cross(z2,(oc-o2));
            J4 = cross(z3,(oc-o3));
            J5 = cross(z4,(oc-o4));
            J6 = cross(z5,(oc-o5));
            J7 = cross(z6,(oc-o6));
            
            J11 = [J1 J2 J3 J4 J5 J6 J7];
            
            J = [J11; z0 z1 z2 z3 z4 z5 z6];
                        
        end
        function [q_dot, nullSpaceApplied, lockedJoints] = inverseVelocity(q,endpointVelocity,JacobianMethod)
            
            if nargin < 3
                JacobianMethod = 'DampedLeastSquares';
            end
            
            % q = rand(7,1)
            % endpointVelocity = [0 0 1 0 0 0]';
            
            
            % Notes on building an endpoint velocity controller
            %
            % Basic form:
            % q_dot = pinvJ * x_dot
            %
            % This has issues when a joint limit is reached
            %
            %
            % Joint Limit Avoidance:
            % Null space can be used to delay contact with joint limits
            %
            % (Liegeois 1977)
            % q_dot = pinvJ * x_dot + (I - pinvJ*J) * q0_dot
            % where q0_dot is a velocity away from the joint limits
            %
            %
            %
            % Invalid Jacobian
            %
            %
            % Workspace constraint:
            % Avoid commanding beyond workspace
            
            q_dot = [];
            nullSpaceApplied = false;
            
            maxTries = 10;
            
            % Use this to knock out any motions that we don;t case about.
            % A nan in the x,y,z linear of angular velocity means this is a
            % free parameter (i.e. because a 0 would imply keep that
            % endpoint motion constant)
            isIgnoredDof = isnan(endpointVelocity);
            % replace the nan with zero so calcualtions can compute
            endpointVelocity(isIgnoredDof) = 0;
            
            % Get current position
            %q = obj.hCyton.JointParameters;
            
            % Compute jacobian
            [J, A] = Presentation.CytonI.CytonControls.numericJacobian(q);
            
            lockedJoints = false(1,8);
            while maxTries >= 0
                maxTries = maxTries - 1;
                
                J(:,lockedJoints) = 0;
                
                J(isIgnoredDof,:) = 0;
                
                q0_dot = zeros(7,1);
                enableNullSpace = 0;
                if enableNullSpace
                    % Apply null space by defining q0 velocity which is an
                    % optional velocity in the null space that will try to
                    % pull the robot away from joint limits
                    distLowerLim = q(1:7) - JointLimits(1:7,1);
                    distUpperLim = q(1:7) - JointLimits(1:7,2);
                    
                    %[distLowerLim distUpperLim]'
                    
                    limThresh = 0.25;
                    isCloseLower = distLowerLim < limThresh;
                    isCloseUpper = distUpperLim > -limThresh;
                    
                    %q0_dot(isCloseLower) = -(distLowerLim(isCloseLower)-limThresh);
                    %q0_dot(isCloseUpper) = -(distUpperLim(isCloseUpper)+limThresh);
                    
                    q0_dot(isCloseLower) = -1;
                    q0_dot(isCloseUpper) = -1;
                    
                    % always try to restore robot to this config:
                    qNom = [0 0 0 0 0 0 0]';
                    q0_dot = qNom - q;
                    
                    if any(q0_dot)
                        nullSpaceApplied = 1;
                        q0_dot'
                    end
                end
                
                % Compute the joint velocities, q_dot
                x_dot = endpointVelocity(:);
                switch lower(JacobianMethod)
                    case lower('Transpose')
                        % Transpose method
                        pinvJ = J';
                        q_dot = pinvJ * x_dot;
                    case lower('PseudoInverse')
                        % pseudo-inverse
                        pinvJ = pinv(J);
                        q_dot = pinvJ * x_dot;
                    case lower('DampedLeastSquares')
                        % Damped least squares:
                        lambda = 1e-1;
                        q_dot = (J'*J + lambda^2.*eye(7)) \ J' * x_dot;
                    otherwise
                        error('Unknown Jacobian Inversion Method. Expected {Transpose|PseudoInverse|DampedLeastSquares}');
                end
                
                % pseudo-inverse
                pinvJ = pinv(J);
                q_dot = pinvJ * x_dot;
                
                % compare requested and actual joint velocity
                actualVelocity = J*q_dot;
                if all( abs(actualVelocity - endpointVelocity) < 1e-6)
                    % near perfect solution, return q_dot
                    % ... but this hasn't been checked against joint
                    % limits.  So if you use these values to update
                    % q_new = q + q_dot, some joints may saturate and
                    % result in anomolous movement.  So, we can't exist
                    % here.
                    
                    [IsLimit, lockedJointsOut] = Presentation.CytonI.CytonControls.checkJointLimits(q,q_dot,lockedJoints);
                    
                    if any(lockedJointsOut ~= lockedJoints)
                        lockedJoints = lockedJointsOut;
                        recompute = true;
                        continue
                    end
                    
                    recompute = false
                    break
                else
                    warning('Poor J match')
                end
                
                
                % Compute the null velocity.  Note the null velocity should
                % be at least as big as the velocity that is pulling the
                % join past it's limit
                
                q0_dot_scaled = q0_dot .* q_dot;
                
                nullVelocity = (eye(7) - pinv(J)*J) * q0_dot_scaled;
                
                
                q_dot = q_dot + nullVelocity;
                
                
                % check desired velocity against joint limits
                recompute = false;
                for iJoint = 1:7
                    
                    limitVal = JointLimits(iJoint,:);
                    
                    % Check each joint and set flag
                    if q(iJoint) >= limitVal(2)
                        q(iJoint) = limitVal(2);
                        IsLimit(iJoint) = 1;
                    elseif q(iJoint) <= limitVal(1)
                        q(iJoint) = limitVal(1);
                        IsLimit(iJoint) = -1;
                    else
                        IsLimit(iJoint) = 0;
                    end
                    
                    atLimitPos = IsLimit(iJoint) > 0 && q_dot(iJoint) > 0;
                    atLimitNeg = IsLimit(iJoint) < 0 && q_dot(iJoint) < 0;
                    if ~lockedJoints(iJoint) && atLimitPos
                        %fprintf('Joint %d commanded against + limit\n',iJoint)
                        lockedJoints(iJoint) = true;
                        recompute = true;
                    elseif ~lockedJoints(iJoint) && atLimitNeg
                        %fprintf('Joint %d commanded against - limit\n',iJoint)
                        lockedJoints(iJoint) = true;
                        recompute = true;
                    end
                    
                end
                
                if ~recompute
                    jointVelocity = [q_dot; 0];
                    break;
                end
            end
            
            
            if recompute
                warning('Abnormal termination');
            end
            
        end
        
        function [IsLimit, lockedJoints] = checkJointLimits(q,q_dot,lockedJoints)
            % check desired velocity against joint limits
            
            JointLimits = [
                -pi/2 pi/2
                -pi/2 pi/2
                -pi/2 pi/2
                -pi/2 pi/2
                -pi/2 pi/2
                -pi/2 pi/2
                -pi/2 pi/2
                0 1
                ];
            IsLimit = zeros(7,1);
            %lockedJoints = false(1,8);
            
            for iJoint = 1:7
                
                limitVal = JointLimits(iJoint,:);
                
                % Check each joint and set flag
                
                % First if any joint angle is at or past it's joint limit,
                % then set flag high
                if q(iJoint) >= limitVal(2)
                    q(iJoint) = limitVal(2);
                    IsLimit(iJoint) = 1;
                elseif q(iJoint) <= limitVal(1)
                    q(iJoint) = limitVal(1);
                    IsLimit(iJoint) = -1;
                else
                    IsLimit(iJoint) = 0;
                end
                
                % Additionally, check if any joint is within joint limit,
                % but the joint velocity command would send it past it's
                % limit
                atLimitPos = IsLimit(iJoint) > 0 && q_dot(iJoint) > 0;
                atLimitNeg = IsLimit(iJoint) < 0 && q_dot(iJoint) < 0;
                if ~lockedJoints(iJoint) && atLimitPos
                    %fprintf('Joint %d commanded against + limit\n',iJoint)
                    lockedJoints(iJoint) = true;
                    %recompute = true;
                elseif ~lockedJoints(iJoint) && atLimitNeg
                    %fprintf('Joint %d commanded against - limit\n',iJoint)
                    lockedJoints(iJoint) = true;
                    %recompute = true;
                end
            end
        end
        function [qOut, isLimit] = applyJointLimits(qIn)
            % check joint angles against joint limits.  Returns joint values saturated
            % at limits.  Additionally an output mask is returned with +1 -1 or 0 if
            % the angle is at the positive or negative limit
            
            qOut = qIn;
            
            jointLimits = [
                -pi/2 pi/2
                -pi/2 pi/2
                -pi/2 pi/2
                -pi/2 pi/2
                -pi/2 pi/2
                -pi/2 pi/2
                -pi/2 pi/2
                ];
            
            isLimit = zeros(size(jointLimits,1),1);
            
            for iJoint = 1:7
                
                % Check each joint and set flag
                
                % If any joint angle is at or past it's joint limit,
                % then set flag high
                if qOut(iJoint) <= jointLimits(iJoint,1)
                    qOut(iJoint) = jointLimits(iJoint,1);
                    isLimit(iJoint) = -1;
                elseif qOut(iJoint) >= jointLimits(iJoint,2)
                    qOut(iJoint) = jointLimits(iJoint,2);
                    isLimit(iJoint) = +1;
                else
                    isLimit(iJoint) = 0;
                end
                
            end
        end
    end
end

function [n,point,phi,t] = f_screw(T,intersect)
% Calculation of the screw axis
% function [n,point,phi,t]=screw(T)
% Input:    T   matrix containing the rotation matrix and transl. vector
%               [R;[t1,t2,t3]'; 0 0 0 1]
%	    intersect	location of the screw axis where it intersects either the x=0 (intersect=1),
%                       the y=0 (intersect=2), or the z=0 (intersect=3) plane.
%			default: intersect=3
% Output:   n       unit vector with direction of helical axis
%           point   point on helical axis
%           phi     rotation angle (in deg)
%           t       amount of translation along screw axis
%
% Comments:     Note that phi is b/w 0 and 180 deg. Right handed screw
%               axis system. The "sign" of phi can be checked with direction
%               of the unit vector (n).
% References:   (1) Spoor and Veldpaus (1980) Rigid body motion calculated
%                   from spatial co-ordinates of markers.
%                   J Biomech 13: 391-393
%               (2) Berme, Cappozzo, and Meglan. Rigid body mechanics
%                   as applied to human movement studies. In Berme and
%                   Cappozzo: Biomechanics of human movement.
%
% Author:	 Christoph Reinschmidt, HPL, UofCalgary
% Date:          Oct. 03, 1994
% Last Changes:  Nov-20-96

if nargin==1, intersect=[3]; end

R=T(1:3,1:3);

% tmp is matrix in equ. 31 (Spoor and Veldpaus, 1980)
tmp=[R(3,2)-R(2,3);R(1,3)-R(3,1);R(2,1)-R(1,2)];

%calculating n using equ. 31 and 32 (Spoor and Veldpaus, 1980)
n=tmp/norm(tmp);

% calculating phi either with equ. 32 or 34 (Spoor and Veldpaus, 1980)
% depending if sin(phi) smaller of bigger than 0.5*SQRT(2)
if norm(tmp) <= sqrt(2)
    
    phi=rad2deg(asin(0.5*norm(tmp)));
else
    phi=rad2deg(acos(0.5*(R(1,1)+R(2,2)+R(3,3)-1)));
end

%if phi approaches 180 deg it is better to use the following:
%(see Spoor and Veldpaus Eq. 35,36)
if phi>135;
    b=[0.5*(R+R')-cos(deg2rad(phi)) * eye(3)];
    b1=[b(:,1)]; b2=[b(:,2)]; b3=[b(:,3)];
    btmp=[b1'*b1;b2'*b2;b3'*b3];
    [bmax,i]=max(btmp);
    n=b(:,i)/sqrt(bmax);
    if sign(R(3,2)-R(2,3)) ~= sign(n(1,1));  n=n.*(-1); end;
end

t=n'*T(1:3,4);

% calculate where the screw axis intersects the plane as defined in 'intersect'
Q=R-eye(3);
Q(:,intersect)=-n;
point=Q\[T(1:3,4).*[-1]];
point(intersect,1)=[0];
end