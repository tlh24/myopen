% mmap memory.  works okay with the default (java) matlab mmap code. 

sort_out = fopen('/tmp/gtkclient_out.fifo', 'r'); 
sort_in = fopen('/tmp/gtkclient_in.fifo', 'w'); 

bmi5_out = fopen('/tmp/bmi5_out.fifo', 'r');
bmi5_in  = fopen('/tmp/bmi5_in.fifo',  'w');

nc = 96*5;
sr = 20;
n = 512;    % samples

binmap = memmapfile('/tmp/binned.mmap', ...
    'Format', {'uint16' [sr nc+1] 'x'}); 
binned = m.Data(1).x;

x = nan(n, nc);

eval(bmi5_cmd('mmap'));

t_prev = 0;

while true
    
	b5 = bmi5_mmap(b5);
    
    t_now = b5.time_o;
    t_next = round(t_now*sr)/sr;

    if (t_now > t_next) && t_next ~= t_prev
        fwrite(sort_in, t_next, 'double');  % ask for spikes
        fread(sort_out, 3, 'uchar');  % should inspect output for err?
        t_prev = t_next;
    end
    
    %binned = binmap.Data(1).x;
    xtmp = double(binned(1,1:nc)) ./ 128 .* SAMP_RATE; % single bin, in Hz
        
    % full matrix of rates
    xprev      = x;
    x(2:end,:) = xprev(1:end-1,:);
    x(1,:)     = xtmp;
    
    imagesc(x');
    xlabel('time');
    ylabel('neuron'); 
    colormap hot
    axis normal;
    
    drawnow

end

fclose(sort_in); 
fclose(sort_out); 

fclose(bmi5_in); 
fclose(bmi5_out); 
