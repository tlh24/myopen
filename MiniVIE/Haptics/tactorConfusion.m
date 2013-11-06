function [confuseMat, labelsToTest] = tactorConfusion(results,labelsToTest)

if nargin < 2
    labelsToTest = unique(results);
end

numOutputs = length(labelsToTest);

confuseMat = zeros(numOutputs);

trueLabel = results(:,1);
responseLabels = results(:,2);

for i = 1:numOutputs
    
    % Establish ground truth with the desired training labels
    isThisClass =  labelsToTest(i) == trueLabel;
    
    % Locate all the response class decisions for the desired
    % class
    thisResponseLabel = responseLabels(isThisClass);
    
    % Find all the actual class decisions and
    % misclassifications
    accumVal = accumarray(thisResponseLabel(:),1);
    confuseMat(i,1:length(accumVal)) = accumVal;
end
