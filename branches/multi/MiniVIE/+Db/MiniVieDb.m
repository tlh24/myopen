classdef MiniVieDb < handle
    % Database class
    properties (SetAccess = private)
        
        db = [];
        
    end
    methods
        function initialize(obj)
            % initialize the database and create parameters
            
            if ~isempty(obj.db)
                error('[%s] db already initialized!',mfilename);
            end
        end
        function id = add_parameter(obj,name,value)
            % Default parameter add.  Adjust fields for record name and
            % value based on input
            %
            % Returns the index of the db parameter; (length of db now --
            % TODO need to get more sophisticated if we start deleting
            % records
            
            assert(ischar(name),'Name must be a string');
            
            newRecord = Db.Record;
            newRecord.Name = name;
            newRecord.Value = value;
            newRecord.Dimensions = size(value);
            newRecord.Description = name;
            newRecord.IsSimulink = false;
            newRecord.IsTunable = false;
            newRecord.IsEmbedded = true;
            newRecord.IsHost = true;
            newRecord.IsPersistant = true;
            
            obj.db = [obj.db; newRecord];
            id = length(obj.db);
            
        end
        function add_tunable_parameter(obj,name,value)
            % Tunable parameters are special simulink parameters that get
            % exposed in embedded code
            %
            % Example: WRIST_FE_OUTPUTGAIN

            if iscell(name) && iscell(value)
                % add group of parameters in pairs
                assert(length(name) == length(value),'Bad parameter pairs');
                
                for i = 1:length(name)
                    id = add_parameter(obj,name{i},value{i});
                
                    obj.db(id).IsSimulink = true;
                    obj.db(id).IsTunable = true;
                end
            elseif iscell(name) && ~iscell(value)
                % add group of parameters with the same default value
                for i = 1:length(name)
                    id = add_parameter(obj,name{i},value);
                
                    obj.db(id).IsSimulink = true;
                    obj.db(id).IsTunable = true;
                end
            else
                % add single parameter
                id = add_parameter(obj,name,value);
                
                obj.db(id).IsSimulink = true;
                obj.db(id).IsTunable = true;
            end
        end
        function add_non_tunable_parameter(obj,name,value)
            % Non-tunable parameters are referenced in a simulink model, but are not  
            % exposed in embedded code
            %
            % Example: NUM_ANALOG_CHANNELS

            id = add_parameter(obj,name,value);
            
            obj.db(id).IsSimulink = true;
            obj.db(id).IsTunable = false;

        end        
        function value = get_value(obj,name)
            
            % locate parameter.  Could be optimized in future
            param = get_parameter(obj,name);
            value = param.Value;
            
        end
        function set_value(obj,name,value)
            
            % locate parameter.  Could be optimized in future
            [param, idx] = get_parameter(obj,name);
            
            assert(isequal(size(value),size(param.Value)),...
                '[%s] Failed to set parameter %s.  Size Mismatch',mfilename,param.Name);
            assert(isequal(class(value),class(param.Value)),...
                '[%s] Failed to set parameter %s.  Class Mismatch',mfilename,param.Name);
            param.Value = value;
            
            obj.db(idx) = param;
            
        end
        function [param, idx] = get_parameter(obj,name)
            
            % get all db names
            %dbNames = cellfun(@(x) x.Name,obj.db,'UniformOutput',false);
            
            dbNames = {obj.db.Name};
            
            % match specified parameter
            idx = strcmp(name,dbNames);
            
            % verify single match
            if sum(idx) > 1
                error('[%s] Error in db, more than one parameter matched',mfilename);
            elseif sum(idx) < 1
                error('[%s] Parameter "%s" not found in db',mfilename,name);
            end
            
            % return db entry
            param = obj.db(idx);
            
        end
        function assign_simulink_params(obj)
            % function will define simulink paramters in the base workspace
            % which is required for real-time code development
            
            % Check the IsSimulink field for all the db param and define
            % them as tunable or non-tunable accordingly
            isSimulinkParam = cell2mat({obj.db.IsSimulink});
            
            numSimulinkParams = sum(isSimulinkParam);
            
            fprintf('[%s] %d Simulink Parameters Found in Database\n',mfilename,numSimulinkParams);
            
            % for all db entries
            for i = find(isSimulinkParam)
                param = obj.db(i);
                if param.IsTunable
                    define_tunable_parameter(param.Name,param.Value,class(param.Value))
                else
                    define_non_tunable_parameter(param.Name,param.Value)
                end
            end
        end
    end
end


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
end


function define_non_tunable_parameter(strVarName,numVarValue)
% Define a non tunable variable by simply assigning it into the base
% workspace.  
% Revised 25 May 2007 - RSA: added logic to detect a structure with
% specifically the .Value field defined.  This is done for backwards
% compatability of parameters that were originally tunable, but are no
% longer so.

keyword = '.Value';

if strfind(lower(strVarName),lower(keyword))
    baseName = strVarName(1:end-length(keyword));
    param.Value = numVarValue;
    assignin('base',baseName,param);
else
    assignin('base',strVarName,numVarValue);
end

end
