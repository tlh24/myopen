function bird_reset(bird) 
% bird_reset.m
%
% 
% Sends Auto-Configuration command 
% Resending AutoConfig to the master often clears the error (Bird Manual p.83)


% Send AutoConfig Command to Master Only (or to single bird)
pause(.3);   % 300 misec delay required before and after AutoConfig commands (p. 83)
if bird.nbird>1    
    fwrite(bird.bird_port,[bird.base_add+1 80 50 bird.nbird]);  % autoconfig for Master => bird 1
else   % single bird operation (no need for base address)
    fwrite(bird.bird_port,[80 50 bird.nbird]);  % autoconfig for Master => bird 1
end
pause(.3);   % 300 misec delay required after AutoConfig commands (p. 83)




