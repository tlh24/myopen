function define_tunable_parameter(strVarName,numVarValue,dataType)
% Use this function to define tunable parameters in your model.  See also
% function 'define_non_tunable_parameter'
% Once defined you can reference your parameter's string name on RTW
% targets.
%
% Note this defines the var in the base workspace, which is global to simulink
%
% dataType can be optionally provided for custom simulink types
%
% 2008 Armiger: Initial Revision 
% 2009-June-19 Armiger: Updated to allow dataType input arg

myparam = Simulink.Parameter;
myparam.Value = numVarValue;
myparam.RTWInfo.StorageClass = 'SimulinkGlobal';
myparam.Description = strVarName;

if nargin >= 3
    % leave this property set to default ('auto') unless explicitly provided 
    myparam.DataType = dataType;
end

assignin('base',strVarName,myparam);
