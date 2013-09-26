clear all
clc

disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
disp('%');
disp('% Filename: f_SetupMacros.m');
disp('%');
disp('% Creates macros for the different grasp patterns that control ');
disp('% the Joints that make up the movement');
disp('%');
disp('% Author: Erik Scheme');
disp('% Date Created: May 10, 2006');
disp('%');
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
disp(' ');
disp('function Macros = f_SetupMacros(handles)');


% Key Grip
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

gripNum = 1;
numPositions = 17;
disp(' ');
disp(['Macros(' num2str(gripNum) ').Description = ''Key Grip'';']);
disp(['Macros(' num2str(gripNum) ').curPosition = 1;']);
disp(['Macros(' num2str(gripNum) ').numPositions = ' num2str(numPositions) ';']);
disp(' ');

GraspMacros(gripNum).Description = 'Key Grip';

for(i=numPositions:-1:1)
    load(['\\crusher\D_Drive\Judith\Hand Key Grips\key' num2str(i) '.mat']);
    for(j=6:20)
        Joint_Param{j,i} = KChain(j).Joint_Param;
    end
end

for(i=1:(numPositions-1))
   for(j=1:5)
        GraspMacros(gripNum).Joint_Diff(i).DOF(j,:) = [0 0 0 0 0 0];
   end
   for(j=6:20)
        GraspMacros(gripNum).Joint_Diff(i).DOF(j,:) = Joint_Param{j,numPositions+1-i} -  Joint_Param{j,numPositions-i};
   end
end

for(i=1:(numPositions-1))
    [iLink{i}, iXYZ{i}] = find(GraspMacros(gripNum).Joint_Diff(i).DOF ~=0);
    disp(['Macros(' num2str(gripNum) ').Increment(' num2str(i) ').iLink  = [' num2str(iLink{i}') '];']); 
    disp(['Macros(' num2str(gripNum) ').Increment(' num2str(i) ').iXYZ  = [' num2str(iXYZ{i}') '];']); 
    disp(['Macros(' num2str(gripNum) ').Increment(' num2str(i) ').iDir = [' num2str((GraspMacros(gripNum).Joint_Diff(i).DOF(find(GraspMacros(gripNum).Joint_Diff(i).DOF ~=0)))') '];']); 
end

% 3-Jaw Grip
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

gripNum = 2;
numPositions = 12;
disp(' ');
disp(['Macros(' num2str(gripNum) ').Description = ''3-Jaw Chuck Grip'';']);
disp(['Macros(' num2str(gripNum) ').curPosition = 1;']);
disp(['Macros(' num2str(gripNum) ').numPositions = ' num2str(numPositions) ';']);
disp(' ');

GraspMacros(gripNum).Description = '3-Jaw Grip';

for(i=numPositions:-1:1)
    load(['\\Crusher\D_Drive\Judith\3Jaw Grips\3Jaw' num2str(i) '.mat']);
    for(j=6:20)
        Joint_Param{j,i} = KChain(j).Joint_Param;
    end
end

for(i=1:(numPositions-1))
   for(j=1:5)
        GraspMacros(gripNum).Joint_Diff(i).DOF(j,:) = [0 0 0 0 0 0];
   end
   for(j=6:20)
        GraspMacros(gripNum).Joint_Diff(i).DOF(j,:) = Joint_Param{j,numPositions+1-i} -  Joint_Param{j,numPositions-i};
   end
end

for(i=1:(numPositions-1))
    [iLink{i}, iXYZ{i}] = find(GraspMacros(gripNum).Joint_Diff(i).DOF ~=0);
    disp(['Macros(' num2str(gripNum) ').Increment(' num2str(i) ').iLink  = [' num2str(iLink{i}') '];']); 
    disp(['Macros(' num2str(gripNum) ').Increment(' num2str(i) ').iXYZ  = [' num2str(iXYZ{i}') '];']); 
    disp(['Macros(' num2str(gripNum) ').Increment(' num2str(i) ').iDir = [' num2str((GraspMacros(gripNum).Joint_Diff(i).DOF(find(GraspMacros(gripNum).Joint_Diff(i).DOF ~=0)))') '];']); 
end


% Power Grip
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
gripNum = 3;
numPositions = 14;
disp(' ');
disp(['Macros(' num2str(gripNum) ').Description = ''Power Grip'';']);
disp(['Macros(' num2str(gripNum) ').curPosition = 1;']);
disp(['Macros(' num2str(gripNum) ').numPositions = ' num2str(numPositions) ';']);
disp(' ');

GraspMacros(gripNum).Description = 'Power Grip';


for(i=numPositions:-1:1)
    load(['\\Crusher\D_Drive\Judith\Power Grips\power' num2str(i) '.mat']);
    for(j=6:20)
        Joint_Param{j,i} = KChain(j).Joint_Param;
    end
end

for(i=1:(numPositions-1))
   for(j=1:5)
        GraspMacros(gripNum).Joint_Diff(i).DOF(j,:) = [0 0 0 0 0 0];
   end
   for(j=6:20)
        GraspMacros(gripNum).Joint_Diff(i).DOF(j,:) = Joint_Param{j,numPositions+1-i} -  Joint_Param{j,numPositions-i};
   end
end

for(i=1:(numPositions-1))
    [iLink{i}, iXYZ{i}] = find(GraspMacros(gripNum).Joint_Diff(i).DOF ~=0);
    disp(['Macros(' num2str(gripNum) ').Increment(' num2str(i) ').iLink  = [' num2str(iLink{i}') '];']); 
    disp(['Macros(' num2str(gripNum) ').Increment(' num2str(i) ').iXYZ  = [' num2str(iXYZ{i}') '];']); 
    disp(['Macros(' num2str(gripNum) ').Increment(' num2str(i) ').iDir = [' num2str((GraspMacros(gripNum).Joint_Diff(i).DOF(find(GraspMacros(gripNum).Joint_Diff(i).DOF ~=0)))') '];']); 
end

disp(' ');

%Pinch Grip
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

gripNum = 4;
numPositions = 20;
disp(' ');
disp(['Macros(' num2str(gripNum) ').Description = ''Pinch Grip'';']);
disp(['Macros(' num2str(gripNum) ').curPosition = 1;']);
disp(['Macros(' num2str(gripNum) ').numPositions = ' num2str(numPositions) ';']);
disp(' ');

GraspMacros(gripNum).Description = 'Pinch Grip';

for(i=numPositions:-1:1)
    load(['\\crusher\D_Drive\Judith\Pinch Grips\pinch' num2str(i) '.mat']);
    for(j=6:20)
        Joint_Param{j,i} = KChain(j).Joint_Param;
    end
end

for(i=1:(numPositions-1))
   for(j=1:5)
        GraspMacros(gripNum).Joint_Diff(i).DOF(j,:) = [0 0 0 0 0 0];
   end
   for(j=6:20)
        GraspMacros(gripNum).Joint_Diff(i).DOF(j,:) = Joint_Param{j,numPositions+1-i} -  Joint_Param{j,numPositions-i};
   end
end

for(i=1:(numPositions-1))
    [iLink{i}, iXYZ{i}] = find(GraspMacros(gripNum).Joint_Diff(i).DOF ~=0);
    disp(['Macros(' num2str(gripNum) ').Increment(' num2str(i) ').iLink  = [' num2str(iLink{i}') '];']); 
    disp(['Macros(' num2str(gripNum) ').Increment(' num2str(i) ').iXYZ  = [' num2str(iXYZ{i}') '];']); 
    disp(['Macros(' num2str(gripNum) ').Increment(' num2str(i) ').iDir = [' num2str((GraspMacros(gripNum).Joint_Diff(i).DOF(find(GraspMacros(gripNum).Joint_Diff(i).DOF ~=0)))') '];']); 
end

% Tool Grip
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
gripNum = 5;
numPositions = 23;
disp(' ');
disp(['Macros(' num2str(gripNum) ').Description = ''Tool Grip'';']);
disp(['Macros(' num2str(gripNum) ').curPosition = 1;']);
disp(['Macros(' num2str(gripNum) ').numPositions = ' num2str(numPositions) ';']);
disp(' ');


GraspMacros(gripNum).Description = 'Tool Grip';

for(i=numPositions:-1:1)
    load(['\\Crusher\D_Drive\Judith\Tool Grips\tool' num2str(i) '.mat']);
    for(j=6:20)
        Joint_Param{j,i} = KChain(j).Joint_Param;
    end
end

for(i=1:(numPositions-1))
   for(j=1:5)
        GraspMacros(gripNum).Joint_Diff(i).DOF(j,:) = [0 0 0 0 0 0];
   end
   for(j=6:20)
        GraspMacros(gripNum).Joint_Diff(i).DOF(j,:) = Joint_Param{j,numPositions+1-i} -  Joint_Param{j,numPositions-i};
   end
end

for(i=1:(numPositions-1))
    [iLink{i}, iXYZ{i}] = find(GraspMacros(gripNum).Joint_Diff(i).DOF ~=0);
    disp(['Macros(' num2str(gripNum) ').Increment(' num2str(i) ').iLink  = [' num2str(iLink{i}') '];']); 
    disp(['Macros(' num2str(gripNum) ').Increment(' num2str(i) ').iXYZ  = [' num2str(iXYZ{i}') '];']); 
    disp(['Macros(' num2str(gripNum) ').Increment(' num2str(i) ').iDir = [' num2str((GraspMacros(gripNum).Joint_Diff(i).DOF(find(GraspMacros(gripNum).Joint_Diff(i).DOF ~=0)))') '];']); 
end

disp(' ');


% Pointing Grip
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
gripNum = 6;

numPositions = 17;
disp(' ');
disp(['Macros(' num2str(gripNum) ').Description = ''Pointing Grip'';']);
disp(['Macros(' num2str(gripNum) ').curPosition = 1;']);
disp(['Macros(' num2str(gripNum) ').numPositions = ' num2str(numPositions) ';']);
disp(' ');


GraspMacros(gripNum).Description = 'Pointing Grip';

for(i=numPositions:-1:1)
    load(['\\Crusher\D_Drive\Judith\Pointing Grips\pointing' num2str(i) '.mat']);
    for(j=6:20)
        Joint_Param{j,i} = KChain(j).Joint_Param;
    end
end

for(i=1:(numPositions-1))
   for(j=1:5)
        GraspMacros(gripNum).Joint_Diff(i).DOF(j,:) = [0 0 0 0 0 0];
   end
   for(j=6:20)
        GraspMacros(gripNum).Joint_Diff(i).DOF(j,:) = Joint_Param{j,numPositions+1-i} -  Joint_Param{j,numPositions-i};
   end
end

for(i=1:(numPositions-1))
    [iLink{i}, iXYZ{i}] = find(GraspMacros(gripNum).Joint_Diff(i).DOF ~=0);
    disp(['Macros(' num2str(gripNum) ').Increment(' num2str(i) ').iLink  = [' num2str(iLink{i}') '];']); 
    disp(['Macros(' num2str(gripNum) ').Increment(' num2str(i) ').iXYZ  = [' num2str(iXYZ{i}') '];']); 
    disp(['Macros(' num2str(gripNum) ').Increment(' num2str(i) ').iDir = [' num2str((GraspMacros(gripNum).Joint_Diff(i).DOF(find(GraspMacros(gripNum).Joint_Diff(i).DOF ~=0)))') '];']); 
end

disp(' ');



% Hook Grip
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
gripNum = 7;
numPositions = 15;
disp(' ');
disp(['Macros(' num2str(gripNum) ').Description = ''Hook Grip'';']);
disp(['Macros(' num2str(gripNum) ').curPosition = 1;']);
disp(['Macros(' num2str(gripNum) ').numPositions = ' num2str(numPositions) ';']);
disp(' ');

GraspMacros(gripNum).Description = 'Hook Grip';


for(i=numPositions:-1:1)
    load(['\\Crusher\D_Drive\Judith\Hook Grips\hook' num2str(i) '.mat']);
    for(j=6:20)
        Joint_Param{j,i} = KChain(j).Joint_Param;
    end
end

for(i=1:(numPositions-1))
   for(j=1:5)
        GraspMacros(gripNum).Joint_Diff(i).DOF(j,:) = [0 0 0 0 0 0];
   end
   for(j=6:20)
        GraspMacros(gripNum).Joint_Diff(i).DOF(j,:) = Joint_Param{j,numPositions+1-i} -  Joint_Param{j,numPositions-i};
   end
end

for(i=1:(numPositions-1))
    [iLink{i}, iXYZ{i}] = find(GraspMacros(gripNum).Joint_Diff(i).DOF ~=0);
    disp(['Macros(' num2str(gripNum) ').Increment(' num2str(i) ').iLink  = [' num2str(iLink{i}') '];']); 
    disp(['Macros(' num2str(gripNum) ').Increment(' num2str(i) ').iXYZ  = [' num2str(iXYZ{i}') '];']); 
    disp(['Macros(' num2str(gripNum) ').Increment(' num2str(i) ').iDir = [' num2str((GraspMacros(gripNum).Joint_Diff(i).DOF(find(GraspMacros(gripNum).Joint_Diff(i).DOF ~=0)))') '];']); 
end

disp(' ');
