%Names: Bobby Armiger and Carol Reiley
%Assignment CIS programming assignment 3
%Professor: Dr. Taylor
%File Name: f_transform

% Transforms the vector-set b into vector-set d using Frame Transform F
function d = f_transform(F,b)
if isempty(b),d = [];return,end
if size(b,1) ~= 3, error('Use Column Vectors'),end;

R = F(1:3,1:3,:);
p = F(1:3,4,:);

if size(F,3) == 1;
    nVectors = size(b,2);
    nSamples = size(b,3);

    % Normal case (many points times single Transformation Frame)
    d = zeros(3,nVectors,nSamples);
    p_list = repmat(p,[1 nVectors]);
    for iSample = 1:nSamples
        b_list = b(:,:,iSample);
        d_list = R * b_list + p_list;
        d(:,:,iSample) = d_list;
    end
elseif size(F,3) == size(b,2)
    nVectors = 1;
    nSamples = size(F,3);
    % Other case (single points times many Transformation Frames)
    d = zeros(3,nSamples);
    p = squeeze(p);
    for iSample = 1:nSamples
        d(:,iSample) = R(:,:,iSample) * b(:,iSample) + p(:,iSample);
    end
elseif size(F,3) ~= size(b,2) && size(b,3) == 1
    nVectors = length(b);
    nSamples = size(F,3);
    b_rep = repmat(b,[1 1 nSamples]);
    % Other case (fixed points wrt local coordinate frame)
    d = zeros(3,nVectors,nSamples);
    p_list = repmat(p,[1 nVectors 1]);
    for iSample = 1:nSamples
        b_list = b_rep(:,:,iSample);
        d_list = R(:,:,iSample) * b_list + p_list(:,:,iSample);
        d(:,:,iSample) = d_list;
    end
elseif size(F,3) ~= size(b,2) && size(b,3) ~= 1
    nVectors = size(b,2);
    nSamples = size(F,3);
    b_rep = b;
    % Other case (fixed points wrt local coordinate frame)
    d = zeros(3,nVectors,nSamples);
    p_list = repmat(p,[1 nVectors 1]);
    for iSample = 1:nSamples
        b_list = b_rep(:,:,iSample);
        d_list = R(:,:,iSample) * b_list + p_list(:,:,iSample);
        d(:,:,iSample) = d_list;
    end
else
    error('Unknown Configuration')
end
