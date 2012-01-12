classdef DataSink < hgsetget
    properties (Abstract = true) 
        id
    end
    
    methods (Abstract) 
        putdata(obj,jointData)
        close(obj) 
    end 
end
