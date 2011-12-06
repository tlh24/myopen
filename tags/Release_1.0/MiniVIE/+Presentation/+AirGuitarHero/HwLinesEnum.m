classdef(Enumeration) HwLinesEnum < int32
    % Enumeration for digital hardware lines
    %
    % 01-Sept-2010 Armiger: Created
    enumeration
        GreenButton(1)
        RedButton(2)
        YellowButton(3)
        BlueButton(4)
        OrangeButton(5)
        Strum(8)
    end
    methods (Static = true)
        function enumName = getStateName(enumVal) %#ok<INUSD>
            % Using this to return the Enum as a string
            enumName = strtrim(evalc('disp(enumVal)'));
        end
    end
end