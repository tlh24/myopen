function [trainedClassifier, validationAccuracy] = trainClassifier(datasetTable)
% Split matrices in the input table into vectors
datasetTable.training_1 = datasetTable.training(:,1);
datasetTable.training_2 = datasetTable.training(:,2);
datasetTable.training_3 = datasetTable.training(:,3);
datasetTable.training_4 = datasetTable.training(:,4);
datasetTable.training_5 = datasetTable.training(:,5);
datasetTable.training_6 = datasetTable.training(:,6);
datasetTable.training_7 = datasetTable.training(:,7);
datasetTable.training_8 = datasetTable.training(:,8);
datasetTable.training_9 = datasetTable.training(:,9);
datasetTable.training_10 = datasetTable.training(:,10);
datasetTable.training_11 = datasetTable.training(:,11);
datasetTable.training_12 = datasetTable.training(:,12);
datasetTable.training_13 = datasetTable.training(:,13);
datasetTable.training_14 = datasetTable.training(:,14);
datasetTable.training_15 = datasetTable.training(:,15);
datasetTable.training_16 = datasetTable.training(:,16);
datasetTable.training_17 = datasetTable.training(:,17);
datasetTable.training_18 = datasetTable.training(:,18);
datasetTable.training_19 = datasetTable.training(:,19);
datasetTable.training_20 = datasetTable.training(:,20);
datasetTable.training_21 = datasetTable.training(:,21);
datasetTable.training_22 = datasetTable.training(:,22);
datasetTable.training_23 = datasetTable.training(:,23);
datasetTable.training_24 = datasetTable.training(:,24);
datasetTable.training_25 = datasetTable.training(:,25);
datasetTable.training_26 = datasetTable.training(:,26);
datasetTable.training_27 = datasetTable.training(:,27);
datasetTable.training_28 = datasetTable.training(:,28);
datasetTable.training_29 = datasetTable.training(:,29);
datasetTable.training_30 = datasetTable.training(:,30);
datasetTable.training_31 = datasetTable.training(:,31);
datasetTable.training_32 = datasetTable.training(:,32);
datasetTable.training = [];
% Extract predictors and response
predictorNames = {'training_1', 'training_2', 'training_3', 'training_4', 'training_5', 'training_6', 'training_7', 'training_8', 'training_9', 'training_10', 'training_11', 'training_12', 'training_13', 'training_14', 'training_15', 'training_16', 'training_17', 'training_18', 'training_19', 'training_20', 'training_21', 'training_22', 'training_23', 'training_24', 'training_25', 'training_26', 'training_27', 'training_28', 'training_29', 'training_30', 'training_31', 'training_32'};
predictors = datasetTable(:,predictorNames);
predictors = table2array(varfun(@double, predictors));
response = datasetTable.labels;
% Train a classifier
template = templateSVM('KernelFunction', 'linear', 'PolynomialOrder', [], 'KernelScale', 'auto', 'BoxConstraint', 1, 'Standardize', 1);
trainedClassifier = fitcecoc(predictors, response, 'Learners', template, 'Coding', 'onevsone', 'PredictorNames', {'training_1' 'training_2' 'training_3' 'training_4' 'training_5' 'training_6' 'training_7' 'training_8' 'training_9' 'training_10' 'training_11' 'training_12' 'training_13' 'training_14' 'training_15' 'training_16' 'training_17' 'training_18' 'training_19' 'training_20' 'training_21' 'training_22' 'training_23' 'training_24' 'training_25' 'training_26' 'training_27' 'training_28' 'training_29' 'training_30' 'training_31' 'training_32'}, 'ResponseName', 'labels', 'ClassNames', {'Hand Open' 'No Movement' 'Tip Grasp' 'Wrist Extend Out' 'Wrist Flex In' 'Wrist Rotate In' 'Wrist Rotate Out'});

% Perform cross-validation
partitionedModel = crossval(trainedClassifier, 'KFold', 5);

% Compute validation accuracy
validationAccuracy = 1 - kfoldLoss(partitionedModel, 'LossFun', 'ClassifError');

%% Uncomment this section to compute validation predictions and scores:
% % Compute validation predictions and scores
% [validationPredictions, validationScores] = kfoldPredict(partitionedModel);
