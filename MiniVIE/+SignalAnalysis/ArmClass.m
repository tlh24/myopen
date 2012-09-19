classdef ArmClass
    %ArmClass Enumeration of trainable classes
    
    enumeration
         Shoulder_Flexion,Shoulder_Extension,
         Shoulder_Abduction,Shoulder_Adduction,
         Humeral_External_Rotation,Humeral_Internal_Rotation,
         Elbow_Flexion,Elbow_Extension,
         Wrist_Pronation,Wrist_Supination,
         Wrist_Flexion,Wrist_Extension,
         Radial_Deviation,Ulnar_Deviation,
         Hand_Open,
         Index,Middle,Ring,Little,Thumb,
         Fingers_Spread,FingersTogether,
         Lateral_Grasp,      %% Grasp #1 per Action ICD RPP-600-ICD_-1401
         Cylindrical_Grasp,  %% Grasp #2 per Action ICD RPP-600-ICD_-1401
         Tip_Grasp,          %% Grasp #3 per Action ICD RPP-600-ICD_-1401
         Hook_Grasp,         %% Grasp #4 per Action ICD RPP-600-ICD_-1401
         Palmar_Grasp,       %% Grasp #5 per Action ICD RPP-600-ICD_-1401
         Spherical_Grasp,    %% Grasp #6 per Action ICD RPP-600-ICD_-1401
         Pointer_Grasp,      %% Grasp #7 per Action ICD RPP-600-ICD_-1401
         No_Movement
    end
    
end

