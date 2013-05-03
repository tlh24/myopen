classdef(Enumeration) HandStateEnum < int32
  enumeration
    Platform(0)
    Point(1)
    Hook(2)
    Key(3)
    Opposition(4)
    CylinderTip(5)
    PointExtend(6)
  end
  methods (Static = true)
      function stateName = getStateName(stateId) %#ok<INUSD>
          % Using this to return the Enum as a string as in:
          % Controls.HandStateEnum.getStateName(Controls.HandStateEnum.Platform)
          stateName = strtrim(evalc('disp(stateId)'));
      end
  end
end