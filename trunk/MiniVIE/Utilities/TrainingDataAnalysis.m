classdef TrainingDataAnalysis
    % Tools for loading, viewing and manipulating training data
    
    properties
    end
    
    methods (Static = true)
        function plot_all_training_emg_data
            % Plot all the emg data in the training file - unfiltered
            
            [fileName pathName] = uigetfile('JH_TH01_*.dat');
            load(fullfile(pathName,fileName),'-mat');
            
            chEmg = emgData(1:8,:,:);
            plot(reshape(chEmg,8,[])');
            title(fileName, 'Interpreter','None');
            
            
        end
    end
end