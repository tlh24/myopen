%% Setup Kinematic Chain:
% This function creates the kinematic chain structure KChain.  Input
% arguments are the handles to either 1 or multiple axes
% Can use multiple axes (ex. Frontal, Sagittal view) if hAxes is an array
function KChain = f_SetupKinematics(hAxes,isLeftArm,scale,showBody)
% global KChain

if nargin < 1
    figure
    hAxes = gca;
end
if nargin < 2
    isLeftArm = true;
end

if nargin < 3
    scale = [1 1 1];
end

if nargin < 4
    showBody = false;
end


% Structure def for Kinematic Chain
% ----------------------------------------------
fields = {...
    'Description',...   %% Description of Kinematic Link
    'Parent',...        %% ID (1 to N) of Parent Link (single)
    'Children',...      %% ID of Children (multiple)
    'nodeData',...      %% vertices of model
    'elementData',...   %% face connectivity of model
    'hPatch',...        %% graphics handle to Link
    'Joint_Loc',...     %% [Rx Ry Rz Tx Ty Tz] parameters describing location of joint center on link
    'Joint_Param',...   %% [Rx Ry Rz Tx Ty Tz] parameters describing the Joint parameters (ex. Elbow flexion == Rz)
    'Joint_Max',...     %% [Rx Ry Rz Tx Ty Tz] parameters describing max limits of the Joint parameters
    'Joint_Min',...     %% [Rx Ry Rz Tx Ty Tz] parameters describing min limits of the Joint parameters
    'F_link',...        %% 4x4 Frame transformation matrix iteratively multiplied by preceding segments (see f_KChain_Redraw.m)
    'IsectNodes_0',...  %% List of parent vertices common to parent and current segment (see f_KChain_IsectNodes.m)
    'IsectNodes_1',...  %% List of segment vertices common to parent and current segment (see f_KChain_IsectNodes.m)
    };

% Initialize Variable for the Arm Model Kinematic Chain
% ----------------------------------------------
c = { ...
    'World',[],2,[],[],[],zeros(1,6),zeros(1,6),zeros(1,6),zeros(1,6),eye(4),{[]},{[]}; ...
    'Shoulder',1,3,[],[],[],zeros(1,6),zeros(1,6),zeros(1,6),zeros(1,6),eye(4),{[]},{[]}; ...
    'UpperArm',2,4,[],[],[],zeros(1,6),zeros(1,6),zeros(1,6),zeros(1,6),eye(4),{[]},{[]}; ...
    'Fore Arm',3,5,[],[],[],zeros(1,6),zeros(1,6),zeros(1,6),zeros(1,6),eye(4),{[]},{[]}; ...
    'Hand',4,[6 9 12 15 18],[],[],[],zeros(1,6),zeros(1,6),zeros(1,6),zeros(1,6),eye(4),{[]},{[]}; ...
    'Thumb 1',5,7,[],[],[],zeros(1,6),zeros(1,6),zeros(1,6),zeros(1,6),eye(4),{[]},{[]}; ...
    'Thumb 2',6,8,[],[],[],zeros(1,6),zeros(1,6),zeros(1,6),zeros(1,6),eye(4),{[]},{[]}; ...
    'Thumb 3',7,[],[],[],[],zeros(1,6),zeros(1,6),zeros(1,6),zeros(1,6),eye(4),{[]},{[]}; ...
    'Index 1',5,10,[],[],[],zeros(1,6),zeros(1,6),zeros(1,6),zeros(1,6),eye(4),{[]},{[]}; ...
    'Index 2',9,11,[],[],[],zeros(1,6),zeros(1,6),zeros(1,6),zeros(1,6),eye(4),{[]},{[]}; ...
    'Index 3',10,[],[],[],[],zeros(1,6),zeros(1,6),zeros(1,6),zeros(1,6),eye(4),{[]},{[]}; ...
    'Middle 1',5,13,[],[],[],zeros(1,6),zeros(1,6),zeros(1,6),zeros(1,6),eye(4),{[]},{[]}; ...
    'Middle 2',12,14,[],[],[],zeros(1,6),zeros(1,6),zeros(1,6),zeros(1,6),eye(4),{[]},{[]}; ...
    'Middle 3',13,[],[],[],[],zeros(1,6),zeros(1,6),zeros(1,6),zeros(1,6),eye(4),{[]},{[]}; ...
    'Ring 1',5,16,[],[],[],zeros(1,6),zeros(1,6),zeros(1,6),zeros(1,6),eye(4),{[]},{[]}; ...
    'Ring 2',15,17,[],[],[],zeros(1,6),zeros(1,6),zeros(1,6),zeros(1,6),eye(4),{[]},{[]}; ...
    'Ring 3',16,[],[],[],[],zeros(1,6),zeros(1,6),zeros(1,6),zeros(1,6),eye(4),{[]},{[]}; ...
    'Pinky 1',5,19,[],[],[],zeros(1,6),zeros(1,6),zeros(1,6),zeros(1,6),eye(4),{[]},{[]}; ...
    'Pinky 2',18,20,[],[],[],zeros(1,6),zeros(1,6),zeros(1,6),zeros(1,6),eye(4),{[]},{[]}; ...
    'Pinky 3',19,[],[],[],[],zeros(1,6),zeros(1,6),zeros(1,6),zeros(1,6),eye(4),{[]},{[]}; ...
    };
KChain = cell2struct(c, fields, 2);

f_KChain_List(KChain,1);

% %% Add Graphics Data:
% load('ArmControl.mat');
% for i = 1:length(Left_Arm)
%     Save Data as an m file:
%     s = fopen(sprintf('ArmData%02d.m',i),'w');
%     fprintf(s,'function [vertices,faces] = myfun()\n');
%     fprintf(s,'vertices = [\n');
%     fprintf(s,'%f %f %f\n',Left_Arm(i).nodeData');
%     fprintf(s,'];\n');
%     fprintf(s,'faces = [\n');
%     fprintf(s,'%d %d %d %d\n',Left_Arm(i).elementData');
%     fprintf(s,'];\n');
%     fclose(s);
%
%     KChain(i+1).nodeData = Left_Arm(i).nodeData;
%     KChain(i+1).elementData = Left_Arm(i).elementData;
% end

if 0
    %% Add Graphics Data by loading as functions (since these will compile)
    [KChain(2).nodeData,KChain(2).elementData] = ArmData01;     %% Collar
    [KChain(3).nodeData,KChain(3).elementData] = ArmData02;     %% Upper Arm
    [KChain(4).nodeData,KChain(4).elementData] = ArmData03;     %% Forearm
    [KChain(5).nodeData,KChain(5).elementData] = ArmData04;     %% Hand
    [KChain(6).nodeData,KChain(6).elementData] = ArmData05;     %% Thumb1
    [KChain(7).nodeData,KChain(7).elementData] = ArmData06;     %% Thumb2
    [KChain(8).nodeData,KChain(8).elementData] = ArmData07;     %% Thumb3
    [KChain(9).nodeData,KChain(9).elementData] = ArmData08;     %% Index1
    [KChain(10).nodeData,KChain(10).elementData] = ArmData09;   %% Index2
    [KChain(11).nodeData,KChain(11).elementData] = ArmData10;   %% Index3
    [KChain(12).nodeData,KChain(12).elementData] = ArmData11;   %% Middle1
    [KChain(13).nodeData,KChain(13).elementData] = ArmData12;   %% Middle2
    [KChain(14).nodeData,KChain(14).elementData] = ArmData13;   %% Middle3
    [KChain(15).nodeData,KChain(15).elementData] = ArmData14;   %% Ring1
    [KChain(16).nodeData,KChain(16).elementData] = ArmData15;   %% Ring2
    [KChain(17).nodeData,KChain(17).elementData] = ArmData16;   %% Ring3
    [KChain(18).nodeData,KChain(18).elementData] = ArmData17;   %% Pinky1
    [KChain(19).nodeData,KChain(19).elementData] = ArmData18;   %% Pinky2
    [KChain(20).nodeData,KChain(20).elementData] = ArmData19;   %% Pinky3
    
else
    load meshData;
    for i = 1:20
        KChain(i).nodeData = meshData(i).nodeData;
        KChain(i).elementData = meshData(i).elementData;
    end
    
end


%% Mirror?
if isLeftArm
    mirror = 1;
else
    mirror = -1;
end
%% Scale
for i = 1:length(KChain)
    if isempty(KChain(i).nodeData) ,continue,end
    KChain(i).nodeData(:,1) = KChain(i).nodeData(:,1) .* scale(1) .* mirror;
    KChain(i).nodeData(:,2) = KChain(i).nodeData(:,2) .* scale(2);
    KChain(i).nodeData(:,3) = KChain(i).nodeData(:,3) .* scale(3);
end

%% Recursively find the intersection nodes between link and parent.  This
% gives the effect of the skin stretching over the joint.  May be
% commented out to see without effect
KChain = f_KChain_IsectNodes(KChain,2);

%% Define World CS Offset
Rxyz = [0 0 0];
Txyz = [0 0 0];
KChain(2).Joint_Loc = [Rxyz Txyz];
KChain(2).Joint_Param = [90 0 0 0 0 0];
KChain(2).Joint_Max = [90 90 90 0 0 0];
KChain(2).Joint_Min = [-90 -90 -90 0 0 0];

%% Define Shoulder Joint
% For P1 the order of rotations is: AA,FE,HR.  Assuming that we stick with
% the Euler ZYX convention, then that necessitates that the axes be aligned
% such that x points along humeral bone, y points laterally and z points
% anterior
% For P2 the order of rotations is: FE,AA,HR, necessitating an axis
% convention of x along humerus, y posterior, and z lateral


% Rxyz = [0 0 -50];   %% For P1
Rxyz = [-90 0 -50]; %% For P2
Txyz = ([0.0729    0.6025   -0.0464] + [0.0769    0.5931    0.0104])./2;
KChain(3).Joint_Loc = [Rxyz Txyz];
KChain(3).Joint_Param = [0 0 0 0 0 0];
KChain(3).Joint_Max = [90 90 115 0 0 0];
KChain(3).Joint_Min = [-30 -90 -30 0 0 0];
KChain(3).Increment = 10;


%% Define Elbow Joint
Rxyz = [0 -90 40];
Txyz = ([0.1266 0.4920 -0.0203] + [0.1520 0.5156 -0.0173])./2;
KChain(4).Joint_Loc = [Rxyz Txyz];
KChain(4).Joint_Param = [0 0 0 0 0 0];
KChain(4).Joint_Max = [0 0 130 0 0 0];
KChain(4).Joint_Min = [0 0  0 0 0 0];
KChain(4).Increment = 10;

%% Define Wrist Joint
%Rxyz = [-20 0 40];
Rxyz = [0 70 -50]; %% z = long axis, y = dorsal, x = ulnar => wrist rotation, ad/ab, f/e
Txyz = ([0.1939    0.4313    0.0259] + [0.1963    0.4184    0.0042])./2;
KChain(5).Joint_Loc = [Rxyz Txyz];
KChain(5).Joint_Param = [0 0 0 0 0 0];
KChain(5).Joint_Max = [ 45 70  45 0 0 0];
KChain(5).Joint_Min = [-45 -70 -45 0 0 0];
KChain(5).Increment = 5;

%% Define Thumb CMC Joint
Rxyz = [0 90 0];
Txyz = ([0.1878    0.4164    0.0271]+[0.1944    0.4239    0.0369])./2;
KChain(6).Joint_Loc = [Rxyz Txyz];
KChain(6).Joint_Param = [0 0 0 0 0 0];
KChain(6).Joint_Max = [0 5 70 0 0 0];
KChain(6).Joint_Min = [0 -35 -25 0 0 0];
KChain(6).Increment = 1;


%% Define Thumb MCP Joint
Rxyz = [-45 -70 60];
Txyz = ([0.1968    0.4201    0.0437]+[0.2001    0.4096    0.0410])./2;
KChain(7).Joint_Loc = [Rxyz Txyz];
KChain(7).Joint_Param = [0 0 0 0 0 0];
KChain(7).Joint_Max = [0 0  0 0 0 0];
KChain(7).Joint_Min = [0 0 -45 0 0 0];
KChain(7).Increment = 1;

%% Define Thumb IP Joint
Rxyz = [-45 -70 60];
Txyz = ([0.1976    0.4088    0.0536]+[0.2068    0.4101    0.0514])./2;
KChain(8).Joint_Loc = [Rxyz Txyz];
KChain(8).Joint_Param = [0 0 0 0 0 0];
KChain(8).Joint_Max = [0 0  0 0 0 0];
KChain(8).Joint_Min = [0 0 -90 0 0 0];
KChain(8).Increment = 1;

%% Define Index MCP Joint
Rxyz = [-30 0 40];
Txyz = ([ 0.2179    0.4102    0.0409]+[0.2106    0.4004    0.0440])./2;
KChain(9).Joint_Loc = [Rxyz Txyz];
KChain(9).Joint_Param = [0 0 0 0 0 0];
KChain(9).Joint_Max = [ 15 0  15 0 0 0];
KChain(9).Joint_Min = [-15 0 -90 0 0 0];
KChain(9).Increment = 1;

%% Define Index PIP Joint
Rxyz = [-30 0 40];
Txyz = ([0.2194    0.3992    0.0547]+[0.2222    0.3932    0.0484])./2;
KChain(10).Joint_Loc = [Rxyz Txyz];
KChain(10).Joint_Param = [0 0 0 0 0 0];
KChain(10).Joint_Max = [0 0 0 0 0 0];
KChain(10).Joint_Min = [0 0 -90 0 0 0];
KChain(10).Increment = 1;

%% Define Index DIP Joint
Rxyz = [-30 0 40];
Txyz = ([0.2236    0.3915    0.0600]+[0.2235    0.3862    0.0545])./2;
KChain(11).Joint_Loc = [Rxyz Txyz];
KChain(11).Joint_Param = [0 0 0 0 0 0];
KChain(11).Joint_Max = [0 0  0 0 0 0];
KChain(11).Joint_Min = [0 0 -90 0 0 0];
KChain(11).Increment = 1;

%% Define Middle MCP Joint
Rxyz = [-20 15 40];
Txyz = ([ 0.2206    0.4037    0.0310]+[0.2136    0.3934    0.0350])./2;
KChain(12).Joint_Loc = [Rxyz Txyz];
KChain(12).Joint_Param = [0 0 0 0 0 0];
KChain(12).Joint_Max = [ 15 0  15 0 0 0];
KChain(12).Joint_Min = [-15 0 -90 0 0 0];
KChain(12).Increment = 1;

%% Define Middle PIP Joint
Rxyz = [-20 15 40];
Txyz = ([0.2265    0.3879    0.0396]+[0.2194    0.3861    0.0413])./2;
KChain(13).Joint_Loc = [Rxyz Txyz];
KChain(13).Joint_Param = [0 0 0 0 0 0];
KChain(13).Joint_Max = [0 0   0 0 0 0];
KChain(13).Joint_Min = [0 0 -90 0 0 0];
KChain(13).Increment = 1;

%% Define Middle DIP Joint
Rxyz = [-20 15 40];
Txyz = ([0.2290    0.3795    0.0448]+[0.2236    0.3775    0.0463])./2;
KChain(14).Joint_Loc = [Rxyz Txyz];
KChain(14).Joint_Param = [0 0 0 0 0 0];
KChain(14).Joint_Max = [0 0   0 0 0 0];
KChain(14).Joint_Min = [0 0 -90 0 0 0];
KChain(14).Increment = 1;

%% Define Ring MCP Joint
Rxyz = [-10 25 40];
Txyz = ([0.2177    0.3996    0.0221]+[ 0.2107    0.3906    0.0278])./2;
KChain(15).Joint_Loc = [Rxyz Txyz];
KChain(15).Joint_Param = [0 0 0 0 0 0];
KChain(15).Joint_Max = [ 15 0  15 0 0 0];
KChain(15).Joint_Min = [-15 0 -90 0 0 0];
KChain(15).Increment = 1;

%% Define Ring PIP Joint
Rxyz = [-10 25 40];
Txyz = ([0.2229    0.3845    0.0276]+[0.2157    0.3818    0.0306])./2;
KChain(16).Joint_Loc = [Rxyz Txyz];
KChain(16).Joint_Param = [0 0 0 0 0 0];
KChain(16).Joint_Max = [0 0 0 0 0 0];
KChain(16).Joint_Min = [0 0 -90 0 0 0];
KChain(16).Increment = 1;

%% Define Ring DIP Joint
Rxyz = [-10 25 40];
Txyz = ([ 0.2260    0.3756    0.0304]+[0.2212    0.3729    0.0324])./2;
KChain(17).Joint_Loc = [Rxyz Txyz];
KChain(17).Joint_Param = [0 0 0 0 0 0];
KChain(17).Joint_Max = [0 0 0 0 0 0];
KChain(17).Joint_Min = [0 0 -90 0 0 0];
KChain(17).Increment = 1;

%% Define Pinky MCP Joint
Rxyz = [-5 40 40];
Txyz = ([0.2121    0.3964    0.0153]+[0.2053    0.3907    0.0207])./2;
KChain(18).Joint_Loc = [Rxyz Txyz];
KChain(18).Joint_Param = [0 0 0 0 0 0];
KChain(18).Joint_Max = [ 15 0  15 0 0 0];
KChain(18).Joint_Min = [-15 0 -90 0 0 0];
KChain(18).Increment = 1;

%% Define Pinky PIP Joint
Rxyz = [-5 40 40];
Txyz = ([0.2145    0.3846    0.0177]+[0.2088    0.3831    0.0222])./2;
KChain(19).Joint_Loc = [Rxyz Txyz];
KChain(19).Joint_Param = [0 0 0 0 0 0];
KChain(19).Joint_Max = [0 0  0 0 0 0];
KChain(19).Joint_Min = [0 0 -90 0 0 0];
KChain(19).Increment = 1;

%% Define Pinky DIP Joint
Rxyz = [-5 40 40];
Txyz = ([0.2173    0.3769    0.0199]+[0.2121    0.3769    0.0231])./2;
KChain(20).Joint_Loc = [Rxyz Txyz];
KChain(20).Joint_Param = [0 0 0 0 0 0];
KChain(20).Joint_Max = [0 0  0 0 0 0];
KChain(20).Joint_Min = [0 0 -90 0 0 0];
KChain(20).Increment = 1;

%% Apply Mirroring to kinematics
KChain = mirror_function(KChain,mirror);

%% Apply Scaling to kinematics
for i = 1:length(KChain)
    scaleMe = 4:6; %% Ids Txyz which need to be scaled
    KChain(i).Joint_Loc(scaleMe) = KChain(i).Joint_Loc(scaleMe).*scale;
end

%% Make an array of colors for chain
% colorstr_ar = [{'red'} {'blue'} {'green'} {'magenta'} ];  %% rainbow effect
colorstr_ar = {[.95 .87 .73]}; %% skin tone

while length(colorstr_ar)<length(KChain)
    colorstr_ar = [colorstr_ar colorstr_ar]; % repeat colors if array is not long enough
end

%showBody = true;
if showBody
    
    load('Body.dat','-mat')  %% Load Static patches
    F_Loc = [f_make_R(KChain(2).Joint_Param(1:3)') KChain(2).Joint_Param(4:6)'; 0 0 0 1];
    for i = 1:length(Body)
        Body(i) = f_transform_model(F_Loc,Body(i));
    end
    
end


%% Plot Kinematic Chain, Get Graphics Handles
%% This is an initialization sequence to setup the graphics, will only
%% execute once
for iAxis = 1:length(hAxes)
    %% Can use multiple axes (ex. Frontal, Sagittal view)
    % axes(hAxes(iAxis));
    %% Plot every link, no need for recursion
    for iSegment = 1:length(KChain)
        % Create the patch object:
        %         KChain(iSegment).hPatch(iAxis) = f_show_surface(KChain(iSegment),cell2mat(colorstr_ar(iSegment)));
        KChain(iSegment).hPatch(iAxis) = patch(...
            'Vertices',KChain(iSegment).nodeData,...
            'Faces',KChain(iSegment).elementData,...
            'Parent',hAxes(iAxis),...
            'Clipping','off',...
            'FaceColor',cell2mat(colorstr_ar(iSegment)),...
            'EdgeColor','none');
        
        % Get the joint frame transformation
        Joint_Loc = KChain(iSegment).Joint_Loc;
        F_Loc = [f_make_R(Joint_Loc(1:3)') Joint_Loc(4:6)'; 0 0 0 1];
        Joint_Param = KChain(iSegment).Joint_Param;
        F_Param = [f_make_R(Joint_Param(1:3)') Joint_Param(4:6)'; 0 0 0 1];
        
        % Create the triad object:
        KChain(iSegment).hTriad(iAxis,:) = f_plot_triad(hAxes,F_Loc*F_Param,0.025*scale(1));
        set(KChain(iSegment).hTriad(iAxis,:),'Parent',hAxes)
        set(KChain(iSegment).hTriad(iAxis,:),'Visible','off')
    end
    
    if showBody
        % Create static patch objects:
        hStaticPatches = [];
        % Clothes (Blue)
        %     staticList = [1:3 8:9 46:55 27];
        staticList = [1 46 47];
        %     staticList = [];
        for i = 1:length(staticList)
            hPatch = f_show_surface(Body(staticList(i)),'blue',hAxes(iAxis));
            hStaticPatches = cat(2,hStaticPatches,hPatch);
        end
        % Skin
        staticList = [2:5 8];%:26];
        skin = [.95 .87 .73];
        %     staticList = [];
        for i = 1:length(staticList)
            hPatch = f_show_surface(Body(staticList(i)),skin,hAxes(iAxis));
            hStaticPatches = cat(2,hStaticPatches,hPatch);
        end
        % Eyes
        staticList = [6 7];
        %     staticList = [];
        for i = 1:length(staticList)
            hPatch = f_show_surface(Body(staticList(i)),[0.9 0.9 1],hAxes(iAxis));
            hStaticPatches = cat(2,hStaticPatches,hPatch);
        end
        
        
        % Store in first KChain element
        KChain(1).hStaticPatches = hStaticPatches;
    end
    
    showTable = 0;
    if showTable
        a = f_stlMesh_to_surface(f_read_stl('Table1.stl'));
        F_Loc = [f_make_R(KChain(2).Joint_Param(1:3)') KChain(2).Joint_Param(4:6)'; 0 0 0 1];
        a = f_transform_model(F_Loc,a);
        f_show_surface(a,[0.5020    0.2510    0.2510]);
    end
    
    showBall = 0;
    if showBall
        a = f_stlMesh_to_surface(f_read_stl('Ball.stl'));
        F_Loc = [f_make_R(KChain(2).Joint_Param(1:3)') KChain(2).Joint_Param(4:6)'; 0 0 0 1];
        a = f_transform_model(F_Loc,a);
        KChain(21).hPatch = f_show_surface(a,[1 0 0]);
    end
    
end

function KChain = mirror_function(KChain,mirror)
%Txyz(1) = Txyz(1) * mirror; Rxyz(2:3) = Rxyz(2:3) * mirror;
for i = 1:length(KChain)
    flipMe = [2 3 4]; %% Ids Corresponding to Rxyz(2:3) and Txyz(1)
    KChain(i).Joint_Loc(flipMe) = KChain(i).Joint_Loc(flipMe)*mirror;
    
    KChain(i).Joint_Param(2:3) = KChain(i).Joint_Param(2:3)*mirror;
    KChain(i).Joint_Max(2:3) = KChain(i).Joint_Max(2:3)*mirror;
    KChain(i).Joint_Min(2:3) = KChain(i).Joint_Min(2:3)*mirror;
    % The Increment poses a problem since only two
    % angles should be negated.  It would be better if [increment] were on
    % a per joint basis (i.e. increment = [1 1 1] or [5 5 5]) then the
    % next line would be:
    % KChain(i).Increment(2:3) = KChain(i).Increment(2:3)*mirror
    KChain(i).Increment = 1;
end


