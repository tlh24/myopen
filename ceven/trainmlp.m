%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% TRAINMLP	Train a multilayer perceptron network
%
%	Inputs: TrainData 			        - Train data arranged in columns
%			TrainClass 		            - vectors of class membership
%           ann                         - structure of network parameters
%           NumClasses                  - number of classes
%			
% (c) Kevin Englehart,1997
% tailored for/by Blair Lock, 2004
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [TrainPredictMLP,mlptrain,net] = trainmlp(TrainData,TrainClass,ann,NumClasses);

Nclass = NumClasses;
Nepoch = ann.NumEpoch;
goal = ann.trainGoal;
Nfirst = ann.NumFirstLayer;
BTF = ann.networkFcn;
BLF = ann.learningFcn;
PF = ann.performanceFcn;
firstLayer = ann.firLayerType;
outputLayer = ann.outLayerType;
%Create a feed-forward backpropagation network
net = newff(minmax(TrainData),[Nfirst Nclass],{firstLayer outputLayer},BTF,BLF,PF);
% minmax returns a #rowsX2 matrix of the min and max values of each row of TrainData
% first layer has 12 TANSIG neurons 
%....layers
% output layer has Nclass PURELIN neurons
% backprop network training function 'TRAINBFG'

T = full(ind2vec(TrainClass));
net.trainParam.epochs = Nepoch;
net.trainParam.goal = goal;
net.trainParam.show = NaN;
[net,tr]= train(net,TrainData,T);

Ytr = sim(net,TrainData);
TrainPredictMLP = vec2ind(compet(Ytr));
mlptrain = length(find((TrainPredictMLP-TrainClass)~=0))/length(TrainClass)*100;

return;
