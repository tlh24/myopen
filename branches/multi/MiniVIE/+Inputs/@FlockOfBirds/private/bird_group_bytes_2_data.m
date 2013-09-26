function [pos_flock, ang_flock] = bird_group_bytes_2_data(bird_bytes,bird)
%
% convert bytes recieved by bird into postion and angle cordinates for a single bird sensor
%
% Input:
%   bird_bytes => bytes gathered in a single record
%   bird => bird settings (structure, see bird_setting_default.m)
%
% Output:
%   pos_flock => Columns X, Y, Z data in meters; Rows are by bird number
%   ang_flock => Columns angles X, Y, Z in radians; Rows are by bird number
%
% Written by Nathan Delson, UC San Diego: Updated 9/5/01

% convert to position and angles
pos_flock=[];ang_flock=[];
nrec_bytes = 13;   % bytes per record

    for ibird=1:bird.nbird
        byte_start = (ibird-1)*nrec_bytes + 1;    % start of nrec segment
        byte_end = byte_start + nrec_bytes - 1;   % stop of nrec segment
        % last byte of each data record contains bird number 
        % check that the correct bird is read in
        if ibird~=bird_bytes(byte_end)
            error('Bird Record in Group Does Not Correspond to Bird Number')
        end
        % set indivudal data record - without bird number
        bird_bytes_ibird = bird_bytes(byte_start:byte_end-1);
        [pos_flock(ibird,:), ang_flock(ibird,:)] = bird_bytes_2_data(bird_bytes_ibird,bird);
    end


