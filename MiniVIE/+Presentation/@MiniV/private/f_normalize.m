% Normalize a list of vectors (3xnVectors)

function d = f_normalize(a)

if size(a,1) ~= 3, error('Use Column Vectors'),end;

b = sum(a.^2).^0.5;
c = repmat(b,3,1);
d = a ./ c;
