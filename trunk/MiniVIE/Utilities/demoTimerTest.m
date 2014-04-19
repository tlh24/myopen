function timerTest()
%%

hTimer1 = UiTools.create_timer('Foo',@(src,evt)disp('test1'));
hTimer1.Period = 1;

hTimer2 = UiTools.create_timer('Bar',@(src,evt)disp(clock));
hTimer2.Period = 0.02;

start(hTimer1)
start(hTimer2)

while 1
    disp('hog')
    pause(10)
end



