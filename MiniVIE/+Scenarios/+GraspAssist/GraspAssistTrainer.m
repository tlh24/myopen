classdef GraspAssistTrainer
    methods (Static = true)
        function gui
            % Launch the GUI from the GUIDE_GUIs folder
            try
                GraspAssistTrainer;
            catch ME
                if strcmp(ME.identifier,'MATLAB:UndefinedFunction')
                    error('GraspAssistTrainer GUI not found.  Ensure GUIDE_GUIs directory is on path');
                else
                    % Unknown exception
                    rethrow(ME)
                end
            end
        end
    end
end
