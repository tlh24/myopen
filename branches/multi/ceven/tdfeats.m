
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% TDFEATS	Compute all time domain features
%			and the mean features [Hudgins 1991]
%			
% (c) Kevin Englehart, 1997
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [Features] = tdfeats(DataSet,Nframe,inc)

DEADZONE = 0.025;
SCALE_ZC = 15;
SCALE_MAV = 2;
MAV_SIZE = 100;
ruler = 1/inc;
rulersq = ruler^2;
lscale = inc/40;
tscale=(inc/40.0)*10;



Ntotal = size(DataSet,1);
Nsig = size(DataSet,2);
DataSet = DataSet - ones(Ntotal,1)*mean(DataSet);


for SigNum = 1:Nsig
	clear mav dmav turns zero_count len;
	for frame = 1:Nframe
		zero_count(frame) = 0;
		maxvalue(frame) = 0;
		len(frame) = 0;
		f_len(frame) = 0;
		mav(frame) = 0;
		dmav(frame) = 0;
		turns(frame) = 0;


		index = 1 + (frame-1)*inc;
		range = index:index+inc-1;
		mav(frame) = mean(abs(DataSet(range,SigNum)));
		flag1 = 1;
		flag2 = 1;
		for i = 1:inc-2;
			idx = index + i;
			fst = abs(DataSet(idx-1,SigNum));
			mid = abs(DataSet(idx,SigNum));
			lst = abs(DataSet(idx+1,SigNum));

% Compute Zero Crossings
			if ((DataSet(idx,SigNum)>=0 & DataSet(idx-1,SigNum)>=0) | (DataSet(idx,SigNum)<=0 & DataSet(idx-1,SigNum)<=0))
				flag1 = flag2;
			elseif ((mid<DEADZONE) & (fst<DEADZONE))
				flag1 = flag2;
			else
				flag1 = (-1)*flag2;
			end
			if (flag1~=flag2);
				zero_count(frame) = zero_count(frame) + 1;
				flag1 = flag2;
			end	
% Compute Turns (Slope Changes
			if((mid>fst & mid>lst) | (mid<fst & mid<lst))
% turns threshold of 15mV (i.e. 3uV noise)
				if((abs(mid)-abs(fst))>0.015 | (abs(mid)-abs(lst))>0.015)
							turns(frame)=turns(frame)+1;
				end
			end
% Compute Waveform Length
			len(frame) = len(frame) + sqrt(((fst-mid)/20.0)^2 + rulersq);
		end				
	end
   

% Scale the features to normalize for the neural network
	zero_count = (zero_count./SCALE_ZC)*40/inc;
% scaling based on 40 ms
	mav = mav/SCALE_MAV;
	len = (len-1)./lscale;
	turns = turns/tscale;
	sd = std(dmav(:));
	Features(:,SigNum) = [mav(:)' len(:)' zero_count(:)' turns(:)']';
end 

