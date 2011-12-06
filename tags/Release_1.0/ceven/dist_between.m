function [d] = dist_between(p1,p2)
%DIST_BETWEEN retuns the distance (in axes units) between the reference points 
%p1 and p2 in 3D space. 
%
%   [d] = DIST_BETWEEN(p1,p2) returns distance between two input points in 3D.
%
%   [d] = DIST_BETWEEN(p1) returns distance between input point and (0,0,0).
%

%   Blair Lock 04-13-05

if nargin < 2                                                           % if call is without two inputs
    p2 = [0 0 0];                                                       % set second point to origin    
end

d = sqrt(sum(diff([p1; p2]).^2));                                       % calculate distance