% Bimanual Left
%bimanParams.VulcanXAddress = '127.0.0.1';
bimanParams.VulcanXAddress = '192.168.0.151';
bimanParams.VulcanXDestinationPort = 9027;
bimanParams.VulcanXLocalPort = 56010;
bimanParams.UdpArmTrackingPort = 56710;
bimanParams.hSource = Inputs.DaqHwDevice('nidaq','Dev2');
bimanParams.JoystickId = 1;
bimanParams.guiName = 'MiniVIE-Left-Dev2-9027';
bimanParams.filePrefix = 'JH_TR_BiLat_L_';
[ obj ] = BimanualCommon( bimanParams );
