classdef GraspTypes
    % See also GraspAngles.m
    % See also guiClassifierChannels
    %
    % Notes on grasps in the MiniVIE.  This class should be the definitive
    % list of grasps that exist in the MiniVIE.  Class names should get
    % grasp types from here and they are in fact checked in the Scenario
    % Base file against these names for matches. 
    %
    % Currently there are two visualizations that turn grasp types into
    % angles.  For the MPL, this is done by mapping the GraspType to a
    % grasp id in the vulcanX xml file.  Alternatively, without an xml file
    % the roc tables are created in MPL.RocTables.  
    %
    % For the MiniVIE the grasp angles should match these grasp types and
    % turn them into angles specific for the MiniVIE Hand to create the
    % desired movement.
    %
    % Usage: [enumGrasp, cellGrasps] = enumeration('Controls.GraspTypes')
    %
    % Direct call example:  Controls.GraspTypes.Relaxed
    % 
   enumeration
      Tip,Lateral,Tripod,Spherical,Power,Extension,Hook,Relaxed,...
          Index,Middle,Ring,Little,Thumb,Cylindrical,Point,Trigger
   end
end
