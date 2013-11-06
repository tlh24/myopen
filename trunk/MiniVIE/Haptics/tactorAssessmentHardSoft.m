numTrials = 27;
%coin = floor((3*rand(numTrials,1))) + 1;

coin = [1*ones(1,numTrials/3) 2*ones(1,numTrials/3) 3*ones(1,numTrials/3)];
coin = coin(randperm(numTrials));

% hist(coin)
plot(coin)
%

% hard = 3; soft = 2; no object = 1;
userAnswer = nan(size(coin));
for i = 1:length(coin)
    switch coin(i)
        case 3
            reply = questdlg({'Present the HARD object','Which detected?'},'Hard / Soft','Hard','Soft','None','None');
        case 2
            reply = questdlg({'Present the SOFT object','Which detected?'},'Hard / Soft','Hard','Soft','None','None');
        case 1
            reply = questdlg({'Present NO object','Which detected?'},'Hard / Soft','Hard','Soft','None','None');
    end
    
    switch reply
        case 'Hard'
            userAnswer(i) = 3;
        case 'Soft'
            userAnswer(i) = 2;
        case 'None'
            userAnswer(i) = 1;
        otherwise
            break;
    end
    
    pause(0.1)
    fprintf('Trial #%d of %d completed\n',i,length(coin))
end


%%
notes = {'hard = 3; soft = 2; no object = 1;'
    'first col == correct second col == user'};
results = [coin(:) userAnswer(:)];
fname = UiTools.ui_select_data_file('.tactorAssessment','JH_TH01_L_');
if ~isempty(fname)
    save(fname,'results','notes')
end
%%
pctCorrect = sum(results(:,1) == results(:,2)) / size(results,1) * 100;
fprintf('User scored %6.1f %% correct\n',pctCorrect)

