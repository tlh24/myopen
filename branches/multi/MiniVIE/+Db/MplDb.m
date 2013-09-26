classdef (Sealed) MplDb < Db.MiniVieDb
    % Singleton instance of database of MPL parameters.  This class may not
    % be sub-classed.
    %
    % Usage:
    %
    %     obj = MplDb.getInstance;  %DB initializes on creation
    %
    %     val = obj.get_value('CPC_data_gain');
    %     disp(val)
    %
    %
    % For editing and compiling RTW simulink models, certain parameters
    % must be defined in the base workspace.  To do so:
    %     obj.assign_simulink_params();
    %
    %
    % Log:
    % 30-Jul-2012 Armiger: Created
    
    methods
        function initialize(obj)
            % initialize the database and create parameters
            
            initialize@Db.MiniVieDb(obj);
            
            obj.add_parameter('CPC_data_gain',single(20/512));
            obj.add_parameter('CPC_invalid_data_threshold',single(10000));
            obj.add_parameter('NFU_output_to_MPL',single(0));
            obj.add_parameter('NFU_run_algorithm',single(1));
            
            fprintf('[%s] Defining Conventional Control Parameters...',mfilename);
            setup_CC_parameters(obj);
            fprintf('Done\n');
            fprintf('[%s] Defining Pattern Recognition Parameters...',mfilename);
            setup_PR_parameters(obj);
            fprintf('Done\n');
            fprintf('[%s] Defining Signal Analysis Parameters...',mfilename);
            setup_SA_parameters(obj);
            fprintf('Done\n');
            fprintf('[%s] Defining Simulink Bus Parameters...',mfilename);
            %setup_Bus_parameters(obj);
            %fprintf('Done\n');
            fprintf('DISABLED\n');
            
            
        end
    end
    methods (Access = private)
        function setup_CC_parameters(obj)
            % setup conventional control parameters on a per actuator basis
            
            % Actuator Parameters:
            % global sysConsts;
            sysConsts.ACTUATOR_NAMES = { ...
                'SHOULDERFE', ...
                'SHOULDERAA', ...
                'HUMERAL', ...
                'ELBOW', ...
                'WRISTROT', ...
                'WRISTFE', ...
                'WRISTDEV', ...
                'HAND' };
            
            ccDefaults = {
                '_controlStrategy',                         single(1)  % 1 = link Velocity, 2 = link position, 3 = motor vel, 4 = motor pos, 5 = torque, 6 = current, 7 = impedance
                '_outputEnabledForRpl',                     single(0)
                '_outputEnabledForVpl',                     single(1)
                '_controlMode',                             single(2)  % 1 = Single Analog, 2 = Dual Analog
                '_positiveOutputLimit',                     single(1)
                '_negativeOutputLimit',                     single(-1)
                '_outputMagnitude',                         single(0) % magnitude for manual override
                '_manualOverride',                          single(0)
                '_singleAnalogInputGain',                   single(1)
                '_singleAnalogLowThreshold',                single(0.1)
                '_singleAnalogHighThreshold',               single(0.8)
                '_singleAnalogRiseTime',                    single(0.15)
                '_singleAnalogOutputGain',                  single(0)
                '_singleAnalogOutputDirection',             single(1) % -1 / 1
                '_singleAnalogTypeSelect',                  single(2) % 1 = Double Threshold; 2 = Rate Sensitive
                '_dualSiteTypeSelect',                      single(2) % 1 = Maximum 2 = differential 3 = first come first serve
                '_dualSiteChAThreshold',                    single(0.1)
                '_dualSiteChAGain',                         single(1)
                '_dualSiteChBGain',                         single(1)
                '_dualSiteChBThreshold',                    single(0.1)
                '_dualSiteOutputDirection',                 single(1) % -1 / 1
                '_dualSiteOutputGain',                      single(0)
                '_dualSiteModeSelectEnabled',               single(0)
                '_dualSiteModeSelectIsMaster',              single(1)
                '_dualSiteModeSelectIsRisingEdgeTriggered', single(1)};
            
            
            for iActuator = 1:length(sysConsts.ACTUATOR_NAMES)
                
                % Extract actautor prefix
                aName = sysConsts.ACTUATOR_NAMES{iActuator};
                
                % concatenate to all parameter suffixes
                paramNames = cellfun(@(suffix) strcat(aName,suffix),ccDefaults(:,1),'UniformOutput',false);
                
                % define a cell array of parameters
                obj.add_tunable_parameter(paramNames,ccDefaults(:,2));
                
            end
            
        end
        function setup_PR_parameters(obj)
            % Define Pattern Rec Sys Parameters here
            % global sysConsts
            
            numChannels = 32;%sysConsts.NUM_ANALOG_CHANNELS;
            
            % PR Stuff
            sysConsts.NUM_NULL_CHANNELS = 1;
            sysConsts.NUM_ANALOG_CHANNELS = 32;
            sysConsts.NUM_DIGITAL_CHANNELS = 8;
            sysConsts.NUM_VIRTUAL_CHANNELS = 32;
            sysConsts.NUM_PR_FEATURES = 4;
            sysConsts.NUM_PARALLEL_CLASSIFIERS = 6;
            sysConsts.PR_GRASP_CHANNELS = [16:25 26:31];  % These virtual channels are assigned to grasps, which get handled differently
            sysConsts.PR_GRASP_OPEN = 15; % This virtual channel is the generic open class
            
            % setup group 'signalProcessingGlobalConfigType'
            obj.add_tunable_parameter('PR_ecgRemovalGain',0);
            obj.add_tunable_parameter('PR_ecgRemovalWindowSize',150);
            obj.add_non_tunable_parameter('PR_binSize',20);
            obj.add_non_tunable_parameter('PR_windowSize',150);
            obj.add_tunable_parameter('PR_nVotes',single(1));
            
            % setup group 'patternRecognitionParams'
            defaultPR_W = zeros(sysConsts.NUM_PR_FEATURES*numChannels,sysConsts.NUM_VIRTUAL_CHANNELS);
            defaultPR_C = zeros(1,sysConsts.NUM_VIRTUAL_CHANNELS);
            defaultPR_nVotes = 1;
            
            obj.add_tunable_parameter({'PR_Wg'; 'PR_W2'; 'PR_W3'; 'PR_W4'; 'PR_W5'; 'PR_W6'},single(defaultPR_W));
            obj.add_tunable_parameter({'PR_Cg'; 'PR_C2'; 'PR_C3'; 'PR_C4'; 'PR_C5'; 'PR_C6'},single(defaultPR_C));
            obj.add_tunable_parameter({'PR_nVotes'; 'PR_nVotes2'; 'PR_nVotes3'; 'PR_nVotes4'; 'PR_nVotes5'; 'PR_nVotes6'},single(defaultPR_nVotes));
            
            % These params are bit masks for decoding which channels are allocated to
            % which Classifier
            paramSize = ones(1,numChannels);
            obj.add_tunable_parameter('PR_channelMask',single(1*paramSize)); % enabled
            obj.add_tunable_parameter({'PR_channelMask2'; 'PR_channelMask3'; 'PR_channelMask4'; 'PR_channelMask5'; 'PR_channelMask6'},single(0*paramSize)); % disabled
            
            % setup group 'patternRecognitionMisc'
            
            obj.add_non_tunable_parameter('PR_nChannels',         numChannels);
            obj.add_non_tunable_parameter('PR_sampleFrequency',   1000);
            obj.add_non_tunable_parameter('PR_nClasses',          sysConsts.NUM_VIRTUAL_CHANNELS);
            obj.add_non_tunable_parameter('PR_graspChannels',     sysConsts.PR_GRASP_CHANNELS);
            obj.add_non_tunable_parameter('PR_graspOpen',         sysConsts.PR_GRASP_OPEN);
            obj.add_non_tunable_parameter('PR_nFeatures',         sysConsts.NUM_PR_FEATURES);
            
            obj.add_tunable_parameter('PR_classEnum',            (1:sysConsts.NUM_VIRTUAL_CHANNELS)');
            obj.add_tunable_parameter('PR_nTrainSeconds',        3);
            obj.add_tunable_parameter('PR_scalingFactor',        repmat([0 0 8 0],sysConsts.NUM_VIRTUAL_CHANNELS,1));
            obj.add_tunable_parameter('PR_isNewFeatExtract',     1);
            
            % Note PR_graspGains allows tuning of speeds for each 'close' grasp and a single
            % 'open' speed
            obj.add_tunable_parameter('PR_graspGains',           single(ones(length(sysConsts.PR_GRASP_OPEN)+length(sysConsts.PR_GRASP_CHANNELS),1)));
        end
        function setup_SA_parameters(obj)
            % Define tunable Signal Analysis Parameters for the VIE
            
            % Get 'globals'
            % global sysConsts
            % PR Stuff
            sysConsts.NUM_NULL_CHANNELS = 1;
            sysConsts.NUM_ANALOG_CHANNELS = 16;
            sysConsts.NUM_DIGITAL_CHANNELS = 8;
            sysConsts.NUM_VIRTUAL_CHANNELS = 32;
            sysConsts.NUM_PR_FEATURES = 4;
            sysConsts.NUM_PARALLEL_CLASSIFIERS = 6;
            sysConsts.PR_GRASP_CHANNELS = [16:25 26:31];  % These virtual channels are assigned to grasps, which get handled differently
            sysConsts.PR_GRASP_OPEN = 15; % This virtual channel is the generic open class
            
            sysConsts.ACTUATOR_NAMES = { ...
                'SHOULDERFE', ...
                'SHOULDERAA', ...
                'HUMERAL', ...
                'ELBOW', ...
                'WRISTROT', ...
                'WRISTFE', ...
                'WRISTDEV', ...
                'HAND' };
            
            % Gte bin size from within database
            %PR_binSize = evalin('base','PR_binSize');
            PR_binSize = obj.get_value('PR_binSize');
            
            % Signal Analysis Parameters
            obj.add_tunable_parameter('SA_signalBiasValue',single(1.2*ones(sysConsts.NUM_ANALOG_CHANNELS,PR_binSize)));
            obj.add_tunable_parameter('SA_smoothingWindowSize',single(25*ones(1,sysConsts.NUM_ANALOG_CHANNELS)));
            obj.add_tunable_parameter('SA_signalRouting',single(zeros(1,3*length(sysConsts.ACTUATOR_NAMES))));
            
            % define grasp parameters-- a subset of SA params
            % setup_grasp_parameters();
            obj.add_tunable_parameter('SA_graspOverride',single(0));
            obj.add_tunable_parameter('SA_graspType',single(1));  % Manual Grasp Action Bus Command when in graspOverride mode
        end
        function setup_Bus_parameters(obj)
            % Create GraspType Var
            GraspType.Enable = 0;
            GraspType.ControlStrategy = 3;
            GraspType.Magnitude = 0;
            GraspType.Stiffness = 0;
            GraspType.Damping = 0;
            GraspType.Inertia = 0;
            GraspType.GraspType = 1;
            
            expectedFields = {...
                'Enable'; ...
                'ControlStrategy'; ...
                'Magnitude'; ...
                'Stiffness'; ...
                'Damping'; ...
                'Inertia'; ...
                'GraspType'; ...
                };
            badFields = ~strcmp(expectedFields,fieldnames(GraspType));
            if any(badFields)
                error('Bad Field Structure for SA_Action_GraspType');
            else
                GraspType.Enable = 1;   % Grasps should be enabled by default for use with pattern rec
                obj.add_tunable_parameter('SA_Action_GraspType',single(struct2array(GraspType)))
            end
            
            obj.add_non_tunable_parameter('GraspAction',define_simulink_bus_grasp);
            
        end
    end
    methods (Access = private)
        function obj = MplDb
            % private constructor forces user to create using getInstance
        end
    end
    methods (Static)
        function singleObj = getInstance
            persistent localObj
            if isempty(localObj) || ~isvalid(localObj)
                fprintf('[%s] Calling constructor\n',mfilename);
                localObj = Db.MplDb;
                localObj.initialize();  % object initializes on startup
            else
                fprintf('[%s] Returning existing object\n',mfilename);
            end
            singleObj = localObj;
        end
        function obj = Default
            
            obj = Db.MplDb.getInstance;
            %obj.initialize
            
            val = obj.get_value('CPC_data_gain');
            disp(val)
            
        end
    end
end


function GraspAction = define_simulink_bus_grasp

% Bus object: GraspAction 
%clear elems;
elems(1) = Simulink.BusElement;
elems(1).Name = 'Enable';
elems(1).Dimensions = 1;
elems(1).DimensionsMode = 'Fixed';
elems(1).DataType = 'boolean';
elems(1).SampleTime = -1;
elems(1).Complexity = 'real';
elems(1).SamplingMode = 'Sample based';
elems(1).Min = [];
elems(1).Max = [];

elems(2) = Simulink.BusElement;
elems(2).Name = 'ControlStrategy';
elems(2).Dimensions = 1;
elems(2).DimensionsMode = 'Fixed';
elems(2).DataType = 'int8';
elems(2).SampleTime = -1;
elems(2).Complexity = 'real';
elems(2).SamplingMode = 'Sample based';
elems(2).Min = [];
elems(2).Max = [];

elems(3) = Simulink.BusElement;
elems(3).Name = 'Magnitude';
elems(3).Dimensions = 1;
elems(3).DimensionsMode = 'Fixed';
elems(3).DataType = 'single';
elems(3).SampleTime = -1;
elems(3).Complexity = 'real';
elems(3).SamplingMode = 'Sample based';
elems(3).Min = [];
elems(3).Max = [];

elems(4) = Simulink.BusElement;
elems(4).Name = 'Stiffness';
elems(4).Dimensions = 1;
elems(4).DimensionsMode = 'Fixed';
elems(4).DataType = 'single';
elems(4).SampleTime = -1;
elems(4).Complexity = 'real';
elems(4).SamplingMode = 'Sample based';
elems(4).Min = [];
elems(4).Max = [];

elems(5) = Simulink.BusElement;
elems(5).Name = 'Damping';
elems(5).Dimensions = 1;
elems(5).DimensionsMode = 'Fixed';
elems(5).DataType = 'single';
elems(5).SampleTime = -1;
elems(5).Complexity = 'real';
elems(5).SamplingMode = 'Sample based';
elems(5).Min = [];
elems(5).Max = [];

elems(6) = Simulink.BusElement;
elems(6).Name = 'Inertia';
elems(6).Dimensions = 1;
elems(6).DimensionsMode = 'Fixed';
elems(6).DataType = 'single';
elems(6).SampleTime = -1;
elems(6).Complexity = 'real';
elems(6).SamplingMode = 'Sample based';
elems(6).Min = [];
elems(6).Max = [];

elems(7) = Simulink.BusElement;
elems(7).Name = 'GraspType';
elems(7).Dimensions = 1;
elems(7).DimensionsMode = 'Fixed';
elems(7).DataType = 'int8';
elems(7).SampleTime = -1;
elems(7).Complexity = 'real';
elems(7).SamplingMode = 'Sample based';
elems(7).Min = [];
elems(7).Max = [];

GraspAction = Simulink.Bus;
GraspAction.HeaderFile = '';
GraspAction.Description = sprintf('');
GraspAction.DataScope = 'Auto';
GraspAction.Alignment = -1;
GraspAction.Elements = elems;
%assignin('base', 'GraspAction', GraspAction)

end


