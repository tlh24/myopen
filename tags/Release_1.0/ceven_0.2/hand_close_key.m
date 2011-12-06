function limits = hand_close_key(limits,deg)
%HAND_CLOSE_KEY is a function that only works in conjunction with the virtual arm system.
%
%   limits = HAND_CLOSE_KEY(limits,deg) where deg is a number closes the hand of the virtual  
%   arm from a key grip by a degree amount given as input.  Inputting a negative angle will  
%   perform a negative close (open).  
%
%   limits = HAND_CLOSE_KEY(limits,deg) where deg is an ASCII character closes the hand of the   
%   virtual arm from a key grip by an amount that is the preset fraction of full range scaled 
%   by the ASCII-converted number (as a percentage).   
% 
%   limits = HAND_CLOSE_KEY(limits) closes the hand of the virtaul arm from a key grip 
%   by a preset fraction of the full motion range.  
%
%   The ouput variable must also be named limits in order to maintain global nature
%   of structure without having to declare limits a global variable.
%
%   Note: limits of open/close are preset and are set/updated in the passed 'limits'
%   structure.

%   Blair Lock 08-11-04

global speeds gripFac
try speeds.hand;                                                        % test to see if field exists
catch, speeds.hand = 1;                                                 % if not, substitue in default value
end

lower_lim = limits(1).hand_kg;                                          % get preset lower limit of movement
upper_lim = limits(2).hand_kg;                                          % get preset upper limit of movement
current_pos = limits(3).hand_kg;                                        % get current position of movement

if nargin < 2                                                           % if call is without degree input
    deg = gripFac.kgRng/20;                                             % set movement amount to a precentage 
    deg = deg*speeds.hand;                                              % apply speed factor from global structure
else
    if ischar(deg)
        scl_spd = double(deg)/100;                                      % percentage based scale speed
        deg = gripFac.kgRng/10*scl_spd;                                 % set movement amount to a scaled precentage 
        deg = deg*speeds.hand;                                          % apply speed factor from global structure
    end
end

if current_pos+deg >= upper_lim                                         % monitor upper limit of movement and
    deg = upper_lim-current_pos;                                        % restrict motion to limit
elseif current_pos+deg <= lower_lim                                     % monitor lower limit of movement and
    deg = lower_lim-current_pos;                                        % restrict motion to limit
end

limits(3).hand_kg = current_pos+deg;                                    % update and store new current position
gripFac.kg = abs(limits(3).hand_kg-lower_lim) ...                       % determine key grip percentage
        /max([0.001 gripFac.kgRng]);
pgNewUpLim = limits(1).hand_pg+(1-gripFac.kg)*gripFac.pgRng;            % calc new (scaled) limit for power grip
limits(2).hand_pg = pgNewUpLim;                                         % set new pg limit

dum = findobj('Style','slider','Tag','ven_hand_pg');                    % get handle to power grip slider
set(dum,'Max',max([limits(3).hand_pg 0.001 pgNewUpLim]));               % set pg slider max limit

dum = findobj('Type','axes','Tag','ven_armview');                       % get handle to arm axes
h = guihandles(dum);                                                    % retrieve handles info from arm axes

% index finger
[X,Y,Z,P] = ref_axis(h.IS1);            % call to get point of rotation (P) and orientation vectors (X,Y,Z)               
rotate([h.IS1 h.IS2 h.IS3],Y,deg*(75/90),P);% rotate about reference axis Y 
[X,Y,Z,P] = ref_axis(h.IS2);            % call to get point of rotation (P) and orientation vectors (X,Y,Z)               
rotate([h.IS2 h.IS3],Y,deg*(97/90),P);  % rotate about reference axis Y 
[X,Y,Z,P] = ref_axis(h.IS3);            % call to get point of rotation (P) and orientation vectors (X,Y,Z)               
rotate(h.IS3,Y,deg*(35/90),P);          % rotate about reference axis Y 

% middle finger
[X,Y,Z,P] = ref_axis(h.MS1);            % call to get point of rotation (P) and orientation vectors (X,Y,Z)               
rotate([h.MS1 h.MS2 h.MS3],Y,deg*(80/90),P);% rotate about reference axis Y 
[X,Y,Z,P] = ref_axis(h.MS2);            % call to get point of rotation (P) and orientation vectors (X,Y,Z)               
rotate([h.MS2 h.MS3],Y,deg*(97/90),P);  % rotate about reference axis Y 
[X,Y,Z,P] = ref_axis(h.MS3);            % call to get point of rotation (P) and orientation vectors (X,Y,Z)               
rotate(h.MS3,Y,deg*(35/90),P);          % rotate about reference axis Y 

% ring finger
[X,Y,Z,P] = ref_axis(h.RS1);            % call to get point of rotation (P) and orientation vectors (X,Y,Z)               
rotate([h.RS1 h.RS2 h.RS3],Y,deg,P);    % rotate about reference axis Y 
[X,Y,Z,P] = ref_axis(h.RS2);            % call to get point of rotation (P) and orientation vectors (X,Y,Z)               
rotate([h.RS2 h.RS3],Y,deg,P);          % rotate about reference axis Y 
[X,Y,Z,P] = ref_axis(h.RS3);            % call to get point of rotation (P) and orientation vectors (X,Y,Z)               
rotate(h.RS3,Y,deg*(80/90),P);          % rotate about reference axis Y 
        
% pinky finger
[X,Y,Z,P] = ref_axis(h.PS1);            % call to get point of rotation (P) and orientation vectors (X,Y,Z)               
rotate([h.PS1 h.PS2 h.PS3],Y,deg,P);    % rotate about reference axis Y 
[X,Y,Z,P] = ref_axis(h.PS2);            % call to get point of rotation (P) and orientation vectors (X,Y,Z)               
rotate([h.PS2 h.PS3],Y,deg,P);          % rotate about reference axis Y 
[X,Y,Z,P] = ref_axis(h.PS3);            % call to get point of rotation (P) and orientation vectors (X,Y,Z)               
rotate(h.PS3,Y,deg,P);                  % rotate about reference axis Y 

% thumb 
[X,Y,Z,P] = ref_axis(h.TS1);            % call to get point of rotation (P) and orientation vectors (X,Y,Z)               
rotate([h.TS1 h.TS2 h.TS3],X,deg*(10/90),P);% rotate about reference axis X 
[X,Y,Z,P] = ref_axis(h.TS1);            % call to get point of rotation (P) and orientation vectors (X,Y,Z)               
rotate([h.TS1 h.TS2 h.TS3],Y,deg*(9/90),P);% rotate about reference axis Y 
[X,Y,Z,P] = ref_axis(h.TS2);            % call to get point of rotation (P) and orientation vectors (X,Y,Z)               
rotate([h.TS2 h.TS3],Y,deg*(15/90),P);  % rotate about reference axis Y 
[X,Y,Z,P] = ref_axis(h.TS3);            % call to get point of rotation (P) and orientation vectors (X,Y,Z)               
rotate([h.TS3],Y,deg*(15/90),P);        % rotate about reference axis Y 