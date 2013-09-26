function [F err] = f_solve_F(a,b)
% f_solve_F: Quaternion technique solves frame transform between point clouds
%
%   Writing F = f_solve_F(b, d) corresponds to: d = f_transform(F, b).
%
%   Ref: B.K.P. Horn, "Closed form solution of absolute
%   orientation using unit quaternions", J. Opt. Soc.
%   America, A vol. 4, no. 4, pp 629-642, Apr. 1987.
%
%   Method described as reported in Besl and McKay,
%   "A method for registration of 3D shapes", IEEE
%   Trans. on Pattern Analysis and Machine
%   Intelligence, vol. 14, no. 2, February 1992.
%
%   Solves a 4x4 eigenvalue problem to find a unit
%   quaternion corresponding to the rotation
%
%   This quaternion is converted in closed form to
%   get a more conventional rotation matrix
%
% Alias file names:
%   f_solve_F
%   f_fix_transformation
%   f_solve_for_transformation
%   f_pt_cloud_to_pt_cloud
% 19-Feb-2008 RSA vreified that the eigenvalue solution is faster and more
% accurate than the previous Arun method

% Step 1: Calculate points relative to centroid
meanB = mean(b,2);
meanA = mean(a,2);
b_bar = bsxfun(@minus, b, meanB);
a_bar = bsxfun(@minus, a, meanA);

H = a_bar*b_bar';

% Step 2: Compute trace
traceH = trace(H);

delta = [H(2,3) - H(3,2); H(3,1) - H(1,3); H(1,2) - H(2,1)];

G = [traceH delta'; delta H+H'-(traceH.*eye(3))];

% Step 3: Solve for eigenvectors, values
[Q,D] = eig(G);

% Step 4: Find principle axes
[maxEigVal maxEigValId ] = max(diag(D));

q1 = Q(:,maxEigValId);

R = f_quaternion_to_R_matrix(q1);

% Check
tolX = 1e-9;
if ~f_isequal_within_tolerance(det(R),1,tolX)
    error('Method Failed: det(R) = %f',det(R));
end
p = meanB - R * meanA;

F = [R p; 0 0 0 1];

% Compute max error;
err = max(max(b - f_transform(F,a)));

function success = test %#ok evaluate cell for testing
%% Test and verify function 

% setup a random frame transformation
nPts = 10;
angles = 90*f_rand(3,1);
translation = 30*f_rand(3,1);
F_known = [f_make_R(angles) translation; 0 0 0 1];

% setup some random points, transform them and add noise
a = 50*rand(3,nPts);
noisemag = 0.1;
noise = noisemag.*f_rand(size(a));
b = f_transform(F_known,a) + noise;

% Solve for transformation
[F err] = f_solve_F(a,b);

% Check Error
pointsError = max(err(:));
FrameError = max(max(F - F_known));

fprintf('Noise = %f; pointsError = %f; FrameError = %f;\n',...
    noisemag,pointsError,FrameError)

% Define success for this test
success = ( pointsError < 1 ) && f_isequal_within_tolerance(F,F_known,1);

