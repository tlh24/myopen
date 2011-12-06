function [] = clothespin_operate(deg)
%CLOTHESPIN_OPERATE is a function that only works in conjunction with the virtual arm system.
%
%   [] = CLOTHESPIN_OPERATE(deg) where deg is a number opens the clothespin by a degree  
%   amount given as input.  Inputting a negative angle will close the pin. 
%
%   [] = CLOTHESPIN_OPERATE(deg) where deg is any ASCII character fully closes the pin.
%
%   [] = CLOTHESPIN_OPERATE opens the clothespin by a preset degree amount.  

%   Blair Lock 04-12-05

dum = findobj('Type','axes','Tag','ven_armview');                       % get handle to arm axes
h = guihandles(dum);                                                    % retrieve handles info from arm axes

upper_lim = 16;                                                         % pre-determined clothespin opened limit
lower_lim = 0;                                                          % pre-determined clothespin
current_pos = get(h.pin_bot,'UserData');                                % get stored clothespin current open value

if nargin < 1                                                           % if call is without degree input
    deg = upper_lim-lower_lim/3;                                        % set movement amount to 1/3rd full range 
else
    if ischar(deg)                                                      % if deg input is any char
        deg = lower_lim-current_pos;                                    % close the pin completely
    end
end

if current_pos+deg >= upper_lim                                         % monitor upper limit of movement and
    deg = upper_lim-current_pos;                                        % restrict motion to limit
elseif current_pos+deg <= lower_lim                                     % monitor lower limit of movement and
    deg = lower_lim-current_pos;                                        % restrict motion to limit
end
set(h.pin_bot,'UserData',current_pos+deg);                              % store clothespin new open value

% pin bottom half
[X,Y,Z,P] = ref_axis(h.pin_bot);                                        % call to get point of rotation (P) and orientation vectors (X,Y,Z)               
rotate(h.pin_bot,-X,deg/2,P);                                           % rotate about reference axis -X 

% pin top half
[X,Y,Z,P] = ref_axis(h.pin_top);                                        % call to get point of rotation (P) and orientation vectors (X,Y,Z)               
rotate(h.pin_top,X,deg/2,P);                                            % rotate about reference axis X 