% Bimanual Right
%bimanParams.VulcanXAddress = '127.0.0.1';
bimanParams.VulcanXAddress = '192.168.0.151';
bimanParams.VulcanXDestinationPort = 9024;
bimanParams.VulcanXLocalPort = 56001;
bimanParams.UdpArmTrackingPort = 56701;
bimanParams.hSource = Inputs.DaqHwDevice('nidaq','Dev3');
bimanParams.JoystickId = 0;
bimanParams.guiName = 'MiniVIE-Right-Dev3-9024';
bimanParams.filePrefix = 'JH_TR_BiLat_R_';
[ obj ] = BimanualCommon( bimanParams );
