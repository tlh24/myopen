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
                return
            end
        end
        function add_parameter(obj,name,value)
            
            x = struct(...
                'Name',name,...
                'Value',value,...
                'Dimensions',size(value),...
                'Description',name,...
                'IsSimulink',false,...
                'IsTunable',false,...
                'IsNfu',true,...
                'IsHost',true,...
                'IsPersistant',true);
            
            obj.db = [obj.db; x];
            
        end
        function define_tunable_parameter(obj,name,value)
            
            x = struct(...
                'Name',name,...
                'Value',value,...
                'Dimensions',size(value),...
                'Description',name,...
                'IsSimulink',true,...
                'IsTunable',true,...
                'IsNfu',true,...
                'IsHost',true,...
                'IsPersistant',true);
            
            obj.db = [obj.db; x];
            
        end
        function define_non_tunable_parameter(obj,name,value)
            
            x = struct(...
                'Name',name,...
                'Value',value,...
                'Dimensions',size(value),...
                'Description',name,...
                'IsSimulink',true,...
                'IsTunable',false,...
                'IsNfu',false,...
                'IsHost',false,...
                'IsPersistant',false);
            
            obj.db = [obj.db; x];
            
        end        
        function value = get_value(obj,name)
            
            % locate parameter.  Could be optimized in future
            param = get_parameter(obj,name);
            value = param.Value;
            
        end
        function set_value(obj,name,value)
            
            % locate parameter.  Could be optimized in future
            [param idx] = get_parameter(obj,name);
            
            assert(isequal(size(value),size(param.Value)),...
                '[%s] Failed to set parameter %s.  Size Mismatch',mfilename,param.Name);
            assert(isequal(class(value),class(param.Value)),...
                '[%s] Failed to set parameter %s.  Class Mismatch',mfilename,param.Name);
            param.Value = value;
            
            obj.db(idx) = param;
            
        end
        function [param idx] = get_parameter(obj,name)
            
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
            
            
            % get all db names
            idxSimulinkParams = cellfun(@(x) x.IsSimulink == true,obj.db);
            
            numSimulinkParams = sum(idxSimulinkParams);
            
            fprintf('[%s] %d Simulink Parameters Found in Database\n',mfilename,numSimulinkParams);
            
            % for all db entries
            for i = find(idxSimulinkParams)
                param = obj.db{i};
                if param.IsTunable
                    define_tunable_parameter(param.Name,param.Value,class(param.Value))
                else
                    define_non_tunable_parameter(param.Name,param.Value)
                end
            end
        end
    end
end
