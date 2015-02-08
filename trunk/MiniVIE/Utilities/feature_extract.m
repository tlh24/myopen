function features = feature_extract(windowData,windowSize,zc_thresh,ssc_thresh) %#codegen
% Extract time domain feature extraction function
% Note that this is not an exact copy of the previous methodology,
% but RSA tried and tested this code with minimal differences
% Inputs:
%   windowData - Buffer of windowed EMG data, typically 16x150
% Outputs:
%   features - [numChannels 4] matrix of features; 
%       order: [MAV(:) LEN(:) ZC(:) SSC(:)]
%
% R. Armiger 07-July-2009: Revised to isolate feature extraction functionality only
%                  Signal magnitude will be extracted on a per classifier
%                  basis.  Also set to inherit class type and made
%                  windowSize tunable
% R. Armiger 30-Nov-2009: Updated to include thresholding on zero-crossing
%       and slope sign changes

if nargin < 4
    ssc_thresh = 0.25;
    ssc_thresh = 0.15;
%     ssc_thresh = 0.2;
end
if nargin < 3
    zc_thresh = 0.25;
    zc_thresh = 0.15;
%     zc_thresh = 0.15; % JHMI_SD_01_LR
end

[nChannels, nSamples] = size(windowData);
myType = class(windowData);

% RSA: Converting to type single to allow feature windowsize normalization
% windowSize = uint16(windowSize);
windowSize = single(windowSize);
windowSize = max(windowSize,10);
windowSize = min(windowSize,nSamples);

MAV = zeros(nChannels,1,myType);    % mean absolute value
LEN = zeros(nChannels,1,myType);    % length
ZC  = zeros(nChannels,1,myType);    % zero crossings
SSC = zeros(nChannels,1,myType);    % slope sign changes
VAR = zeros(nChannels,1,myType);    % variance

idStart = (1+nSamples-windowSize);

t = 0.0;

for iChannel = 1:nChannels
    y = windowData(iChannel,:);
    dy = diff( y );
    
    MAV(iChannel) = mean( abs( y(idStart:end) ) );
    LEN(iChannel) = sum( abs( dy(idStart:end) ) );
    ZC(iChannel) = 0;
    SSC(iChannel) = 0;
    VAR(iChannel) = var( y(idStart:end) );
    
    for iSample = idStart+1 : nSamples-1
        
        % Define criteria for crossing zero
        zeroCross = (y(iSample)-t > 0 && y(iSample+1)-t < 0) || ...
            (y(iSample)-t < 0 && y(iSample+1)-t > 0);
        overThreshold = abs( y(iSample)-t - y(iSample+1)-t ) > zc_thresh;
        
        if zeroCross && overThreshold
            % Count a zero cross
            ZC(iChannel)  = ZC(iChannel)  + 1;
        end
        
        % Define criteria for counting slope sign changes
        signChange = (y(iSample) > y(iSample-1)) && (y(iSample) > y(iSample+1)) || ...
            (y(iSample) < y(iSample-1)) && (y(iSample) < y(iSample+1));
        overThreshold = abs( y(iSample) - y(iSample+1) ) > ssc_thresh || ...
            abs( y(iSample) - y(iSample-1) ) > ssc_thresh;
        
        if signChange && overThreshold
            % Count a slope change
            SSC(iChannel) = SSC(iChannel) + 1;
        end
    end
    
    %ZC(iChannel) = sum(y>zc_thresh);
    
end

Fs = 1000;

% MAV shouldn't be normalized
%normMAV = MAV(:)./(windowSize./Fs);
normMAV = MAV(:);
normLEN = LEN(:)./(windowSize./Fs);
normZC = ZC(:)./(windowSize./Fs);
normSSC = SSC(:)./(windowSize./Fs);

normVAR = VAR(:)./(windowSize./Fs);

normVAR = min(normVAR,50);
normMAV = min(normMAV,50);

% features = [normMAV(:) normLEN(:) normZC(:) normVAR(:)];
features = [normMAV(:) normLEN(:) normZC(:) normSSC(:)];
% features = [MAV(:) LEN(:) ZC(:) SSC(:)];

% features(:,[2 3 4]) = log(1+features(:,[2 3 4]));
