function [bird] = bird_group_mode(mode,bird)

TRUE=1;FALSE=0;ON=1;OFF=0;
X=1;Y=2;Z=3;


if mode==ON
    fwrite(bird.bird_port,[bird.base_add+1 80 35 ON]);
    bird.group_mode=ON;
elseif mode==OFF
    fwrite(bird.bird_port,[bird.base_add+1 80 35 OFF]);
    bird.group_mode=OFF;
else
    error('invalid bird group mode')
end
