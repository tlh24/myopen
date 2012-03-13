classdef Utils
    methods (Static = true)
        function [x n_hat a] = sphereIntersect(o,p,R,r)
            
            % Given two spheres, one cenetered at "o" with radius "R" and another centered at
            % "p" with radius "r", solve for a circle of intersection centered at "x"
            % with radius "a"
            
            % distance from shoulder to endpoint
            n = p-o;
            d = norm(n);
            n_hat = (n./d);
            
            % Solve for sphere intersect (circle)
            m = (d^2 - r^2 + R^2) / (2*d);
            % radius a
            a = (1/2/d) * sqrt((-d+r-R)*(-d-r+R)*(-d+r+R)*(d+r+R));
            
            x = (m * n_hat) + o;
        end
        function h = plotSphere(c,r,varargin)
            
            [x,y,z] = sphere;
            x = x .* r + c(1);
            y = y .* r + c(2);
            z = z .* r + c(3);
            
            h = surf(x,y,z,varargin{:});
        end
        function p = pTransform(F,b)
            % point transform where F is a 4x4 homogeneous transform
            p = bsxfun(@plus,F(1:3,1:3)*b,F(1:3,4));
            
        end
        function hTriad = plot_triad(varargin)
            %%f_plot_triad(F,scale,xyz_color)
            %%see also f_update_triad
            
            if nargin > 0
                if isscalar(varargin{1}) && ishandle(varargin{1})
                    % parent handle provided, shift all inputs down
                    idxOffset = 1;
                    hParent = varargin{1};
                else
                    idxOffset = 0;
                    hParent = gca;
                end
            end
            
            typ = get(hParent,'type');
            switch lower(typ)
                case 'axes'
                    ax = hParent;
                case 'hgtransform'
                    ax = get(hParent,'parent');
                    if ~strcmpi(get(ax,'type'),'axes')
                        ax = gca;
                    end
                otherwise
                    ax = gca;
            end
            
            if nargin < (1 + idxOffset)
                F = eye(4);
            else
                F = varargin{1 + idxOffset};
            end
            
            
            %     F = varargin{1};
            % scale = varargin{2};
            % xyz_color = varargin{3};
            
            
            if nargin < (2 + idxOffset)
                scaleX = 1;
                scaleY = 1;
                scaleZ = 1;
            else
                scale = varargin{2 + idxOffset};
                if length(scale) == 1
                    % Uniform Scaling
                    scaleX = scale;
                    scaleY = scale;
                    scaleZ = scale;
                elseif length(scale) == 3
                    scaleX = scale(1);
                    scaleY = scale(2);
                    scaleZ = scale(3);
                else
                    error('Scale Parameter should be a scalar or 3 element array');
                end
            end
            
            if nargin < (3 + idxOffset)
                xyz_color = {'r-','g-','b-'};
            else
                xyz_color = varargin{3 + idxOffset};
                xyz_color = {xyz_color xyz_color xyz_color};
            end
            
            if isequal(size(F),[3 3])
                R = F; %% Rotation matrix provided
                F = eye(4);
                F(1:3,1:3) = R;
            end
            
            Xaxis = scaleX.*[0 1;0 0; 0 0];
            Yaxis = scaleY.*[0 0;0 1; 0 0];
            Zaxis = scaleZ.*[0 0;0 0; 0 1];
            
            holdState = ishold(ax);
            hold(ax,'on');
            
            hTriad = hgtransform('Parent',hParent);
            
            plot3(hTriad,Xaxis(1,:),Xaxis(2,:),Xaxis(3,:),xyz_color{1},'LineWidth',2);
            plot3(hTriad,Yaxis(1,:),Yaxis(2,:),Yaxis(3,:),xyz_color{2},'LineWidth',2);
            plot3(hTriad,Zaxis(1,:),Zaxis(2,:),Zaxis(3,:),xyz_color{3},'LineWidth',2);
            
            set(hTriad,'Matrix',F);
            
            % Restore hold state
            if holdState
                hold(ax,'on');
            else
                hold(ax,'off');
            end
            
            xlabel(ax,'x-axis');
            ylabel(ax,'y-axis');
            zlabel(ax,'z-axis');
        end
        function patch = stlMesh_to_patch(stlMesh)
            % This tool is designed to convert STL data, which uses face normal convention, into
            % the patch format
            % 6/4/2006 RSA
            
            patch = [];
            
            if nargin < 1
                stlMesh = f_read_stl();
                if isempty(stlMesh)
                    return
                end
            end
            
            nFaces = size(stlMesh,3);
            
            % look at points only, not normals
            % do some rearranging to list all vertices
            pts = stlMesh(1:3,1:3,:);
            pts2 = reshape(pts,3,3*nFaces)';
            pts3 = reshape(pts2,3,3*nFaces)';
            [vertices,idxI,idxJ] = unique(pts3,'rows');
            
            faces = reshape(idxJ,nFaces,3);
            
            patch.faces = faces;
            patch.vertices = vertices;
            
        end
        function [stlMesh msg] = readStl(fileName)
            % F_READ_STL - read stl file
            %
            %   [stlMesh msg] = f_read_stl()
            %       Prompts the user for an stl file. Reads and converts it into the
            %       easily portable 'mesh' matrix format. This function automatically
            %       checks for binary vs ascii stl files.
            %
            %   [stlMesh msg] = f_read_stl(filename)
            %       Reads in the given stl file.
            
            % $Log: f_read_stl.m  $
            % Revision 1.9 2010/12/16 17:39:17EST Armiger, Robert S. (ArmigRS1-a)
            % revised stl binary read methodology and added compatability for big endian files
            % Revision 1.8 2010/08/23 16:25:43EDT murphrj2-a
            % added auto determination of binary files
            
            % 25 Feb 2009 RSA: revised to use textscan which is hugely faster than
            % fscanf in a loop
            
            if nargin < 1
                [filename, pathname, filterindex] = uigetfile( ...
                    {'*.stl', 'STL File (*.STL)';'*.*', 'All Files (*.*)'}, ...
                    'Pick an STL file to load');
                if filterindex == 0
                    stlMesh = [];
                    msg = 'User Cancelled';
                    return
                end
                fileName = fullfile(pathname,filename);
            end
            
            % open file for reading
            [fid msg] = fopen(fileName, 'r');
            if fid < 0
                stlMesh = [];
                msg = sprintf('File %s could not be opened.\n Error was: "%s" \n',fileName,msg);
                return
            end
            
            % check for binary or ascii - look for solid/endsolid tags
            % solid is supposed to suffice but solidworks does not follow this
            % convention.
            init = strtrim(fread(fid,80,'char=>char')');
            fseek(fid,-50,'eof');
            end_str = strtrim(fread(fid,50,'char=>char')');
            
            isBinary = ~(strcmpi(init(1:5),'solid') && ...
                strcmpi(end_str(end-7:end),'endsolid')); %strcmp returns true if equal
            
            % go back to beginning of file
            fseek(fid,0,-1);
            
            try
                if isBinary
                    strFormat = 'BINARY';
                    stlMesh = read_binary_format(fid);
                else
                    strFormat = 'ASCII';
                    stlMesh = read_ascii_format(fid);
                end
                msg = [];
                fclose(fid);
            catch ME
                fclose(fid);
                stlMesh = [];
                msg = sprintf('Unable to read file: %s in %s format: %s\n ',fileName,strFormat,ME.message);
            end
            
            
            function stlMesh = read_ascii_format(fid)
                
                % Reading out info from stl file
                % Store them into normal and points matrix
                
                % Read file contents
                fgetl(fid);    %read off first line [solid] and filename
                % read formatted data.  note %*2c reads [and discards] 2 EOL chars <CRLF>
                C = textscan(fid, [...
                    '%*[facet normal] %f %f %f %*2c'  ...
                    '%*[outer loop] %*2c' ...
                    '%*[vertex] %f %f %f %*2c' ...
                    '%*[vertex] %f %f %f %*2c' ...
                    '%*[vertex] %f %f %f %*2c' ...
                    '%*[endloop] %*2c' ...
                    '%*[endfacet] %*2c' ...
                    ]);
                %make sure we're at the end
                fgetl(fid); % read off final line
                if ~feof(fid)
                    warning('Shared_Functions:EofNotReached','End of STL file not reached');
                end
                % expect [endsolid] and EOF here, this may cause a couple NaNs to show
                % up at the end of the read
                nFaces = size(C{end},1);  % use last element since we may have Nan in the first column
                
                % store in 'stlMesh' data structure
                stlMesh = zeros(4,3,nFaces);
                
                % row 4 = face normal
                stlMesh(4,1,:) = C{1}(1:nFaces);
                stlMesh(4,2,:) = C{2}(1:nFaces);
                stlMesh(4,3,:) = C{3}(1:nFaces);
                
                % row 1 = v1: xyz
                stlMesh(1,1,:) = C{4}(1:nFaces);
                stlMesh(1,2,:) = C{5}(1:nFaces);
                stlMesh(1,3,:) = C{6}(1:nFaces);
                
                % row 2 = v2: xyz
                stlMesh(2,1,:) = C{7}(1:nFaces);
                stlMesh(2,2,:) = C{8}(1:nFaces);
                stlMesh(2,3,:) = C{9}(1:nFaces);
                
                % row 3 = v3: xyz
                stlMesh(3,1,:) = C{10}(1:nFaces);
                stlMesh(3,2,:) = C{11}(1:nFaces);
                stlMesh(3,3,:) = C{12}(1:nFaces);
                
            end
            function [stlMesh colorRGB] = read_binary_format(fid)
                
                % This function reads an STL file in binary format into a single 3d matrix.
                
                if nargout > 2
                    error('Too many output arguments')
                end
                
                % Need to determine the endianess of the file fread defaults to little
                % endian on pc
                
                fseek(fid,0,1);  % seek to end of file
                numBytes = ftell(fid);  % total number of bytes
                numHeaderBytes = 84;
                sizeOfSingle = 4;
                sizeOfUInt16 = 2;
                numSinglesPerFacet = 12;
                numDataBytesPerRecord = numSinglesPerFacet * sizeOfSingle + sizeOfUInt16;
                numFacetsExpected = (numBytes - numHeaderBytes) / numDataBytesPerRecord;
                hasRemainder = rem(numFacetsExpected,1) ~= 0;
                if hasRemainder
                    error('File size is not consistent with STL binary standard')
                else
                    % Verified, re-seek to beginning
                    fseek(fid,0,-1); % seek to beginning
                end
                
                % Read file header
                ftitle = fread(fid,80,'*char'); % Read file title
                numFacetBytes = fread(fid,4,'*uint8'); % Read number of Facets
                
                % Use the expected number of facets to check endian
                numFacets = typecast(numFacetBytes,'int32');
                if numFacets == numFacetsExpected
                    fprintf('[%s] File Format is Little Endian\n',mfilename);
                    isLittleEndian = true;
                elseif swapbytes(numFacets) == numFacetsExpected
                    fprintf('[%s] File Format is Big Endian\n',mfilename);
                    isLittleEndian = false;
                    numFacets = swapbytes(numFacets);
                else
                    error('Number of expected facets does not match file header');
                end
                
                fprintf('[%s] Header: "%s"\n', mfilename, ftitle);
                fprintf('[%s] Number of Facets=%d\n', mfilename, numFacets);
                
                % Preallocate memory to save running time
                stlMesh = zeros(4,3,numFacets);
                colorRGB = zeros(3,numFacets,'uint8');
                
                % Read file data
                % 12/16/2010 RSA: Revised file read approach from a looped read of each
                % face to the 'bulk' read here.  For 500k faces this decreased read
                % time from 14 seconds to 0.5;
                %
                dataBytes = fread(fid,[numDataBytesPerRecord numFacets],'*uint8');
                
                singleBytes = dataBytes(1:48,:);  % will be cast to single
                colorBytes = dataBytes(49:50,:);  % will be cast to uint16
                
                singleVals = typecast(singleBytes(:),'single');
                if ~isLittleEndian
                    singleVals = swapbytes(singleVals);
                end
                
                singleValMatrix = reshape(singleVals,12,numFacets);
                
                % facet normal
                stlMesh(4,1,:) = reshape(singleValMatrix(1,:),1,numFacets);
                stlMesh(4,2,:) = reshape(singleValMatrix(2,:),1,numFacets);
                stlMesh(4,3,:) = reshape(singleValMatrix(3,:),1,numFacets);
                
                % vertex1
                stlMesh(1,1,:) = reshape(singleValMatrix(4,:),1,numFacets);
                stlMesh(1,2,:) = reshape(singleValMatrix(5,:),1,numFacets);
                stlMesh(1,3,:) = reshape(singleValMatrix(6,:),1,numFacets);
                
                % vertex2
                stlMesh(2,1,:) = reshape(singleValMatrix(7,:),1,numFacets);
                stlMesh(2,2,:) = reshape(singleValMatrix(8,:),1,numFacets);
                stlMesh(2,3,:) = reshape(singleValMatrix(9,:),1,numFacets);
                
                % vertex3
                stlMesh(3,1,:) = reshape(singleValMatrix(10,:),1,numFacets);
                stlMesh(3,2,:) = reshape(singleValMatrix(11,:),1,numFacets);
                stlMesh(3,3,:) = reshape(singleValMatrix(12,:),1,numFacets);
                
                colorType = typecast(colorBytes(:),'uint16');
                if ~isLittleEndian
                    colorType = swapbytes(colorType);
                end
                
                if any(bitget(colorType,16)==1)
                    r = bitshift(bitand(2^16-1, colorType),-10);
                    g = bitshift(bitand(2^11-1, colorType),-5);
                    b = bitand(2^6-1, colorType);
                    colorRGB(1,:) = r;
                    colorRGB(2,:) = g;
                    colorRGB(3,:) = b;
                end
                
                % For more information http://rpdrc.ic.polyu.edu.hk/old_files/stl_binary_format.htm
            end
            
        end
        function q = disc(x,n,a)
            % Create a disc at point x, oriented with normal vector n, with radius a
            
            m = a;
            
            
            [x1 y1] = pol2cart(linspace(0,2*pi),a);
            p = [x1;y1;zeros(size(x1))];
            
            Z_axis = n;
            
            Y_axis = cross(n,[m 0 0]);
            % Y_axis2 = cross(n,[m 0 0]);
            X_axis = cross(Y_axis,Z_axis);
            
            i_hat = X_axis ./ norm(X_axis);
            j_hat = Y_axis ./ norm(Y_axis);
            k_hat = Z_axis ./ norm(Z_axis);
            
            R = [i_hat(:) j_hat(:) k_hat(:)];
            
            q = bsxfun(@plus,R*p,x);
            
            return
        end
        function varargout = f_plot3(varargin)
            % designed to work just like plot3, but to organize inputs if we assume
            % column vectors
            %
            % Usage: f_plot3(columnVecPts)
            %        f_plot3(hAx,columnVecPts,'r.','MarkerSize',10)
            %        hPlot = f_plot3(...)  returns a handle
            %
            
            hLine = [];
            if nargout > 0
                varargout{1} = hLine;
            end
            
            if nargin < 1 || isempty(varargin{1})
                disp('f_plot3: No data Provided');
                return
            end
            
            
            %%see also colormap.m to see how matlab handles input args
            isHgParent = ...
                isscalar(varargin{1}) && ...
                ishandle(varargin{1}) && ...
                (strcmp(get(varargin{1},'type'),'axes') || strcmp(get(varargin{1},'type'),'hgtransform'));
            
            if isHgParent
                % if you give a handle, then you can have either 2 or 3+ args
                hParent = varargin{1};
                if nargin < 2
                    error('First arg was a handle. If you provide a handle, you must provide a second arg');
                else
                    columnVecPts = varargin{2};
                end
                nextIndex = 3; %% meaning that this is the varargin index that starts the plotProps
            else
                % if it's not a handle, then you can have either 1 or 2+ args
                hParent = gca;
                columnVecPts = varargin{1};
                nextIndex = 2; %% meaning that this is the varargin index that starts the plotProps
            end
            
            %%Column vectors are a must
            if size(columnVecPts,1) ~= 3
                error('Use Column Vectors');
            end
            
            %%Note varargin {n:end} has the special property of dissapearing as a
            %%function input when the user provides less than n imputs; so the last
            %%argument will siply not exist is no data is provided
            hLine = plot3(hParent,columnVecPts(1,:),columnVecPts(2,:),columnVecPts(3,:),varargin{nextIndex:end});
            
            plotTextLabels = false;
            if plotTextLabels
                npts = size(columnVecPts,2);
                if 10 <= npts && npts <= 99
                    % works for npts 10-99
                    str = [' ' num2str(1:npts,'%2d')];
                    strTxt = reshape(str,[],npts)';
                    text(columnVecPts(1,:),columnVecPts(2,:),columnVecPts(3,:),strTxt,'FontSize',18);
                elseif npts < 10
                    str = num2str(1:npts,'%1d');
                    strTxt = reshape(str,[],npts)';
                    text(columnVecPts(1,:),columnVecPts(2,:),columnVecPts(3,:),strTxt,'FontSize',18);
                end
            end
            
            if nargout > 0
                varargout{1} = hLine;
            end
        end
        function lambda = wrapToPi(lambda)
            %wrapToPi Wrap angle in radians to [-pi pi]
            %
            %   lambdaWrapped = wrapToPi(LAMBDA) wraps angles in LAMBDA, in radians,
            %   to the interval [-pi pi] such that pi maps to pi and -pi maps to
            %   -pi.  (In general, odd, positive multiples of pi map to pi and odd,
            %   negative multiples of pi map to -pi.)
            %
            %   See also wrapTo2Pi, wrapTo180, wrapTo360.
            
            % Copyright 2007-2008 The MathWorks, Inc.
            % $Revision$  $Date$
            
            q = (lambda < -pi) | (pi < lambda);
            lambda(q) = wrapTo2Pi(lambda(q) + pi) - pi;
        end
        function lambda = wrapTo2Pi(lambda)
            %wrapTo2Pi Wrap angle in radians to [0 2*pi]
            %
            %   lambdaWrapped = wrapTo2Pi(LAMBDA) wraps angles in LAMBDA, in radians,
            %   to the interval [0 2*pi] such that zero maps to zero and 2*pi maps
            %   to 2*pi. (In general, positive multiples of 2*pi map to 2*pi and
            %   negative multiples of 2*pi map to zero.)
            %
            %   See also wrapToPi, wrapTo180, wrapTo360.
            
            % Copyright 2007-2008 The MathWorks, Inc.
            % $Revision$  $Date$
            
            positiveInput = (lambda > 0);
            lambda = mod(lambda, 2*pi);
            lambda((lambda == 0) & positiveInput) = 2*pi;
        end
    end
end