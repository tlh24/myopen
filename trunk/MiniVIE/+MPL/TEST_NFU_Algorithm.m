% get handle to database
db = Db.MplDb.getInstance();

% create workspace variable for simulink (slow)
db.assign_simulink_params();



%NFU_run_algorithm = evalin('base','NFU_run_algorithm');
NFU_run_algorithm = db.get_parameter('NFU_run_algorithm');
obj.setParam(NFU_run_algorithm,0)  %% 0 implies algorithm runs on laptop
db.set_value('NFU_run_algorithm',single(0))  %% 0 implies algorithm runs on laptop

pause(0.2);

%NFU_output_to_MPL = evalin('base','NFU_output_to_MPL');
val = 2;
NFU_output_to_MPL = db.get_parameter('NFU_output_to_MPL');
obj.setParam(NFU_output_to_MPL,val)  %% 2 = NFU CAN to limb
db.set_value('NFU_output_to_MPL',single(val))  %% 2 = NFU CAN to limb
