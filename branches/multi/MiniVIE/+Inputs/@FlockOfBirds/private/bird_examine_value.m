function [bird] = bird_examine_value(bird)

% Varaible names

% Note calling this function takes a while, since each bird has 22 bytes which
% are read one at a time, with a pause between each read
% Add explanation


bird_port = bird.bird_port;      % to shorten notation

bparam_ar = [0:17 32 35 36 50];  % parameters numbers used by bird
nparam = length(bparam_ar);

for ibird=1:bird.nbird
    
    bird.examine(ibird).raw_bytes = NaN*ones(22,14); % Iniatilize array to Not-A-Number
    fwrite(bird_port,[bird.base_add+ibird]); % Set so next command goes to ibird, RS232 to FBB for each bird in flock

    for iparam=1:nparam    % sequential counter for paramters in Matlab (starts at 1)
        bparam_num = bparam_ar(iparam);   % Bird Paramater number as defined in Ascension Manual p. 69
        % Examine Values
        fwrite(bird_port,[79 bparam_num])  % bird status
        pause(.1);  % allow time to get bytes back
        out = fread(bird_port,bird_port.BytesAvailable,'uint8');
        bird.examine(ibird).raw_bytes(iparam,1:length(out)) = out';
        bird.examine(ibird).bparam_num(iparam) = bparam_num;
    end
    
    % Add interpertation to examine bytes (for some of the values)

    % Status bits (Parameter 0)
    bparam_num = 0;
    iparam = find(bparam_ar==bparam_num);
    bird_bytes = bird.examine(ibird).raw_bytes(iparam,:);
    value = bird_bytes(1) + bitshift(bird_bytes(2),8);
    bird.examine(ibird).status_bits = dec2bin(value,16);

    % Software Rev (Parameter 1)
    bparam_num = 1;
    iparam = find(bparam_ar==bparam_num);
    bird_bytes = bird.examine(ibird).raw_bytes(iparam,:);
    value = bird_bytes(1) + bitshift(bird_bytes(2),8);
    bird.examine(ibird).software_rev = [int2str(bird_bytes(2)) '.' int2str(bird_bytes(1))];

    % Filter Status (Parameter 4)
    bparam_num = 4;
    iparam = find(bparam_ar==bparam_num);
    bird_bytes = bird.examine(ibird).raw_bytes(iparam,:);
    if bitget(bird_bytes(1),1)==0
        bird.examine(ibird).DC_Filter = 'On';
    else
        bird.examine(ibird).DC_Filter = 'Off';
    end    
    if bitget(bird_bytes(1),2)==0
        bird.examine(ibird).AC_Wide_Filter = 'On';
    else
        bird.examine(ibird).AC_Wide_Filter = 'Off';
    end    
    if bitget(bird_bytes(1),3)==0
        bird.examine(ibird).AC_Narrow_Filter = 'On';
    else
        bird.examine(ibird).AC_Narrow_Filter = 'Off';
    end    

    % Measurment rate (Parameter 7)
    bparam_num = 7;
    iparam = find(bparam_ar==bparam_num);
    bird_bytes = bird.examine(ibird).raw_bytes(iparam,:);
    bird.examine(ibird).sample_freq = (bitshift(bird_bytes(2),8) + bird_bytes(1))/256;

    % Error Code (Parameter 10)
    bparam_num = 10;
    iparam = find(bparam_ar==bparam_num);
    bird_bytes = bird.examine(ibird).raw_bytes(iparam,:);
    bird.examine(ibird).Error_Code = bird_bytes(1);

    % Error Detect Mask (Parameter 11)
    bparam_num = 10;
    iparam = find(bparam_ar==bparam_num);
    bird_bytes = bird.examine(ibird).raw_bytes(iparam,:);
    bird.examine(ibird).Error_Detect_Mask = bird_bytes(1);
    
    % Sudden Output Change Lock (Parameter 14)
    bparam_num = 14;
    iparam = find(bparam_ar==bparam_num);
    bird_bytes = bird.examine(ibird).raw_bytes(iparam,:);
    if bird_bytes(1)==1
        bird.examine(ibird).Sudden_Output_Change_Lock = 'Lock On';
    else
        bird.examine(ibird).Sudden_Output_Change_Lock = 'Lock Off';
    end

end    
