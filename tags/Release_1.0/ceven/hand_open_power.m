function limits = hand_open_power(limits,deg)
%HAND_OPEN_POWER is a function that only works in conjunction with the virtual arm system.
%
%   limits = HAND_OPEN_POWER(limits,deg) where deg is a number opens the hand of the virtual  
%   arm from a power grip by a degree amount given as input.  Inputting a negative angle will  
%   perform a negative open (close).  
%
%   limits = HAND_OPEN_POWER(limits,deg) where deg is an ASCII character opens the hand of the   
%   virtual arm from a power grip by an amount that is the preset fraction of full range scaled 
%   by the ASCII-converted number (as a percentage).   
% 
%   limits = HAND_OPEN_POWER(limits) opens the hand of the virtaul arm from a power grip 
%   by a preset fraction of the full motion range.  
%
%   The ouput variable must also be named limits in order to maintain global nature
%   of structure without having to declare limits a global variable.
%
%   Note: limits of open/close are preset and are set/updated in the passed 'limits'
%   structure.

%   Blair Lock 07-12-04

global speeds gripFac FtestParams
try speeds.hand;                                                        % test to see if field exists
catch, speeds.hand = 1;                                                 % if not, substitue in default value
end

lower_lim = limits(1).hand_pg;                                          % get preset lower limit of movement
upper_lim = limits(2).hand_pg;                                          % get preset upper limit of movement
current_pos = limits(3).hand_pg;                                        % get current position of movement

if nargin < 2                                                           % if call is without degree input
    deg = gripFac.pgRng/20;                                             % set movement amount to a precentage 
    deg = deg*speeds.hand;                                              % apply speed factor from global structure
else
    if ischar(deg)
        scl_spd = double(deg)/100;                                      % percentage based scale speed
        deg = gripFac.pgRng/10*scl_spd;                                 % set movement amount to a scaled precentage 
        deg = deg*speeds.hand;                                          % apply speed factor from global structure
    end
end

if current_pos-deg >= upper_lim                                         % monitor upper limit of movement and
    deg = current_pos-upper_lim;                                        % restrict motion to limit
elseif current_pos-deg <= lower_lim                                     % monitor lower limit of movement and
    deg = current_pos-lower_lim;                                        % restrict motion to limit
end

dum = findobj('Type','axes','Tag','ven_armview');                       % get handle to arm axes
h = guihandles(dum);                                                    % retrieve handles info from arm axes

try testing = FtestParams.testing;                                      % check to see if test is running
catch, testing = 0;                                                     % deselect testing flag if not
end
switch testing                                                          % pick test type (0 for no test, 1 for clothespin ...)
    case 1                                                              % case 1 is clothespin test
        cur_el = limits(3).elbow_fe;                                    % get current elbow position
        cur_wr = limits(3).wrist_ps;                                    % get current wrist poistion
        cur_pg = current_pos-deg;                                       % get intended position of hand grasp
        if cur_pg > 38                                                  % if hand is wanting to close past 38 degrees 
            cur_pg = 38;                                                % limit to 38 degrees
            deg = current_pos - cur_pg;                                 % limit deg amount to move to max (38 deg)
            dum = findobj('Style','slider','Tag','ven_hand_pg');        % get handle to power grip slider
            set(dum,'Value',cur_pg);                                    % set pg slider value to fully grasped (38 deg)
        end
        if (cur_el>=55) && (cur_el<=65) && (cur_wr>75) && (cur_pg>=30)  % if virtual arm is in position to pick up clothespin
            clothespin_operate((cur_pg-max([30 current_pos]))*2);       % call to animate clothespin opening to match amount of grasp
            if ~FtestParams.pintouch                                    % if first time pin is in grabbing position
                set([h.pin_bot h.pin_top],'FaceColor',[0.85 0.15 0.1]); % change color of clothespin to red             
                FtestParams.pintouch = 1;                               % set 'clothespin touched' flag
            end
        elseif isequal(get(h.pin_bot,'FaceColor'),[0.15 0.85 0.1]) ...  % elseif the pin is green (ok to be placed)
                && (cur_pg<30)                                          % and the hand grasp releases past the lower grasp limit
            FtestParams.pintouch = 0;                                   % reset the 'clothespin touched' flag
            pindraw                                                     % draw a new clothespin in the starting position
            FtestParams.pinCount = FtestParams.pinCount + 1;            % augment the clothespin-placed count
            FtestParams.pinTimes = [FtestParams.pinTimes; clock];       % add to an array keeping the time of each pin placement
            etime(FtestParams.pinTimes(FtestParams.pinCount+1,:),FtestParams.pinTimes(FtestParams.pinCount,:))  % display pin time
        elseif FtestParams.pintouch                                     % elseif clothespin is being held
            if (cur_pg < 30)                                            % if the hand grasp released past the lower grasp limit
                FtestParams.pintouch = 0;                               % reset the 'clothespin touched' flag
                pindraw                                                 % draw a new clothespin in the starting position
            else                                                        % otherwise, it is still held, but
                clothespin_operate((cur_pg-max([30 current_pos]))*2);   % call to animate clothespin opening to match amount of grasp
            end
        end
end

limits(3).hand_pg = current_pos-deg;                                    % update and store new current position
gripFac.pg = abs(limits(3).hand_pg-lower_lim) ...                       % determine power grip percentage
        /max([0.001 gripFac.pgRng]);
kgNewUpLim = limits(1).hand_kg+(1-gripFac.pg)*gripFac.kgRng;            % calc new (scaled) limit for key grip
limits(2).hand_kg = kgNewUpLim;                                         % set new kg limit

dum = findobj('Style','slider','Tag','ven_hand_kg');                    % get handle to key grip slider
set(dum,'Max',max([limits(3).hand_kg 0.001 kgNewUpLim]));               % set kg slider max limit

% index finger
[X,Y,Z,P] = ref_axis(h.IS1);            % call to get point of rotation (P) and orientation vectors (X,Y,Z)               
rotate([h.IS1 h.IS2 h.IS3],Y,-deg,P);   % rotate about reference axis Y 
[X,Y,Z,P] = ref_axis(h.IS2);            % call to get point of rotation (P) and orientation vectors (X,Y,Z)               
rotate([h.IS2 h.IS3],Y,-deg,P);         % rotate about reference axis Y 
[X,Y,Z,P] = ref_axis(h.IS3);            % call to get point of rotation (P) and orientation vectors (X,Y,Z)               
rotate(h.IS3,Y,-deg,P);                 % rotate about reference axis Y 

% middle finger
[X,Y,Z,P] = ref_axis(h.MS1);            % call to get point of rotation (P) and orientation vectors (X,Y,Z)               
rotate([h.MS1 h.MS2 h.MS3],Y,-deg,P);   % rotate about reference axis Y 
[X,Y,Z,P] = ref_axis(h.MS2);            % call to get point of rotation (P) and orientation vectors (X,Y,Z)               
rotate([h.MS2 h.MS3],Y,-deg,P);         % rotate about reference axis Y 
[X,Y,Z,P] = ref_axis(h.MS3);            % call to get point of rotation (P) and orientation vectors (X,Y,Z)               
rotate(h.MS3,Y,-deg,P);                 % rotate about reference axis Y 

% ring finger
[X,Y,Z,P] = ref_axis(h.RS1);            % call to get point of rotation (P) and orientation vectors (X,Y,Z)               
rotate([h.RS1 h.RS2 h.RS3],Y,-deg,P);   % rotate about reference axis Y 
[X,Y,Z,P] = ref_axis(h.RS2);            % call to get point of rotation (P) and orientation vectors (X,Y,Z)               
rotate([h.RS2 h.RS3],Y,-deg,P);         % rotate about reference axis Y 
[X,Y,Z,P] = ref_axis(h.RS3);            % call to get point of rotation (P) and orientation vectors (X,Y,Z)               
rotate(h.RS3,Y,-deg,P);                 % rotate about reference axis Y 
        
% pinky finger
[X,Y,Z,P] = ref_axis(h.PS1);            % call to get point of rotation (P) and orientation vectors (X,Y,Z)               
rotate([h.PS1 h.PS2 h.PS3],Y,-deg,P);   % rotate about reference axis Y 
[X,Y,Z,P] = ref_axis(h.PS2);            % call to get point of rotation (P) and orientation vectors (X,Y,Z)               
rotate([h.PS2 h.PS3],Y,-deg,P);         % rotate about reference axis Y 
[X,Y,Z,P] = ref_axis(h.PS3);            % call to get point of rotation (P) and orientation vectors (X,Y,Z)               
rotate(h.PS3,Y,-deg,P);                 % rotate about reference axis Y 

% thumb 
[X,Y,Z,P] = ref_axis(h.TS1);            % call to get point of rotation (P) and orientation vectors (X,Y,Z)               
rotate([h.TS1 h.TS2 h.TS3],Y,-deg,P);   % rotate about reference axis Y