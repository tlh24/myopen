% Bobby Armiger 4/18/05
% Check number of input arg
% Bobby Armiger 4/14/05
% try-catch statement for incomplete surfaces
% Bobby Armiger 4/8/05
% Apply transformation matrix to entire surface model

function model_out = f_transform_model(F,model_in)

if nargin < 2;error('Not enough input arguments');end;

model_out = model_in;

model_out.elementData = model_in.elementData;
model_out.nodeData = f_transform(F,model_in.nodeData')';
F(1:3,4) = zeros(3,1);

if isfield(model_in,'nodeNormals')
    if isempty(model_in.nodeNormals)
        model_out.nodeNormals = [];
    else
        model_out.nodeNormals = f_transform(F,model_in.nodeNormals')';
    end
end
if isfield(model_in,'faceNormals')
    if isempty(model_in.faceNormals)
        model_out.faceNormals = [];
    else
        model_out.faceNormals = f_transform(F,model_in.faceNormals')';
    end
end
