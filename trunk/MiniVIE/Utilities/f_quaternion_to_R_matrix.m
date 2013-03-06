function R = f_quaternion_to_R_matrix(q_list)
%f_quaternion_to_R_matrix: Convert Quaternions to R matrices
%   This function accepts a 4xn array of column vectors and will return a
%   3x3xn array of rotation matrices.
%
%   RSA 13-Dec-2007: Validated against Polaris System documentation
%   RSA 12-Sep-2005: Fixed Discrepancy between Mathworld(R'), Polaris(R)
%   convention
%   RSA 21-Apr-2005: Fixed Errors in R Matrix
%   
%   Ref: http://www.euclideanspace.com/maths/algebra/realNormedAlgebra/quaternions/slerp/index.htm

% Input quarterions as 4x1 column vector
% this function will handle a list of vectors
if size(q_list,1) ~= 4
    error('Input quarterion as 4xn column vector array')
end
nVectors = size(q_list,2);

% Check magnitude (should be 1)
check = sum((q_list).^2).^0.5;
tolX = 1e-3;
if any(check < (1-tolX))
    badIds = find(check < (1-tolX));
    for i = 1:length(badIds)
        fprintf('|q| = %12.8f   q = %f %f %f %f \n',check(badIds(i)),q_list(:,i))
        %disp(str);
    end
    error(['Error in %s \n' ...
        ' Quaterion magnitude must equal 1.0 - tolX (%g). \n' ...
        ' Check inputs or adjust tolerance'],mfilename,tolX);
end

R = zeros(3,3,nVectors);
for i = 1:nVectors
    q0 = q_list(1,i);
    q1 = q_list(2,i); %% qx
    q2 = q_list(3,i); %% qy
    q3 = q_list(4,i); %% qz
    
    % Src: Polaris Documentation Section B.2.5
    R(1,1,i) = q0^2 + q1^2 - q2^2 - q3^2;
    R(1,2,i) = 2*(q1*q2 - q0*q3);
    R(1,3,i) = 2*(q1*q3 + q0*q2);
    R(2,1,i) = 2*(q1*q2 + q0*q3);
    R(2,2,i) = q0^2 - q1^2 + q2^2 - q3^2;
    R(2,3,i) = 2*(q2*q3 - q0*q1);
    R(3,1,i) = 2*(q1*q3 - q0*q2);
    R(3,2,i) = 2*(q2*q3 + q0*q1);
    R(3,3,i) = q0^2 - q1^2 - q2^2 + q3^2;
end

% Src: Mathworld, R'
% R(1,1,i) = q0^2 + q1^2 - q2^2 - q3^2;
% R(1,2,i) = 2*(q1*q2 + q0*q3);
% R(1,3,i) = 2*(q1*q3 - q0*q2);
% R(2,1,i) = 2*(q1*q2 - q0*q3);
% R(2,2,i) = q0^2 - q1^2 + q2^2 - q3^2;
% R(2,3,i) = 2*(q2*q3 + q0*q1);
% R(3,1,i) = 2*(q1*q3 + q0*q2);
% R(3,2,i) = 2*(q2*q3 - q0*q1);
% R(3,3,i) = q0^2 - q1^2 - q2^2 + q3^2;

% Old
%     R(1,1,i) = q(1)^2 + q(2)^2 - q(3)^2 - q(4)^2;
%     R(1,2,i) = 2*(q(2)*q(3) - q(1)*q(4));
%     R(1,3,i) = 2*(q(2)*q(4) - q(1)*q(3));
%     R(2,1,i) = 2*(q(2)*q(3) + q(1)*q(4));
%     R(2,2,i) = q(1)^2 - q(2)^2 + q(3)^2 - q(4)^2;
%     R(2,3,i) = 2*(q(3)*q(4) - q(1)*q(2));
%     R(3,1,i) = 2*(q(2)*q(4) + q(1)*q(3));
%     R(3,2,i) = 2*(q(3)*q(4) + q(1)*q(2));
%     R(3,3,i) = q(1)^2 - q(2)^2 - q(3)^2 + q(4)^2;
