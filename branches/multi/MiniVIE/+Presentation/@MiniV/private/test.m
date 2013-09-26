function main
hF = figure
kChain = f_SetupKinematics(gca)
hAx1 = gca;
camlight
axis equal
axis off
lighting gouraud
dat = rand(1,100);
figure
hDat = plot(dat)
hAx2 = gca;
hold on

ylim('auto')
a = [1;1];
a(:,2) = get(gca,'YLim');
hh = plot(a(:,1),a(:,2));
i = 1;
while i < 100
    i = i + 1;
    set(hh,'XData',[i i])
    pause(0.05)
    drawnow
    if i == 100
        delete(hDat)
        dat = rand(1,100);
        axes(hAx2)
        hDat = plot(dat);
        i = 1;
    end
    if dat(i) > 0.92
        %% Send arm to state
        kChain = interp_arm(ceil(3*rand(1)),kChain)
    end
end

function KChainOut = interp_arm(val,KChainIn)
handles.KChain = KChainIn;

pathname = pwd;
switch val
    case 1
        filename = '1.sta';
    case 2
        filename = '2.sta';
    case 3
        filename = '3.sta';
end

hFile = fopen(fullfile(pathname,filename),'r');
KChain = handles.KChain;
oldKChain = handles.KChain;
newKChain = f_KChain_Load(oldKChain,1,hFile);
fclose(hFile);

%% Interpolate to new state
nSteps = 4;

isWireframe = 0;
isTriad = 0;

for iStep = 1:nSteps
    for iLink = 1:length(oldKChain)
        %% Perform interpolation between new / old states
        KChain(iLink).Joint_Param = (iStep/nSteps).*...
            (newKChain(iLink).Joint_Param - oldKChain(iLink).Joint_Param)...
            + oldKChain(iLink).Joint_Param;
    end
    %% Draw It
    f_KChain_Redraw(KChain,2,isWireframe,isTriad);
    KChainOut = KChain;
    drawnow
end
