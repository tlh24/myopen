function structClassInfo = standardClasses(cellClasses)
% map class names to joint Id's and directions
% Returns a structure of form:
%   s =
%       IsGrasp: {0/1}
%       GraspId: {[] / Controls.GraspType}
%       JointId: {1:8}
%     Direction: {-1}
%
% Examples:
%
% s = standardClasses('Elbow Flexion')
% s =
%       IsGrasp: 0
%       GraspId: []
%       JointId: 4
%     Direction: 1
%
% s = standardClasses('Hand Open')
% s =
%       IsGrasp: 1
%       GraspId: []
%       JointId: 8
%     Direction: -1
%
% s = standardClasses('Cylindrical Grasp')
% s =
%       IsGrasp: 1
%       GraspId: [1x1 Controls.GraspTypes]
%       JointId: 8
%     Direction: 1
%


% 27JUN2014 Armiger: Verified for MPL
%
% Shoulder Flexion (+) / Shoulder Extension (-)
% Shoulder Adduction (+) / Shoulder Abduction (-)
% Humeral Internal Rotation (+) / Humeral External Rotation  (-)
% Elbow Flexion (+) / Elbow Extension (-)
% Wrist Pronation (+) / Wrist Supination (-)
% Ulnar Deviation (+) / Radial Deviation (-)
% Wrist Flexion (+) / Wrist Extension (-)


% if a single string, convert to a cell array
if ischar(cellClasses)
    cellClasses = {cellClasses};
end

numClasses = length(cellClasses);

structClassInfo = repmat( struct('IsGrasp',[],'GraspId',[],'JointId',[],'Direction',[]) , 1, numClasses);

for iClass = 1:numClasses
    
    thisClass = cellClasses{iClass};
    
    s.IsGrasp = false;
    s.GraspId = [];
    
    switch thisClass
        case 'Shoulder Flexion'
            s.JointId = mpl_upper_arm_enum.SHOULDER_FE;
            s.Direction = +1;
        case 'Shoulder Extension'
            s.JointId = mpl_upper_arm_enum.SHOULDER_FE;
            s.Direction = -1;
        case 'Shoulder Adduction'
            s.JointId = mpl_upper_arm_enum.SHOULDER_ADAB;
            s.Direction = +1;
        case 'Shoulder Abduction'
            s.JointId = mpl_upper_arm_enum.SHOULDER_ADAB;
            s.Direction = -1;
        case 'Humeral Internal Rotation'
            s.JointId = mpl_upper_arm_enum.HUMERAL_ROT;
            s.Direction = +1;
        case'Humeral External Rotation'
            s.JointId = mpl_upper_arm_enum.HUMERAL_ROT;
            s.Direction = -1;
        case {'Elbow Flexion' 'Elbow Up'}
            s.JointId = mpl_upper_arm_enum.ELBOW;
            s.Direction = +1;
        case {'Elbow Extension' 'Elbow Down'}
            s.JointId = mpl_upper_arm_enum.ELBOW;
            s.Direction = -1;
        case {'Pronate' 'Wrist Rotate In' 'Pronation'}
            s.JointId = mpl_upper_arm_enum.WRIST_ROT;
            s.Direction = +1;
        case {'Supinate' 'Wrist Rotate Out' 'Supination'}
            s.JointId = mpl_upper_arm_enum.WRIST_ROT;
            s.Direction = -1;
        case {'Down','Hand Down', 'Ulnar Deviation','Wrist Adduction'}
            s.JointId = mpl_upper_arm_enum.WRIST_DEV;
            s.Direction = +1;
        case {'Up', 'Hand Up', 'Radial Deviation','Wrist Abduction'}
            s.JointId = mpl_upper_arm_enum.WRIST_DEV;
            s.Direction = -1;
        case {'Left' 'Wrist Flex' 'Wrist Flex In'}
            s.JointId = mpl_upper_arm_enum.WRIST_FE;
            s.Direction = +1;
        case {'Right' 'Wrist Extend' 'Wrist Extend Out'}
            s.JointId = mpl_upper_arm_enum.WRIST_FE;
            s.Direction = -1;
        case {'No Movement','Rest'}
            s.JointId = [];
            s.Direction = 0;
        otherwise
            % check standard grasps
            
            % get names
            [enumGrasp, cellGrasps] = enumeration('Controls.GraspTypes');
            cellGrasps = cellfun(@(s)strcat(s,' Grasp'),cellGrasps,'UniformOutput',false);
            
            % Determine grasp
            if strcmpi(thisClass,'Hand Open')
                % Hand Open
                s.JointId = 8;  % Grasp
                s.Direction = -1;
                s.IsGrasp = true;
                s.GraspId = [];  % unknown which grasp this is opening from
                
            elseif any(strcmpi(thisClass,cellGrasps))
                % Hand Close + Grasp Pattern
                s.JointId = 8;  % Grasp
                s.Direction = +1;
                s.IsGrasp = true;
                s.GraspId = enumGrasp( strcmp(thisClass,cellGrasps) );
            else
                % Unknown class
                warning('Unmatched Class: %s\n',thisClass)
                s = [];
            end
    end
    
    if ~isempty(s)
        structClassInfo(iClass) = s;
    end
    
end
