numTrials = 25;
stimLength = 1.5; %seconds

hNfu = MPL.NfuUdp.getInstance;
assert(hNfu.initialize() >=0 ,'NFU Init Failed');


coin = rand(numTrials,1) > 0.5;

coin = coin + 3;

% 3 = Pinky   4 = Pointer

userAnswer = nan(size(coin));
cLimit = 100;
for i = 1:length(coin)
    val = 100;
    id = coin(i);
    hNfu.tactorControl(id, 100, val, 100, cLimit, 0);
    pause(stimLength);
    val = 0;
    hNfu.tactorControl(id, 100, val, 100, 100, 0);
    
    reply = questdlg('Which finger detected?','finger','Pointer','Pinky','unknown','unknown');
    
    switch reply
        case 'Pointer'
            userAnswer(i) = 4;
        case 'Pinky'
            userAnswer(i) = 3;
        case 'unknown'
            userAnswer(i) = 0;
        otherwise
            break
    end
    
    pause(0.1)
    fprintf('Trial #%d of %d completed\n',i,length(coin))
end


%%
notes = {'3 = Pinky   4 = Pointer; '
    'first col == correct second col == user'};
results = [coin userAnswer];
fname = UiTools.ui_select_data_file('.tactorAssessment','JH_TH01_L_');
if ~isempty(fname)
    save(fname,'results','notes')
end
%%
pctCorrect = sum(results(:,1) == results(:,2)) / size(results,1) * 100;
fprintf('User scored %6.1f %% correct\n',pctCorrect)

