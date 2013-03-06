function d = f_transform(F,b)
% Transforms the vector-set b into vector-set d using Frame Transform F.
%
% Writing d = f_transform(F, b) corresponds to: F = f_solve_F(b, d).
%
% Names: Bobby Armiger and Carol Reiley
% Assignment CIS programming assignment 3
% Professor: Dr. Taylor
% File Name: f_transform
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

