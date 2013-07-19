classdef Record 
    % Database record class
    properties
        
        Name            = 'Unnamed Parameter';  % Parameter name, no spaces (e.g. WRISTDEV_controlMode)
        Value           = [];                   % can be any value, any class
        Dimensions      = [0 0];                % size(Value)
        Description     = '';                   % Extended description, free text field
        IsSimulink      = false;                % Does parameter exist in simulink model
        IsTunable       = false;                % Is the parameter tunable in simulink
        IsEmbedded      = false;                % Does the parameter exist on the embedded controller
        IsHost          = true;                 % Does the paramter exist on the host machine
        IsPersistant    = true;                 % Is the parameter persistent or transient
        
    end
end
