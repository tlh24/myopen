%% Recursively save elements of kinematic chain

function f_KChain_Save(KChain,iSegment,hFile)

fprintf(hFile,'%% Segment: %s\n',KChain(iSegment).Description);
fprintf(hFile,'%% Joint Parameters (Rx Ry Rz Tx Ty Tz):\n %f %f %f %f %f %f\n',KChain(iSegment).Joint_Param);

for iChild = 1:length(KChain(iSegment).Children)
    f_KChain_Save(KChain,KChain(iSegment).Children(iChild),hFile);
end
