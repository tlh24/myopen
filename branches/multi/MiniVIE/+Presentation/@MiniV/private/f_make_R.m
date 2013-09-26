function R = f_make_R(varargin)
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
