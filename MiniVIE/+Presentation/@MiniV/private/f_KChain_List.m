%% Recursively list elements of kinematic chain

function f_KChain_List(KChain,iSegment)

disp(['Segment: ' KChain(iSegment).Description]);

for iChild = 1:length(KChain(iSegment).Children)
    f_KChain_List(KChain,KChain(iSegment).Children(iChild));
end
