%% DEBUG

% get a motion file

fp = fopen('C:\MSMS\MSMS Beta 0.9.1\Sample Models\WRAMC_Model\Data\Right arm demo.msm','r');
hdr = fgetl(fp);

H = textscan(hdr,'%s');
names = H{1}(2:end)


C = textscan(fp,[repmat('%f ',1,length(names{1}))] )
d = cell2mat(C);
t = d(:,1); % time
a = d(:,2:end); % angles
fclose(fp)

%%
m = MSMS_WRAMC_Model
m.initialize
%%
j = zeros(1,29);

j(action_bus_enum.Elbow) = 90;
j(action_bus_enum.Thumb_AbAd) = 8;
j(action_bus_enum.Thumb_FE) = 6;
j(action_bus_enum.Thumb_IP) = -5;
j(action_bus_enum.Thumb_MCP) = 10;

m.putdata(j)

%%

d = zeros(82,1);
d(strcmp('elbow_flex_r',m.modelJointOrder)) = 90;
d(strcmp('thumb_flex_r',m.modelJointOrder)) = 90;
m.sendJointParameters(d);



%%

simulationSetup = a.Children(2);
general = simulationSetup.Children(2);
setup = simulationSetup.Children(4);
setup.Children(30)





    

