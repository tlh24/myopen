classdef(Enumeration) SerialCableEnum < int32
    % Enumeration for serial cable wiring
    %
    % 01-Sept-2010 Armiger: Created
  enumeration
    Black(1)
    Purple(2)
    Red(3)
    Orange(4)
    Yellow(5)
    Green(6)
    Blue(7)
    Gray(8)
    White(9)
  end
  methods (Static = true)
      function enumName = getStateName(enumVal) %#ok<INUSD>
          % Using this to return the Enum as a string
          enumName = strtrim(evalc('disp(enumVal)'));
      end
  end
end