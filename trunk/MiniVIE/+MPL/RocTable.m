classdef RocTable < handle
    % Write ROC tables
    %
    % MPL.RocTable.createRocTables
    % MPL.RocTable.Test
    %
    % Log:
    %   17Aug2012 Armiger: Created
    properties
    end
    methods (Static=true)
        function roc = createRocTables(fname)
            % createRocTables.m
            % testWriteRocTable.m
            % writeRocTable
            % writeRocTableEntry
            
            if nargin < 1
                fname = 'C:\usr\MPL\VulcanX\roc_tables_clinical.xml';
            end
            
            
            mce = MPL.MudCommandEncoder;
            
            % jointIds = 8:27;
            % basePosition = zeros(1,length(jointIds));
            % basePosition(:,mce.INDEX_MCP) = 0.1;
            % basePosition(:,mce.MIDDLE_MCP) = 0.1;
            % basePosition(:,mce.RING_MCP) = 0.1;
            % basePosition(:,mce.LITTLE_MCP) = 0.1;
            % basePosition(:,mce.THUMB_CMC_AD_AB) = 0.1;
            % basePosition(:,mce.THUMB_CMC) = 0.1;
            % basePosition(:,mce.THUMB_DIP) = 0.1;
            % basePosition(:,mce.THUMB_MCP) = 0.1;
            
            basePosition = [0.0000,0.3491,0.3840,0.3142,0.0000,0.3491,0.3840,0.3142,0.0000,0.3491,0.3840,0.3142,0.0000,0.3491,0.3840,0.3142,0.0000,1.0472,0.2618,-0.3491];
            
            basePosition(:,[mce.INDEX_MCP mce.MIDDLE_MCP mce.RING_MCP mce.LITTLE_MCP]) = 0.0;
            basePosition(:,mce.INDEX_AB_AD) = -0.1;
            basePosition(:,mce.LITTLE_AB_AD) = 0.2;
            basePosition(:,mce.THUMB_CMC) = 0.4;
            
            
            roc(1).id = 0;
            roc(1).name = 'rest';
            roc(1).waypoint = [0 1];
            roc(1).joints = [8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27];
            roc(1).angles = [
                basePosition;...
                0.0000,0.3491,0.3840,0.3142,0.0000,0.3491,0.3840,0.3142,0.0000,0.3491,0.3840,0.3142,0.0000,0.3491,0.3840,0.3142,0.0000,1.0472,0.2618,-0.3491];
            
            roc(2).id = 1;
            roc(2).name = 'FinePinch(British)';
            roc(2).waypoint = [0 0.25 0.4 0.85 1];
            roc(2).joints = [8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27];
            % roc(2).angles = [...
            % basePosition;...
            % 0.0000,0.5236,0.5760,0.4712,0.0000,-0.7854,0.0000,0.0000,0.0000,-0.7854,0.0000,0.0000,0.0000,-0.7854,0.0000,0.0000,1.3963,0.5236,0.5236,-0.3491;...
            % 0.0000,0.8727,0.9774,0.7679,0.0000,-0.7854,0.0000,0.0000,0.0000,-0.7854,0.0000,0.0000,0.0000,-0.7854,0.0000,0.0000,1.3963,0.8727,0.5236,-0.3491;...
            % ];
            
            basePosition(mce.THUMB_DIP) = 0.1;
            pos1 = basePosition;
            pos1(:,[mce.THUMB_CMC_AD_AB]) = 1.25;
            pos1([mce.INDEX_MCP mce.INDEX_PIP mce.INDEX_DIP]) = 0.4;
            pos1([mce.MIDDLE_MCP mce.MIDDLE_PIP mce.MIDDLE_DIP]) = 0.4;
            pos1([mce.RING_MCP mce.RING_PIP mce.RING_DIP]) = -0.4;
            pos1([mce.LITTLE_MCP mce.LITTLE_PIP mce.LITTLE_DIP]) = -0.4;
            pos2 = pos1;

            pos3 = pos1;
            pos3([mce.INDEX_MCP mce.INDEX_PIP mce.INDEX_DIP]) = 0.95;
            pos3([mce.MIDDLE_MCP mce.MIDDLE_PIP mce.MIDDLE_DIP]) = 0.8;

            pos3([mce.THUMB_MCP]) = 0.55;
            pos3([mce.THUMB_CMC]) = 0.75;
            pos4 = pos3;
            roc(2).angles = [...
                basePosition;...
                pos1;...
                pos2;...
                pos3;...
                pos4;...
                ];
            
            roc(3).id = 2;
            roc(3).name = 'FinePinch(American)';
            roc(3).waypoint = [0 0.333 1];
            roc(3).joints = [8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27];
            roc(3).angles = [...
                basePosition;...
                0.0000,0.5236,0.5760,0.4712,0.0000,1.5708,1.7453,1.3963,0.0000,1.5708,1.7453,1.3963,0.0000,1.5708,1.7453,1.3963,1.3963,0.5236,0.5236,-0.3491;...
                0.0000,0.8727,0.9774,0.7679,0.0000,1.5708,1.7453,1.3963,0.0000,1.5708,1.7453,1.3963,0.0000,1.5708,1.7453,1.3963,1.3963,0.8727,0.5236,-0.3491;...
                ];
            
            roc(4).id = 3;
            roc(4).name = 'Palmar(Tray)';
            roc(4).waypoint = [0 0.333 1];
            roc(4).joints = [8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27];
            roc(4).angles = [...
                basePosition;...
                0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,1.5708,0.3491,0.3491,-0.3491;...
                0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,1.5708,1.3963,0.6981,-0.3491;...
                ];
            
            roc(5).id = 4;
            roc(5).name = 'ThreeFingerPinch';
            roc(5).waypoint = [0 0.333 1];
            roc(5).joints = [8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27];
            roc(5).angles = [...
                basePosition;...
                0.0000,0.5236,0.5760,0.4712,0.0000,0.5236,0.5760,0.4712,0.0000,0.5236,0.5760,0.4712,0.0000,0.5236,0.5760,0.4712,1.5708,0.3491,0.3491,-0.3491;...
                0.0000,0.9599,1.0647,0.8552,0.0000,0.9599,1.0647,0.8552,0.0000,0.8727,0.9774,0.7679,0.0000,0.8727,0.9774,0.7679,1.5708,0.7854,0.5236,-0.3491;...
                ];
            
            roc(6).id = 5;
            roc(6).name = 'Cylindrical';
            roc(6).waypoint = [0 0.333 0.667 1];
            roc(6).joints = [8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27];
            roc(6).angles = [...
                basePosition;...
                0.0000,0.4363,0.4887,0.3840,0.0000,0.4363,0.4887,0.3840,0.0000,0.4363,0.4887,0.3840,0.0000,0.4363,0.4887,0.3840,1.9199,0.0000,0.0000,-0.3491;...
                0.0000,0.8727,0.9774,0.7679,0.0000,0.8727,0.9774,0.7679,0.0000,0.8727,0.9774,0.7679,0.0000,0.8727,0.9774,0.7679,1.9199,0.0000,0.0000,-0.3491;...
                0.0000,1.3963,1.5533,1.2392,0.0000,1.3090,1.4486,1.1694,0.0000,1.3963,1.5533,1.2392,0.0000,1.3963,1.5533,1.2392,1.9199,0.5236,0.8727,0.3491;...
                ];
            
            roc(7).id = 6;
            roc(7).name = 'Trigger(Drill)';
            roc(7).waypoint = [0 0.333 0.556 0.778 1];
            roc(7).joints = [8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27];
            roc(7).angles = [...
                basePosition;...
                0.0000,0.0000,0.0000,0.0000,0.0000,0.4363,0.4887,0.3840,0.0000,0.4363,0.4887,0.3840,0.0000,0.4363,0.4887,0.3840,1.9199,0.0000,0.0000,-0.3491;...
                0.0000,0.0000,0.0000,0.0000,0.0000,0.8727,0.9774,0.7679,0.0000,0.8727,0.9774,0.7679,0.0000,0.8727,0.9774,0.7679,1.9199,0.0000,0.0000,-0.3491;...
                0.0000,0.0000,0.0000,0.0000,0.0000,1.3090,1.4486,1.1694,0.0000,1.3963,1.5533,1.2392,0.0000,1.3963,1.5533,1.2392,1.9199,0.5236,0.8727,0.3491;...
                0.0000,1.3963,1.5533,1.2392,0.0000,1.3090,1.4486,1.1694,0.0000,1.3963,1.5533,1.2392,0.0000,1.3963,1.5533,1.2392,1.9199,0.5236,0.8727,0.3491;...
                ];
            roc(7).angles(5,[mce.INDEX_MCP mce.INDEX_PIP mce.INDEX_DIP]) = 0.1;
            
            roc(8).id = 7;
            roc(8).name = 'Spherical';
            roc(8).waypoint = [0 0.3 0.4 1];
            roc(8).joints = [8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27];
            pos0 = basePosition;
            pos0([mce.LITTLE_MCP mce.LITTLE_PIP mce.LITTLE_DIP]) = 0.0;
            pos0([mce.MIDDLE_MCP mce.MIDDLE_PIP mce.MIDDLE_DIP]) = -0.0;
            pos0([mce.RING_MCP mce.RING_PIP mce.RING_DIP]) = -.1;
            pos1 = [0.0000,0.2618,0.2967,0.2269,0.0000,0.2618,0.2967,0.2269,0.3491,0.2618,0.2967,0.2269,0.3491,0.2618,0.2967,0.2269,1.9199,0.0000,0.2618,-0.3491];
            %pos1([mce.MIDDLE_MCP mce.MIDDLE_PIP mce.MIDDLE_DIP]) = 0.0;
            pos1([mce.LITTLE_MCP mce.LITTLE_PIP mce.LITTLE_DIP]) = 0.5;
            %pos1([mce.THUMB_CMC_AD_AB]) = 1.9;
            pos1([mce.THUMB_CMC_AD_AB]) = 0.95;
            pos2 = pos1;
            pos3 = [0.0000,0.9599,1.0647,0.8552,0.0000,0.7854,0.8727,0.6981,0.3491,0.8727,0.9774,0.7679,0.3491,1.0472,0.8694,0.6250,1.9199,0.5236,0.8727,-0.3491];
            pos3([mce.MIDDLE_MCP mce.MIDDLE_PIP mce.MIDDLE_DIP]) = 1.0;
            pos3([mce.RING_MCP mce.RING_PIP mce.RING_DIP]) = 1.1;
            pos3([mce.LITTLE_MCP mce.LITTLE_PIP mce.LITTLE_DIP]) = 1.0;
            pos3([mce.THUMB_CMC_AD_AB]) = 1.8;
            roc(8).angles = [...
                pos0;...
                pos1;...
                pos2;...
                pos3;...
                ];
            %roc(8).angles(2:end,mce.THUMB_CMC_AD_AB) = 1.8;
            
            
            roc(9).id = 8;
            roc(9).name = 'Hook';
            roc(9).waypoint = [0 1];
            roc(9).joints = [8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27];
            roc(9).angles = [...
                basePosition;...
                0.0000,1.2217,1.3614,1.0821,0.0000,1.2217,1.3614,1.0821,0.0000,1.2217,1.3614,1.0821,0.0000,1.2217,1.3614,1.0821,0.0000,1.0472,0.2618,-0.3491;...
                ];
            
            roc(10).id = 9;
            roc(10).name = 'Index Only';
            roc(10).waypoint = [0 1];
            roc(10).joints = [8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27];
            roc(10).angles = repmat(basePosition,length(roc(10).waypoint),1);
            roc(10).angles(1,mce.INDEX_MCP) = 0;
            roc(10).angles(2,mce.INDEX_MCP) = 1;
            
            roc(11).id = 10;
            roc(11).name = 'Middle Only';
            roc(11).waypoint = [0 1];
            roc(11).joints = [8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27];
            roc(11).angles = repmat(basePosition,length(roc(11).waypoint),1);
            roc(11).angles(1,mce.MIDDLE_MCP) = 0;
            roc(11).angles(2,mce.MIDDLE_MCP) = 1;
            
            roc(12).id = 11;
            roc(12).name = 'Ring Only';
            roc(12).waypoint = [0 1];
            roc(12).joints = [8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27];
            roc(12).angles = repmat(basePosition,length(roc(12).waypoint),1);
            roc(12).angles(1,mce.RING_MCP) = 0;
            roc(12).angles(2,mce.RING_MCP) = 1;
            
            roc(13).id = 12;
            roc(13).name = 'Little Only';
            roc(13).waypoint = [0 1];
            roc(13).joints = [8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27];
            roc(13).angles = repmat(basePosition,length(roc(13).waypoint),1);
            roc(13).angles(1,mce.LITTLE_MCP) = 0;
            roc(13).angles(2,mce.LITTLE_MCP) = 1;
            
            % 13
            roc(14).id = 13;
            roc(14).name = 'Thumb Only';
            roc(14).waypoint = [0 1];
            roc(14).joints = [8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27];
            roc(14).angles = repmat(basePosition,length(roc(14).waypoint),1);
            roc(14).angles(1,mce.THUMB_CMC_AD_AB) = 0;
            roc(14).angles(2,mce.THUMB_CMC_AD_AB) = 1;
            roc(14).angles(1,mce.THUMB_CMC) = 0;
            roc(14).angles(2,mce.THUMB_CMC) = 1;
            roc(14).angles(1,mce.THUMB_MCP) = 0;
            roc(14).angles(2,mce.THUMB_MCP) = 1;
            roc(14).angles(1,mce.THUMB_DIP) = 0;
            roc(14).angles(2,mce.THUMB_DIP) = 1;
            
            roc(15).id = 14;
            roc(15).name = 'Ring Middle';
            roc(15).waypoint = [0 1];
            roc(15).joints = [8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27];
            roc(15).angles = repmat(basePosition,length(roc(15).waypoint),1);
            roc(15).angles(1,mce.MIDDLE_MCP) = 0;
            roc(15).angles(1,mce.RING_MCP) = 0;
            roc(15).angles(2,mce.MIDDLE_MCP) = 1.6;
            roc(15).angles(2,mce.RING_MCP) = 1.6;
            
            if ~isempty(fname)
                MPL.RocTable.writeRocTable(fname,roc);
            end
            % To reload 
            % obj.Presentation.hNfu.readRocTable

        end
        function writeRocTable(xmlFileName,structRocTables)
            % Create XML Roc table document based on the given filename.  Loop through
            % each roc table structure and append those to the xml document.  Function
            % will display document to console.
            %
            % Example:
            %     roc(1).id = 0;
            %     roc(1).name = 'rest';
            %     roc(1).waypoint = [0 1];
            %     roc(1).joints = [8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27];
            %     roc(1).angles = [
            %         0.0000,0.3491,0.3840,0.3142,0.0000,0.3491,0.3840,0.3142,0.0000,0.3491,0.3840,0.3142,0.0000,0.3491,0.3840,0.3142,0.0000,1.0472,0.2618,-0.3491;...
            %         0.0000,0.3491,0.3840,0.3142,0.0000,0.3491,0.3840,0.3142,0.0000,0.3491,0.3840,0.3142,0.0000,0.3491,0.3840,0.3142,0.0000,1.0472,0.2618,-0.3491];
            %
            %     writeRocTable('C:\usr\MPL\VulcanX\roc_tables_clinical.xml',roc)
            %
            % Log:
            % 5/10/2012 Armiger: Created
            docNode = com.mathworks.xml.XMLUtils.createDocument('roc_tables');
            
            for i = 1:length(structRocTables)
                MPL.RocTable.writeRocTableEntry(docNode,...
                    structRocTables(i).id,structRocTables(i).name,...
                    structRocTables(i).joints,structRocTables(i).waypoint,...
                    structRocTables(i).angles);
            end
            
            xmlwrite(xmlFileName,docNode);
            %clc;
            %type(xmlFileName);
        end
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
        end
        function Test
            roc(1).id = 0;
            roc(1).name = 'rest';
            roc(1).waypoint = [0 1];
            roc(1).joints = [8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27];
            roc(1).angles = [
                0.0000,0.3491,0.3840,0.3142,0.0000,0.3491,0.3840,0.3142,0.0000,0.3491,0.3840,0.3142,0.0000,0.3491,0.3840,0.3142,0.0000,1.0472,0.2618,-0.3491;...
                0.0000,0.3491,0.3840,0.3142,0.0000,0.3491,0.3840,0.3142,0.0000,0.3491,0.3840,0.3142,0.0000,0.3491,0.3840,0.3142,0.0000,1.0472,0.2618,-0.3491];
            
            %MPL.writeRocTable('C:\usr\MPL\VulcanX\roc_tables_clinical.xml',roc)
            MPL.RocTable.writeRocTable('roc_test.xml',roc)
        end
    end
end