function [R] = birdR(th)
% birdR.M
% converts three angles from the position sensor to a rotation matrix
%
% Input: th => 3x1 vector of Euler angles as output by bird in Radians)
%
% Output: R => 3x3 rotation matrix.
%
% note R is in standard notation as defined in Asada's text
% this R is equal to the transpose of M as defined in the bird
% literature

thx = th(1);  % Note bird outputs angle data in "inverse" order
thy = th(2);
thz = th(3);


  R(1,1) = cos(thy)*cos(thz);
  R(1,2) = cos(thy)*sin(thz);
  R(1,3) = -sin(thy);
  R(2,1) = -cos(thx)*sin(thz) + sin(thx)*sin(thy)*cos(thz);
  R(2,2) = cos(thx)*cos(thz) + sin(thx)*sin(thy)*sin(thz);
  R(2,3) = sin(thx)*cos(thy);
  R(3,1) = sin(thx)*sin(thz) + cos(thx)*sin(thy)*cos(thz);
  R(3,2) = -sin(thx)*cos(thz) + cos(thx)*sin(thy)*sin(thz);
  R(3,3) = cos(thx)*cos(thy);
  R = R';   % convert to standard notation used in Asada


