%%

% load tactor assesment results

s = dir('JH_TH01_*.tactorAssessment');

numFiles = length(s);
fileDate = zeros(1,numFiles);
for i = 1:numFiles
    r = regexp(s(i).name,'\d{8}_\d{6}','match');
    fileDate(i) = datenum(r{1},'yyyymmdd_HHMMSS');
end

[out, id] = sort(fileDate);

%%
clc

for i = id
data = load(s(i).name,'-mat');

if size(data.results,1) == 1
    results = reshape(data.results,length(data.results)/2,[]);
else
    results = data.results;
end

pctCorrect = sum(results(:,1) == results(:,2)) / size(results,1) * 100;
if any(cell2mat(strfind(data.notes,'Pinky')))
    testType = 'FingerTest';
    testLabel = {'Unknown' 'Index' 'Little'};
    results = results + 1;
    results(results>1) = results(results>1)-2;
else
    testType = 'HardSoft';
    testLabel = {'Hard' 'Soft' 'None'};
end
%
testTime = fileDate(i);
%
fprintf('Time=%s; Type= %12s;User score=%6.1f%% correct. Total=%d\n',...
    datestr(testTime,'HH:MM PM'),testType,pctCorrect,size(results,1))

[confuseMat, label] = tactorConfusion(results,[1 2 3]);

fullCell = cell(size(confuseMat)+1);
fullCell(2:end,2:end) = num2cell(confuseMat);
fullCell(1,2:end) = testLabel;
fullCell(2:end,1) = testLabel;
disp(fullCell)
end
