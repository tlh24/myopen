function [] = pindraw(varargin)
%PINDRAW Draws clothespin in arm window at default location and deletes any
%existing clothespins. This function only works with the virtual arm system.
%
%   PINDRAW (called with no input arguments) draws a new clothespin and new bars 
%   in the starting location
%
%   PINDRAW(varargin) (called with any input arguments) removes the bars and clothespin

%   Blair Lock 05-12-05

global UA_len FA_len PM_width

ax = findobj('Type','axes','Tag','ven_armview');                        % get handle to arm axes
axes(ax)                                                                % set current axes
h = guihandles(ax);                                                     % retrieve handles info from arm axes

delete([findobj('Tag','low_bar') findobj('Tag','high_bar')]);           % clear previous lower bars
delete([findobj('Tag','pin_bot') findobj('Tag','pin_top')]);            % clear any existing pin

if nargin < 1                                                           % if any input args; signal just to remove bars and pin
    d = sqrt(((FA_len+PM_width)*49/44)^2/2)-0.25;                       % distance measure for lower bar
    bar_len = 1.2*max(get(ax,'XLim'));                                  % bar length (60% of axes width)
    [cx,cy,cz] = cylinder([0.5,0.5],5);                                 % create 5-sided cylinder object
    low_bar = surface(cx, cy-d, (cz*bar_len)-bar_len/2-UA_len-d);       % scale and position lower bar
    rotate(low_bar,[0 1 0],90,[0 -d (-UA_len-d)])                       % rotate lower bar to horizontal
    set(low_bar,'Tag','low_bar');                                       % name lower bar for later reference
    high_bar = surface(cx-PM_width*1.05, cy-d, (cz*bar_len)-bar_len/2-UA_len+d);  % scale and position high bar
    rotate(high_bar,[1 0 0],-30,[0 -d (-UA_len+d)])                     % rotate high bar to vertical
    set(high_bar,'Tag','high_bar');                                     % name high bar for later reference
    
    x = -PM_width/5;                                                    % pin displacement in x
    Y = get(low_bar,'YData');                                           % get bar's y values
    y = Y(1,1);                                                         % determine y distance to bar axis
    Z = get(low_bar,'ZData');                                           % get bar's z values
    z = (Z(1,1) + Z(1,3))/2 + 5.5/15*PM_width;                          % determine z distance to bar axis add distance to pin's mouth
    
    [X,Y,Z] = clothespin(PM_width);                                     % call to create clothespin half
    pin_bot = surface(X+x,Y+y,Z+z,'Tag','pin_bot');                     % draw pin bottom and position on lower bar
    pin_top = surface(X+x,-Y+y,Z+z,'Tag','pin_top');                    % draw pin top and position on lower bar
    set(pin_bot,'UserData',0)                                           % initialize deg amount opened to 0 (rest pos)
    color = get(findobj('Tag','UA'),'UserData');                        % get stored skin color
    shading interp                                                          
    material dull 
    objs = [h.UA h.FA h.PM h.IS1 h.MS1 h.RS1 h.PS1 h.TS1, ...           % compile list of arm surface objects 
        h.IS2 h.MS2 h.RS2 h.PS2 h.TS2 h.IS3 h.MS3 h.RS3 h.PS3 h.TS3];   % to be colored
    set(objs,'FaceColor',color);                                        % set arm to new color
    set([pin_top pin_bot],'FaceColor',[0.8 0.75 0.3]);                  % color clothespin (initial color)
    set([high_bar low_bar],'FaceColor',[0.45 0.4 0.5]);                 % color upper and lower bars
end