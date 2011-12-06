%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LDA	Perform a linear discriminant analysis
%
%	Inputs: TrainData,TestData 			- Train,test data arranged in columns
%			TrainClass,TestClass 		- vectors of class membership
%	Outputs:PeTrain,PeTest 				- probability of error
%			TrainPredict,TestPredict 	- predicted values
%			Wg,Cg 						- LDA weights
% (c) Kevin Englehart,1997
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [PeTrain,PeTest,TrainPredict,TestPredict,Wg,Cg] = lda(TrainData,TestData,TrainClass,TestClass);
clear C N K Mi Ptrain Ptest sc Ate Atr errtr Cinv Pphi AAte errte nete
N = size(TrainData,1);
Ptrain = size(TrainData,2);
Ptest = size(TestData,2);

sc = std(TrainData(:));
TrainData =  TrainData + sc./1000.*randn(size(TrainData));

K = max(TrainClass);

%%-- Compute the means and the pooled covariance matrix --%%
C = zeros(N,N);
for l = 1:K;
	idx = find(TrainClass==l);
	Mi(:,l) = mean(TrainData(:,idx)')';
	C = C + cov((TrainData(:,idx)-Mi(:,l)*ones(1,length(idx)))');
end

C = C./K;
Pphi = 1/K;
Cinv = inv(C);

%%-- Compute the LDA weights --%%
for i = 1:K
	Wg(:,i) = Cinv*Mi(:,i);
	Cg(:,i) = -1/2*Mi(:,i)'*Cinv*Mi(:,i) + log(Pphi)';
end

%%-- Compute the decision functions --%%
Atr = TrainData'*Wg + ones(Ptrain,1)*Cg;
Ate = TestData'*Wg + ones(Ptest,1)*Cg;

errtr = 0;
AAtr = compet(Atr');
errtr = errtr + sum(sum(abs(AAtr-ind2vec(TrainClass))))/2;
netr = errtr/Ptrain;
PeTrain = 1-netr;

TrainPredict = vec2ind(AAtr);

errte = 0;
AAte = compet(Ate');
errte = errte + sum(sum(abs(AAte-ind2vec(TestClass))))/2;
nete = errte/Ptest;
PeTest = 1-nete;

TestPredict = vec2ind(AAte);

return;
