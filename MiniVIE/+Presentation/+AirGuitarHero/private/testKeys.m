function testKeys(s)

f = figure('Name','AGH Test');
uicontrol(f,...
    'Style','text',...
    'String','Press the keys "a" "s" "d" "f" for the notes',...
    'Position', [230 200 120 50])

set(f,'WindowKeyPressFcn',@(src,evt)keyDown(evt.Key));
set(f,'WindowKeyReleaseFcn',@(src,evt)keyUp(evt.Key));

    function keyDown(key)
        switch key
            case 'a'
                val = bitor(uint8(1),uint8(128));
            case 's'
                val = bitor(uint8(2),uint8(128));
            case 'd'
                val = bitor(uint8(4),uint8(128));
            case 'f'
                val = bitor(uint8(8),uint8(128));
        end
        
        try
            fwrite(s,val)
        catch ME
            warning(ME.message)
        end
    end

    function keyUp(key)
        try
            fwrite(s,0)
        catch ME
            warning(ME.message)
        end
    end
end

