%% Set joint angle for either a particular joint or a list of joints
%% Specify iXYZ: 1 = X 2 = Y 3 = Z
%% Secify val_0_1 as a percentage of the total joint ROM
function vrHandles = f_UpdateHandPosition(vrHandles,graspMode,graspMove)


if length(graspMode) < 7
    graspMode(7) = 0;
end

KChain = vrHandles.KChain;
Macros = vrHandles.Macros;
% curGrasp = vrHandles.curGrasp;
curGraspText = get(vrHandles.gripText,'String');
tmp = get(vrHandles.graspList,'String');

for curG = 1:length(tmp)
    if strcmp(curGraspText,tmp{curG})
        curGrasp = curG;
    end
end

handIsOpen = 1;
for(i=1:7)
    if(Macros(i).curPosition > 1)
        handIsOpen = 0;
    end
end

if(handIsOpen & graspMode(1))
    curGrasp = 1;                   % Key Grip  
elseif(handIsOpen & graspMode(2))
    curGrasp = 2;                   % Chuck Grip 
elseif(handIsOpen & graspMode(3))
    curGrasp = 3;                   % Power Grip   
elseif(handIsOpen & graspMode(4))
    curGrasp = 4;                   % Fine Pinch Grip 
elseif(handIsOpen & graspMode(5))
    curGrasp = 5;                   % Tool Grip
elseif(handIsOpen & graspMode(6))
    curGrasp = 6;                   % Point Grip
elseif(handIsOpen & graspMode(7))
    curGrasp = 7;                   % Hook Grip
elseif graspMove
    curPosition = Macros(curGrasp).curPosition;
    
    isWireframe = get(vrHandles.checkWireframe,'Value');
    isTriad = get(vrHandles.checkTriad,'Value');

    if(graspMove > 0 & curPosition < Macros(curGrasp).numPositions)
        j=0;        
        while (j < abs(round(graspMove))) & (curPosition < Macros(curGrasp).numPositions)
            cInc = Macros(curGrasp).Increment(curPosition);
            for i = 1:length(cInc.iLink)
                KChain = f_UpdateJointAngle(KChain,cInc.iLink(i),cInc.iXYZ(i),cInc.iDir(i)*(-1));
            end
            curPosition = curPosition + 1;
            j=j+1;
        end
    elseif(graspMove < 0 & curPosition > 1)
        j=0;
        while (j < abs(round(graspMove))) & (curPosition > 1)
        cInc = Macros(curGrasp).Increment(curPosition-1);            
            for i = 1:length(cInc.iLink)
                KChain = f_UpdateJointAngle(KChain,cInc.iLink(i),cInc.iXYZ(i),cInc.iDir(i));
            end
            curPosition = curPosition - 1;
            j=j+1;
        end
    end

    if(curPosition~=1)
        set(vrHandles.graspList,'Enable','off');
        set(vrHandles.graspText2,'Visible','on');
        set(vrHandles.graspText,'String','CHANGE GRASP MODES');
    else
        set(vrHandles.graspList,'Enable','on');
        set(vrHandles.graspText2,'Visible','off');
        set(vrHandles.graspText,'String','SELECT GRASP MODE');
    end

    Macros(curGrasp).curPosition = curPosition;
end

set(vrHandles.graspList,'Value',curGrasp);
    
vrHandles.KChain = KChain;
vrHandles.Macros = Macros;
vrHandles.curGrasp = curGrasp;

if ~strcmp(get(vrHandles.gripText,'String'),tmp{curGrasp})
    tmp{curGrasp}
    set(vrHandles.gripText,'String',tmp{curGrasp});
    set(vrHandles.gripFrame,'BackgroundColor',[0 1 0]);
end


return