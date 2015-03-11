classdef LinAlg
    % Class for linear algebra methods
    %
    %
    % note name conversion:
    % f_transform       ->  LinAlg.transformPts
    % f_solve_F         ->  LinAlg.solveFrame
    % f_magnitude       ->  LinAlg.magnitude
    % f_fit_sphere      ->  LinAlg.fitSphereFromPoints
    
    % 24May2013 Armiger: Created
    methods (Static = true)
        % Compute Inertial Properties
        function I = inertiaTensor(p,m)
            % I = LinAlg.inertiaTensor(p,m)
            % Compute inertia Tensor from a point mass field
            % RSA 17-Dec-2007
            %
            % Input a 3xn list of point mass particle locations
            % Input a 1xn array of mass for each particle
            % Output will be a 3x3 Inertia matrix
            %
            % See also LinAlg.inertialFrame
            
            if size(p,1) ~= 3
                error('Expected 3xn Column Vectors');
            else
                x = p(1,:);
                y = p(2,:);
                z = p(3,:);
            end
            
            if nargin < 2
                % assume homogenous solid
                m = 1;
            else
                % heterogenous solid
                if length(m)~=size(p,2)
                    error('Provide the mass element for every position sample');
                end
            end
            
            Ixx = sum(m.*(y.^2 + z.^2));
            Iyy = sum(m.*(z.^2 + x.^2));
            Izz = sum(m.*(x.^2 + y.^2));
            
            Ixy = -sum(m.*(x.*y));
            Ixz = -sum(m.*(x.*z));
            Iyz = -sum(m.*(y.*z));
            
            Iyx = Ixy;
            Izx = Ixz;
            Izy = Iyz;
            
            
            I = [
                Ixx Ixy Ixz
                Iyx Iyy Iyz
                Izx Izy Izz
                ];
        end
        function [F, I] = inertialFrame(p,m)
            % [F, I] = LinAlg.inertialFrame(p,m)
            % Compute Inertial reference frame from point mass particle field
            % RSA 17-Dec-2007
            %
            % Input a 3xn list of point mass particle locations
            % Input a 1xn array of mass for each particle
            % Output F will be a 4x4 frame matrix located at the center of mass
            % with the orthonormals corresponding to the principle axes
            % Output I will be the 3x3 Inertia matrix
            %
            % evaluate the internal test function for a demo (Shared_Function paths must be present)
            %
            % Note alternate computation of R matrix using Statistics Toolbox:
            % R = princomp(p_bar');
            %
            % See also LinAlg.inertiaTensor
            
            % $Log: LinAlg.inertialFrame.m  $
            % Revision 1.11 2011/04/12 10:34:54EDT Armiger, Robert S. (ArmigRS1-a)
            % added comments and alternate computation
            
            if size(p,1) ~= 3
                error('Expected 3xn Column Vectors');
            else
                x = p(1,:);
                y = p(2,:);
                z = p(3,:);
            end
            
            if nargin < 2
                % assume homogenous solid
                m = ones(1,size(p,2));
            else
                % heterogenous solid
                if length(m)~=size(p,2)
                    error('Provide the mass element for every position sample');
                end
            end
            
            % Find System Center of Mass (First Mass moment)
            totalMass = sum(m);
            cMx = sum(m.*x)./totalMass;
            cMy = sum(m.*y)./totalMass;
            cMz = sum(m.*z)./totalMass;
            
            % translate points to center of mass frame
            meanP = mean(p,2);
            try
                p_bar = bsxfun(@minus,p,meanP);
            catch ME
                warning('Shared_functions:NoBsxfun',ME.message)
                % Backwards Compatibilty
                p_bar = p - repmat(meanP,1,size(p,2));
            end
            
            % Compute inertia Tensor:
            I = LinAlg.inertiaTensor(p_bar,m);
            [R,D] = eig(I);
            
            if sign(det(R)) == -1
                % Does not follow right hand rule
                R(:,3) = -R(:,3);
            end
            
            F = [R [cMx cMy cMz]'; 0 0 0 1];
            I = diag(D);
            
        end
        function test_inertialFrame
            %% Evaluate this cell to test function
            % Plot a 'box' of points in [-1 1]
            
            f_rand = @(x,y) 2*rand(x,y) -1;
            
            nPoints = 800;
            a = f_rand(3,nPoints);
            x = a(1,:);
            y = a(2,:);
            z = a(3,:);
            
            % stretch to [5 2 3]
            x = x.*5;
            y = y.*2;
            z = z.*3;
            
            % Rotate to off axes
            randAngles = 50.*f_rand(3,1);
            randOffset = 7+3.*rand(3,1);
            F_true = [LinAlg.makeRotationMtx(randAngles) randOffset; 0 0 0 1];
            b = LinAlg.transformPts(F_true,[x;y;z]);
            
            % Find principle axes
            F_calc = LinAlg.inertialFrame(b);
            
            TRI = convhulln([x;y;z]');
            
            % Plot
            figure(1)
            clf
            hold on
            
            PlotUtils.plot3(b,'.');
            PlotUtils.triad(F_calc,6);
            PlotUtils.boundingBox(b);
            patch('faces',TRI,'vertices',b','Facecolor','blue','facealpha',0.3)
            
            axis equal
            view(2)
            
            a = LinAlg.transformPts(inv(F_calc),b);
            PlotUtils.plot3(a,'r.');
            PlotUtils.triad(eye(4),6);
            
            PlotUtils.boundingBox(a);
            patch('faces',TRI,'vertices',a','Facecolor','red','facealpha',0.3)
            
            boundVolA = prod(max(a,[],2)-min(a,[],2));
            boundVolB = prod(max(b,[],2)-min(b,[],2));
            fprintf('Bound Volume A = %f\n',boundVolA)
            fprintf('Bound Volume B = %f\n',boundVolB)
            
            view(3)
        end
        function tfAlmostEqual = isAlmostEqual(num1,num2,tolX)
            % Check that two numeric inputs are equal within tolerance
            %
            % Returns true/false
            tfAlmostEqual = all( abs (num1(:) - num2(:) ) <= tolX );
        end
        function d = normalize(a)
            % Normalize a list of vectors (3xnVectors)
            
            if size(a,1) ~= 3, error('Use Column Vectors'),end;
            
            b = sum(a.^2).^0.5;
            c = repmat(b,3,1);
            c(c == 0) = eps;
            d = a ./ c;
            
        end
        function F = FrameFromPts(pt1,pt2,pt3,origin,config)
            % Produces a local coorindate frame using three non coincident
            % points.  optional arguments specify location of origin and
            % axis convention
            %
            % Armiger 4/7/05
            if nargin < 1
                error('Not enough input arguments')
            elseif nargin == 1
                group = pt1;
                pt1 = group(:,1);
                pt2 = group(:,2);
                pt3 = group(:,3);
                origin = pt1;
                config = 'xz_plane';
            elseif nargin == 3
                origin = pt1;
                config = 'xz_plane';
            elseif nargin == 4
                config = 'xz_plane';
            elseif size(pt1,1) ~= 3
                warning('Recommend using column vectors')
                pt1 = pt1';
                pt2 = pt2';
                pt3 = pt3';
            end
            % Defines a coordinate frame from points:
            % orgin will be at point 1
            
            try
                V1 = pt2 - pt1;
                V2 = pt3 - pt1;
            catch
                %% Point 3 not defined
                disp('xz_2pts')
                V2 = [0 0 -1]';
            end
            switch config
                case 'xz_plane'
                    % points 1 -> 2 will be the x-axis
                    % points 1,2,3 will lie in xz plane
                    % y-axis will be normal to plane
                    i_hat = V1./norm(V1);
                    j_hat = cross(V2,V1)./norm(cross(V2,V1));
                    k_hat = cross(i_hat,j_hat);
                case 'xz_inv'
                    % points 1 -> 2 will be the x-axis
                    % points 1,2,3 will lie in xz plane
                    % y-axis will be normal to plane
                    i_hat = LinAlg.normalize(V1);
                    j_hat = -LinAlg.normalize(cross(V2,V1));
                    k_hat = cross(i_hat,j_hat);
                case 'xz_2pts'
                    % points 1 -> 2 will be the x-axis
                    % z-axis will be unchaged
                    i_hat = LinAlg.normalize(V1);
                    j_hat = -LinAlg.normalize(cross(V2,V1));
                    k_hat = cross(i_hat,j_hat);
                case 'xy_plane'
                    % points 1 -> 2 will be the x-axis
                    % points 1,2,3 will lie in xy plane
                    % z-axis will be normal to plane
                    i_hat = LinAlg.normalize(V1);
                    k_hat = LinAlg.normalize(cross(V1,V2));
                    j_hat = cross(k_hat,i_hat);
               case 'xy_inv'
                    % points 1 -> 2 will be the x-axis
                    % points 1,2,3 will lie in xy plane
                    % z-axis will be normal to plane
                    i_hat = LinAlg.normalize(V1);
                    k_hat = LinAlg.normalize(cross(V2,V1));
                    j_hat = cross(k_hat,i_hat);
                case 'yx_plane'
                    % points 1 -> 2 will be the y-axis
                    % points 1,2,3 will lie in xy plane
                    % z-axis will be normal to plane
                    j_hat = LinAlg.normalize(V1);
                    k_hat = LinAlg.normalize(cross(V2,V1));
                    i_hat = cross(j_hat,k_hat);
                case 'yz_plane'
                    % points 1 -> 2 will be the y-axis
                    % points 1,2,3 will lie in yz plane
                    % x-axis will be normal to plane
                    j_hat = LinAlg.normalize(V1);
                    i_hat = LinAlg.normalize(cross(V1,V2));
                    k_hat = cross(i_hat,j_hat);
                case 'yz_inv'
                    % points 1 -> 2 will be the y-axis
                    % points 1,2,3 will lie in yz plane
                    % x-axis will be normal to plane
                    j_hat = LinAlg.normalize(V1);
                    i_hat = LinAlg.normalize(cross(V2,V1));
                    k_hat = cross(i_hat,j_hat);
            end
            
            R = [i_hat(:) j_hat(:) k_hat(:)];
            F = eye(4);
            F(1:3,1:3) = R;
            F(1:3,4) = origin;
            
        end
        function R = makeRotationMtx(varargin)
            % Return a 3x3 rotation matrix from angle inputs
            % If type not provided, Default convention is Euler z'y'x' == Fixed x y z
            
            if nargin == 1 % Angles input as a vector
                angles = varargin{1};
                r1 = angles(1,:) * pi/180; % gamma
                r2 = angles(2,:) * pi/180; % beta
                r3 = angles(3,:) * pi/180; % alpha
                type = 'Fixed_XYZ';
            elseif nargin == 2 % Angles input as a vector, type provided
                angles = [varargin{1}];
                type = varargin{2};
                r1 = angles(1,:) * pi/180; % gamma
                r2 = angles(2,:) * pi/180; % beta
                r3 = angles(3,:) * pi/180; % alpha
            elseif nargin == 3
                r1 = varargin{1}*pi/180;
                r2 = varargin{2}*pi/180;
                r3 = varargin{3}*pi/180;
                type = 'Fixed_XYZ';
            elseif nargin == 4 % Angles input individually, type provided
                r1 = varargin{1}*pi/180;
                r2 = varargin{2}*pi/180;
                r3 = varargin{3}*pi/180;
                type = varargin{4};
            end
            
            isValid = isequal(size(r1),size(r2)) && isequal(size(r1),size(r3));
            if ~isValid
                error('Mismatched array sizes');
            end
            
            nVectors = size(r1,2);
            R = zeros(3,3,nVectors);
            
            for i = 1:nVectors
                Rx = [1 0 0; 0 cos(r1(i)) -sin(r1(i)); 0 sin(r1(i)) cos(r1(i));];
                Ry = [cos(r2(i)) 0 sin(r2(i)); 0 1 0; -sin(r2(i)) 0 cos(r2(i));];
                Rz = [cos(r3(i)) -sin(r3(i)) 0; sin(r3(i)) cos(r3(i)) 0; 0 0 1;];
                
                switch type
                    case {'Fixed_XYZ','Euler_ZYX'} %% R(xyz), R(z'y'x')
                        R(:,:,i) = Rz * Ry * Rx;
                    case {'Fixed_ZYX','Euler_XYZ'} %% R(zyx), R(x'y'z')
                        R(:,:,i) = Rx * Ry * Rz;
                end
            end
            
            
            %% Note:
            % Rx * Ry * Rz =
            % [                          cos(r2)*cos(r3),                         -cos(r2)*sin(r3),                                  sin(r2)]
            % [  sin(r1)*sin(r2)*cos(r3)+cos(r1)*sin(r3), -sin(r1)*sin(r2)*sin(r3)+cos(r1)*cos(r3),                         -sin(r1)*cos(r2)]
            % [ -cos(r1)*sin(r2)*cos(r3)+sin(r1)*sin(r3),  cos(r1)*sin(r2)*sin(r3)+sin(r1)*cos(r3),                          cos(r1)*cos(r2)]
            %
            % Rz * Ry * Rx =
            % [                          cos(r2)*cos(r3), -cos(r1)*sin(r3)+sin(r1)*sin(r2)*cos(r3),  sin(r1)*sin(r3)+cos(r1)*sin(r2)*cos(r3)]
            % [                          cos(r2)*sin(r3),  cos(r1)*cos(r3)+sin(r1)*sin(r2)*sin(r3), -sin(r1)*cos(r3)+cos(r1)*sin(r2)*sin(r3)]
            % [                                 -sin(r2),                          sin(r1)*cos(r2),                          cos(r1)*cos(r2)]
            
            
        end
        function [F, err, ierr, RMSE] = solveFrame(a,b)
            % LinAlg.solveFrame: Quaternion technique solves frame transform between point clouds
            %
            %   Writing F_b_a = LinAlg.solveFrame(a, b) corresponds to: b = transform(F_b_a, a).
            %
            %   where F_b_a means the transformation in b's coordinate
            %   frame to the corresponding origin relative to point set a
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
            % 19-Feb-2008 RSA verified that the eigenvalue solution is faster and more
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
            [maxEigVal, maxEigValId] = max(diag(D));
            
            q1 = Q(:,maxEigValId);
            
            R = LinAlg.quaternionToRMatrix(q1);
            
            % Check
            tolX = 1e-9;
            if ~LinAlg.isAlmostEqual(det(R),1,tolX)
                error('Method Failed: det(R) = %f',det(R));
            end
            p = meanB - R * meanA;
            
            F = [R p; 0 0 0 1];
            
            % Compute max error;
            %ASI: added Lin.Alg magnitue to find resultant distance between
            %points (last case used max and may not be valid for if
            %negative difference in location, also last method only used on
            %ly max of one direction, not accounting for total difference
            %in location
            %ASI: added root mean squared error as an output
            pt_error=LinAlg.magnitude(b,LinAlg.transformPts(F,a));
            [err ,ierr] = max(pt_error);
            % Compute RMS error
            RMSE=sqrt(sum(pt_error.^2)/numel(pt_error));
            
            
            
            
        end
        function success = test_solveFrame
            %% Test and verify function LinAlg.solveFrame
            
            % setup a random frame transformation
            nPts = 10;
            angles = 90 * (2*rand(3,1)-1);
            translation = 30 * (2*rand(3,1)-1);
            F_known = makehgtform('translate',translation,'zrotate',angles(3),'yrotate',angles(2),'xrotate',angles(1));
            
            % setup some random points, transform them and add noise
            a = 50*rand(3,nPts);
            noisemag = 0.1;
            noise = noisemag.* (2*rand(size(a))-1);
            b = LinAlg.transformPts(F_known,a) + noise;
            
            % Solve for transformation
            [F, err] = LinAlg.solveFrame(a,b);
            
            % Check Error
            pointsError = max(err(:));
            FrameError = max(max(F - F_known));
            
            fprintf('Noise = %f; pointsError = %f; FrameError = %f;\n',...
                noisemag,pointsError,FrameError)
            
            % Define success for this test
            success = ( pointsError < 1 ) && LinAlg.isAlmostEqual(F,F_known,1);
            
        end
        function d = transformPts(F,b)
            % Transforms the vector-set b into vector-set d using Frame Transform F.
            %
            % Writing d = LinAlg.transformPts(F, b) corresponds to: F = LinAlg.solveFrame(b, d).
            %
            % Names: Bobby Armiger and Carol Reiley
            % Assignment CIS programming assignment 3
            % Professor: Dr. Taylor
            % File Name: LinAlg.transformPts
            % 14-Jan-2008 RSA revised extensively to explicitly list cases
            d = [];
            if isempty(b),return,end
            if isempty(F),return,end
            if size(b,1) ~= 3, error('Use Column Vectors'),end;
            if isequal(size(F),[3 3]),F = [F [0 0 0]'; 0 0 0 1];end %% 3x3 R to 4x4 F
            
            
            % Cases handled:
            % F = 4 x 4;   b = 3 x 1; %% Simplest
            % F = 4 x 4;   b = 3 x n; %% Works on vector of points
            % F = 4 x 4;   b = 3 x n x m; %% Works on vector of points at different times
            % F = 4 x 4 x n;   b = 3 x 1; %% Lots of frames, single point
            % F = 4 x 4 x n;   b = 3 x m; %% Lots of frames, point set
            % F = 4 x 4 x n;   b = 3 x m x n; %% Lots of frames, point set at same
            %                                       number of frames
            % Basic Form:
            % d = R*b + p
            
            
            switch ndims(F)
                case 2
                    R = F(1:3,1:3);
                    p = F(1:3,4);
                    switch ndims(b)
                        % F = 4 x 4;   b = 3 x 1;
                        % F = 4 x 4;   b = 3 x n;
                        case 2
                            
                            try %% 2007a+
                                d = bsxfun(@plus,R*b,p); %% Same as d = R * b + p, but works for p = [3 n]
                            catch %% 2006b and below fails
                                nPoints = size(b,2);
                                d = R*b + repmat(p,1,nPoints);
                            end
                            
                            return
                        case 3
                            % Case: size(F) = [4 4]; size(b) = [3 m n]; size(d) = [3 m n]
                            nVectors = size(b,2);
                            nSamples = size(b,3);
                            d = zeros(3,nVectors,nSamples);
                            for iSample = 1:nSamples
                                d(:,:,iSample) = bsxfun(@plus,R*b(:,:,iSample),p);
                            end
                            return
                        otherwise
                            error('Unknown dimensionality of b');
                    end
                    
                case 3
                    nFrames = size(F,3);
                    R = F(1:3,1:3,:);
                    p = squeeze(F(1:3,4,:));
                    
                    switch ndims(b)
                        case 2
                            %% RSA Note: should we return different dimensionality for
                            %% the size(b) = [3 1] and size(b) = [3 n] cases?
                            if size(b,2) == 1
                                % Case: size(F) = [4 4 n]; size(b) = [3 1]; size(d) = [3 n]
                                d = zeros(3,nFrames);
                                for iFrame = 1:nFrames
                                    d(:,iFrame) = R(:,:,iFrame)*b + p(:,iFrame);
                                end
                                return
                            else %% size(b,2) > 1
                                % Case: size(F) = [4 4 n]; size(b) = [3 m]; size(d) = [3 m n]
                                nVectors = size(b,2);
                                d = zeros(3,nVectors,nFrames);
                                for iFrame = 1:nFrames
                                    Rb = R(:,:,iFrame)*b;
                                    d(:,:,iFrame) = bsxfun(@plus,Rb,p(:,iFrame));
                                end
                                return
                            end
                        case 3
                            % Case: size(F) = [4 4 n]; size(b) = [3 m n]; size(d) = [3 m n]
                            nVectors = size(b,2);
                            nSamples = size(b,3);
                            if nFrames ~= nSamples
                                error(['Dimension mismatch. Expected: ' ...
                                    'size(F) = [4 4 n]; size(b) = [3 m n]; size(d) = [3 m n]']);
                            end
                            d = zeros(3,nVectors,nFrames);
                            for iFrame = 1:nFrames
                                Rb = R(:,:,iFrame)*b(:,:,iFrame);
                                d(:,:,iFrame) = bsxfun(@plus,Rb,p(:,iFrame));
                            end
                            return
                        otherwise
                            error('Unknown dimensionality of b');
                    end
                otherwise
                    error('Unknown dimensionality of F');
            end
            
        end
        function R = quaternionToRMatrix(q_list)
            %quaternionToRMatrix: Convert Quaternions to R matrices
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
        end
        % Geometric Cartesian Point Tools
        function [b, lambda, dist] = PointLineIntersect(p,q,a)
            %
            %  [b, lambda, dist] = LinAlg.PointLineIntersect(p,q,a)
            %
            %   Calculates the point on line segment p_q that is the shortest route
            %   between the line and point a. Calculates also the value of
            %   lambda where
            %        b = p + lambda (q - p)
            %
            %   Returns a MATLAB error if no solution exists.
            %
            %   This a simple conversion to MATLAB of the C code posted by Paul
            %   Bourke at
            %   http://astronomy.swin.edu.au/~pbourke/geometry/pointline/.
            %
            %   Last Updated:
            %       2009-May-06 Armiger:  Updated input arg handling
            
            if ~isequal(size(p),[3 1]) || ...
                    ~isequal(size(q),[3 1]) || ...
                    size(a,1) ~= 3
                error('Use Column Vectors');
            end
            
            % check that p ~= q (not-coincident)
            q_p = q - p;
            
            if ((abs(q_p(1))  < eps) && ...
                    (abs(q_p(2))  < eps) && ...
                    (abs(q_p(3))  < eps))
                error('Could not compute PointLineIntersect!');
            end
            
            lambda = dot ((a - p) , ( q_p )  ) ./ sum((q_p).^2);
            lambda_star = max(0,min(lambda,1));
            
            b = p + (lambda_star .* (q_p));
            
            % Older code but maybe useful for vectorizing soluiton:
            %             p = repmat(p,[1 size(a,2)]);
            %             q = repmat(q,[1 size(a,2)]);
            %             mu = ((a(1,:)-p(1,:)).*(q(1,:)-p(1,:)) + ...
            %                 (a(2,:)-p(2,:)).*(q(2,:)-p(2,:)) + ...
            %                 (a(3,:)-p(3,:)).*(q(3,:)-p(3,:))) ./ ...
            %                 sum((q-p).^2);
            %             mu = repmat(mu,[3 1]);
            %             b = p + mu.*(q - p);
            
            dist = sum((a-b).^2).^0.5;
            
        end
        function test_PointLineIntersect()
            %% Test function for LinAlg.PointLineIntersect
            
            p = [0 0 0]';
            q = [1 1 0]';
            a = [1 .5 .5]';
            [b, mu, l] = LinAlg.PointLineIntersect(p,q,a);
            
            figure
            clf
            hold on
            PlotUtils.plot3([p q],'r.-')
            PlotUtils.plot3(a,'ko')
            PlotUtils.plot3([a b],'b.-')
            daspect([1 1 1])
            view(3)
            
        end
        function [center, radius, err] = fitSphereFromPoints(pts)
            
            if size(pts,1) ~= 3, error('Use Column Vectors'),end;
            
            % Solve for Coefficients (Coeff = [a;b;c;d]) of sphere of form:
            % (x-x0)^2 + (y-y0)^2 + (z-z0)^2 = r^2
            % equivalant to linear system:
            % ax + by + cz + d = x^2 + y^2 + z^2
            % where a = 2*x0
            %       b = 2*y0
            %       c = 2*z0
            %       d = r^2 - x0^2 - y0^2 - z0^2
            spherePts = pts;
            nSamples = length(spherePts);
            Coefs = [spherePts' ones(nSamples,1)] \ (spherePts(1,:).^2+spherePts(2,:).^2+spherePts(3,:).^2)';
            x0 = Coefs(1)/2;
            y0 = Coefs(2)/2;
            z0 = Coefs(3)/2;
            radius = sqrt(Coefs(4)+x0^2+y0^2+z0^2);
            center = [x0;y0;z0];
            
            res = sqrt((pts(1,:) - x0).^2 + (pts(2,:) - y0).^2 + (pts(3,:) - z0).^2) - radius;
            err(1) = mean(res);
            err(2) = std(res);
        end
        function  [N, normal, meanP] = fitPlaneFromPoints(pts)
            %ASI: Migrated from f_fit_plane and bggs
            
            %20141020
            
            % Solve for the best fit plane (least squares) from the input points
            % Form is N = [a b c d];
            %
            % Point and Normal Vector definition of plane:
            % n = [a b c]'; dot(n,meanP) = -d;
            % ax + by + cz + d = 0;
            %
            % see also orthoregdemo.m
            
            if size(pts,1) ~= 3
                error('Use Column Vectors');
            else
                nSamples = size(pts,2);
            end
            
            meanP = mean(pts,2);
            
            %%Have found that each method works better for different types of data.
            %%Easiest method is to compare output from each and use the one with the
            %%lowest SSE. -RSA 18-Dec-2007
            
            %% Method 1;  Least Squares
            % Solve for plane on which data exists based on least squares fit
            % form is ax + by + cz  = 1
            N_lsq = pts'\ones(nSamples,1);
            
            normal_lsq = N_lsq./norm(N_lsq);
            
            N_lsq(1:3) = normal_lsq;
            N_lsq(4) = -dot(normal_lsq,meanP);
            
            err_lsq = abs((pts' - repmat(meanP',nSamples,1))*normal_lsq);
            sse_lsq = sum(err_lsq.^2);
            
            %% Method 2;  PCA
            % Next, we fit a plane to the data using PCA.  The coefficients for the first
            % two principal components define vectors that form a basis for the plane.
            % The third PC is orthogonal to the first two, and its coefficients define the
            % normal vector of the plane.
            [coeff] = princomp(pts');
            normal_pca = coeff(:,3);
            
            %
            % The equation of the fitted plane is |[x y z]*normal - meanX*normal = 0|.
            % The plane passes through the point |meanX|, and its perpendicular distance
            % to the origin is |meanX*normal|.  The perpendicular distance from each
            % point to the plane, i.e., the norm of the residuals, is the dot product
            % of each centered point with the normal to the plane.  The fitted plane
            % minimizes the sum of the squared errors.
            err_pca = abs((pts' - repmat(meanP',nSamples,1))*normal_pca);
            sse_pca = sum(err_pca.^2);
            
            N_pca(1:3) = normal_pca;
            N_pca(4) = -dot(normal_pca,meanP);
            
            %% Select Best Output
            fprintf('SSE Least Squares from planar data fit = %g\n',sse_lsq);
            fprintf('SSE PCA from planar data fit = %g\n',sse_pca);
            
            if sse_lsq < sse_pca
                fprintf('Using LSQ Method\n');
                N = N_lsq;
                normal = normal_lsq(:);
            else
                fprintf('Using PCA Method\n');
                N = N_pca;
                normal = normal_pca(:);
            end
            fprintf('\n');
            
            return
        end
        function test_fitPlaneFromPoints %%#ok<DEFNU>
            %% Evaluate Cell to test function
            
            % randn('state',0);
            % X = mvnrnd([0 0 0], [1 .2 .7; .2 1 0; .7 0 1],15);
            % p = X';
            
            % rand('state',0);
            % p = rand(3,7);
            % X = p';
            
            p = rand(3,3);
            p(1,:) = p(1,:) .* 20; %Stretch x,y to make plane
            p(2,:) = p(2,:) .* 14;
            X = p';
            
            figure(1)
            clf
            f_plot3(p,'b.');
            hold on
            axis square
            
            [N n c] = LinAlg.fitPlaneFromPoints(p); %% Ax + By + Cz  = 1
            A = N(1);
            B = N(2);
            C = N(3);
            D = N(4);
            
            f_plot3(c,'k*');
            
            [xgrid,ygrid] = meshgrid(linspace(min(X(:,1)),max(X(:,1)),5), ...
                linspace(min(X(:,2)),max(X(:,2)),5));
            zgrid1 = (D - A.*xgrid - B.*ygrid)./C;
            % zgrid2 = (n(4) - n(1).*xgrid - n(2).*ygrid)./n(3);
            
            mesh(xgrid,ygrid,zgrid1,'EdgeColor',[0 1 0],'FaceAlpha',0.2);
            % mesh(xgrid,ygrid,zgrid2,'EdgeColor',[0 0 1],'FaceAlpha',0.2);
            
            axis equal
        end
        function mag = magnitude(v1,v2)
            % mag = LinAlg.magnitude(v1,v2)
            % Compute vector magnitude
            % find the Euclidean distance between two vectors
            % This function expects 3xn column vectors
            % Two argument case computes base to tip vector magnitude
            % Single argument case computes origin to tip vector magnitude
            %
            % Armiger: Created
            % 18-Oct-2009 Armiger: Updated with bsxfun to handle [3 1],[3 N] cases
            % where a single point is compared to a set of points
            
            if size(v1,1) ~= 3
                error('Use 3xn Column Vectors');
            end
            
            if nargin < 2
                mag = sum((v1).^2).^0.5;
            else
                mag = sum((bsxfun(@minus,v1,v2)).^2).^0.5;
            end
            
            %mag = sqrt(diag((v1-v2)' * (v1-v2))); %% inefficient
            % Note: not using norm() because that won't work for vectors
        end
        function [angle, axis] = Anglebetween(arg1,arg2,arg3)
            % [angle axis] = LinAlg.Anglebetween(arg1,arg2,arg3)
            %Calculate Angle (Degrees) between two vectors
            % If three args are provided, interpret this as three points and return
            % angle between
            
            % $Log: LinAlg.angle_between.m  $
            % Revision 1.7 2010/06/29 11:22:14EDT mendadr1-a
            % Added log.
            %ASI:10/17/13 added to LinAlg Class
            if size(arg1,1) ~= 3, error('Use Column Vectors'),end;
            
            if nargin == 2
                a = arg1;
                b = arg2;
            elseif nargin == 3
                pt1 = arg1;
                pt2 = arg2;
                pt3 = arg3;
                a = pt2 - pt1;
                b = pt3 - pt1;
            else
                return
            end
            
            if isequal(a,b)
                angle = 0;
                axis = [0 0 1]';
            else
                %% REF thread "Angle Between two vectors" comp.soft-sys.matlab
                % Note: use LinAlg.magnitude instead of norm to allow vector operation
                angle = atan2(LinAlg.magnitude(cross(a,b)),dot(a,b));
                
                angle = angle.*180./pi;
                angle = real(angle);
                
                axis = LinAlg.normalize(cross(a,b));
            end
            
            
            
        end
        function T_1_2 = Point2PointRegistration(T_1_2_Guess,samplePts_CS1,referencePts_CS2,deltaX,hUpdateFcn)
            %F_POINT2POINTREGISTRATION - Compute Iterative Closest Point to Point registration of two vertex sets.
            %
            %   T_1_2 = f_Kalman_kd(T_1_2_Guess,samplePts_CS1,referencePts_CS2,deltaX,hUpdateFcn)
            %       Perform registration algorithm between sample points and reference
            %       points.  Argument "referencePts_CS2" assumed to be the larger set
            %
            %       See test function cell for demonstration
            %
            %       Optional arguments:
            %       "hUpdateFcn" is a handle to a function that will be called at each
            %       iteration.  If you want default plot functions, use hUpdateFcn = 1,
            %       otherwise provide your own function handle.  To omit, leave off last
            %       argument or set to [];
            %
            %   See also: f_Kalman_kd
            
            % $Log: f_Point2PointRegistration.m  $
            % Revision 1.6 2011/08/11 16:39:46EDT Armiger, Robert S. (ArmigRS1-a)
            % added input size check and display of convergence criteria
            % Revision 1.5 2011/06/06 16:02:32EDT Armiger, Robert S. (ArmigRS1-a)
            % added new DelaunayTri method and error catching
            % Revision 1.4 2010/09/08 14:44:49EDT armigrs1-a
            % added reference
            % Revision 1.3 2010/08/30 22:34:39EDT armigrs1-a
            % updated comment style
            % Revision 1.2 2010/08/30 22:21:02EDT armigrs1-a
            % added test function, improved speed of function, added comments
            % Revision 1.1 2010/08/09 11:13:12EDT armigrs1-a
            % Initial revision
            % Member added to project d:/SCM/NSTD/CAS/BGS/Shared_Functions/project.pj
            
            if nargin < 5
                hUpdateFcn = [];
            end
            
            MAX_ITERATIONS = 1e6;
            
            % Check sizes
            if (size(samplePts_CS1,1) ~= 3) || (size(referencePts_CS2,1) ~= 3)
                error('Use Column Vectors');
            end
            
            samplePts_CS2 = LinAlg.transformPts(T_1_2_Guess,samplePts_CS1);
            
            
            if isequal(hUpdateFcn,1)
                [~, hPointSet] = setup_registration_figure();
                %     update_plot(referencePts_CS2,samplePts_CS2);
                hUpdateFcn = @update_plot;
            end
            
            max_difference = ones(1,MAX_ITERATIONS+1);
            difference = ones(1,MAX_ITERATIONS+1);
            % closestPt_CS2 = zeros(size(samplePts_CS1));
            
            
            % Verify method success before assigning
            defaultMethod = 1;
            method = defaultMethod;
            if exist('DelaunayTri','class')
                % Try fastest first
                try
                    % Use fastest method if available/functional (test it here in try block)
                    dt = DelaunayTri(referencePts_CS2');
                    nearestNeighbor(dt, samplePts_CS2(1,:)', samplePts_CS2(2,:)', samplePts_CS2(3,:)');
                    method = 1;
                catch ME
                    warning(ME.message);
                end
            end
            
            % Try one of the other two methods if unable to use DelaunayTri
            if method ~= 1
                % Try one iteration to ensure mem allocation is OK
                try
                    closest_pt(referencePts_CS2,samplePts_CS2)
                    method = 2;
                catch ME
                    warning(ME.message);
                    method = 3;
                end
            end
            
            methods = {'DelaunayTri' 'bsxfun' 'brute force'};
            fprintf('Point2PointRegistration using %s method\n',methods{method});
            
            for i = 1:MAX_ITERATIONS
                
                % Find closest point brute force:
                switch lower(methods{method})
                    % 06/06/2011 RSA: Tested with 18,000 reference (model) pts, and
                    % 1700 sample (tracker) points.
                    % Method 1 (closest_pt bsxfun): 1.06sec/iteration
                    % Method 2 (magnitude loop): 2.88sec/iteration
                    % Method 3 (DelaunayTri\nearestNeighbor): 0.22sec/iteration
                    case lower('DelaunayTri')
                        % Fastest -- requires DelaunayTri builtin
                        X = nearestNeighbor(dt, samplePts_CS2(1,:)', samplePts_CS2(2,:)', samplePts_CS2(3,:)');
                        closestPt_CS2 = referencePts_CS2(:,X);
                    case lower('bsxfun')
                        % Fast, Memory intensive:
                        % requires 4 @ numSamplePts x numReferencePts Matrices
                        [~, minId] = closest_pt(referencePts_CS2,samplePts_CS2);
                        closestPt_CS2 = referencePts_CS2(:,minId);
                    case lower('brute force')
                        % Slow, robust, memory-light
                        for iPt = 1:length(samplePts_CS1)
                            dist = LinAlg.magnitude(referencePts_CS2,samplePts_CS2(:,iPt));
                            [~, minId] = min(dist);
                            closestPt_CS2(:,iPt) = referencePts_CS2(:,minId);
                        end
                end
                
                T_1_2 = LinAlg.solveFrame(samplePts_CS1,closestPt_CS2);
                
                samplePts_CS2 = LinAlg.transformPts(T_1_2,samplePts_CS1);
                
                % Calculate Error Estimations
                distMap = LinAlg.magnitude(closestPt_CS2,samplePts_CS2);
                
                max_difference(i+1) = max(distMap);
                difference(i+1) = max(mean(distMap,2));
                
                change = abs(difference(i+1) - difference(i));
                
                fprintf('Max Error: %10.6f    ',max_difference(i+1));
                fprintf('Average Error: %10.6f\n',difference(i+1));
                
                %Plot Progress
                if ~isempty(hUpdateFcn)
                    try
                        %hUpdateFcn(closestPt_CS2,samplePts_CS2,referencePts_CS2);
                        hUpdateFcn(closestPt_CS2,samplePts_CS2);
                    catch ME
                        fprintf(2,'Display function failed in %s\n',mfilename);
                        warning(ME.message);
                    end
                    
                end
                
                if change < deltaX
                    break
                end
                
            end
            
            if i == MAX_ITERATIONS
                warning('Point2PointRegistration:DNC','MaxIterations Reached');
            else
                fprintf('Completed after %d iterations. deltaX = %10.8e\n',i,change);
            end
            
            return;
            
            function update_plot(ptsReference,ptsClosest)%,ptsSample)
                % update_plot callback
                set(hPointSet(1),'XData',ptsReference(1,:),'YData',ptsReference(2,:),'ZData',ptsReference(3,:));
                set(hPointSet(2),'XData',ptsClosest(1,:),'YData',ptsClosest(2,:),'ZData',ptsClosest(3,:));
                % set(hPointSet(3),'XData',ptsSample(1,:),'YData',ptsSample(2,:),'ZData',ptsSample(3,:));
                drawnow
            end % update_plot
            
            function [hFig hPointSet] = setup_registration_figure()
                % Create a figure for monitoring registration process
                % Returns handle to figure and a [2 1] handle array for the source and
                % target point clouds used for matching
                
                hFig = figure(99);
                clf(hFig);
                hold on;
                
                %%Display the surface matching:
                %         f_show_surface(meshOuter,'red');
                %         alpha 0.3;
                %         f_show_surface(meshInner,'blue');
                %         axis('equal','tight');
                %         material dull
                camlight left;
                view(0,90)
                axis equal
                camlight left;
                drawnow
                
                hPointSet(1) = plot(NaN,NaN,'ro','EraseMode','normal');
                hPointSet(2) = plot(NaN,NaN,'cx','EraseMode','normal');
                % hPointSet(3) = plot(NaN,NaN,'m.','EraseMode','normal');
                drawnow
                
            end % setup_registration_figure
            function [minDist minA] = closest_pt(a,b)
                % ref:
                % http://blog.accelereyes.com/blog/2010/04/05/converting-matlab-loops-to-gpu-code/
                c1 = bsxfun(@minus, a(1,:), b(1,:)');
                c2 = bsxfun(@minus, a(2,:), b(2,:)');
                c3 = bsxfun(@minus, a(3,:), b(3,:)');
                C = sqrt(c1.^2 + c2.^2 + c3.^2);
                
                [minDist minA] = min(C,[],2);
            end
        end
        function test_Point2PointRegistration()
            %% Test cell using built in update functions
            
            defaultStream = RandStream.getGlobalStream;
            defaultStream.reset
            
            [x, y] = pol2cart(linspace(0,pi/2,1000),1);
            referencePts_CS2 = [x; y; zeros(size(x))];
            referencePts_CS2(3,1:100) = 0.3;
            
            referencePts_CS2 = referencePts_CS2 + 0.01*rand(size(referencePts_CS2));
            
            
            [x, y] = pol2cart(linspace(0,pi/2,100)+pi/2,1);
            samplePts_CS1 = [x; y; zeros(size(x))];
            samplePts_CS1(3,1:100) = 0.3;
            samplePts_CS1 = samplePts_CS1 + 0.01*rand(size(samplePts_CS1));
            
            tic
            T_1_2 = LinAlg.Point2PointRegistration(eye(4),samplePts_CS1,referencePts_CS2,1e-6,1);
            toc
            
            LinAlg.decompose_R(T_1_2)
            
            
        end
        function [angles1, angles2]= decompose_R(R,angleConvention)
            % F_DECOMPOSE_R - Convert a rotation matrix to Euler angles according to
            % the supplied convention.  Note that there are two answers for Euler
            % angles.  The outputs arguments [angles1 angles2] have the 'positive' and
            % 'negative angle conventions respectively.  See note below regarding
            % convention for multiple solutions.  Results are in degrees.
            %
            %   [angles1 angles2]= LinAlg.decompose_R(R,angleConvention)
            %       Converts rotation [transformation] matrix to euler angles per the
            %       supplied convention
            %       ['Fixed_XYZ','Euler_ZYX','Fixed_ZYX','Euler_XYZ']
            %
            %   The default angle convention is Fixed_XYZ (Euler_ZYX)
            %
            %   angles1 will be in the range of [-180,180][-90,90][-180,180]
            %   angles2 will be in the range of [-180,180][-180,180][-180,180]
            %
            %   Results are accurate to within 1e-12.  Note there is an
            %   'Euler_XYZ_Accurate' method which is accurate to 1e-15.  See note
            %   within the accurate funciton.
            %
            %   References: John J Craig "Introduction to Robotics" (c) 1989
            %       Regarding the two solutions for the Euler angle decomposition:
            %        pg 47: "Although a second solution exists, by using the positive
            %        square root in the formula for Beta, we always compute the single
            %        solution for which -90.0 deg <= Beta <= 90.0 deg.  This is usually
            %        good practice, since we can then define one-to-one mapping
            %        functions between various representations of orientation."
            %
            %       Appendix C, (atan2 arguments adjusted to match Matlab Convention)
            %        sin(theta) = a, has two solutions given by
            %        theta = atan2(a,+sqrt(1-a^2))
            %        theta = atan2(a,-sqrt(1-a^2))
            %
            %        cos(theta) = b, has two solutions given by
            %        theta = +atan2(sqrt(1-a^2),a)
            %        theta = -atan2(sqrt(1-a^2),a)
            %
            % RSA Created 2005
            
            % $Log: LinAlg.decompose_R.m  $
            % Revision 1.8 2011/05/04 17:44:49EDT Armiger, Robert S. (ArmigRS1-a)
            % fixed changes to symbolic representation
            % Revision 1.7 2011/05/04 17:43:19EDT Armiger, Robert S. (ArmigRS1-a)
            % verified accurate computation approach and added notes
            % Revision 1.6 2011/05/03 09:49:04EDT Armiger, Robert S. (ArmigRS1-a)
            % added updated notes, references
            % Revision 1.5 2011/05/03 00:41:57EDT Armiger, Robert S. (ArmigRS1-a)
            % re-verified solutions and added optional second arg out for 'negative' solution.  Added a test Cell and some debug code.
            
            [M1,M2,M3] = size(R);
            
            is4x4 = (M1 == 4) && (M2 == 4);
            is3x3 = (M1 == 3) && (M2 == 3);
            
            if ~(is4x4 || is3x3)
                error('Expected Rotation (3x3xN) or Transformation Matrix (4x4xN)');
            end
            
            if nargin < 2
                angleConvention = 'Fixed_XYZ'; % Default
            end
            
            switch lower(angleConvention)
                case lower({'Fixed_XYZ','Euler_ZYX'})
                    % Z-Y-X Euler Angles from a 3x3 Rotation Matrix
                    % X-Y-Z Fixed Angles from a 3x3 Rotation Matrix
                    
                    % Vectorized solution
                    Y_pos = atan2(-R(3,1,:),+sqrt(1-R(3,1,:).^2));
                    Y_neg = atan2(-R(3,1,:),-sqrt(1-R(3,1,:).^2));
                    
                    X_pos = atan2(+R(3,2,:),+R(3,3,:));
                    X_neg = atan2(-R(3,2,:),-R(3,3,:));
                    
                    Z_pos = atan2(+R(2,1,:),+R(1,1,:));
                    Z_neg = atan2(-R(2,1,:),-R(1,1,:));
                    
                    angles1 = squeeze([X_pos;Y_pos;Z_pos]).*180./pi;
                    angles2 = squeeze([X_neg;Y_neg;Z_neg]).*180./pi;
                case lower({'Euler_XYZ','Fixed_ZYX'})
                    % X-Y-Z Euler Angles from a 3x3 Rotation Matrix
                    % Z-Y-X Fixed Angles from a 3x3 Rotation Matrix
                    
                    % Vectorized solution
                    Y_pos = atan2(R(1,3,:),+sqrt(1-R(1,3,:).^2));
                    Y_neg = atan2(R(1,3,:),-sqrt(1-R(1,3,:).^2));
                    
                    X_pos = atan2(-R(2,3,:),R(3,3,:));
                    Z_pos = atan2(-R(1,2,:),R(1,1,:));
                    
                    X_neg = atan2(R(2,3,:),-R(3,3,:));
                    Z_neg = atan2(R(1,2,:),-R(1,1,:));
                    
                    angles1 = squeeze([X_pos;Y_pos;Z_pos]).*180./pi;
                    angles2 = squeeze([X_neg;Y_neg;Z_neg]).*180./pi;
                    
                case lower('Euler_XYZ_Accurate')
                    
                    angles1 = zeros(3,size(R,3));
                    angles2 = zeros(3,size(R,3));
                    % Loop through each R-matrix
                    for i = 1:M3
                        [X_pos Y_pos Z_pos] = Euler_XYZ_Accurate(R, true); %positive
                        [X_neg Y_neg Z_neg] = Euler_XYZ_Accurate(R, false); %negative
                        angles1(:,i) = [X_pos;Y_pos;Z_pos].*180./pi;
                        angles2(:,i) = [X_neg;Y_neg;Z_neg].*180./pi;
                    end
                case lower('Polaris')
                    % Bobby Added memory pre-allocation 11/13/2006
                    angles1 = zeros(3,size(R,3));
                    angles2 = zeros(3,size(R,3));
                    
                    % Loop through each R-matrix
                    for i = 1:M3
                        % Should match Euler_ZYX
                        % (Polaris solution from manual only provides one solution)
                        EulerRotation = DetermineEuler(R);
                        theta_x = EulerRotation(1);
                        theta_y = EulerRotation(2);
                        theta_z = EulerRotation(3);
                        
                        angles1(:,i) = [theta_x;theta_y;theta_z].*180./pi;
                        angles2(:,i) = [theta_x;theta_y;theta_z].*180./pi;
                    end
                otherwise
                    error('Unrecognized angle convention: %s',angleConvention);
            end
            
            
            % DetermineEuler
            function EulerRotation = DetermineEuler(RotationMatrix)
                %%This routine calculates the euler angles given a 3x3 Rotation Matirx
                %%src: NDI Combined API Guide Section B.2.6
                
                fRoll = atan2( RotationMatrix(2,1), RotationMatrix(1,1) );
                fCosRoll = cos ( fRoll );
                fSinRoll = sin ( fRoll );
                
                fPitch = atan2( -RotationMatrix(3,1), ...
                    fCosRoll * RotationMatrix(1,1) + fSinRoll * RotationMatrix(2,1));
                fYaw = atan2(...
                    fSinRoll * RotationMatrix(1,3) - ...
                    fCosRoll * RotationMatrix(2,3), ...
                    -fSinRoll * RotationMatrix(1,2) + ...
                    fCosRoll * RotationMatrix(2,2) );
                
                EulerRotation = [fYaw; fPitch; fRoll;];
            end
            
            function [theta_x theta_y theta_z] = Euler_XYZ_Accurate(R, positive)
                
                % Per Shinya Onogi 5/04/2011:
                % As for accuracy, my method is more accurate (try test by tolX = 1.0e-15),
                % however it should not matter (current method can pass in
                % 1.0e-12 tolerance and cannot pass in 1.0e-13 fairly infrequently).
                %
                % As for performance, your method is four times faster than mine.
                %
                % When you use a language other than Matlab to compute Euler angles, I
                % recommend the algorithm I proposed because unignorable errors are
                % observed by square and square root computation. On the other hand,
                % Matlab function is accurate, so current method has no accuracy issues.
                %
                % In my conclusion, the algorithm I suggested doesn't have great advantage
                % (a little bit of accuracy advantage but four times slower).
                %
                
                if positive
                    theta_x = atan2(-R(2,3),R(3,3)); % no change
                    theta_z = atan2(-R(1,2),R(1,1)); % no change
                else
                    theta_x = atan2(R(2,3),-R(3,3)); % no change
                    theta_z = atan2(R(1,2),-R(1,1)); % no change
                end
                
                % R = Rx * Ry * Rz, Ry = invRx * R * invRz
                invRx = makehgtform('xrotate', -theta_x);
                invRz = makehgtform('zrotate', -theta_z);
                Ry = invRx(1:3,1:3) * R(1:3,1:3) * invRz(1:3,1:3);
                theta_y = atan2(Ry(1,3), Ry(3,3));
                %Rcheck = makehgtform('xrotate',theta_x, 'yrotate',theta_y, 'zrotate',theta_z);
                %tolX = 1e-9;
                %assert(all(abs(R(:)-Rcheck(:)) < tolX))
            end
            
            
            function test
                %% Evaluate in cell mode to test function
                
                s=RandStream.getGlobalStream;
                reset(s);
                method = 'Euler_XYZ'; % Note, you'll have to change 'R' as well
                % method = 'Euler_XYZ_Accurate'; % Note, you'll have to change 'R' as well
                
                tolX = 1e-12;
                % tolX = 1e-15;
                N = 1000;
                
                R_ = zeros(4,4,N);
                R_Final = eye(4);
                
                anglesFinal = zeros(3,N);
                
                tStart = tic;
                for j = 1:N
                    X = 2*pi*rand(1) - pi;
                    Y = 2*pi*rand(1) - pi;
                    Z = 2*pi*rand(1) - pi;
                    
                    R_ = makehgtform('xrotate',X,'yrotate',Y,'zrotate',Z);
                    [ang1 ang2] = LinAlg.decompose_R(R_,method);
                    ang1 = ang1 .* pi ./ 180;
                    ang2 = ang2 .* pi ./ 180;
                    assert(max(abs(ang1 - [X Y Z]')) < tolX || max(abs(ang2 - [X Y Z]')) < tolX)
                    assert((-pi/2) <= ang1(2) && ang1(2) <= (pi/2) )
                    
                    anglesFinal(:,j) = ang1;
                end
                toc(tStart);
                disp('OK Random angles');
                
                % Check error propogation
                for j = 1:N
                    R_(:,:,j) = makehgtform('xrotate',anglesFinal(1,j),'yrotate',anglesFinal(2,j),'zrotate',anglesFinal(3,j));
                    R_Final = R_Final * R_(:,:,j);
                end
                format long
                disp(R_Final);
                disp(LinAlg.decompose_R(R_Final,method))
                
                % Test Group Mode
                tStart = tic;
                LinAlg.decompose_R(R_,method);
                toc(tStart);
                disp('OK Group Mode');
                
                
                % Test single angle cases
                t = pi/1.5;
                
                R_ = makehgtform('zrotate',t);
                [ang1 ang2]= LinAlg.decompose_R(R_,method);
                assert( (abs(ang1(3)*pi/180 - t) < tolX) || (abs(ang2(3)*pi/180 - t) < tolX) )
                
                R_ = makehgtform('yrotate',t);
                [ang1 ang2]= LinAlg.decompose_R(R_,method);
                assert( (abs(ang1(2)*pi/180 - t) < tolX) || (abs(ang2(2)*pi/180 - t) < tolX) )
                
                R_ = makehgtform('xrotate',t);
                [ang1 ang2]= LinAlg.decompose_R(R_,method);
                assert( (abs(ang1(1)*pi/180 - t) < tolX) || (abs(ang2(1)*pi/180 - t) < tolX) )
                
                disp('OK Single angles');
                
                disp(' ');
                disp(' ');
                
            end
            function debug
                %% Evaluate in cell mode to see symbolic solution
                x = sym('x');
                y = sym('y');
                z = sym('z');
                
                
                Rx = @(x)[1 0 0; 0 cos(x) -sin(x); 0 sin(x) cos(x)];
                Ry = @(y)[cos(y) 0 sin(y); 0 1 0; -sin(y) 0 cos(y)];
                Rz = @(z)[cos(z) -sin(z) 0; sin(z) cos(z) 0; 0 0 1];
                
                Rxyz = Rx(x)*Ry(y)*Rz(z)
                Rzyx = Rz(x)*Ry(y)*Rx(z)
                
                Ryxz = Ry(y)*Rx(x)*Rz(z)
                % Rzxy = Rz(z)*Rx(x)*Ry(y)
            end
        end
    end
end