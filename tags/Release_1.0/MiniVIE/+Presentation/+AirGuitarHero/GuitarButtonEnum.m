classdef(Enumeration) GuitarButtonEnum < int32
    % Enumeration for connector pin outs on serial cable
    %
    % 01-Sept-2010 Armiger: Created
    enumeration
        Ground(1)
        GreenButton(9)
        RedButton(5)
        YellowButton(4)
        BlueButton(3)
        OrangeButton(2)
        Strum(8)
    end
    methods (Static = true)
        function enumName = getStateName(enumVal) %#ok<INUSD>
            % Using this to return the Enum as a string
            enumName = strtrim(evalc('disp(enumVal)'));
        end
    end
end