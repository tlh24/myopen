%% Recursively load elements of kinematic chain

function KChain = f_KChain_Load(KChain,iSegment,hFile)

fgetl(hFile); % '% Segment: %s'
fgetl(hFile); % '% Joint Parameters (Tx Ty Tz Rx Ry Rz):'
read = fscanf(hFile,'%f',6)';
fgetl(hFile); % Line feed

KChain(iSegment).Joint_Param = read;

for iChild = 1:length(KChain(iSegment).Children)
    KChain = f_KChain_Load(KChain,KChain(iSegment).Children(iChild),hFile);
end
