%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% TESTMLP   Perform multilayer perceptron network
%
%	Inputs: TestData 			        - Test data arranged in columns
%			TestClass 		            - vectors of class membership
%           net                         - neural network 
%			
% (c) Kevin Englehart,1997
% tailored for/by Blair Lock, 2004
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [TestPredictMLP,mlptest] = testmlp(TestData,TestClass,net);

Yte = sim(net,TestData);
TestPredictMLP = vec2ind(compet(Yte));
mlptest = length(find((TestPredictMLP-TestClass)~=0))/length(TestClass)*100;

return;
