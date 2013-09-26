function bird_change_value(bird)
%
% Change bird parameters

ON=1; OFF=0;

bird_port = bird.bird_port;

for ibird=1:bird.nbird  
    
    if bird.nbird>1        
        fwrite(bird_port,[bird.base_add+ibird]); % RS232 to FBB for each bird in flock
    end    
    
    
    % *************** setup measurment rate
    
    % output_value = uint16(bird.sample_freq*256);   % convert to 2 byte word - not used since les exact than round
    output_value = round(bird.sample_freq*256);   % convert to integer for bit operations
    % get Most Significant and Least Significant Bytes
    LSB = bitand(output_value,hex2dec('F'));  % remove MSB with AND operation
    MSB = bitshift(output_value,-8);          % remove LSB by shifting to right
    fwrite(bird_port,[80 7 LSB MSB]);     % Change Value p. 68
    

    % ********************  Filters on/off
    filter_status = 0;
    if bird.DC_Filter == ON
        filter_status = bitset(filter_status,1,0);  % turn bit 0 to 0
    else
        filter_status = bitset(filter_status,1,1);  % turn bit 0 to 1
    end
    
    if bird.AC_Wide_Filter == ON
        filter_status = bitset(filter_status,2,0);  % turn bit 1 to 0
    else
        filter_status = bitset(filter_status,2,1);  % turn bit 1 to 1
    end
    
    if bird.AC_Narrow_Filter == ON
        filter_status = bitset(filter_status,3,0);  % turn bit 2 to 0
    else
        filter_status = bitset(filter_status,3,1);  % turn bit 2 to 1
    end
    
    % Send filter_status byte to bird
    MSB = 0;
    fwrite(bird_port,[80 4 filter_status MSB])   % bird status
    
    % ************** Error Detect Mask
    switch bird.Error_Mask
    case 0
        fwrite(bird_port,[80 11 0]);     % Change Value p. 68
    case 1
        fwrite(bird_port,[80 11 1]);     % Change Value p. 68
    case 3
        fwrite(bird_port,[80 11 3]);     % Change Value p. 68
    otherwise
        error('Invalid Bird Error Mask')
    end


    % ************************* Sudden Output Change Lock    
    if bird.Sudden_Output_Change_Lock == ON
        fwrite(bird_port,[80 14 1]);     % Change Value p. 68
    else
        fwrite(bird_port,[80 14 0]);     % Change Value p. 68
    end


    
    % ******** setup hemisphere 
    %=> which directin data is being collected
    % table from Bird Manual; Hemisphere Command

    %ASCII Hex DECIMAL BINARY
    %Command Byte L 4C 76 01001100
    %Command Data HEMI_AXIS HEMI_SIGN
    
    
    switch lower(bird.hemisphere)  % HEMISPHERE Command (p. 87)
    case 'forward'
        fwrite(bird_port,[76]);     
        fwrite(bird_port,[0 0]);     
    case 'aft'
        fwrite(bird_port,[76]);     
        fwrite(bird_port,[0 1]);             
    case 'upper'
        fwrite(bird_port,[76]);     
        fwrite(bird_port,[12 1]);     
    case 'lower'
        fwrite(bird_port,[76]);     
        fwrite(bird_port,[12 0]);     
    case 'left'
        fwrite(bird_port,[76]);     
        fwrite(bird_port,[6 1]);     
    case 'right'
        fwrite(bird_port,[76]);     
        fwrite(bird_port,[6 0]);     
    otherwise
        error('Unknown Bird Hemisphere - Check Setup laryn')
    end
    
end  % end of loop over ibird







