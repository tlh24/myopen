%%
cd C:\svn\myopen\MiniVIE\+Presentation\+AirGuitarHero\private

%%

t = timer('ExecutionMode','fixedRate','Period',0.02,'TimerFcn',@(src,evt)vcapg2);
start(t)

%%
fprintf('Creating serial object...')
s = serial('COM16','BaudRate',115200);
fprintf('Done\n')
%%
fprintf('Opening %s...',s.Port)
fopen(s);
fprintf('Done\n')

%%
testKeys(s)


