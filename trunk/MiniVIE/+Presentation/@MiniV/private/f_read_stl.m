% reads an stl file and converts it into the easily portable 'mesh' matrix format
% Modified 4/25/05 to allocate memory first - Bobby
function stlMesh = f_stl_read(fileName)
stlMesh = [];
if nargin < 1
    [filename, pathname, filterindex] = uigetfile( ...
        {'*.stl', 'STL File (*.STL)';'*.*', 'All Files (*.*)'}, ...
        'Pick a file');
    if filterindex == 0
        return
    end
    fileName = fullfile(pathname,filename);
end


S = fopen(fileName,'r');
if S < 0
    error(sprintf('File " %s " not found',fileName));
end

% Reading out info. from stl file
% Store them into normal and points matrix
try
    fgetl(S);    %read off 'solid' and filename
    i=0;
    stlMesh = zeros(4,3,200000);
    while ~feof(S)
        read = fscanf(S,'%s',1);   % 'face'
        if strcmp(read,'endsolid')
            break;
        end
        i=i+1;
        fscanf(S,'%s',1);  % 'normal'
        % Storing the face normal vector for each grid in the fourth row, columns 1,2,3
        read = fscanf(S,'%f',3);
        stlMesh(4,1:3,i) = read;
        % Storing the vertex information V1 is row 1, etc.
        fscanf(S,'%s',2); % 'outer loop'
        fscanf(S,'%s',1); % 'vertex'
        read = fscanf(S,'%f',3);
        stlMesh(1,1:3,i) = read;
        fscanf(S,'%s',1); % 'vertex'
        read = fscanf(S,'%f',3);
        stlMesh(2,1:3,i) = read;
        fscanf(S,'%s',1); % 'vertex'
        read = fscanf(S,'%f',3);
        stlMesh(3,1:3,i) = read;
        fscanf(S,'%s',2); %'endloop' 'endfacet'
    end
    if size(stlMesh,3) > i
        stlMesh(:,:,i+1:end) = [];
    end
catch
    msg = sprintf('---> Error: Couldn''t read file: %s \n',fileName);
    disp(msg);
end

fclose(S);
