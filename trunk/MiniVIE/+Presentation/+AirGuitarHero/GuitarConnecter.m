classdef(Enumeration) GuitarConnecter < int32
    % Enumeration for connector wiring to guitar
    %
    % 01-Sept-2010 Armiger: Created
  enumeration
    Black(1)
    White(2)
    Gray(3)
    Purple(4)
    Blue(5)
    Yellow(8)
    Green(9)
  end
  methods (Static = true)
      function enumName = getStateName(enumVal) %#ok<INUSD>
          % Using this to return the Enum as a string
          enumName = strtrim(evalc('disp(enumVal)'));
      end
  end
end