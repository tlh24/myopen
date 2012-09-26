function [max_out, index_out] = eml_max(u,v)%#eml
    % custom max function that doesn't return index_out as a double, suitable
    % for embedded matlab (ref: RSA email to Dave Hoadley 7/7/09)
    
    if nargin == 1
        arraylength = uint32(length(u));
        
        assert(arraylength >= 2);
        
        % start with first element as max
        max_out = u(1);
        index_out = uint32(1);
        
        % check all others
        for idx = uint32(2):arraylength
            
            if u(idx) > max_out
                
                max_out = u(idx);
                index_out = idx;
                
            end
        end
    else
        index_out = uint32(0);
        if u >= v
            max_out = u;
        else
            max_out = v;
        end
    end
