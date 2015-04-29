% TEST_vMPL_Unity
%
% Data should be sent in little endian format.
% 
% Message               Transmission Type	Source	Target	Port
% Left vMPL Command             Broadcast	VULCANX	vMPLEnv	25100
% Right vMPL Command            Broadcast	VULCANX	vMPLEnv	25000
% Left vMPL Percepts            Broadcast	vMPLEnv	VULCANX	25101
% Right vMPL Percepts           Broadcast	vMPLEnv	VULCANX	25001
% Left Virtual Hand Command     Broadcast	VULCANX	vMPLEnv	25300
% Right Virtual Hand Command	Broadcast	VULCANX	vMPLEnv	25200
% Left Virtual Hand Percepts	Broadcast	vMPLEnv	VULCANX	25301
% Right Virtual Hand Percepts	Broadcast	vMPLEnv	VULCANX	25201
%
% enum AllJointsType
% {
% SHOULDER_FE,	SHOULDER_AB_AD,
% HUMERAL_ROT,
% ELBOW, 
% WRIST_ROT,		WRIST_AB_AD,	WRIST_FE,
% INDEX_AB_AD, 	INDEX_MCP,		INDEX_PIP,		INDEX_DIP,
% MIDDLE_AB_AD,	MIDDLE_MCP,	MIDDLE_PIP,	MIDDLE_DIP,
% RING_AB_AD,	RING_MCP,		RING_PIP,		RING_DIP,
% LITTLE_AB_AD,	LITTLE_MCP,	LITTLE_PIP,	LITTLE_DIP,
% THUMB_CMC_AD_AB,	THUMB_CMC_FE,	THUMB_MCP,		THUMB_IP
% };
%
% enum FingerType
% {
% INDEX_AB_AD, 	INDEX_MCP,		INDEX_PIP,		INDEX_DIP,
% MIDDLE_AB_AD,	MIDDLE_MCP,	MIDDLE_PIP,	MIDDLE_DIP,
% RING_AB_AD,	RING_MCP,		RING_PIP,		RING_DIP,
% LITTLE_AB_AD,	LITTLE_MCP,	LITTLE_PIP,	LITTLE_DIP,
% THUMB_CMC_AD_AB,	THUMB_CMC_FE,	THUMB_MCP,		THUMB_IP
% };


a = PnetClass(43897);
a.initialize
%%

ang = zeros(1,27,'single');
ang(1) = 0
ang(2) = 0
ang(3) = 0
ang(4) = 135

a.putData(typecast(ang*pi/180,'uint8'),'127.0.0.1',25000)
