% Create new player folders.

for i = 1:20
    mkdir(num2str(i));
    cd(num2str(i));
    M = rand(2,24);
    save(strcat('M',num2str(i),'.mat'),'M');
    S = rand(24,24);
    save(strcat('S',num2str(i),'.mat'),'S');
    Feature_Matrix_Cumulative = [];
    save(strcat('Feature_Matrix_Cumulative.mat'),'Feature_Matrix_Cumulative');
    Provided_Cues_Cumulative = [];
    save(strcat('Provided_Cues_Cumulative.mat'),'Provided_Cues_Cumulative');
    last_saved_score = datestr(now);
    save(strcat('last_saved_score_',num2str(i),'.mat'),'last_saved_score');
    Recent_Scores = zeros(10,1);
    save(strcat('Recent_Scores_',num2str(i),'.mat'),'Recent_Scores');
    cd('../');
end
