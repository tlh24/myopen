function test_tactor_nfu
% Simple test of tactor control with a GUI.  

hNfu = MPL.NfuUdp.getInstance;
assert(hNfu.initialize() >=0 ,'NFU Init Failed');


f = UiTools.create_figure('TactorControlTest');
uicontrol(f,...
    'Style','text',...
    'String','Press the number key for the corresponding tactor id',...
     'Position', [230 200 120 50])

set(f,'WindowKeyPressFcn',@(src,evt)keyDown(evt.Key));
set(f,'WindowKeyReleaseFcn',@(src,evt)keyUp(evt.Key));


    function keyDown(key)
        switch key
            case {'1' '2' '3' '4' '5' '6' '7' '8' '9'}
                id = str2double(key);
                val = 100;
                if id < 3
                    val = val*10;
                    cLimit = 200;
                else
                    cLimit = 100;
                end
                hNfu.tactorControl(id, 100, val, 100, cLimit, 0);
                disp('down')
        end
    end

    function keyUp(key)
        switch key
            case {'1' '2' '3' '4' '5' '6' '7' '8' '9'}
                id = str2double(key);
                val = 0;
                hNfu.tactorControl(id, 100, val, 100, 100, 0);
        end
    end


end




