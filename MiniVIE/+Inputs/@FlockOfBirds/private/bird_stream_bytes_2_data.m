function [pos_ar,ang_ar,s] = bird_stream_bytes_2_data(bird_bytes_ar,bird,s)
%
% converts a stream of bytes into postion and angle data
% stream can contain multiple bird sensors
% 
% Input:
%   bird_bytes_ar => byte arrays 
%   s.npoint => points in array
% s.nbytes_rec => bytes per record (one sensors' XYZ data); used in preprocessing
% s.nbytes_point =>  % bytes per point of all sensors gathered
% bird.nbird => number of birds
% 
% Written by Nathan Delson, UC San Diego: Updated 9/5/01

% CONSTANTS
TRUE=1;FALSE=0;ON=1;OFF=0;
X=1;Y=2;Z=3;

% loop converting bytes to pos and angle data
nbytes_rec = bird.nbytes_rec;
nbytes_point = bird.nbytes_point;

%npoint_ar = s.npoint;
nbytes_ar = length(bird_bytes_ar);
nbird = bird.nbird;

ipt = 0;  % index for point counter
byte_start = 1; % first byte in a record
good_pt = TRUE;
in_loop = TRUE;
bad_pt_ar=[];  % clear array that stores indexes to bad points


while in_loop
    for ibird=1:nbird
        byte_end = byte_start + nbytes_rec - 1;   % last byte in record
        if byte_end > nbytes_ar  % check if array still has enough points left in it
            in_loop = FALSE;
            good_pt = FALSE;    % last point is not complete
            break
        end
        % Use Bird record format to detect if bird record had errors
        % Either Bird Record in Group Does Not Correspond to Bird Number (bird)
        % Or Highest bit in first byte is not 1
        if (bitget(bird_bytes_ar(byte_start),8)~=1 | ibird~=bird_bytes_ar(byte_end))   
            disp(sprintf('Byte error found in byte: %i, bird no: %i',byte_start,ibird));
            good_pt = FALSE;  % current record is not a good point                                    
            % Find next good record
            byte_start_new = byte_start;
            while 1  % loop until a good point is found or end of array is reached
                if byte_start_new < (nbytes_ar-nbytes_rec+1)
                    byte_start_new = byte_start_new + 1;
                    if bitget(bird_bytes_ar(byte_start_new),8)==1  % found begning of a record
                        % check if record starts with first bird
                        byte_end_new = byte_start_new + nbytes_rec - 1; 
                        if bird_bytes_ar(byte_end_new)==1                                                
                            disp(sprintf('byte_start_new: %i',byte_start_new));
                            break
                        end
                    end
                else % end of array reached
                    in_loop = FALSE;
                    break
                end
            end
            byte_skip = byte_start_new - byte_start;
            % display bits skipped and display which bird is giving bad data
            
            break
        end      
        % calculate individual bird point data, and save in a temporrary variable
        bird_bytes_ibird = bird_bytes_ar(byte_start:byte_end-1); % do not inlcude bird number (last byte)
        [pos_bird(ibird,X:Z), ang_bird(ibird,X:Z)] = bird_bytes_2_data(bird_bytes_ibird,bird);                    
        byte_start = byte_end + 1;
    end % end of loop over ibird
    if good_pt
        ipt = ipt + 1;
        for ibird=1:nbird  % save data in array
            pos_ar(ipt,X:Z,ibird) = pos_bird(ibird,X:Z);         
            ang_ar(ipt,X:Z,ibird) = ang_bird(ibird,X:Z);
        end
        byte_start = byte_end + 1;
        if byte_start > nbytes_ar  % check if array still has enough points left in it
            in_loop = FALSE;
            break
        end            
    else % deal with bad point
        bad_pt_ar = [bad_pt_ar; ipt];  % store pointer
        if ipt>0   % there exists a good point already
            ipt = ipt + 1;
            % assign to last good point (alternativly could assign to NaN)
            for ibird=1:nbird
                pos_ar(ipt,X:Z,ibird) = pos_ar(ipt-1,X:Z,ibird);         
                ang_ar(ipt,X:Z,ibird) = ang_ar(ipt-1,X:Z,ibird);
            end
        end
        good_pt = TRUE;  % reset
        byte_start = byte_start_new; 
        % if first point is bad, do not record anything
    end % end of recording point
    
end % end of while loop over points
npoint = ipt;

% display bad points if they occur
if length(bad_pt_ar) > 0
    beep
    bad_pt_ar
end


