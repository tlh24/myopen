function [] = sndplay(x)
olddir = pwd ; 
cd('/home/tlh24/svn/myopen/testflt/'); 
fid = fopen('test.raw', 'w');
if(rows(x) > cols(x))
	x = x'; 
end
% should filter it. 
[B,A] = butter(4, 0.01, 'high'); 
x = filtfilt(B,A,x); 
mx = std(x) * 2; 
snd = (16e3 / mx) * [x ; x]; 
fwrite(fid, snd, 'integer*2');
fclose(fid); 
unix('./snd test.raw'); 
cd(olddir); 