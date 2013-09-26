function limits = elbow_extend(limits,deg)
%ELBOW_EXTEND is a function that only works in conjunction with the virtual arm system.
%
%   limits = ELBOW_EXTEND(limits,deg) where deg is a number performs an elbow extension   
%   on the virtual arm by a degree amount given as input.  Inputting a negative angle will  
%   perform a negative extension (flexion).  
%
%   limits = ELBOW_EXTEND(limits,deg) where deg is an ASCII character performs an elbow   
%   extension on the virtual arm by an amount that is the preset fraction of full range scaled 
%   by the ASCII-converted number (as a percentage).   
% 
%   limits = ELBOW_EXTEND(limits) performs an elbow extension on the virtual arm by a
%   preset fraction of the full motion range.  
%
%   The ouput variable must also be named limits in order to maintain global nature
%   of structure without having to declare limits a global variable.
%
%   Note: limits of flexion/extension are preset and are set/updated in the passed 'limits'
%   structure.

%   Blair Lock 07-12-04

global speeds FtestParams
try speeds.elbow;                       % test to see if field exists
catch, speeds.elbow = 1;                % if not, substitue in default value
end

lower_lim = limits(1).elbow_fe;         % get preset lower limit of movement
upper_lim = limits(2).elbow_fe;         % get preset upper limit of movement
current_pos = limits(3).elbow_fe;       % get current position of movement

if nargin < 2                           % if call is without degree input
    deg = abs(upper_lim-lower_lim)/50;  % set movement amount to a precentage 
    deg = deg*speeds.elbow;             % apply speed factor from global structure
else
    if ischar(deg)
        scl_spd = double(deg)/100;      % percentage based scale speed
        deg = abs(upper_lim-lower_lim)/25*scl_spd;  % set movement amount to a scaled precentage 
        deg = deg*speeds.elbow;         % apply speed factor from global structure
    end
end

if current_pos-deg >= upper_lim         % monitor upper limit of movement and
    deg = current_pos-upper_lim;        % restrict motion to limit
elseif current_pos-deg <= lower_lim     % monitor lower limit of movement and
    deg = current_pos-lower_lim;        % restrict motion to limit
end

limits(3).elbow_fe = current_pos-deg;   % update and store new current position

dum = findobj('Type','axes','Tag','ven_armview'); % get handle to arm axes
h = guihandles(dum);                    % retrieve handles info from arm axes
surfaces = [...                         % group the surface objects to rotate
            h.FA h.PM,...               %   (forearm and palm)
            h.IS1 h.IS2 h.IS3,...       %   (index finger)
            h.MS1 h.MS2 h.MS3,...       %   (middle finger)
            h.RS1 h.RS2 h.RS3,...       %   (ring finger)
            h.PS1 h.PS2 h.PS3,...       %   (pinky finger)
            h.TS1 h.TS2 h.TS3];         %   (thumb)
    
try,                                    % try block
    if (FtestParams.testing > 0) && ... % if a test is running
            FtestParams.pintouch        % and if the clothespin is grasped
        surfaces = [surfaces,...        % add pin pieces to surface objects group 
                h.pin_bot h.pin_top];
        cur_el = limits(3).elbow_fe;    % get current elbow position
        cur_wr = limits(3).wrist_ps;    % get current wrist position
        cur_pg = limits(3).hand_pg;     % get hand grasp position
        if ((cur_el>=110) && ...        % if clothespin positioned for placement on upper bar
            (cur_el<=130) && ...
            (cur_wr<15) && ...
            (cur_wr>-15) && ...
            (cur_pg>=30)) 
            set([h.pin_bot h.pin_top],'FaceColor',[0.15 0.85 0.1]); % color pin green
        else                            % if clothespin not positioned for placement on upper bar 
            set([h.pin_bot h.pin_top],'FaceColor',[0.85 0.15 0.1]); % recolor the pin red
        end
    end
catch,                                  % do noting if not testing nor grasped
end

[d1,d2,d3,P] = ref_axis(h.FA);          % call to get point of rotation (P) from elbow joint
[X,Y,Z,d4] = ref_axis(h.UA);            % call to get point of rotation orientation vectors (X,Y,Z) from shoulder

rotate(surfaces,-Y,deg,P);              % rotate about reference axis -Y gives flexion/extension