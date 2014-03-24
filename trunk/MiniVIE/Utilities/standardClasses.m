function s = standardClasses(thisClass)
% map class names to joint Id's and directions

s.IsGrasp = false;
s.GraspId = [];

switch thisClass
    case 'Shoulder Flexion'
        s.JointId = mpl_upper_arm_enum.SHOULDER_FE;
        s.Direction = +1;
    case 'Shoulder Extension'
        s.JointId = mpl_upper_arm_enum.SHOULDER_FE;
        s.Direction = -1;
    case 'Shoulder Abduction'
        s.JointId = mpl_upper_arm_enum.SHOULDER_ADAB;
        s.Direction = +1;
    case 'Shoulder Adduction'
        s.JointId = mpl_upper_arm_enum.SHOULDER_ADAB;
        s.Direction = -1;
    case 'Humeral External Rotation'
        s.JointId = mpl_upper_arm_enum.HUMERAL_ROT;
        s.Direction = +1;
    case'Humeral Internal Rotation'
        s.JointId = mpl_upper_arm_enum.HUMERAL_ROT;
        s.Direction = -1;
    case {'Elbow Flexion' 'Elbow Up'}
        s.JointId = mpl_upper_arm_enum.ELBOW;
        s.Direction = +1;
    case {'Elbow Extension' 'Elbow Down'}
        s.JointId = mpl_upper_arm_enum.ELBOW;
        s.Direction = -1;
    case {'Pronate' 'Wrist Rotate In'}
        s.JointId = mpl_upper_arm_enum.WRIST_ROT;
        s.Direction = +1;
    case {'Supinate' 'Wrist Rotate Out'}
        s.JointId = mpl_upper_arm_enum.WRIST_ROT;
        s.Direction = -1;
    case {'Left' 'Wrist Flex' 'Wrist Flex In'}
        s.JointId = mpl_upper_arm_enum.WRIST_FE;
        s.Direction = +1;
    case {'Right' 'Wrist Extend' 'Wrist Extend Out'}
        s.JointId = mpl_upper_arm_enum.WRIST_FE;
        s.Direction = -1;
    case {'Up', 'Hand Up', 'Radial Deviation','Wrist Abduction'}
        s.JointId = mpl_upper_arm_enum.WRIST_DEV;
        s.Direction = +1;
    case {'Down','Hand Down', 'Ulnar Deviation','Wrist Adduction'}
        s.JointId = mpl_upper_arm_enum.WRIST_DEV;
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
