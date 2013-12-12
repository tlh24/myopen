%% Recursively find common vertices between segment and its parent

function KChain = f_KChain_IsectNodes(KChain,iSegment)

iParent = KChain(iSegment).Parent;

%% Find Shared nodes between link and parent
vA = KChain(iParent).nodeData; %% link i-1
vB = KChain(iSegment).nodeData; %% link i
quantum = 0.00001;
vA = round(vA/quantum)*quantum;
vB = round(vB/quantum)*quantum;

% RSA: added check for empty nodes since this is an error in R2013b
if ~isempty(vA) && ~isempty(vA)
    [edges,IA,IB] = intersect(vA,vB,'rows');
else
    IA = [];
    IB = [];
end

%% Nodes of the current (i_th) link which intersect with parent
KChain(iSegment).IsectNodes_1{1} = IB;
%% Nodes of the current (i-1_th) link which intersect with parent
KChain(iSegment).IsectNodes_0{1} = IA;

%% Continue Recursively
for iChild = 1:length(KChain(iSegment).Children)
    KChain = f_KChain_IsectNodes(KChain,KChain(iSegment).Children(iChild));
end
