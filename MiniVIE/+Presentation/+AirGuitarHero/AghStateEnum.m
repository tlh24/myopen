classdef(Enumeration) AghStateEnum < int32
    % 01-Sept-2010 Armiger: Created
    enumeration
        DisplayOnly(0)
        AutoPlay(1)
        Training(2)
        Playing(3)
    end
    methods (Static = true)
        function stateName = getStateName(stateId) %#ok<INUSD>
            % Using this to return the Enum as a string as in:
            % Controls.HandStateEnum.getStateName(Controls.HandStateEnum.Platform)
            stateName = strtrim(evalc('disp(stateId)'));
        end
    end
end