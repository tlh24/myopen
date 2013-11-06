function test_tactor_nfu
% Simple test of tactor control with a GUI.  

hPort = instrfind;

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
                val = [0 0 0];

                val(id) = 30;
                %fwrite(hPort,uint8([101 val 102]));
                fwrite(hPort,uint8([201 val 202]));

                fprintf('Activating Tactor #%s\n',key);
        end
    end

    function keyUp(key)
        switch key
            case {'1' '2' '3' '4' '5' '6' '7' '8' '9'}
                id = str2double(key);
                val = [0 0 0];

                pause(0.1);
                %fwrite(hPort,uint8([101 val 102]));
%                 fwrite(hPort,uint8([201 val 202]));

        end
    end


end




