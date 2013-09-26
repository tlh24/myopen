function limits = hand_fingers_close(limits,deg)
%HAND_FINGERS_CLOSE is a function that only works in conjunction with the virtual arm system.
%
%   limits = HAND_FINGERS_CLOSE(limits,deg) where deg is a number closes the fingers of the virtual  
%   arm from a finger-spread by a degree amount given as input.  Inputting a negative angle will  
%   perform a negative close (spread).  
%
%   limits = HAND_FINGERS_CLOSE(limits,deg) where deg is an ASCII character closes the fingers of the   
%   virtual arm from a finger-spread by an amount that is the preset fraction of full range scaled 
%   by the ASCII-converted number (as a percentage).   
% 
%   limits = HAND_FINGERS_CLOSE(limits) closes the fingers of the virtaul arm from a finger-spread 
%   by a preset fraction of the full motion range.  
%
%   The ouput variable must also be named limits in order to maintain global nature
%   of structure without having to declare limits a global variable.
%
%   Note: limits of open/close are preset and are set/updated in the passed 'limits'
%   structure.

%   Blair Lock 08-11-04

global speeds
try speeds.hand;                        % test to see if field exists
catch, speeds.hand = 1;                 % if not, substitue in default value
end

lower_lim = limits(1).hand_sf;          % get preset lower limit of movement
upper_lim = limits(2).hand_sf;          % get preset upper limit of movement
current_pos = limits(3).hand_sf;        % get current position of movement

if nargin < 2                           % if call is without degree input
    deg = abs(upper_lim-lower_lim)/20;  % set movement amount to a precentage 
    deg = deg*speeds.hand;              % apply speed factor from global structure
else
    if ischar(deg)
        scl_spd = double(deg)/100;      % percentage based scale speed
        deg = abs(upper_lim-lower_lim)/10*scl_spd;  % set movement amount to a scaled precentage 
        deg = deg*speeds.hand;          % apply speed factor from global structure
    end
end

if current_pos-deg >= upper_lim         % monitor upper limit of movement and
    deg = current_pos-upper_lim;        % restrict motion to limit
elseif current_pos-deg <= lower_lim     % monitor lower limit of movement and
    deg = current_pos-lower_lim;        % restrict motion to limit
end

limits(3).hand_sf = current_pos-deg;    % update and store new current position

dum = findobj('Type','axes','Tag','ven_armview'); % get handle to arm axes
h = guihandles(dum);                    % retrieve handles info from arm axes

% index finger
[X,Y,Z,P] = ref_axis(h.IS1);            % call to get point of rotation (P) and orientation vectors (X,Y,Z)               
rotate([h.IS1 h.IS2 h.IS3],-X,-deg,P);  % rotate about reference axis -X 

% middle finger
[X,Y,Z,P] = ref_axis(h.MS1);            % call to get point of rotation (P) and orientation vectors (X,Y,Z)               
rotate([h.MS1 h.MS2 h.MS3],-X,-deg*(1/3),P);% rotate about reference axis -X 

% ring finger
[X,Y,Z,P] = ref_axis(h.RS1);            % call to get point of rotation (P) and orientation vectors (X,Y,Z)               
rotate([h.RS1 h.RS2 h.RS3],X,-deg*(1/3),P);% rotate about reference axis X 
        
% pinky finger
[X,Y,Z,P] = ref_axis(h.PS1);            % call to get point of rotation (P) and orientation vectors (X,Y,Z)               
rotate([h.PS1 h.PS2 h.PS3],X,-deg,P);   % rotate about reference axis X 

% thumb 
[X,Y,Z,P] = ref_axis(h.TS1);            % call to get point of rotation (P) and orientation vectors (X,Y,Z)               
rotate([h.TS1 h.TS2 h.TS3],-Y,-deg,P);  % rotate about reference axis -Y