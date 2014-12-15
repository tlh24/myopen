clc
s = serial('COM20','BaudRate',115200);
s.InputBufferSize = 51200;
fopen(s)

%%
f = figure(1);
a = gca(f)
l = GUIs.widgetStripChart(a);
l.initialize(1,500,'Arduino'); 
l.YLim = [0 1200];
saveMe = [];
StartStopForm([])
while StartStopForm
    drawnow
    v = [];
    i = 0;
    
    if s.BytesAvailable > 0
        b = fread(s,s.BytesAvailable);
    else
        continue
    end
    % append leftover bytes
    b = cat(1,saveMe,b);
    
    idxLast = find(b == 10,1,'last');
    if idxLast < length(b)
        saveMeNext = b(idxLast+1:end);
    elseif isempty(idxLast)
        saveMeNext = b;
        continue
    else
        saveMeNext = [];
    end
    
    idxFirst = find(b == 10,1,'first');
    C = textscan(char(b(idxFirst+1:idxLast)),'%d\r');
    
    for i = 1:length(C{1})
        v = C{1}(i);
        if v > 1024
            fprintf('bad val = %d\n',v)
            i
            continue
        end
        l.putdata(v); 
    end
end

%%
fclose(s)
