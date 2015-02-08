classdef XpcAnalogIn < Inputs.SignalInput
    % Class for interfacing signal sources via the xpc
    % Requires the Xpc toolbox and the vie_xpc manager
    %
    % 01-Sept-2010 Armiger: Created
    properties
        hXpcManager = [];
    end
    methods
        function obj = XpcAnalogIn(hXpcManager)
            % Usage: obj = XpcAnalogIn(hXpcManager)
            obj.hXpcManager = hXpcManager;
        end
        function initialize(obj)
            
            obj.hXpcManager.connect();
            obj.hXpcManager.load();
            obj.hXpcManager.getAllSignalNames();
            obj.hXpcManager.tg.StopTime = Inf;
            start(obj.hXpcManager.tg);
            
            obj.setupScopes();
            
        end
        function setupScopes(obj)

            ScopeId = 1;
            
            hExistingScopes = obj.hXpcManager.tg.scopes();
            if ~isempty(hExistingScopes)
                removeAllScopes(obj)
            end
            ScopeType = 'Host';
            fprintf('Adding new xpc scope.  Type=%s Id=%d\n',ScopeType,ScopeId);
            newScope = addscope(obj.hXpcManager.tg,ScopeType,ScopeId);
            set(newScope,'TriggerMode','FreeRun')
            set(newScope,'NumSamples',obj.NumSamples);
            
            addSignals(obj,ScopeId);
        end
        function addSignals(obj,scopeId)
            newScope = obj.hXpcManager.tg.getscope(scopeId);
            % addsignals
            signalToken = 'PCI-6040E Analog/p';
            
            [signalIds, isMatched] = getSignalIds(signalToken);
                        
            newScope.addsignal(signalIds);
            fprintf('Adding Signals:\n')
            cellfun(@(x)fprintf('\t%s\n',x),obj.hXpcManager.sigNMs(isMatched))
            
            obj.ChannelIds = 1:sum(isMatched);
            
            fprintf('Starting Scope Id=%d\n',scopeId);
            start(newScope);
            
        end
        function removeAllScopes(obj)
            hExistingScopes = obj.hXpcManager.tg.scopes();
            for iScope = 1:length(hExistingScopes)
                thisScope = obj.hXpcManager.tg.getscope(iScope);
                if ~strcmpi(thisScope.Status,'Interrupted') && ~strcmpi(thisScope.Status,'Finished')
                    fprintf(2,'Stopping Scope # %d\n',iScope);
                    stop(thisScope);
                end
                fprintf(2,'Removing Scope # %d\n',iScope);
                obj.hXpcManager.tg.remscope(iScope);
            end
        end
        
        function data = getData(obj)
            scopeId = 1;
            
            if ~strcmpi(obj.hXpcManager.tg.Status,'running')
                fprintf('Starting xpc\n')
                obj.hXpcManager.tg.start();
            end
            
            thisScope = obj.hXpcManager.tg.getscope(scopeId);
            status = get(thisScope,'Status');
            if strcmp(status,'Finished') || ...
                    strcmp(status,'Interrupted')
                data = thisScope.Data; % get scope data
                start(thisScope); % Restart host scope
            else
                data = [];
            end
        end
        function isReady = isReady(obj)
            isReady = 1;
        end
        function data = getFilteredData(obj)
            data = [];
        end
    end
end