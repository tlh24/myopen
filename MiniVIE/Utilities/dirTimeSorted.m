function sortedDirContents = dirTimeSorted(dirName)
%sortedDirContents = BimsAnalysis.dirTimeSorted(dirName)
% get directory but reorder by datenum field.  Useful for
% pulling acquired data in the order acquired
%
% 11/2/2012 RSA: Created

% get directory contents from wildcard source
structDirContents = dir(dirName);
assert(~isempty(structDirContents),'Input files not found');

% Sort by date
[~, id] = sort([structDirContents(:).datenum]);

sortedDirContents = structDirContents(id);
