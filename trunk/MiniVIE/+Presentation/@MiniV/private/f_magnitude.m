%Names: Bobby Armiger and Carol Reiley
%Assignment CIS programming assignment 3
%Professor: Dr. Taylor
%File Name: f_magnitude

% find the Euclidean distance between two vectors

function mag = f_magnitude(v1,v2)

if size(v1,1) ~= 3, error('Use Column Vectors'),end;
if nargin < 2, v2 = repmat([0 0 0]',[1 size(v1,2)]); end;

%mag = sqrt(diag((v1-v2)' * (v1-v2)));
mag = sum((v1-v2).^2).^0.5;