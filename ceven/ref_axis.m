function [X,Y,Z,P] = ref_axis(h)
%REF_AXIS retuns X, Y, and Z vectors that make up the reference orientation axis
%and vector P that is the 3D reference point in space, all for a surfcae object 
%given as input.  This function only works for pre-set suface objects in 
%conjunction with the virtual arm system.
%
%   [X,Y,Z,P] = REF_AXIS(h) yields four, 3x1 vectors (X, Y, Z, and P) when given input
%   surface object
%
%   Valid surface objects: UA, FA, PM, IS1, MS1, RS1, PS1, TS1, IS2, MS2,
%   RS2, PS2, TS2, IS3, MS3, RS3, PS3, TS3

%   Blair Lock 07-09-04

surf = get(h,'Tag');
switch surf
    case {'UA','IS1','MS1','RS1','PS1','IS2','MS2','RS2','PS2','TS2'}
        x = get(h, 'XData');            % The surface object's x data values
        y = get(h, 'YData');            % The surface object's y data values
        z = get(h, 'ZData');            % The surface object's z data values
        Po = [x(1,1) y(1,1) z(1,1)];    % Perdetmined reference origin point on the surface
        Px = [x(2,1) y(2,1) z(2,1)];    % Perdetmined reference x-axis point on the surface     
        Pz = [x(9,1) y(9,1) z(9,1)];    % Perdetmined reference z-axis point on the surface
        X = Px-Po;                      % Reference X vector calculation
        Z = -(Pz-Po);                   % Reference Z vector calculation
        Y = cross(Z,X);                 % Reference Y vector calculation (from cross product)
        P = Po;                         % Reference point
    case 'FA'
        x = get(h, 'XData');            % The surface object's x data values
        y = get(h, 'YData');            % The surface object's y data values
        z = get(h, 'ZData');            % The surface object's z data values
        Po = [x(1,1) y(1,1) z(1,1)];    % Perdetmined reference origin point on the surface
        Py = [x(2,1) y(2,1) z(2,1)];    % Perdetmined reference y-axis point on the surface     
        Pz = [x(8,1) y(8,1) z(8,1)];    % Perdetmined reference z-axis point on the surface
        Y = Py-Po;                      % Reference Y vector calculation
        Z = -(Pz-Po);                   % Reference Z vector calculation
        X = cross(Y,Z);                 % Reference X vector calculation (from cross product)
        P = Po;                         % Reference point
    case 'PM'
        x = get(h, 'XData');            % The surface object's x data values
        y = get(h, 'YData');            % The surface object's y data values
        z = get(h, 'ZData');            % The surface object's z data values
        Po = [x(6,1) y(6,1) z(6,1)];    % Perdetmined reference origin point on the surface
        Px = [x(5,1) y(5,1) z(5,1)];    % Perdetmined reference x-axis point on the surface 
        Py = [x(6,8) y(6,8) z(6,8)];    % Perdetmined reference y-axis point on the surface 
        X = Px-Po;                      % Reference X vector calculation
        Y = -(Py-Po);                   % Reference Y vector calculation
        Z = cross(X,Y);                 % Reference Z vector calculation (from cross product)
        P = Po;                         % Reference point
    case {'IS3','MS3','RS3','PS3','TS3'}
        x = get(h, 'XData');            % The surface object's x data values
        y = get(h, 'YData');            % The surface object's y data values
        z = get(h, 'ZData');            % The surface object's z data values
        Po = [x(1,1) y(1,1) z(1,1)];    % Perdetmined reference origin point on the surface
        Px = [x(2,1) y(2,1) z(2,1)];    % Perdetmined reference x-axis point on the surface     
        Pz = [x(8,1) y(8,1) z(8,1)];    % Perdetmined reference z-axis point on the surface
        X = Px-Po;                      % Reference X vector calculation
        Z = -(Pz-Po);                   % Reference Z vector calculation
        Y = cross(Z,X);                 % Reference Y vector calculation (from cross product)
        P = [x(1,2) y(1,2) z(1,2)];     % Reference point
    case 'TS1'
        x = get(h, 'XData');            % The surface object's x data values
        y = get(h, 'YData');            % The surface object's y data values
        z = get(h, 'ZData');            % The surface object's z data values
        Po = [x(3,6) y(3,6) z(3,6)];    % Perdetmined reference origin point on the surface
        Px = [x(1,1) y(1,1) z(1,1)];    % Perdetmined reference x-axis point on the surface     
        Pz = [x(12,1) y(12,1) z(12,1)]; % Perdetmined reference z-axis point on the surface
        X = Px-Po;                      % Reference X vector calculation
        Z = -(Pz-Po);                   % Reference Z vector calculation
        Y = cross(Z,X);                 % Reference Y vector calculation (from cross product)
        P = Po;                         % Reference point
    case {'pin_bot','pin_top'}
        x = get(h, 'XData');            % The surface object's x data values
        y = get(h, 'YData');            % The surface object's y data values
        z = get(h, 'ZData');            % The surface object's z data values
        Po = [x(3,4) y(3,4) z(3,4)];    % Perdetmined reference origin point on the surface
        Px = [x(4,4) y(4,4) z(4,4)];    % Perdetmined reference x-axis point on the surface     
        Pz = [x(3,5) y(3,5) z(3,5)];    % Perdetmined reference z-axis point on the surface
        X = Px-Po;                      % Reference X vector calculation
        Z = -(Pz-Po);                   % Reference Z vector calculation
        Y = cross(Z,X);                 % Reference Y vector calculation (from cross product)
        P = Po;                         % Reference point
end