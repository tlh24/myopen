%% Recursive function to Redraw (Update) Chain

function KChain = f_KChain_Redraw(KChain,iSegment,isWireframe,isTriad)
if nargin<3
    isWireframe = 0;    %% 0 = no wireframe 1 = show wireframe
    isTriad = 0;        %% 0 = no traids 1 = show triads
end

%% Get Parent ID
iParent = KChain(iSegment).Parent;

%% Location of Joint Frame on Current Segment
Joint_Loc = KChain(iSegment).Joint_Loc;
F_Loc = [f_make_R(Joint_Loc(1:3)') Joint_Loc(4:6)'; 0 0 0 1];

%% Location of Joint Frame shift based on parameters
Joint_Param = KChain(iSegment).Joint_Param;
F_Param = [f_make_R(Joint_Param(1:3)') Joint_Param(4:6)'; 0 0 0 1];

%% Location of Joint Frame wrt world
KChain(iSegment).F_link = KChain(iParent).F_link*F_Loc*F_Param*pinv(F_Loc);

% if iSegment == 11
%     disp('Index Finger coordinates are:')
%     disp(KChain(iSegment).F_link(1:3,4))
% end

%% Static vertex list for segment
vertices = KChain(iSegment).nodeData;

% Override baseline vertices for joints that twist
idSegmentForeArm = 4;
if iSegment == idSegmentForeArm
    verticesForearm = KChain(iSegment).nodeData;
    isRightArm = mean(verticesForearm(:,1)) < 0;
    
    % Given the origin of the segment coordinate system, and the origin of
    % the next coordinate system down the line, compute the axis [of the
    % forearm] and transform the points such that this aligns with the
    % x-axis.  Then apply a subsequent rotation or twist.
    
    Joint_Loc = KChain(iSegment).Joint_Loc;
    F_Loc = [f_make_R(Joint_Loc(1:3)') Joint_Loc(4:6)'; 0 0 0 1];
    p0 = F_Loc(1:3,4);

    idChild = KChain(iSegment).Children(1);
    Joint_Loc = KChain(idChild).Joint_Loc;
    F_Loc = [f_make_R(Joint_Loc(1:3)') Joint_Loc(4:6)'; 0 0 0 1];
    p1 = F_Loc(1:3,4);
    
    foreArmAxis = p1 - p0;
    xAxis = [1 0 0]';

    rotationAxis = cross(foreArmAxis ./ norm(foreArmAxis) ,xAxis);
    
    angle = atan2(norm(cross(foreArmAxis,xAxis)),dot(foreArmAxis,xAxis));
    angle = real(angle);
    
    F = makehgtform('translate',p0,'axisrotate',rotationAxis,-angle);
    
    % Transform point to local coordinate system with x- through the long
    % axis
    vLocal = f_transform(pinv(F),verticesForearm');
    
    p1 = max(vLocal,[],2);
    p0 = min(vLocal,[],2);
    vTwist = vLocal;
    
    % Begin twisting vertices about x- up to the total wrist rotation angle
    numSteps = 10;
    maxTheta = KChain(5).Joint_Param(3)*pi/180;
    if isRightArm
        dx = linspace(p0(1),p1(1),numSteps);
    else
        dx = linspace(p0(1),p1(1),numSteps);
    end
    for i = 1:numSteps
        id = vTwist(1,:) > dx(i);
        M = makehgtform('xrotate',maxTheta/numSteps);
        vTwist(:,id) = M(1:3,1:3) * vTwist(:,id);
    end
    %{
    figure(89),clf
    hold on
    f_plot3( verticesForearm' ,'k.')
    
    Joint_Loc = KChain(iSegment).Joint_Loc;
    F_Loc = [f_make_R(Joint_Loc(1:3)') Joint_Loc(4:6)'; 0 0 0 1];
    p0 = F_Loc(1:3,4);

    Joint_Loc = KChain(KChain(iSegment).Children(1)).Joint_Loc;
    F_Loc = [f_make_R(Joint_Loc(1:3)') Joint_Loc(4:6)'; 0 0 0 1];
    p1 = F_Loc(1:3,4);

    f_plot3( [p0 p1] ,'r-');
    
    foreArmAxis = p1 - p0;
    xAxis = [1 0 0]';

    rotationAxis = cross(foreArmAxis,xAxis);
    
    angle = atan2(norm(cross(foreArmAxis,xAxis)),dot(foreArmAxis,xAxis));
    angle = real(angle);
    
    T = makehgtform('translate',p0,'axisrotate',rotationAxis,-angle);
    
    vLocal = f_transform(pinv(T),verticesForearm');

    f_plot3( vLocal ,'b.')
    view(90,0)
    axis equal
    %}
    vertices = f_transform(F,vTwist)';
end


%% Vertices at some time t
verts_t = f_transform(KChain(iSegment).F_link,vertices')';

%% do for all axis handles:
for iAxis = 1:length(KChain(iSegment).hPatch)
    %% move all vertices
    set(KChain(iSegment).hPatch(iAxis),'Vertices',verts_t);
    %% show wireframe
    if isWireframe
        set(KChain(iSegment).hPatch(iAxis),'EdgeColor','Black')
    else
        set(KChain(iSegment).hPatch(iAxis),'EdgeColor','None')
    end
    %% show triads
    if isTriad && iSegment ~= 2
        set(KChain(iSegment).hTriad(iAxis,:),'Visible','on')
        KChain(iSegment).hTriad(iAxis,:) = f_update_triad(KChain(iParent).F_link*F_Loc*F_Param,KChain(iSegment).hTriad(iAxis,:));
    else
        set(KChain(iSegment).hTriad(iAxis,:),'Visible','off')
    end
end


% If some nodes overlap (length(IsectNodes) > 0) Then change the
% vertices on the i_link and i-1_link to half the distance of their
% separated values

if ~isempty(KChain(iSegment).IsectNodes_1{1})
    % Index to Shared Vertices from Parent
    idx0 = KChain(iSegment).IsectNodes_0{1};
    % Current Vertex position (Parent segment location already applied)
    V0 = get(KChain(iParent).hPatch(1),'Vertices');
    % subset of vertices which were common to i and i-1 link
    v0 = V0(idx0,:);
    
    % Index to Shared Vertices from current link
    idx1 = KChain(iSegment).IsectNodes_1{1};
    % Current Vertex positions
    V1 = verts_t;
    % subset of vertices which were common to i and i-1 link
    v1 = V1(idx1,:);
    
    %% vertices v1 v0 are seperated.  force them back together at their
    %% midpoint
    midpts = (v1 + v0)./2;
    V1(idx1,:) = midpts;
    V0(idx0,:) = midpts;
    
    for iAxis = 1:length(KChain(iSegment).hPatch)
        set(KChain(iSegment).hPatch(iAxis),'Vertices',V1);
        set(KChain(iParent).hPatch(iAxis),'Vertices',V0);
    end
end

%% Continue recursively for children
for iChild = 1:length(KChain(iSegment).Children)
    KChain = f_KChain_Redraw(KChain,KChain(iSegment).Children(iChild),isWireframe,isTriad);
end

