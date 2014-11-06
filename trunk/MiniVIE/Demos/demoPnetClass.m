% Demo the compact version of pnet wrapped into a class.  This can be run
% across two matlab session ir within it's own session
pnet('closeall')

%% Setup Reciever (Session 1)
hUdpHostRcv = PnetClass(56002,56001,'127.0.0.1');
[success, msg] = hUdpHostRcv.initialize()

%% Setup Sender (Session 2)
hUdpHostSend = PnetClass(56001,56002,'127.0.0.1');
[success, msg] = hUdpHostSend.initialize()

%% Send (Session 2)
hUdpHostSend.putData(char('Hello World'))

%% Receive (Session 1)
[d, n]= hUdpHostRcv.getAllData;
if n > 0
    for i = 1:n, disp(char(d{i}));end
else
    disp('No Data');
end