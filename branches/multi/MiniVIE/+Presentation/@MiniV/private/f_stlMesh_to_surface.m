% This tool is designed to convert the STL data, which uses face normal convention, into
% the application-specific .model format, containing the node normals for the use 
% in OpenGL.  Each node normal is averaged from the surrounding faces, so connectivity
% among the faces is computed as a prerequisite
function surface = f_stlMesh_to_surface(stlMesh)

% fprintf('Rounding Points...');
% mesh = f_round_points(stlMesh,1e-10);
% fprintf('Done\n');

fprintf('Extracting Nodes...');
[nodeData,elementData,faceNormals] = f_find_nodes(stlMesh);
nNodes = size(nodeData,1);
fprintf('Done\n');

MAX_CONNECTS = 100;
fprintf('Calculating Connectivity...');
% Nodes to Faces
[meshConnectivity] = f_mesh_connectivity(elementData, nNodes, MAX_CONNECTS);
fprintf('Done\n');
fprintf('Averaging Normals...');
[nodeNormals] = f_average_normals(meshConnectivity,faceNormals',nNodes)';
fprintf('Done\n');

surface.nodeData = nodeData;
surface.elementData = elementData;
surface.nodeNormals = nodeNormals;
surface.faceNormals = faceNormals;

% ------------------------------------------------------------------------
%round the data to specified precision
function points_rounded = f_round_points(geometry, precision)
points_rounded = round(geometry./precision).*precision;

% ------------------------------------------------------------------------
function [vertices,faces,faceNormal] = f_find_nodes(mesh)

nFaces = size(mesh,3);

% look at points only, not normals
pts = mesh(1:3,1:3,:);
pts2 = reshape(pts,3,3*nFaces)';
pts3 = reshape(pts2,3,3*nFaces)';
[vertices,idxI,idxJ] = unique(pts3,'rows');

faces = reshape(idxJ,nFaces,3);
faceNormal = squeeze(mesh(4,1:3,:))';

% ------------------------------------------------------------------------
function [meshConnectivity] = f_mesh_connectivity(elementData, nNodes, MAX_CONNECTS)
% compute connectivity of nodes to connected elements
% Basically makes a histogram array describing the number of faces using
% each vertex and but also the location of each

[nElements, nColumns] = size(elementData);
% i need two additional columns on top of the number of connected elements
meshConnectivity = zeros(nNodes,MAX_CONNECTS+2);

% 7/14/05.  Tried this alternate approach, but it is slower
% b = zeros(nNodes,MAX_CONNECTS+2);
% tic
% for iNode = 1:nNodes
%     [r,c] = find(elementData == iNode);
%     a = padarray(r,MAX_CONNECTS-length(r),'post')';
%     b(iNode,1) = iNode;
%     b(iNode,2) = length(r);
%     b(iNode,3:end) = a;
% end
% toc

for iElement = 1:nElements
     for iColumn = 1:nColumns
          iNode = elementData(iElement,iColumn);
          meshConnectivity(iNode,1) = iNode;        %original node ID
          meshConnectivity(iNode,2) = meshConnectivity(iNode,2) + 1;  %number of elements in contact
          % start recording at the third column
          n = 3;
          while 1
               if meshConnectivity(iNode,n) == 0
                    meshConnectivity(iNode,n) = iElement;
                    break
               else
                    n = n + 1;
                    if n == MAX_CONNECTS+2
                         error('Maximum number of connects reached: increase MAX_CONNECTS');
                    end
               end
          end
     end
end


% ------------------------------------------------------------------------
function [nodeUnitNormals] = f_average_normals(meshConnectivity,faceNormals,nNodes)
% Edit 3/15/05 corrected problem with normalizing node vectors
if size(faceNormals,1) ~= 3, error('Use Column Vectors'),end;

for iNode = 1:nNodes
     % start with a new vector
     normal = zeros (3,1);
     % begin averaging for every surrounding element in connectivity list
     nConnectedFaces = meshConnectivity(iNode,2);
     % Note indices are shifted right 2 cells
     for iColumn = 3:nConnectedFaces+2
          % begin summing normals from all surrounding faces
          faceID = meshConnectivity(iNode,iColumn);
          % begin summing normals from all surrounding faces
          normal(1) = normal(1) + faceNormals(1,faceID);
          normal(2) = normal(2) + faceNormals(2,faceID);
          normal(3) = normal(3) + faceNormals(3,faceID);
     end
     nodeNormals(:,iNode) = normal ./ nConnectedFaces;
end

nodeUnitNormals = f_normalize(nodeNormals);
