function limits = wrist_adduct(limits,deg)
%WRIST_ADDUCT is a function that only works in conjunction with the virtual arm system.
%
%   limits = WRIST_ADDUCT(limits,deg) where deg is a number performs a wrist adduction   
%   on the virtual arm by a degree amount given as input.  Inputting a negative angle will  
%   perform a negative adduction (abduction).  
%
%   limits = WRIST_ADDUCT(limits,deg) where deg is an ASCII character performs a wrist  
%   adduction on the virtual arm by an amount that is the preset fraction of full range scaled 
%   by the ASCII-converted number (as a percentage).   
% 
%   limits = WRIST_ADDUCT(limits) performs a wrist adduction on the virtual arm by a
%   preset fraction of the full motion range.  
%
%   The ouput variable must also be named limits in order to maintain global nature
%   of structure without having to declare limits a global variable.
%
%   Note: limits of abduction/adduction are preset and are set/updated in the passed 'limits'
%   structure.

%   Blair Lock 07-12-04

global speeds
try speeds.wrist;                       % test to see if field exists
catch, speeds.wrist = 1;                % if not, substitue in default value
end

lower_lim = limits(1).wrist_aa;         % get preset lower limit of movement
upper_lim = limits(2).wrist_aa;         % get preset upper limit of movement
current_pos = limits(3).wrist_aa;       % get current position of movement

if nargin < 2                           % if call is without degree input
    deg = abs(upper_lim-lower_lim)/25;  % set movement amount to a precentage 
    deg = deg*speeds.wrist;             % apply speed factor from global structure
else
    if ischar(deg)
        scl_spd = double(deg)/100;      % percentage based scale speed
        deg = abs(upper_lim-lower_lim)/12.5*scl_spd;  % set movement amount to a scaled precentage 
        deg = deg*speeds.wrist;         % apply speed factor from global structure
    end
end

if current_pos-deg >= upper_lim         % monitor upper limit of movement and
    deg = current_pos-upper_lim;        % restrict motion to limit
elseif current_pos-deg <= lower_lim     % monitor lower limit of movement and
    deg = current_pos-lower_lim;        % restrict motion to limit
end

limits(3).wrist_aa = current_pos-deg;   % update and store new current position

dum = findobj('Type','axes','Tag','ven_armview'); % get handle to arm axes
h = guihandles(dum);                    % retrieve handles info from arm axes
surfaces = [...                         % group the surface objects to rotate
            h.PM,...                    %   (palm)
            h.IS1 h.IS2 h.IS3,...       %   (index finger)
            h.MS1 h.MS2 h.MS3,...       %   (middle finger)
            h.RS1 h.RS2 h.RS3,...       %   (ring finger)
            h.PS1 h.PS2 h.PS3,...       %   (pinky finger)
            h.TS1 h.TS2 h.TS3];         %   (thumb)

[X,Y,Z,P] = ref_axis(h.PM);             % call to get point of rotation (P) and orientation vectors (X,Y,Z)               

rotate(surfaces,X,deg,P);               % rotate about reference axis X gives abduction/adduction