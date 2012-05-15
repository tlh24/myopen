function writeRocTableEntry(docNode,id,name,jointIds,wayPts,jointAngles)
% Function appends roc entries to the top-level xml document docNode
%
% Usage:
%     docNode = com.mathworks.xml.XMLUtils.createDocument('roc_tables');
%     writeRocTableEntry(docNode,id,name,jointIds,wayPts,jointAngles);
%     xmlwrite(xmlFileName,docNode);
%
% Log: 
% 5/10/2012 Armiger: Created 


% Validate inputs
numWayPts = length(wayPts);
[numJointAngleRows numJointAngleColumns]= size(jointAngles);
assert(numWayPts == ...
    numJointAngleRows,'Number of waypoints (%d) must match number of joint rows (%d) for roc id: %d',...
    numWayPts,numJointAngleRows,id);
assert(length(jointIds) == ...
    numJointAngleColumns,'Number of joint ids (%d) must match number of joint angles (%d) for roc id: %d',...
    length(jointIds),numJointAngleColumns,id);

docRootNode = docNode.getDocumentElement;

tableElement = docNode.createElement('table');
docRootNode.appendChild(tableElement);

idText = docNode.createElement('id');
idText.appendChild(docNode.createTextNode(sprintf('%d',id)));
tableElement.appendChild(idText);

idText = docNode.createElement('name');
idText.appendChild(docNode.createTextNode(name));
tableElement.appendChild(idText);

idText = docNode.createElement('joints');
strJointIds = sprintf('%d,',jointIds);
strJointIds(end) = []; %remove trailing ','
idText.appendChild(docNode.createTextNode(strJointIds));
tableElement.appendChild(idText);

for iWayPt = 1:numWayPts
    wayPointElement = docNode.createElement('waypoint');
    tableElement.appendChild(wayPointElement);
    wayPointElement.setAttribute('index',sprintf('%5.3f',wayPts(iWayPt)))
    
    angleElement = docNode.createElement('angles');
    strAngles = sprintf('%f,',jointAngles(iWayPt,:));
    strAngles(end) = []; %remove trailing ','
    angleElement.appendChild(docNode.createTextNode(strAngles));
    wayPointElement.appendChild(angleElement);
end
