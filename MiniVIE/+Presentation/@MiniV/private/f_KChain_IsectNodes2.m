%% Recursively find common vertices between segment and its parent

function KChain = f_KChain_IsectNodes(KChain,i)

iParent = KChain(i).Parent;

% Find Shared nodes between link and parent
vA = KChain(iParent).nodeData; %% link i-1
vB = KChain(i).nodeData; %% link i
[edges,IA,IB] = intersect(vA,vB,'rows');

tmp = 1;
newNodes = [];
if tmp && length(IB > 0)
    %% Find also the faces which use these edge nodes:
    %% Ex: These faces use node i:
    
    %% Sort all the used nodes into a single array
    [list,idx] = sort(KChain(i).elementData(:));

    % Find Breaks in the list for next vertex
    breakPts = find(diff(list));
    breakPts(end+1) = length(list);
    
    level1Nodes = IB;
    for j = 1:length(level1Nodes)
        %% Take first edge node
        iNode = level1Nodes(j);
        
        if iNode == 1
            n1=1;
        else
            n1 = breakPts(iNode-1)+1;
        end
        n2 = breakPts(iNode);
        
        faceIDs = n1:n2;

        R = rem(idx(faceIDs),size(KChain(i).elementData,1));
        R(R == 0) = size(KChain(i).elementData,1);
        C = ceil(idx(faceIDs)/size(KChain(i).elementData,1));
        % The Face in row R contains the node
        adjacentNodes = KChain(i).elementData(R,:);
        newNodes = [newNodes; adjacentNodes(:)];  % may have repitition
    end
    newNodes = unique(newNodes); % No Repitition
    [out,idx1,idx2] = intersect(newNodes,IB); % Exclude Level1 Nodes
    newNodes(idx1) = [];
end


%% Nodes of the current (i_th) link which intersect with parent
KChain(i).IsectNodes_1{1} = IB;
KChain(i).IsectNodes_1{2} = newNodes;
%% Nodes of the current (i-1_th) link which intersect with parent
KChain(i).IsectNodes_0 = IA;

for iChild = 1:length(KChain(i).Children)
    KChain = f_KChain_IsectNodes(KChain,KChain(i).Children(iChild));
end
