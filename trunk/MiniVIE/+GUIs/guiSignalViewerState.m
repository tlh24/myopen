% classdef guiSignalViewerState
%    enumeration
%       FFT
%       TimeDomain
%       Features
%    end   
% end
% Updated to remove 'enumeration' for backward compatability
classdef guiSignalViewerState
   properties (Constant = true)
      FFT = 'FFT';
      TimeDomain = 'TimeDomain';
      Features = 'Features';
   end   
end
