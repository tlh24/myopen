%function setup_NFU_parameters()

define_tunable_parameter('CPC_data_gain',single(20/512));
define_tunable_parameter('CPC_invalid_data_threshold',single(10000));
define_tunable_parameter('NFU_output_to_MPL',single(0));
define_tunable_parameter('NFU_run_algorithm',single(1));
%end

hNfu = MPL.NfuUdp.getInstance;
status = hNfu.initialize();
if status < 0
    error('Failed to open NFU Comms.  Network connected? pnet(''closeall'')? ');
end

fprintf('Disabling NFU Algorithm, enabling CAN Streaming\n')
hNfu.setParam(NFU_run_algorithm,0)
hNfu.setParam(NFU_output_to_MPL,2)
