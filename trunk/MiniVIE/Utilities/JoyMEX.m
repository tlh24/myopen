%JOYMEX Provides an interface to Joysticks and Gamepad devices.
%   JOYMEX('init',id) Initializes the gamepad device number id. A gamepad
%   device needs to initialized before it may be used for input in MATLAB.
%   To unload all gamepad devices use:
%
%       clear joymex
%
%   [A, B] = JOYMEX returns axis vector A and button vector B for device 0.
%   A represents the commonly known six gamepad axes [X Y Z RX RY RZ]
%   each element can take values in the range [-1,1]. B is a 128 element 
%   logical vector where B(i) = 1 if button i is pressed and B(i) = 0
%   otherwise.
%
%   [A, B] = JOYMEX(id) returns axis vector A and button vector B for
%   device number id.

%   Copyright 2009 Martijn Aben.