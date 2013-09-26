
stage.dxe:     file format elf32-bfin

Disassembly of section .text:

ffa08000 <start>:
ffa08000:	81 61       	R1 = 0x30 (X);		/*		R1=0x30( 48) */
ffa08002:	11 3e       	SYSCFG = R1;
ffa08004:	4e e1 b0 ff 	SP.H = 0xffb0;		/* (-80)	SP=0xffb00000 */
ffa08008:	0e e1 00 04 	SP.L = 0x400;		/* (1024)	SP=0xffb00400 */
ffa0800c:	7e 32       	FP = SP;

ffa0800e <setupPLL>:
ffa0800e:	08 e1 00 00 	P0.L = 0x0;		/* (  0)	P0=0x0 */
ffa08012:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00000(-4194304) */
ffa08016:	01 95       	R1 = W[P0] (Z);
ffa08018:	11 30       	R2 = R1;
ffa0801a:	80 e1 00 00 	R0 = 0x0 (Z);		/*		R0=0x0(  0) */
ffa0801e:	00 e1 ff ff 	R0.L = 0xffff;		/* ( -1)	R0=0xffff(65535) */
ffa08022:	41 54       	R1 = R1 & R0;
ffa08024:	00 e1 00 1e 	R0.L = 0x1e00;		/* (7680)	R0=0x1e00(7680) */
ffa08028:	41 56       	R1 = R1 | R0;
ffa0802a:	01 e1 00 20 	R1.L = 0x2000;		/* (8192)	R1=0x2000(8192) */
ffa0802e:	09 e1 24 01 	P1.L = 0x124;		/* (292)	P1=0x124 */
ffa08032:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00124(-4194012) */
ffa08036:	08 91       	R0 = [P1];
ffa08038:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa0803a:	08 93       	[P1] = R0;
ffa0803c:	01 97       	W[P0] = R1;
ffa0803e:	24 00       	SSYNC;
ffa08040:	30 00       	CLI R0;
ffa08042:	20 00       	IDLE;
ffa08044:	40 00       	STI R0;
ffa08046:	08 e1 04 00 	P0.L = 0x4;		/* (  4)	P0=0xffc00004(-4194300) */
ffa0804a:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00004(-4194300) */
ffa0804e:	00 e1 02 00 	R0.L = 0x2;		/* (  2)	R0=0x2(  2) */
ffa08052:	00 97       	W[P0] = R0;
ffa08054:	08 e1 08 20 	P0.L = 0x2008;		/* (8200)	P0=0xffc02008(-4186104) */
ffa08058:	48 e1 e0 ff 	P0.H = 0xffe0;		/* (-32)	P0=0xffe02008(-2088952) */
ffa0805c:	00 e1 96 81 	R0.L = 0x8196;		/* (-32362)	R0=0x8196(33174) */
ffa08060:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa08196 <_NHANDLER>(-6258282) */
ffa08064:	00 92       	[P0++] = R0;
ffa08066:	00 e1 9e 81 	R0.L = 0x819e;		/* (-32354)	R0=0xffa0819e <EXC_HANDLER>(-6258274) */
ffa0806a:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa0819e <EXC_HANDLER>(-6258274) */
ffa0806e:	00 92       	[P0++] = R0;
ffa08070:	00 92       	[P0++] = R0;
ffa08072:	00 e1 94 81 	R0.L = 0x8194;		/* (-32364)	R0=0xffa08194 <_HWHANDLER>(-6258284) */
ffa08076:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa08194 <_HWHANDLER>(-6258284) */
ffa0807a:	00 92       	[P0++] = R0;
ffa0807c:	00 e1 a6 81 	R0.L = 0x81a6;		/* (-32346)	R0=0xffa081a6 <_THANDLER>(-6258266) */
ffa08080:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa081a6 <_THANDLER>(-6258266) */
ffa08084:	00 92       	[P0++] = R0;
ffa08086:	00 e1 c2 81 	R0.L = 0x81c2;		/* (-32318)	R0=0xffa081c2 <_RTCHANDLER>(-6258238) */
ffa0808a:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa081c2 <_RTCHANDLER>(-6258238) */
ffa0808e:	00 92       	[P0++] = R0;
ffa08090:	00 e1 c8 81 	R0.L = 0x81c8;		/* (-32312)	R0=0xffa081c8 <_I8HANDLER>(-6258232) */
ffa08094:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa081c8 <_I8HANDLER>(-6258232) */
ffa08098:	00 92       	[P0++] = R0;
ffa0809a:	00 e1 ce 81 	R0.L = 0x81ce;		/* (-32306)	R0=0xffa081ce <_I9HANDLER>(-6258226) */
ffa0809e:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa081ce <_I9HANDLER>(-6258226) */
ffa080a2:	00 92       	[P0++] = R0;
ffa080a4:	00 e1 6c 81 	R0.L = 0x816c;		/* (-32404)	R0=0xffa0816c <_I11HANDLER>(-6258324) */
ffa080a8:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa0816c <_I11HANDLER>(-6258324) */
ffa080ac:	00 92       	[P0++] = R0;
ffa080ae:	00 e1 6c 81 	R0.L = 0x816c;		/* (-32404)	R0=0xffa0816c <_I11HANDLER>(-6258324) */
ffa080b2:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa0816c <_I11HANDLER>(-6258324) */
ffa080b6:	00 92       	[P0++] = R0;
ffa080b8:	00 e1 6e 81 	R0.L = 0x816e;		/* (-32402)	R0=0xffa0816e <_I12HANDLER>(-6258322) */
ffa080bc:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa0816e <_I12HANDLER>(-6258322) */
ffa080c0:	00 92       	[P0++] = R0;
ffa080c2:	00 e1 70 81 	R0.L = 0x8170;		/* (-32400)	R0=0xffa08170 <_I13HANDLER>(-6258320) */
ffa080c6:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa08170 <_I13HANDLER>(-6258320) */
ffa080ca:	00 92       	[P0++] = R0;
ffa080cc:	00 e1 76 81 	R0.L = 0x8176;		/* (-32394)	R0=0xffa08176 <_I14HANDLER>(-6258314) */
ffa080d0:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa08176 <_I14HANDLER>(-6258314) */
ffa080d4:	00 92       	[P0++] = R0;
ffa080d6:	00 e1 7c 81 	R0.L = 0x817c;		/* (-32388)	R0=0xffa0817c <_I15HANDLER>(-6258308) */
ffa080da:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa0817c <_I15HANDLER>(-6258308) */
ffa080de:	00 92       	[P0++] = R0;
ffa080e0:	08 e1 3c 20 	P0.L = 0x203c;		/* (8252)	P0=0xffe0203c(-2088900) */
ffa080e4:	48 e1 e0 ff 	P0.H = 0xffe0;		/* (-32)	P0=0xffe0203c(-2088900) */
ffa080e8:	00 e1 52 81 	R0.L = 0x8152;		/* (-32430)	R0=0xffa08152 <call_main>(-6258350) */
ffa080ec:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa08152 <call_main>(-6258350) */
ffa080f0:	00 93       	[P0] = R0;
ffa080f2:	08 e1 0c 01 	P0.L = 0x10c;		/* (268)	P0=0xffe0010c(-2096884) */
ffa080f6:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc0010c(-4194036) */
ffa080fa:	00 e1 00 28 	R0.L = 0x2800;		/* (10240)	R0=0xffa02800(-6281216) */
ffa080fe:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x2800(10240) */
ffa08102:	00 93       	[P0] = R0;
ffa08104:	08 e1 10 01 	P0.L = 0x110;		/* (272)	P0=0xffc00110(-4194032) */
ffa08108:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00110(-4194032) */
ffa0810c:	00 e1 5f ff 	R0.L = 0xff5f;		/* (-161)	R0=0xff5f(65375) */
ffa08110:	40 e1 ff ff 	R0.H = 0xffff;		/* ( -1)	R0=0xffffff5f(-161) */
ffa08114:	00 93       	[P0] = R0;
ffa08116:	08 e1 14 01 	P0.L = 0x114;		/* (276)	P0=0xffc00114(-4194028) */
ffa0811a:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00114(-4194028) */
ffa0811e:	00 e1 ff 34 	R0.L = 0x34ff;		/* (13567)	R0=0xffff34ff(-51969) */
ffa08122:	40 e1 ff ff 	R0.H = 0xffff;		/* ( -1)	R0=0xffff34ff(-51969) */
ffa08126:	00 93       	[P0] = R0;
ffa08128:	08 e1 18 01 	P0.L = 0x118;		/* (280)	P0=0xffc00118(-4194024) */
ffa0812c:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00118(-4194024) */
ffa08130:	00 e1 ff ff 	R0.L = 0xffff;		/* ( -1)	R0=0xffffffff( -1) */
ffa08134:	40 e1 ff ff 	R0.H = 0xffff;		/* ( -1)	R0=0xffffffff( -1) */
ffa08138:	00 93       	[P0] = R0;
ffa0813a:	23 00       	CSYNC;
ffa0813c:	80 e1 00 80 	R0 = 0x8000 (Z);		/*		R0=0x8000(32768) */
ffa08140:	40 00       	STI R0;
ffa08142:	9f 00       	RAISE 0xf;
ffa08144:	08 e1 50 81 	P0.L = 0x8150;		/* (-32432)	P0=0xffc08150(-4161200) */
ffa08148:	48 e1 a0 ff 	P0.H = 0xffa0;		/* (-96)	P0=0xffa08150 <wait> */
ffa0814c:	58 3e       	RETI = P0;
ffa0814e:	11 00       	RTI;

ffa08150 <wait>:
ffa08150:	00 20       	JUMP.S 0xffa08150 <wait>;

ffa08152 <call_main>:
ffa08152:	7b 01       	[--SP] = RETI;
ffa08154:	08 e1 18 83 	P0.L = 0x8318;		/* (-31976)	P0=0xffa08318 <_main> */
ffa08158:	48 e1 a0 ff 	P0.H = 0xffa0;		/* (-96)	P0=0xffa08318 <_main> */
ffa0815c:	00 e1 68 81 	R0.L = 0x8168;		/* (-32408)	R0=0x8168(33128) */
ffa08160:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa08168 <end>(-6258328) */
ffa08164:	38 38       	RETS = R0;
ffa08166:	50 00       	JUMP (P0);

ffa08168 <end>:
ffa08168:	20 00       	IDLE;
ffa0816a:	ff 2f       	JUMP.S 0xffa08168 <end>;

ffa0816c <_I11HANDLER>:
ffa0816c:	11 00       	RTI;

ffa0816e <_I12HANDLER>:
ffa0816e:	11 00       	RTI;

ffa08170 <_I13HANDLER>:
ffa08170:	00 e1 0d 00 	R0.L = 0xd;		/* ( 13)	R0=0xffa0000d(-6291443) */
ffa08174:	0a 20       	JUMP.S 0xffa08188 <display_fail>;

ffa08176 <_I14HANDLER>:
ffa08176:	00 e1 0e 00 	R0.L = 0xe;		/* ( 14)	R0=0xffa0000e(-6291442) */
ffa0817a:	07 20       	JUMP.S 0xffa08188 <display_fail>;

ffa0817c <_I15HANDLER>:
ffa0817c:	00 e1 0f 00 	R0.L = 0xf;		/* ( 15)	R0=0xffa0000f(-6291441) */
ffa08180:	04 20       	JUMP.S 0xffa08188 <display_fail>;

ffa08182 <idle_loop>:
ffa08182:	20 00       	IDLE;
ffa08184:	24 00       	SSYNC;
ffa08186:	fe 2f       	JUMP.S 0xffa08182 <idle_loop>;

ffa08188 <display_fail>:
ffa08188:	c1 31       	R0 = SEQSTAT;
ffa0818a:	cc 31       	R1 = RETX;
ffa0818c:	20 00       	IDLE;
ffa0818e:	24 00       	SSYNC;
ffa08190:	f9 2f       	JUMP.S 0xffa08182 <idle_loop>;
ffa08192:	12 00       	RTX;

ffa08194 <_HWHANDLER>:
ffa08194:	11 00       	RTI;

ffa08196 <_NHANDLER>:
ffa08196:	20 00       	IDLE;
ffa08198:	24 00       	SSYNC;
ffa0819a:	f4 2f       	JUMP.S 0xffa08182 <idle_loop>;
ffa0819c:	12 00       	RTX;

ffa0819e <EXC_HANDLER>:
ffa0819e:	20 00       	IDLE;
ffa081a0:	24 00       	SSYNC;
ffa081a2:	f0 2f       	JUMP.S 0xffa08182 <idle_loop>;
ffa081a4:	12 00       	RTX;

ffa081a6 <_THANDLER>:
ffa081a6:	4a 01       	[--SP] = P2;
ffa081a8:	40 01       	[--SP] = R0;
ffa081aa:	41 01       	[--SP] = R1;
ffa081ac:	66 01       	[--SP] = ASTAT;
ffa081ae:	10 91       	R0 = [P2];
ffa081b0:	81 e1 01 00 	R1 = 0x1 (Z);		/*		R1=0x1(  1) */
ffa081b4:	08 50       	R0 = R0 + R1;
ffa081b6:	10 93       	[P2] = R0;
ffa081b8:	26 01       	ASTAT = [SP++];
ffa081ba:	31 90       	R1 = [SP++];
ffa081bc:	30 90       	R0 = [SP++];
ffa081be:	72 90       	P2 = [SP++];
ffa081c0:	11 00       	RTI;

ffa081c2 <_RTCHANDLER>:
ffa081c2:	00 e1 07 00 	R0.L = 0x7;		/* (  7)	R0=0xffa00007(-6291449) */
ffa081c6:	e1 2f       	JUMP.S 0xffa08188 <display_fail>;

ffa081c8 <_I8HANDLER>:
ffa081c8:	00 e1 08 00 	R0.L = 0x8;		/* (  8)	R0=0xffa00008(-6291448) */
ffa081cc:	de 2f       	JUMP.S 0xffa08188 <display_fail>;

ffa081ce <_I9HANDLER>:
ffa081ce:	00 e1 09 00 	R0.L = 0x9;		/* (  9)	R0=0xffa00009(-6291447) */
ffa081d2:	db 2f       	JUMP.S 0xffa08188 <display_fail>;

ffa081d4 <_atexit>:
ffa081d4:	10 00       	RTS;
	...

ffa081d8 <_emg_in>:
ffa081d8:	66 01       	[--SP] = ASTAT;
ffa081da:	c4 05       	[--SP] = (R7:0, P5:4);
ffa081dc:	48 01       	[--SP] = P0;
ffa081de:	49 01       	[--SP] = P1;
ffa081e0:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00124(-4194012) */
ffa081e4:	4a 01       	[--SP] = P2;
ffa081e6:	09 e1 30 08 	P1.L = 0x830;		/* (2096)	P1=0xffc00830(-4192208) */
ffa081ea:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa081ec:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff908318 */
ffa081f0:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa081f4:	08 e1 4c 60 	P0.L = 0x604c;		/* (24652)	P0=0xff90604c <_g_chan> */
ffa081f8:	08 97       	W[P1] = R0;
ffa081fa:	46 95       	R6 = W[P0] (X);
ffa081fc:	06 30       	R0 = R6;
ffa081fe:	38 64       	R0 += 0x7;		/* (  7) */
ffa08200:	3c 60       	R4 = 0x7 (X);		/*		R4=0x7(  7) */
ffa08202:	20 54       	R0 = R0 & R4;
ffa08204:	48 4f       	R0 <<= 0x9;
ffa08206:	21 e1 00 a1 	R1 = -0x5f00 (X);		/*		R1=0xffffa100(-24320) */
ffa0820a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00000(-4194304) */
ffa0820e:	08 50       	R0 = R0 + R1;
ffa08210:	0a e1 10 08 	P2.L = 0x810;		/* (2064)	P2=0xffc00810(-4192240) */
ffa08214:	10 97       	W[P2] = R0;
ffa08216:	48 95       	R0 = W[P1] (X);
ffa08218:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0821a:	24 1c       	IF CC JUMP 0xffa08262 <_emg_in+0x8a> (BP);
ffa0821c:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900000 */
ffa08220:	0d e1 50 60 	P5.L = 0x6050;		/* (24656)	P5=0xff906050 <_g_ds> */
ffa08224:	2d 91       	R5 = [P5];
ffa08226:	b2 42       	R2 = R6.L (X);
ffa08228:	82 c6 1d 80 	R0 = R5 << 0x3;
ffa0822c:	10 41       	R0 = (R0 + R2) << 0x1;
ffa0822e:	20 32       	P4 = R0;
ffa08230:	42 6c       	P2 += 0x8;		/* (  8) */
ffa08232:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900830 */
ffa08236:	51 95       	R1 = W[P2] (X);
ffa08238:	09 e1 64 60 	P1.L = 0x6064;		/* (24676)	P1=0xff906064 <_g_sample> */
ffa0823c:	20 e1 00 80 	R0 = -0x8000 (X);		/*		R0=0xffff8000(-32768) */
ffa08240:	8c 5a       	P2 = P4 + P1;
ffa08242:	08 50       	R0 = R0 + R1;
ffa08244:	05 48       	CC = !BITTST (R5, 0x0);		/* bit  0 */
ffa08246:	10 97       	W[P2] = R0;
ffa08248:	3c 14       	IF !CC JUMP 0xffa082c0 <_emg_in+0xe8> (BP);
ffa0824a:	06 30       	R0 = R6;
ffa0824c:	08 64       	R0 += 0x1;		/* (  1) */
ffa0824e:	81 42       	R1 = R0.L (X);
ffa08250:	19 4d       	R1 >>>= 0x3;
ffa08252:	20 54       	R0 = R0 & R4;
ffa08254:	04 cc 29 02 	R1 = R5 + R1 (NS) || W[P0] = R0 || NOP;
ffa08258:	00 97 00 00 
ffa0825c:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0825e:	41 54       	R1 = R1 & R0;
ffa08260:	29 93       	[P5] = R1;
ffa08262:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00810(-4192240) */
ffa08266:	0a e1 30 09 	P2.L = 0x930;		/* (2352)	P2=0xffc00930(-4191952) */
ffa0826a:	50 95       	R0 = W[P2] (X);
ffa0826c:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0826e:	21 10       	IF !CC JUMP 0xffa082b0 <_emg_in+0xd8>;
ffa08270:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900930 */
ffa08274:	0a e1 50 60 	P2.L = 0x6050;		/* (24656)	P2=0xff906050 <_g_ds> */
ffa08278:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff906064 <_g_sample> */
ffa0827c:	10 91       	R0 = [P2];
ffa0827e:	09 e1 5c 60 	P1.L = 0x605c;		/* (24668)	P1=0xff90605c <_g_outpp> */
ffa08282:	0b 91       	R3 = [P1];
ffa08284:	18 4f       	R0 <<= 0x3;
ffa08286:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff90a100(-7298816) */
ffa0828a:	18 41       	R0 = (R0 + R3) << 0x1;
ffa0828c:	01 e1 64 60 	R1.L = 0x6064;		/* (24676)	R1=0xff906064 <_g_sample>(-7315356) */
ffa08290:	08 50       	R0 = R0 + R1;
ffa08292:	10 32       	P2 = R0;
ffa08294:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa08296:	82 c6 83 80 	R0 = R3 << 0x10;
ffa0829a:	99 4f       	R1 <<= 0x13;
ffa0829c:	08 56       	R0 = R0 | R1;
ffa0829e:	12 95       	R2 = W[P2] (Z);
ffa082a0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc06050(-4169648) */
ffa082a4:	82 56       	R2 = R2 | R0;
ffa082a6:	0a e1 10 09 	P2.L = 0x910;		/* (2320)	P2=0xffc00910(-4191984) */
ffa082aa:	03 4b       	BITTGL (R3, 0x0);		/* bit  0 */
ffa082ac:	12 93       	[P2] = R2;
ffa082ae:	0b 93       	[P1] = R3;
ffa082b0:	01 e8 00 00 	UNLINK;
ffa082b4:	72 90       	P2 = [SP++];
ffa082b6:	71 90       	P1 = [SP++];
ffa082b8:	70 90       	P0 = [SP++];
ffa082ba:	84 05       	(R7:0, P5:4) = [SP++];
ffa082bc:	26 01       	ASTAT = [SP++];
ffa082be:	11 00       	RTI;
ffa082c0:	22 32       	P4 = R2;
ffa082c2:	a1 5c       	P2 = P1 + (P4 << 0x1);
ffa082c4:	10 a6       	R0 = W[P2 + 0x10] (Z);
ffa082c6:	13 95       	R3 = W[P2] (Z);
ffa082c8:	51 e4 18 00 	R1 = W[P2 + 0x30] (Z);
ffa082cc:	c3 50       	R3 = R3 + R0;
ffa082ce:	50 e4 10 00 	R0 = W[P2 + 0x20] (Z);
ffa082d2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900910 */
ffa082d6:	0a e1 58 60 	P2.L = 0x6058;		/* (24664)	P2=0xff906058 <_g_pp> */
ffa082da:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff90605c <_g_outpp> */
ffa082de:	04 cc 01 00 	R0 = R0 + R1 (NS) || R7 = [P2] || NOP;
ffa082e2:	17 91 00 00 
ffa082e6:	09 e1 54 60 	P1.L = 0x6054;		/* (24660)	P1=0xff906054 <_g_dataN> */
ffa082ea:	0a 91       	R2 = [P1];
ffa082ec:	c3 50       	R3 = R3 + R0;
ffa082ee:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900003(-7340029) */
ffa082f2:	82 c6 27 80 	R0 = R7 << 0x4;
ffa082f6:	10 41       	R0 = (R0 + R2) << 0x1;
ffa082f8:	01 e1 a4 60 	R1.L = 0x60a4;		/* (24740)	R1=0xff9060a4 <_g_data>(-7315292) */
ffa082fc:	08 50       	R0 = R0 + R1;
ffa082fe:	20 32       	P4 = R0;
ffa08300:	0a 64       	R2 += 0x1;		/* (  1) */
ffa08302:	82 c6 e2 81 	R0 = R2 >> 0x4;
ffa08306:	c7 59       	R7 = R7 ^ R0;
ffa08308:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa0830a:	13 4e       	R3 >>= 0x2;
ffa0830c:	82 54       	R2 = R2 & R0;
ffa0830e:	23 97       	W[P4] = R3;
ffa08310:	17 93       	[P2] = R7;
ffa08312:	0a 93       	[P1] = R2;
ffa08314:	9b 2f       	JUMP.S 0xffa0824a <_emg_in+0x72>;
	...

ffa08318 <_main>:
ffa08318:	4a e1 e0 ff 	P2.H = 0xffe0;		/* (-32)	P2=0xffe06058(-2072488) */
ffa0831c:	e3 05       	[--SP] = (R7:4, P5:3);
ffa0831e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa08320:	0a e1 04 10 	P2.L = 0x1004;		/* (4100)	P2=0xffe01004(-2093052) */
ffa08324:	00 e8 0b 00 	LINK 0x2c;		/* (44) */
ffa08328:	10 93       	[P2] = R0;
ffa0832a:	23 00       	CSYNC;
ffa0832c:	4a e1 e0 ff 	P2.H = 0xffe0;		/* (-32)	P2=0xffe01004(-2093052) */
ffa08330:	0a e1 04 00 	P2.L = 0x4;		/* (  4)	P2=0xffe00004(-2097148) */
ffa08334:	10 93       	[P2] = R0;
ffa08336:	23 00       	CSYNC;
ffa08338:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00004(-4194300) */
ffa0833c:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa0833e:	0a e1 40 07 	P2.L = 0x740;		/* (1856)	P2=0xffc00740(-4192448) */
ffa08342:	10 97       	W[P2] = R0;
ffa08344:	82 6f       	P2 += -0x10;		/* (-16) */
ffa08346:	51 95       	R1 = W[P2] (X);
ffa08348:	20 e1 e7 01 	R0 = 0x1e7 (X);		/*		R0=0x1e7(487) */
ffa0834c:	08 56       	R0 = R0 | R1;
ffa0834e:	10 97       	W[P2] = R0;
ffa08350:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc06054(-4169644) */
ffa08354:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa08356:	82 6e       	P2 += -0x30;		/* (-48) */
ffa08358:	10 97       	W[P2] = R0;
ffa0835a:	09 e1 08 09 	P1.L = 0x908;		/* (2312)	P1=0xffc00908(-4191992) */
ffa0835e:	38 61       	R0 = 0x27 (X);		/*		R0=0x27( 39) */
ffa08360:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc0604c(-4169652) */
ffa08364:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc06050(-4169648) */
ffa08368:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00740(-4192448) */
ffa0836c:	08 97       	W[P1] = R0;
ffa0836e:	08 e1 0c 09 	P0.L = 0x90c;		/* (2316)	P0=0xffc0090c(-4191988) */
ffa08372:	c2 60       	R2 = 0x18 (X);		/*		R2=0x18( 24) */
ffa08374:	0d e1 04 09 	P5.L = 0x904;		/* (2308)	P5=0xffc00904(-4191996) */
ffa08378:	bb 60       	R3 = 0x17 (X);		/*		R3=0x17( 23) */
ffa0837a:	0a e1 00 09 	P2.L = 0x900;		/* (2304)	P2=0xffc00900(-4192000) */
ffa0837e:	21 e1 03 0e 	R1 = 0xe03 (X);		/*		R1=0xe03(3587) */
ffa08382:	f8 61       	R0 = 0x3f (X);		/*		R0=0x3f( 63) */
ffa08384:	02 97       	W[P0] = R2;
ffa08386:	2b 97       	W[P5] = R3;
ffa08388:	11 97       	W[P2] = R1;
ffa0838a:	08 97       	W[P1] = R0;
ffa0838c:	20 e1 f0 00 	R0 = 0xf0 (X);		/*		R0=0xf0(240) */
ffa08390:	c0 bb       	[FP -0x10] = R0;
ffa08392:	20 e1 90 01 	R0 = 0x190 (X);		/*		R0=0x190(400) */
ffa08396:	d0 bb       	[FP -0xc] = R0;
ffa08398:	20 e1 2c 01 	R0 = 0x12c (X);		/*		R0=0x12c(300) */
ffa0839c:	e0 bb       	[FP -0x8] = R0;
ffa0839e:	20 e1 b4 00 	R0 = 0xb4 (X);		/*		R0=0xb4(180) */
ffa083a2:	f0 bb       	[FP -0x4] = R0;
ffa083a4:	20 e1 1c 02 	R0 = 0x21c (X);		/*		R0=0x21c(540) */
ffa083a8:	80 bb       	[FP -0x20] = R0;
ffa083aa:	e0 65       	R0 += 0x3c;		/* ( 60) */
ffa083ac:	90 bb       	[FP -0x1c] = R0;
ffa083ae:	52 e1 c0 ff 	I2.H = 0xffc0;		/* (-64)	I2=0xffc00000(-4194304) */
ffa083b2:	20 e1 68 01 	R0 = 0x168 (X);		/*		R0=0x168(360) */
ffa083b6:	02 97       	W[P0] = R2;
ffa083b8:	a0 bb       	[FP -0x18] = R0;
ffa083ba:	2b 97       	W[P5] = R3;
ffa083bc:	20 e1 e0 01 	R0 = 0x1e0 (X);		/*		R0=0x1e0(480) */
ffa083c0:	31 e1 00 00 	I1 = 0x0 (X);		/*		I1=0x0(  0) */
ffa083c4:	00 cc 24 c8 	R4 = R4 -|- R4 || W[P2] = R1 || NOP;
ffa083c8:	11 97 00 00 
ffa083cc:	30 e1 00 00 	I0 = 0x0 (X);		/*		I0=0x0(  0) */
ffa083d0:	03 68       	P3 = 0x0 (X);		/*		P3=0x0(  0) */
ffa083d2:	04 68       	P4 = 0x0 (X);		/*		P4=0x0(  0) */
ffa083d4:	00 cc 2d ca 	R5 = R5 -|- R5 || [FP -0x14] = R0 || NOP;
ffa083d8:	b0 bb 00 00 
ffa083dc:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa083de:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa083e0:	27 e1 e8 03 	R7 = 0x3e8 (X);		/*		R7=0x3e8(1000) */
ffa083e4:	28 e1 78 00 	P0 = 0x78 (X);		/*		P0=0x78(120) */
ffa083e8:	0e 60       	R6 = 0x1 (X);		/*		R6=0x1(  1) */
ffa083ea:	09 68       	P1 = 0x1 (X);		/*		P1=0x1(  1) */
ffa083ec:	39 e1 00 00 	B1 = 0x0 (X);		/*		B1=0x0(  0) */
ffa083f0:	38 e1 00 00 	B0 = 0x0 (X);		/*		B0=0x0(  0) */
ffa083f4:	3a e1 02 00 	B2 = 0x2 (X);		/*		B2=0x2(  2) */
ffa083f8:	12 e1 30 09 	I2.L = 0x930;		/* (2352)	I2=0xffc00930(-4191952) */
ffa083fc:	33 e1 08 00 	I3 = 0x8 (X);		/*		I3=0x8(  8) */
ffa08400:	8b 30       	R1 = I3;
ffa08402:	30 9d       	R0.L = W[I2];
ffa08404:	01 54       	R0 = R1 & R0;
ffa08406:	00 0c       	CC = R0 == 0x0;
ffa08408:	de 14       	IF !CC JUMP 0xffa085c4 <_main+0x2ac> (BP);
ffa0840a:	99 30       	R3 = I1;
ffa0840c:	1d 50       	R0 = R5 + R3;
ffa0840e:	07 50       	R0 = R7 + R0;
ffa08410:	f0 40       	R0 *= R6;
ffa08412:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa08414:	99 4f       	R1 <<= 0x13;
ffa08416:	30 4d       	R0 >>>= 0x6;
ffa08418:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00900(-4192000) */
ffa0841c:	08 56       	R0 = R0 | R1;
ffa0841e:	0a e1 10 09 	P2.L = 0x910;		/* (2320)	P2=0xffc00910(-4191984) */
ffa08422:	10 93       	[P2] = R0;
ffa08424:	30 9d       	R0.L = W[I2];
ffa08426:	8b 30       	R1 = I3;
ffa08428:	01 54       	R0 = R1 & R0;
ffa0842a:	00 0c       	CC = R0 == 0x0;
ffa0842c:	0d 18       	IF CC JUMP 0xffa08446 <_main+0x12e>;
	...
ffa08436:	00 00       	NOP;
ffa08438:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00910(-4191984) */
ffa0843c:	0a e1 30 09 	P2.L = 0x930;		/* (2352)	P2=0xffc00930(-4191952) */
ffa08440:	50 95       	R0 = W[P2] (X);
ffa08442:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa08444:	f6 17       	IF !CC JUMP 0xffa08430 <_main+0x118> (BP);
ffa08446:	5d 30       	R3 = P5;
ffa08448:	23 50       	R0 = R3 + R4;
ffa0844a:	07 50       	R0 = R7 + R0;
ffa0844c:	f0 40       	R0 *= R6;
ffa0844e:	c9 60       	R1 = 0x19 (X);		/*		R1=0x19( 25) */
ffa08450:	81 4f       	R1 <<= 0x10;
ffa08452:	30 4d       	R0 >>>= 0x6;
ffa08454:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00930(-4191952) */
ffa08458:	08 56       	R0 = R0 | R1;
ffa0845a:	0a e1 10 09 	P2.L = 0x910;		/* (2320)	P2=0xffc00910(-4191984) */
ffa0845e:	c9 30       	R1 = B1;
ffa08460:	5f 30       	R3 = FP;
ffa08462:	10 93       	[P2] = R0;
ffa08464:	19 50       	R0 = R1 + R3;
ffa08466:	10 32       	P2 = R0;
ffa08468:	99 30       	R3 = I1;
ffa0846a:	0c 64       	R4 += 0x1;		/* (  1) */
ffa0846c:	0d 64       	R5 += 0x1;		/* (  1) */
ffa0846e:	10 e4 fc ff 	R0 = [P2 + -0x10];
ffa08472:	43 50       	R1 = R3 + R0;
ffa08474:	c9 42       	R1 = R1.L (Z);
ffa08476:	20 50       	R0 = R0 + R4;
ffa08478:	5f 30       	R3 = FP;
ffa0847a:	09 34       	I1 = R1;
ffa0847c:	c8 30       	R1 = B0;
ffa0847e:	c4 42       	R4 = R0.L (Z);
ffa08480:	19 50       	R0 = R1 + R3;
ffa08482:	10 32       	P2 = R0;
ffa08484:	23 e1 ff 7f 	R3 = 0x7fff (X);		/*		R3=0x7fff(32767) */
ffa08488:	10 e4 f8 ff 	R0 = [P2 + -0x20];
ffa0848c:	68 50       	R1 = R0 + R5;
ffa0848e:	59 55       	R5 = R1 & R3;
ffa08490:	4d 30       	R1 = P5;
ffa08492:	01 50       	R0 = R1 + R0;
ffa08494:	18 54       	R0 = R0 & R3;
ffa08496:	28 32       	P5 = R0;
ffa08498:	40 30       	R0 = P0;
ffa0849a:	c7 51       	R7 = R7 + R0;
ffa0849c:	1f 09       	CC = R7 <= R3;
ffa0849e:	98 1c       	IF CC JUMP 0xffa085ce <_main+0x2b6> (BP);
ffa084a0:	3b 30       	R7 = R3;
ffa084a2:	28 e1 88 ff 	P0 = -0x78 (X);		/*		P0=0xffffff88(-120) */
ffa084a6:	34 e1 01 00 	M0 = 0x1 (X);		/*		M0=0x1(  1) */
ffa084aa:	60 9e       	I0 += M0;
ffa084ac:	80 30       	R0 = I0;
ffa084ae:	81 e1 50 c3 	R1 = 0xc350 (Z);		/*		R1=0xc350(50000) */
ffa084b2:	08 09       	CC = R0 <= R1;
ffa084b4:	9a 1c       	IF CC JUMP 0xffa085e8 <_main+0x2d0> (BP);
ffa084b6:	4b 30       	R1 = P3;
ffa084b8:	09 64       	R1 += 0x1;		/* (  1) */
ffa084ba:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa084bc:	41 54       	R1 = R1 & R0;
ffa084be:	19 32       	P3 = R1;
ffa084c0:	30 e1 00 00 	I0 = 0x0 (X);		/*		I0=0x0(  0) */
ffa084c4:	5a 44       	P2 = P3 << 0x2;
ffa084c6:	4a 36       	B1 = P2;
ffa084c8:	0a 64       	R2 += 0x1;		/* (  1) */
ffa084ca:	c2 30       	R0 = B2;
ffa084cc:	59 60       	R1 = 0xb (X);		/*		R1=0xb( 11) */
ffa084ce:	41 52       	R1 = R1 - R0;
ffa084d0:	02 30       	R0 = R2;
ffa084d2:	08 40       	R0 >>>= R1;
ffa084d4:	59 30       	R3 = P1;
ffa084d6:	d8 40       	R0 *= R3;
ffa084d8:	86 51       	R6 = R6 + R0;
ffa084da:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa084dc:	88 40       	R0 <<= R1;
ffa084de:	81 e1 ff ff 	R1 = 0xffff (Z);		/*		R1=0xffff(65535) */
ffa084e2:	08 58       	R0 = R0 ^ R1;
ffa084e4:	82 54       	R2 = R2 & R0;
ffa084e6:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa084e8:	06 08       	CC = R6 == R0;
ffa084ea:	8c 18       	IF CC JUMP 0xffa08602 <_main+0x2ea>;
ffa084ec:	06 0d       	CC = R6 <= 0x0;
ffa084ee:	89 17       	IF !CC JUMP 0xffa08400 <_main+0xe8> (BP);
ffa084f0:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa00020(-6291424) */
ffa084f4:	4a e1 e0 ff 	P2.H = 0xffe0;		/* (-32)	P2=0xffe00910(-2094832) */
ffa084f8:	00 e1 d8 81 	R0.L = 0x81d8;		/* (-32296)	R0=0xffa081d8 <_emg_in>(-6258216) */
ffa084fc:	0a e1 2c 20 	P2.L = 0x202c;		/* (8236)	P2=0xffe0202c(-2088916) */
ffa08500:	10 93       	[P2] = R0;
ffa08502:	40 e1 32 33 	R0.H = 0x3332;		/* (13106)	R0=0x333281d8(858948056) */
ffa08506:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0202c(-4186068) */
ffa0850a:	00 e1 21 24 	R0.L = 0x2421;		/* (9249)	R0=0x33322421(858924065) */
ffa0850e:	0a e1 14 01 	P2.L = 0x114;		/* (276)	P2=0xffc00114(-4194028) */
ffa08512:	10 93       	[P2] = R0;
ffa08514:	c2 6f       	P2 += -0x8;		/* ( -8) */
ffa08516:	10 91       	R0 = [P2];
ffa08518:	50 4a       	BITSET (R0, 0xa);		/* bit 10 */
ffa0851a:	10 93       	[P2] = R0;
ffa0851c:	4a e1 e0 ff 	P2.H = 0xffe0;		/* (-32)	P2=0xffe00114(-2096876) */
ffa08520:	0a e1 04 21 	P2.L = 0x2104;		/* (8452)	P2=0xffe02104(-2088700) */
ffa08524:	10 91       	R0 = [P2];
ffa08526:	58 4a       	BITSET (R0, 0xb);		/* bit 11 */
ffa08528:	45 e1 90 ff 	R5.H = 0xff90;		/* (-112)	R5=0xff900000(-7340032) */
ffa0852c:	10 93       	[P2] = R0;
ffa0852e:	05 e1 a4 60 	R5.L = 0x60a4;		/* (24740)	R5=0xff9060a4 <_g_data>(-7315292) */
ffa08532:	20 e1 7c 00 	R0 = 0x7c (X);		/*		R0=0x7c(124) */
ffa08536:	00 e3 f9 06 	CALL 0xffa09328 <_radio_init>;
ffa0853a:	0d 32       	P1 = R5;
ffa0853c:	20 e1 a5 a5 	R0 = -0x5a5b (X);		/*		R0=0xffffa5a5(-23131) */
ffa08540:	02 69       	P2 = 0x20 (X);		/*		P2=0x20( 32) */
ffa08542:	b2 e0 02 20 	LSETUP(0xffa08546 <_main+0x22e>, 0xffa08546 <_main+0x22e>) LC1 = P2;
ffa08546:	08 96       	W[P1++] = R0;
ffa08548:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00020(-4194272) */
ffa0854c:	c2 60       	R2 = 0x18 (X);		/*		R2=0x18( 24) */
ffa0854e:	0a e1 08 08 	P2.L = 0x808;		/* (2056)	P2=0xffc00808(-4192248) */
ffa08552:	12 97       	W[P2] = R2;
ffa08554:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa08556:	22 6c       	P2 += 0x4;		/* (  4) */
ffa08558:	11 97       	W[P2] = R1;
ffa0855a:	20 e1 0f 02 	R0 = 0x20f (X);		/*		R0=0x20f(527) */
ffa0855e:	c2 6f       	P2 += -0x8;		/* ( -8) */
ffa08560:	10 97       	W[P2] = R0;
ffa08562:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa08564:	12 97       	W[P2] = R2;
ffa08566:	22 6c       	P2 += 0x4;		/* (  4) */
ffa08568:	11 97       	W[P2] = R1;
ffa0856a:	c2 6f       	P2 += -0x8;		/* ( -8) */
ffa0856c:	11 97       	W[P2] = R1;
ffa0856e:	20 e1 03 74 	R0 = 0x7403 (X);		/*		R0=0x7403(29699) */
ffa08572:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa08574:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900000 */
ffa08578:	10 97       	W[P2] = R0;
ffa0857a:	0d e1 58 60 	P5.L = 0x6058;		/* (24664)	P5=0xff906058 <_g_pp> */
ffa0857e:	20 e1 03 66 	R0 = 0x6603 (X);		/*		R0=0x6603(26115) */
ffa08582:	02 6f       	P2 += -0x20;		/* (-32) */
ffa08584:	4c e1 c0 ff 	P4.H = 0xffc0;		/* (-64)	P4=0xffc00000(-4194304) */
ffa08588:	10 97       	W[P2] = R0;
ffa0858a:	2f 91       	R7 = [P5];
ffa0858c:	5d 32       	P3 = P5;
ffa0858e:	0c e1 08 07 	P4.L = 0x708;		/* (1800)	P4=0xffc00708(-4192504) */
ffa08592:	0e 60       	R6 = 0x1 (X);		/*		R6=0x1(  1) */
ffa08594:	28 91       	R0 = [P5];
ffa08596:	07 08       	CC = R7 == R0;
ffa08598:	11 18       	IF CC JUMP 0xffa085ba <_main+0x2a2>;
ffa0859a:	00 e3 31 06 	CALL 0xffa091fc <_radio_set_tx>;
ffa0859e:	82 c6 2f 80 	R0 = R7 << 0x5;
ffa085a2:	28 50       	R0 = R0 + R5;
ffa085a4:	00 e3 f0 04 	CALL 0xffa08f84 <_spi_write_packet>;
ffa085a8:	26 97       	W[P4] = R6;
ffa085aa:	20 e1 10 27 	R0 = 0x2710 (X);		/*		R0=0x2710(10000) */
ffa085ae:	1f 91       	R7 = [P3];
ffa085b0:	00 e3 4a 06 	CALL 0xffa09244 <_radio_wait_irq>;
ffa085b4:	28 91       	R0 = [P5];
ffa085b6:	07 08       	CC = R7 == R0;
ffa085b8:	f1 17       	IF !CC JUMP 0xffa0859a <_main+0x282> (BP);
	...
ffa085c2:	e9 2f       	JUMP.S 0xffa08594 <_main+0x27c>;
	...
ffa085cc:	1a 2f       	JUMP.S 0xffa08400 <_main+0xe8>;
ffa085ce:	87 0c       	CC = R7 < 0x0;
ffa085d0:	6b 17       	IF !CC JUMP 0xffa084a6 <_main+0x18e> (BP);
ffa085d2:	34 e1 01 00 	M0 = 0x1 (X);		/*		M0=0x1(  1) */
ffa085d6:	60 9e       	I0 += M0;
ffa085d8:	80 30       	R0 = I0;
ffa085da:	81 e1 50 c3 	R1 = 0xc350 (Z);		/*		R1=0xc350(50000) */
ffa085de:	08 09       	CC = R0 <= R1;
ffa085e0:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa085e2:	28 e1 78 00 	P0 = 0x78 (X);		/*		P0=0x78(120) */
ffa085e6:	68 17       	IF !CC JUMP 0xffa084b6 <_main+0x19e> (BP);
ffa085e8:	80 30       	R0 = I0;
ffa085ea:	21 e1 a8 61 	R1 = 0x61a8 (X);		/*		R1=0x61a8(25000) */
ffa085ee:	08 08       	CC = R0 == R1;
ffa085f0:	6c 17       	IF !CC JUMP 0xffa084c8 <_main+0x1b0> (BP);
ffa085f2:	4c 30       	R1 = P4;
ffa085f4:	09 64       	R1 += 0x1;		/* (  1) */
ffa085f6:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa085f8:	41 54       	R1 = R1 & R0;
ffa085fa:	21 32       	P4 = R1;
ffa085fc:	62 44       	P2 = P4 << 0x2;
ffa085fe:	42 36       	B0 = P2;
ffa08600:	64 2f       	JUMP.S 0xffa084c8 <_main+0x1b0>;
ffa08602:	f9 6b       	P1 = -0x1 (X);		/*		P1=0xffffffff( -1) */
ffa08604:	3a e1 fe ff 	B2 = -0x2 (X);		/*		B2=0xfffffffe( -2) */
ffa08608:	fc 2e       	JUMP.S 0xffa08400 <_main+0xe8>;
	...

ffa0860c <_uart_str>:
ffa0860c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00808(-4192248) */
ffa08610:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa08614:	0a e1 24 04 	P2.L = 0x424;		/* (1060)	P2=0xffc00424(-4193244) */
ffa08618:	08 32       	P1 = R0;
ffa0861a:	50 95       	R0 = W[P2] (X);
ffa0861c:	c0 42       	R0 = R0.L (Z);
ffa0861e:	08 0c       	CC = R0 == 0x1;
ffa08620:	06 18       	IF CC JUMP 0xffa0862c <_uart_str+0x20>;
ffa08622:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa08624:	02 30       	R0 = R2;
ffa08626:	01 e8 00 00 	UNLINK;
ffa0862a:	10 00       	RTS;
ffa0862c:	48 99       	R0 = B[P1] (X);
ffa0862e:	01 43       	R1 = R0.B (X);
ffa08630:	01 0c       	CC = R1 == 0x0;
ffa08632:	f8 1b       	IF CC JUMP 0xffa08622 <_uart_str+0x16>;
ffa08634:	50 e1 c0 ff 	I0.H = 0xffc0;		/* (-64)	I0=0xffc00000(-4194304) */
ffa08638:	09 6c       	P1 += 0x1;		/* (  1) */
ffa0863a:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0863c:	10 e1 00 04 	I0.L = 0x400;		/* (1024)	I0=0xffc00400(-4193280) */
ffa08640:	28 e1 80 00 	P0 = 0x80 (X);		/*		P0=0x80(128) */
ffa08644:	53 60       	R3 = 0xa (X);		/*		R3=0xa( 10) */
ffa08646:	b2 e0 1c 00 	LSETUP(0xffa0864a <_uart_str+0x3e>, 0xffa0867e <_uart_str+0x72>) LC1 = P0;
ffa0864a:	19 08       	CC = R1 == R3;
ffa0864c:	1b 18       	IF CC JUMP 0xffa08682 <_uart_str+0x76>;
ffa0864e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00424(-4193244) */
ffa08652:	00 43       	R0 = R0.B (X);
ffa08654:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa08658:	10 97       	W[P2] = R0;
ffa0865a:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa0865c:	50 95       	R0 = W[P2] (X);
ffa0865e:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa08660:	0a 10       	IF !CC JUMP 0xffa08674 <_uart_str+0x68>;
ffa08662:	00 00       	NOP;
ffa08664:	00 00       	NOP;
ffa08666:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa0866a:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa0866e:	50 95       	R0 = W[P2] (X);
ffa08670:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa08672:	f9 1f       	IF CC JUMP 0xffa08664 <_uart_str+0x58> (BP);
ffa08674:	48 99       	R0 = B[P1] (X);
ffa08676:	01 43       	R1 = R0.B (X);
ffa08678:	01 0c       	CC = R1 == 0x0;
ffa0867a:	0a 64       	R2 += 0x1;		/* (  1) */
ffa0867c:	d4 1b       	IF CC JUMP 0xffa08624 <_uart_str+0x18>;
ffa0867e:	09 6c       	P1 += 0x1;		/* (  1) */
ffa08680:	d2 2f       	JUMP.S 0xffa08624 <_uart_str+0x18>;
ffa08682:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa08684:	20 9f       	W[I0] = R0.L;
ffa08686:	02 20       	JUMP.S 0xffa0868a <_uart_str+0x7e>;
ffa08688:	00 00       	NOP;
ffa0868a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa0868e:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa08692:	50 95       	R0 = W[P2] (X);
ffa08694:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa08696:	f9 1f       	IF CC JUMP 0xffa08688 <_uart_str+0x7c> (BP);
ffa08698:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa0869c:	68 60       	R0 = 0xd (X);		/*		R0=0xd( 13) */
ffa0869e:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa086a2:	10 97       	W[P2] = R0;
ffa086a4:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa086a6:	50 95       	R0 = W[P2] (X);
ffa086a8:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa086aa:	e5 13       	IF !CC JUMP 0xffa08674 <_uart_str+0x68>;
ffa086ac:	00 00       	NOP;
ffa086ae:	00 00       	NOP;
ffa086b0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa086b4:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa086b8:	50 95       	R0 = W[P2] (X);
ffa086ba:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa086bc:	f9 1f       	IF CC JUMP 0xffa086ae <_uart_str+0xa2> (BP);
ffa086be:	db 2f       	JUMP.S 0xffa08674 <_uart_str+0x68>;

ffa086c0 <_printf_str>:
ffa086c0:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa086c4:	01 e8 00 00 	UNLINK;
ffa086c8:	ff e2 a2 ff 	JUMP.L 0xffa0860c <_uart_str>;

ffa086cc <_printf_newline>:
ffa086cc:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa086d0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90000d(-7340019) */
ffa086d4:	00 e1 00 60 	R0.L = 0x6000;		/* (24576)	R0=0xff906000 <_l1_data_a>(-7315456) */
ffa086d8:	01 e8 00 00 	UNLINK;
ffa086dc:	ff e2 98 ff 	JUMP.L 0xffa0860c <_uart_str>;

ffa086e0 <_printf_hex_byte>:
ffa086e0:	fc 05       	[--SP] = (R7:7, P5:4);
ffa086e2:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa086e6:	28 32       	P5 = R0;
ffa086e8:	39 30       	R7 = R1;
ffa086ea:	00 e3 b1 01 	CALL 0xffa08a4c <_strlen_>;
ffa086ee:	10 30       	R2 = R0;
ffa086f0:	20 e1 7b 00 	R0 = 0x7b (X);		/*		R0=0x7b(123) */
ffa086f4:	02 09       	CC = R2 <= R0;
ffa086f6:	41 10       	IF !CC JUMP 0xffa08778 <_printf_hex_byte+0x98>;
ffa086f8:	02 0d       	CC = R2 <= 0x0;
ffa086fa:	44 18       	IF CC JUMP 0xffa08782 <_printf_hex_byte+0xa2>;
ffa086fc:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900080 */
ffa08700:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa08702:	08 e1 e8 60 	P0.L = 0x60e8;		/* (24808)	P0=0xff9060e8 <_printf_out> */
ffa08706:	09 32       	P1 = R1;
ffa08708:	42 91       	P2 = [P0];
ffa0870a:	09 64       	R1 += 0x1;		/* (  1) */
ffa0870c:	68 98       	R0 = B[P5++] (X);
ffa0870e:	0a 08       	CC = R2 == R1;
ffa08710:	8a 5a       	P2 = P2 + P1;
ffa08712:	10 9b       	B[P2] = R0;
ffa08714:	f9 17       	IF !CC JUMP 0xffa08706 <_printf_hex_byte+0x26> (BP);
ffa08716:	0a 32       	P1 = R2;
ffa08718:	42 91       	P2 = [P0];
ffa0871a:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa0871c:	22 32       	P4 = R2;
ffa0871e:	79 43       	R1 = R7.B (Z);
ffa08720:	8a 5a       	P2 = P2 + P1;
ffa08722:	10 9b       	B[P2] = R0;
ffa08724:	42 91       	P2 = [P0];
ffa08726:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa08728:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa0872c:	11 6c       	P1 += 0x2;		/* (  2) */
ffa0872e:	a2 5a       	P2 = P2 + P4;
ffa08730:	10 9b       	B[P2] = R0;
ffa08732:	22 60       	R2 = 0x4 (X);		/*		R2=0x4(  4) */
ffa08734:	7b 60       	R3 = 0xf (X);		/*		R3=0xf( 15) */
ffa08736:	4f 60       	R7 = 0x9 (X);		/*		R7=0x9(  9) */
ffa08738:	01 30       	R0 = R1;
ffa0873a:	10 40       	R0 >>>= R2;
ffa0873c:	18 54       	R0 = R0 & R3;
ffa0873e:	38 09       	CC = R0 <= R7;
ffa08740:	1a 1c       	IF CC JUMP 0xffa08774 <_printf_hex_byte+0x94> (BP);
ffa08742:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa08744:	42 91       	P2 = [P0];
ffa08746:	e2 67       	R2 += -0x4;		/* ( -4) */
ffa08748:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff906058 <_g_pp> */
ffa0874c:	22 0c       	CC = R2 == -0x4;
ffa0874e:	8a 5a       	P2 = P2 + P1;
ffa08750:	0d e1 e8 60 	P5.L = 0x60e8;		/* (24808)	P5=0xff9060e8 <_printf_out> */
ffa08754:	10 9b       	B[P2] = R0;
ffa08756:	09 6c       	P1 += 0x1;		/* (  1) */
ffa08758:	f0 17       	IF !CC JUMP 0xffa08738 <_printf_hex_byte+0x58> (BP);
ffa0875a:	6a 91       	P2 = [P5];
ffa0875c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0875e:	94 5a       	P2 = P4 + P2;
ffa08760:	90 e6 03 00 	B[P2 + 0x3] = R0;
ffa08764:	28 91       	R0 = [P5];
ffa08766:	ff e3 53 ff 	CALL 0xffa0860c <_uart_str>;
ffa0876a:	01 e8 00 00 	UNLINK;
ffa0876e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa08770:	bc 05       	(R7:7, P5:4) = [SP++];
ffa08772:	10 00       	RTS;
ffa08774:	80 65       	R0 += 0x30;		/* ( 48) */
ffa08776:	e7 2f       	JUMP.S 0xffa08744 <_printf_hex_byte+0x64>;
ffa08778:	01 e8 00 00 	UNLINK;
ffa0877c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0877e:	bc 05       	(R7:7, P5:4) = [SP++];
ffa08780:	10 00       	RTS;
ffa08782:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff9060e8 <_printf_out> */
ffa08786:	08 e1 e8 60 	P0.L = 0x60e8;		/* (24808)	P0=0xff9060e8 <_printf_out> */
ffa0878a:	c6 2f       	JUMP.S 0xffa08716 <_printf_hex_byte+0x36>;

ffa0878c <_printf_hex>:
ffa0878c:	fb 05       	[--SP] = (R7:7, P5:3);
ffa0878e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa08792:	28 32       	P5 = R0;
ffa08794:	39 30       	R7 = R1;
ffa08796:	00 e3 5b 01 	CALL 0xffa08a4c <_strlen_>;
ffa0879a:	10 30       	R2 = R0;
ffa0879c:	20 e1 75 00 	R0 = 0x75 (X);		/*		R0=0x75(117) */
ffa087a0:	02 09       	CC = R2 <= R0;
ffa087a2:	47 10       	IF !CC JUMP 0xffa08830 <_printf_hex+0xa4>;
ffa087a4:	02 0d       	CC = R2 <= 0x0;
ffa087a6:	4a 18       	IF CC JUMP 0xffa0883a <_printf_hex+0xae>;
ffa087a8:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff90ffff */
ffa087ac:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa087ae:	09 e1 e8 60 	P1.L = 0x60e8;		/* (24808)	P1=0xff9060e8 <_printf_out> */
ffa087b2:	01 32       	P0 = R1;
ffa087b4:	4a 91       	P2 = [P1];
ffa087b6:	09 64       	R1 += 0x1;		/* (  1) */
ffa087b8:	68 98       	R0 = B[P5++] (X);
ffa087ba:	0a 08       	CC = R2 == R1;
ffa087bc:	82 5a       	P2 = P2 + P0;
ffa087be:	10 9b       	B[P2] = R0;
ffa087c0:	f9 17       	IF !CC JUMP 0xffa087b2 <_printf_hex+0x26> (BP);
ffa087c2:	02 32       	P0 = R2;
ffa087c4:	4a 91       	P2 = [P1];
ffa087c6:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa087c8:	1a 32       	P3 = R2;
ffa087ca:	e1 60       	R1 = 0x1c (X);		/*		R1=0x1c( 28) */
ffa087cc:	82 5a       	P2 = P2 + P0;
ffa087ce:	10 9b       	B[P2] = R0;
ffa087d0:	4a 91       	P2 = [P1];
ffa087d2:	0b 6c       	P3 += 0x1;		/* (  1) */
ffa087d4:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa087d8:	10 6c       	P0 += 0x2;		/* (  2) */
ffa087da:	9a 5a       	P2 = P2 + P3;
ffa087dc:	10 9b       	B[P2] = R0;
ffa087de:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
ffa087e0:	45 68       	P5 = 0x8 (X);		/*		P5=0x8(  8) */
ffa087e2:	4b 60       	R3 = 0x9 (X);		/*		R3=0x9(  9) */
ffa087e4:	b2 e0 10 50 	LSETUP(0xffa087e8 <_printf_hex+0x5c>, 0xffa08804 <_printf_hex+0x78>) LC1 = P5;
ffa087e8:	07 30       	R0 = R7;
ffa087ea:	08 40       	R0 >>>= R1;
ffa087ec:	10 54       	R0 = R0 & R2;
ffa087ee:	18 09       	CC = R0 <= R3;
ffa087f0:	1e 1c       	IF CC JUMP 0xffa0882c <_printf_hex+0xa0> (BP);
ffa087f2:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa087f4:	4a 91       	P2 = [P1];
ffa087f6:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900708 */
ffa087fa:	0c e1 e8 60 	P4.L = 0x60e8;		/* (24808)	P4=0xff9060e8 <_printf_out> */
ffa087fe:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa08800:	82 5a       	P2 = P2 + P0;
ffa08802:	10 9b       	B[P2] = R0;
ffa08804:	08 6c       	P0 += 0x1;		/* (  1) */
ffa08806:	62 91       	P2 = [P4];
ffa08808:	4b 32       	P1 = P3;
ffa0880a:	49 6c       	P1 += 0x9;		/* (  9) */
ffa0880c:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa0880e:	8a 5a       	P2 = P2 + P1;
ffa08810:	10 9b       	B[P2] = R0;
ffa08812:	62 91       	P2 = [P4];
ffa08814:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa08816:	8a 5a       	P2 = P2 + P1;
ffa08818:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa0881c:	20 91       	R0 = [P4];
ffa0881e:	ff e3 f7 fe 	CALL 0xffa0860c <_uart_str>;
ffa08822:	01 e8 00 00 	UNLINK;
ffa08826:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa08828:	bb 05       	(R7:7, P5:3) = [SP++];
ffa0882a:	10 00       	RTS;
ffa0882c:	80 65       	R0 += 0x30;		/* ( 48) */
ffa0882e:	e3 2f       	JUMP.S 0xffa087f4 <_printf_hex+0x68>;
ffa08830:	01 e8 00 00 	UNLINK;
ffa08834:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa08836:	bb 05       	(R7:7, P5:3) = [SP++];
ffa08838:	10 00       	RTS;
ffa0883a:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff9060e8 <_printf_out> */
ffa0883e:	09 e1 e8 60 	P1.L = 0x60e8;		/* (24808)	P1=0xff9060e8 <_printf_out> */
ffa08842:	c0 2f       	JUMP.S 0xffa087c2 <_printf_hex+0x36>;

ffa08844 <_printf_int>:
ffa08844:	f3 05       	[--SP] = (R7:6, P5:3);
ffa08846:	01 0c       	CC = R1 == 0x0;
ffa08848:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0884c:	28 32       	P5 = R0;
ffa0884e:	39 30       	R7 = R1;
ffa08850:	41 14       	IF !CC JUMP 0xffa088d2 <_printf_int+0x8e> (BP);
ffa08852:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900000 */
ffa08856:	0b e1 e4 60 	P3.L = 0x60e4;		/* (24804)	P3=0xff9060e4 <_printf_temp> */
ffa0885a:	5a 91       	P2 = [P3];
ffa0885c:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa0885e:	0e 60       	R6 = 0x1 (X);		/*		R6=0x1(  1) */
ffa08860:	10 9b       	B[P2] = R0;
ffa08862:	45 30       	R0 = P5;
ffa08864:	00 e3 f4 00 	CALL 0xffa08a4c <_strlen_>;
ffa08868:	c6 50       	R3 = R6 + R0;
ffa0886a:	10 30       	R2 = R0;
ffa0886c:	20 e1 7f 00 	R0 = 0x7f (X);		/*		R0=0x7f(127) */
ffa08870:	03 09       	CC = R3 <= R0;
ffa08872:	4e 10       	IF !CC JUMP 0xffa0890e <_printf_int+0xca>;
ffa08874:	02 0d       	CC = R2 <= 0x0;
ffa08876:	79 18       	IF CC JUMP 0xffa08968 <_printf_int+0x124>;
ffa08878:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff9060e8 <_printf_out> */
ffa0887c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0887e:	08 e1 e8 60 	P0.L = 0x60e8;		/* (24808)	P0=0xff9060e8 <_printf_out> */
ffa08882:	09 32       	P1 = R1;
ffa08884:	42 91       	P2 = [P0];
ffa08886:	09 64       	R1 += 0x1;		/* (  1) */
ffa08888:	68 98       	R0 = B[P5++] (X);
ffa0888a:	0a 08       	CC = R2 == R1;
ffa0888c:	8a 5a       	P2 = P2 + P1;
ffa0888e:	10 9b       	B[P2] = R0;
ffa08890:	f9 17       	IF !CC JUMP 0xffa08882 <_printf_int+0x3e> (BP);
ffa08892:	06 0d       	CC = R6 <= 0x0;
ffa08894:	12 18       	IF CC JUMP 0xffa088b8 <_printf_int+0x74>;
ffa08896:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa08898:	00 91       	R0 = [P0];
ffa0889a:	04 cc 10 00 	R0 = R2 + R0 (NS) || P2 = [P3] || NOP;
ffa0889e:	5a 91 00 00 
ffa088a2:	08 50       	R0 = R0 + R1;
ffa088a4:	08 32       	P1 = R0;
ffa088a6:	0e 52       	R0 = R6 - R1;
ffa088a8:	28 32       	P5 = R0;
ffa088aa:	09 64       	R1 += 0x1;		/* (  1) */
ffa088ac:	0e 08       	CC = R6 == R1;
ffa088ae:	aa 5a       	P2 = P2 + P5;
ffa088b0:	90 e5 ff ff 	R0 = B[P2 + -0x1] (X);
ffa088b4:	08 9b       	B[P1] = R0;
ffa088b6:	f1 17       	IF !CC JUMP 0xffa08898 <_printf_int+0x54> (BP);
ffa088b8:	0b 32       	P1 = R3;
ffa088ba:	42 91       	P2 = [P0];
ffa088bc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa088be:	91 5a       	P2 = P1 + P2;
ffa088c0:	10 9b       	B[P2] = R0;
ffa088c2:	00 91       	R0 = [P0];
ffa088c4:	ff e3 a4 fe 	CALL 0xffa0860c <_uart_str>;
ffa088c8:	01 e8 00 00 	UNLINK;
ffa088cc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa088ce:	b3 05       	(R7:6, P5:3) = [SP++];
ffa088d0:	10 00       	RTS;
ffa088d2:	01 0d       	CC = R1 <= 0x0;
ffa088d4:	22 18       	IF CC JUMP 0xffa08918 <_printf_int+0xd4>;
ffa088d6:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff9060e4 <_printf_temp> */
ffa088da:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa088dc:	0b e1 e4 60 	P3.L = 0x60e4;		/* (24804)	P3=0xff9060e4 <_printf_temp> */
ffa088e0:	05 20       	JUMP.S 0xffa088ea <_printf_int+0xa6>;
ffa088e2:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa088e6:	06 08       	CC = R6 == R0;
ffa088e8:	bd 1b       	IF CC JUMP 0xffa08862 <_printf_int+0x1e>;
ffa088ea:	07 30       	R0 = R7;
ffa088ec:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa088ee:	00 e3 83 00 	CALL 0xffa089f4 <_mod>;
ffa088f2:	0e 32       	P1 = R6;
ffa088f4:	5a 91       	P2 = [P3];
ffa088f6:	80 65       	R0 += 0x30;		/* ( 48) */
ffa088f8:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa088fa:	0e 64       	R6 += 0x1;		/* (  1) */
ffa088fc:	8a 5a       	P2 = P2 + P1;
ffa088fe:	10 9b       	B[P2] = R0;
ffa08900:	07 30       	R0 = R7;
ffa08902:	00 e3 6b 00 	CALL 0xffa089d8 <_div>;
ffa08906:	00 0d       	CC = R0 <= 0x0;
ffa08908:	38 30       	R7 = R0;
ffa0890a:	ec 17       	IF !CC JUMP 0xffa088e2 <_printf_int+0x9e> (BP);
ffa0890c:	ab 2f       	JUMP.S 0xffa08862 <_printf_int+0x1e>;
ffa0890e:	01 e8 00 00 	UNLINK;
ffa08912:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa08914:	b3 05       	(R7:6, P5:3) = [SP++];
ffa08916:	10 00       	RTS;
ffa08918:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0891a:	ff 4c       	BITCLR (R7, 0x1f);		/* bit 31 */
ffa0891c:	f8 4f       	R0 <<= 0x1f;
ffa0891e:	f8 53       	R7 = R0 - R7;
ffa08920:	07 0d       	CC = R7 <= 0x0;
ffa08922:	2c 18       	IF CC JUMP 0xffa0897a <_printf_int+0x136>;
ffa08924:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff9060e4 <_printf_temp> */
ffa08928:	04 68       	P4 = 0x0 (X);		/*		P4=0x0(  0) */
ffa0892a:	0b e1 e4 60 	P3.L = 0x60e4;		/* (24804)	P3=0xff9060e4 <_printf_temp> */
ffa0892e:	05 20       	JUMP.S 0xffa08938 <_printf_int+0xf4>;
ffa08930:	29 e1 80 00 	P1 = 0x80 (X);		/*		P1=0x80(128) */
ffa08934:	4c 08       	CC = P4 == P1;
ffa08936:	1e 18       	IF CC JUMP 0xffa08972 <_printf_int+0x12e>;
ffa08938:	07 30       	R0 = R7;
ffa0893a:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa0893c:	00 e3 5c 00 	CALL 0xffa089f4 <_mod>;
ffa08940:	5a 91       	P2 = [P3];
ffa08942:	80 65       	R0 += 0x30;		/* ( 48) */
ffa08944:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa08946:	a2 5a       	P2 = P2 + P4;
ffa08948:	10 9b       	B[P2] = R0;
ffa0894a:	07 30       	R0 = R7;
ffa0894c:	00 e3 46 00 	CALL 0xffa089d8 <_div>;
ffa08950:	00 0d       	CC = R0 <= 0x0;
ffa08952:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa08954:	38 30       	R7 = R0;
ffa08956:	ed 17       	IF !CC JUMP 0xffa08930 <_printf_int+0xec> (BP);
ffa08958:	74 30       	R6 = P4;
ffa0895a:	4c 32       	P1 = P4;
ffa0895c:	0e 64       	R6 += 0x1;		/* (  1) */
ffa0895e:	5a 91       	P2 = [P3];
ffa08960:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa08962:	8a 5a       	P2 = P2 + P1;
ffa08964:	10 9b       	B[P2] = R0;
ffa08966:	7e 2f       	JUMP.S 0xffa08862 <_printf_int+0x1e>;
ffa08968:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff9060e8 <_printf_out> */
ffa0896c:	08 e1 e8 60 	P0.L = 0x60e8;		/* (24808)	P0=0xff9060e8 <_printf_out> */
ffa08970:	91 2f       	JUMP.S 0xffa08892 <_printf_int+0x4e>;
ffa08972:	4c 32       	P1 = P4;
ffa08974:	26 e1 81 00 	R6 = 0x81 (X);		/*		R6=0x81(129) */
ffa08978:	f3 2f       	JUMP.S 0xffa0895e <_printf_int+0x11a>;
ffa0897a:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff9060e4 <_printf_temp> */
ffa0897e:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
ffa08980:	0e 60       	R6 = 0x1 (X);		/*		R6=0x1(  1) */
ffa08982:	0b e1 e4 60 	P3.L = 0x60e4;		/* (24804)	P3=0xff9060e4 <_printf_temp> */
ffa08986:	ec 2f       	JUMP.S 0xffa0895e <_printf_int+0x11a>;

ffa08988 <_printf_ip>:
ffa08988:	70 05       	[--SP] = (R7:6);
ffa0898a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0898e:	39 30       	R7 = R1;
ffa08990:	46 e1 90 ff 	R6.H = 0xff90;		/* (-112)	R6=0xff900001(-7340031) */
ffa08994:	49 43       	R1 = R1.B (Z);
ffa08996:	ff e3 57 ff 	CALL 0xffa08844 <_printf_int>;
ffa0899a:	06 e1 04 60 	R6.L = 0x6004;		/* (24580)	R6=0xff906004(-7315452) */
ffa0899e:	82 c6 c7 83 	R1 = R7 >> 0x8;
ffa089a2:	49 43       	R1 = R1.B (Z);
ffa089a4:	06 30       	R0 = R6;
ffa089a6:	ff e3 4f ff 	CALL 0xffa08844 <_printf_int>;
ffa089aa:	82 c6 87 83 	R1 = R7 >> 0x10;
ffa089ae:	49 43       	R1 = R1.B (Z);
ffa089b0:	06 30       	R0 = R6;
ffa089b2:	c7 4e       	R7 >>= 0x18;
ffa089b4:	ff e3 48 ff 	CALL 0xffa08844 <_printf_int>;
ffa089b8:	0f 30       	R1 = R7;
ffa089ba:	06 30       	R0 = R6;
ffa089bc:	ff e3 44 ff 	CALL 0xffa08844 <_printf_int>;
ffa089c0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002d(-7339987) */
ffa089c4:	00 e1 24 60 	R0.L = 0x6024;		/* (24612)	R0=0xff906024(-7315420) */
ffa089c8:	ff e3 7c fe 	CALL 0xffa086c0 <_printf_str>;
ffa089cc:	01 e8 00 00 	UNLINK;
ffa089d0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa089d2:	30 05       	(R7:6) = [SP++];
ffa089d4:	10 00       	RTS;
	...

ffa089d8 <_div>:
ffa089d8:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa089dc:	08 4f       	R0 <<= 0x1;
ffa089de:	48 42       	DIVS (R0, R1);
ffa089e0:	7a 68       	P2 = 0xf (X);		/*		P2=0xf( 15) */
ffa089e2:	b2 e0 03 20 	LSETUP(0xffa089e6 <_div+0xe>, 0xffa089e8 <_div+0x10>) LC1 = P2;
ffa089e6:	08 42       	DIVQ (R0, R1);
ffa089e8:	00 00       	NOP;
ffa089ea:	80 42       	R0 = R0.L (X);
ffa089ec:	01 e8 00 00 	UNLINK;
ffa089f0:	10 00       	RTS;
	...

ffa089f4 <_mod>:
ffa089f4:	70 05       	[--SP] = (R7:6);
ffa089f6:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa089fa:	30 30       	R6 = R0;
ffa089fc:	39 30       	R7 = R1;
ffa089fe:	ff e3 ed ff 	CALL 0xffa089d8 <_div>;
ffa08a02:	c7 40       	R7 *= R0;
ffa08a04:	01 e8 00 00 	UNLINK;
ffa08a08:	be 53       	R6 = R6 - R7;
ffa08a0a:	06 30       	R0 = R6;
ffa08a0c:	30 05       	(R7:6) = [SP++];
ffa08a0e:	10 00       	RTS;

ffa08a10 <_memcpy_>:
ffa08a10:	02 0d       	CC = R2 <= 0x0;
ffa08a12:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa08a16:	08 32       	P1 = R0;
ffa08a18:	11 32       	P2 = R1;
ffa08a1a:	08 18       	IF CC JUMP 0xffa08a2a <_memcpy_+0x1a>;
ffa08a1c:	00 00       	NOP;
ffa08a1e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa08a20:	09 64       	R1 += 0x1;		/* (  1) */
ffa08a22:	48 98       	R0 = B[P1++] (X);
ffa08a24:	0a 08       	CC = R2 == R1;
ffa08a26:	10 9a       	B[P2++] = R0;
ffa08a28:	fc 17       	IF !CC JUMP 0xffa08a20 <_memcpy_+0x10> (BP);
ffa08a2a:	01 e8 00 00 	UNLINK;
ffa08a2e:	10 00       	RTS;

ffa08a30 <_memset_>:
ffa08a30:	02 0d       	CC = R2 <= 0x0;
ffa08a32:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa08a36:	10 32       	P2 = R0;
ffa08a38:	06 18       	IF CC JUMP 0xffa08a44 <_memset_+0x14>;
ffa08a3a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa08a3c:	08 64       	R0 += 0x1;		/* (  1) */
ffa08a3e:	02 08       	CC = R2 == R0;
ffa08a40:	11 9a       	B[P2++] = R1;
ffa08a42:	fd 17       	IF !CC JUMP 0xffa08a3c <_memset_+0xc> (BP);
ffa08a44:	01 e8 00 00 	UNLINK;
ffa08a48:	10 00       	RTS;
	...

ffa08a4c <_strlen_>:
ffa08a4c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa08a50:	10 32       	P2 = R0;
ffa08a52:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa08a54:	29 e1 00 05 	P1 = 0x500 (X);		/*		P1=0x500(1280) */
ffa08a58:	b2 e0 06 10 	LSETUP(0xffa08a5c <_strlen_+0x10>, 0xffa08a64 <_strlen_+0x18>) LC1 = P1;
ffa08a5c:	50 99       	R0 = B[P2] (X);
ffa08a5e:	00 0c       	CC = R0 == 0x0;
ffa08a60:	04 18       	IF CC JUMP 0xffa08a68 <_strlen_+0x1c>;
ffa08a62:	09 64       	R1 += 0x1;		/* (  1) */
ffa08a64:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa08a66:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa08a68:	01 30       	R0 = R1;
ffa08a6a:	01 e8 00 00 	UNLINK;
ffa08a6e:	10 00       	RTS;

ffa08a70 <_strcpy_>:
ffa08a70:	12 32       	P2 = R2;
ffa08a72:	c5 04       	[--SP] = (P5:5);
ffa08a74:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa08a78:	29 32       	P5 = R1;
ffa08a7a:	00 32       	P0 = R0;
ffa08a7c:	51 99       	R1 = B[P2] (X);
ffa08a7e:	08 43       	R0 = R1.B (X);
ffa08a80:	00 0c       	CC = R0 == 0x0;
ffa08a82:	17 18       	IF CC JUMP 0xffa08ab0 <_strcpy_+0x40>;
ffa08a84:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa08a86:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa08a88:	29 e1 00 05 	P1 = 0x500 (X);		/*		P1=0x500(1280) */
ffa08a8c:	b2 e0 09 10 	LSETUP(0xffa08a90 <_strcpy_+0x20>, 0xffa08a9e <_strcpy_+0x2e>) LC1 = P1;
ffa08a90:	01 9a       	B[P0++] = R1;
ffa08a92:	51 99       	R1 = B[P2] (X);
ffa08a94:	08 43       	R0 = R1.B (X);
ffa08a96:	00 0c       	CC = R0 == 0x0;
ffa08a98:	0a 64       	R2 += 0x1;		/* (  1) */
ffa08a9a:	03 18       	IF CC JUMP 0xffa08aa0 <_strcpy_+0x30>;
ffa08a9c:	00 00       	NOP;
ffa08a9e:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa08aa0:	01 e8 00 00 	UNLINK;
ffa08aa4:	28 91       	R0 = [P5];
ffa08aa6:	10 50       	R0 = R0 + R2;
ffa08aa8:	28 93       	[P5] = R0;
ffa08aaa:	40 30       	R0 = P0;
ffa08aac:	85 04       	(P5:5) = [SP++];
ffa08aae:	10 00       	RTS;
ffa08ab0:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa08ab2:	f7 2f       	JUMP.S 0xffa08aa0 <_strcpy_+0x30>;

ffa08ab4 <_strprepend>:
ffa08ab4:	fc 05       	[--SP] = (R7:7, P5:4);
ffa08ab6:	21 32       	P4 = R1;
ffa08ab8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa08abc:	38 30       	R7 = R0;
ffa08abe:	02 30       	R0 = R2;
ffa08ac0:	2a 32       	P5 = R2;
ffa08ac2:	ff e3 c5 ff 	CALL 0xffa08a4c <_strlen_>;
ffa08ac6:	82 ce 00 c4 	R2 = ROT R0 BY 0x0 || R0 = [P4] || NOP;
ffa08aca:	20 91 00 00 
ffa08ace:	02 0d       	CC = R2 <= 0x0;
ffa08ad0:	0a 18       	IF CC JUMP 0xffa08ae4 <_strprepend+0x30>;
ffa08ad2:	07 52       	R0 = R7 - R0;
ffa08ad4:	10 32       	P2 = R0;
ffa08ad6:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa08ad8:	09 64       	R1 += 0x1;		/* (  1) */
ffa08ada:	68 98       	R0 = B[P5++] (X);
ffa08adc:	0a 08       	CC = R2 == R1;
ffa08ade:	10 9a       	B[P2++] = R0;
ffa08ae0:	fc 17       	IF !CC JUMP 0xffa08ad8 <_strprepend+0x24> (BP);
ffa08ae2:	20 91       	R0 = [P4];
ffa08ae4:	01 e8 00 00 	UNLINK;
ffa08ae8:	07 52       	R0 = R7 - R0;
ffa08aea:	bc 05       	(R7:7, P5:4) = [SP++];
ffa08aec:	10 00       	RTS;
	...

ffa08af0 <_strcmp>:
ffa08af0:	10 32       	P2 = R0;
ffa08af2:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa08af6:	01 32       	P0 = R1;
ffa08af8:	51 99       	R1 = B[P2] (X);
ffa08afa:	01 0c       	CC = R1 == 0x0;
ffa08afc:	1b 18       	IF CC JUMP 0xffa08b32 <_strcmp+0x42>;
ffa08afe:	00 00       	NOP;
ffa08b00:	00 00       	NOP;
ffa08b02:	00 00       	NOP;
ffa08b04:	40 99       	R0 = B[P0] (X);
ffa08b06:	00 0c       	CC = R0 == 0x0;
ffa08b08:	15 18       	IF CC JUMP 0xffa08b32 <_strcmp+0x42>;
ffa08b0a:	01 08       	CC = R1 == R0;
ffa08b0c:	1c 10       	IF !CC JUMP 0xffa08b44 <_strcmp+0x54>;
ffa08b0e:	4a 32       	P1 = P2;
ffa08b10:	50 32       	P2 = P0;
ffa08b12:	09 6c       	P1 += 0x1;		/* (  1) */
ffa08b14:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa08b16:	28 e1 00 05 	P0 = 0x500 (X);		/*		P0=0x500(1280) */
ffa08b1a:	49 99       	R1 = B[P1] (X);
ffa08b1c:	01 0c       	CC = R1 == 0x0;
ffa08b1e:	0a 18       	IF CC JUMP 0xffa08b32 <_strcmp+0x42>;
ffa08b20:	00 00       	NOP;
ffa08b22:	00 00       	NOP;
ffa08b24:	00 00       	NOP;
ffa08b26:	50 99       	R0 = B[P2] (X);
ffa08b28:	00 0c       	CC = R0 == 0x0;
ffa08b2a:	04 18       	IF CC JUMP 0xffa08b32 <_strcmp+0x42>;
ffa08b2c:	f8 6f       	P0 += -0x1;		/* ( -1) */
ffa08b2e:	40 0c       	CC = P0 == 0x0;
ffa08b30:	05 10       	IF !CC JUMP 0xffa08b3a <_strcmp+0x4a>;
ffa08b32:	01 e8 00 00 	UNLINK;
ffa08b36:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa08b38:	10 00       	RTS;
ffa08b3a:	01 08       	CC = R1 == R0;
ffa08b3c:	04 10       	IF !CC JUMP 0xffa08b44 <_strcmp+0x54>;
ffa08b3e:	09 6c       	P1 += 0x1;		/* (  1) */
ffa08b40:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa08b42:	ec 2f       	JUMP.S 0xffa08b1a <_strcmp+0x2a>;
ffa08b44:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa08b46:	01 e8 00 00 	UNLINK;
ffa08b4a:	10 00       	RTS;

ffa08b4c <_substr>:
ffa08b4c:	f4 05       	[--SP] = (R7:6, P5:4);
ffa08b4e:	20 32       	P4 = R0;
ffa08b50:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa08b54:	11 32       	P2 = R1;
ffa08b56:	32 30       	R6 = R2;
ffa08b58:	61 99       	R1 = B[P4] (X);
ffa08b5a:	01 0c       	CC = R1 == 0x0;
ffa08b5c:	14 18       	IF CC JUMP 0xffa08b84 <_substr+0x38>;
ffa08b5e:	00 00       	NOP;
ffa08b60:	00 00       	NOP;
ffa08b62:	00 00       	NOP;
ffa08b64:	50 99       	R0 = B[P2] (X);
ffa08b66:	00 0c       	CC = R0 == 0x0;
ffa08b68:	0e 18       	IF CC JUMP 0xffa08b84 <_substr+0x38>;
ffa08b6a:	02 0d       	CC = R2 <= 0x0;
ffa08b6c:	0c 18       	IF CC JUMP 0xffa08b84 <_substr+0x38>;
ffa08b6e:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa08b70:	01 08       	CC = R1 == R0;
ffa08b72:	0f 18       	IF CC JUMP 0xffa08b90 <_substr+0x44>;
ffa08b74:	00 00       	NOP;
ffa08b76:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa08b78:	0b 64       	R3 += 0x1;		/* (  1) */
ffa08b7a:	50 99       	R0 = B[P2] (X);
ffa08b7c:	00 0c       	CC = R0 == 0x0;
ffa08b7e:	03 18       	IF CC JUMP 0xffa08b84 <_substr+0x38>;
ffa08b80:	1e 09       	CC = R6 <= R3;
ffa08b82:	f7 17       	IF !CC JUMP 0xffa08b70 <_substr+0x24> (BP);
ffa08b84:	00 68       	P0 = 0x0 (X);		/*		P0=0x0(  0) */
ffa08b86:	01 e8 00 00 	UNLINK;
ffa08b8a:	40 30       	R0 = P0;
ffa08b8c:	b4 05       	(R7:6, P5:4) = [SP++];
ffa08b8e:	10 00       	RTS;
ffa08b90:	52 30       	R2 = P2;
ffa08b92:	3b 30       	R7 = R3;
ffa08b94:	0a 64       	R2 += 0x1;		/* (  1) */
ffa08b96:	0f 64       	R7 += 0x1;		/* (  1) */
ffa08b98:	12 32       	P2 = R2;
ffa08b9a:	07 32       	P0 = R7;
ffa08b9c:	4c 32       	P1 = P4;
ffa08b9e:	6c 32       	P5 = P4;
ffa08ba0:	09 6c       	P1 += 0x1;		/* (  1) */
ffa08ba2:	15 6c       	P5 += 0x2;		/* (  2) */
ffa08ba4:	02 20       	JUMP.S 0xffa08ba8 <_substr+0x5c>;
ffa08ba6:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa08ba8:	4b 99       	R3 = B[P1] (X);
ffa08baa:	50 99       	R0 = B[P2] (X);
ffa08bac:	03 08       	CC = R3 == R0;
ffa08bae:	0e 10       	IF !CC JUMP 0xffa08bca <_substr+0x7e>;
ffa08bb0:	03 0c       	CC = R3 == 0x0;
ffa08bb2:	0c 18       	IF CC JUMP 0xffa08bca <_substr+0x7e>;
ffa08bb4:	00 00       	NOP;
ffa08bb6:	09 6c       	P1 += 0x1;		/* (  1) */
ffa08bb8:	08 6c       	P0 += 0x1;		/* (  1) */
ffa08bba:	68 98       	R0 = B[P5++] (X);
ffa08bbc:	00 0c       	CC = R0 == 0x0;
ffa08bbe:	f4 17       	IF !CC JUMP 0xffa08ba6 <_substr+0x5a> (BP);
ffa08bc0:	01 e8 00 00 	UNLINK;
ffa08bc4:	40 30       	R0 = P0;
ffa08bc6:	b4 05       	(R7:6, P5:4) = [SP++];
ffa08bc8:	10 00       	RTS;
ffa08bca:	12 32       	P2 = R2;
ffa08bcc:	1f 30       	R3 = R7;
ffa08bce:	d6 2f       	JUMP.S 0xffa08b7a <_substr+0x2e>;

ffa08bd0 <_sprintf_int>:
ffa08bd0:	fb 05       	[--SP] = (R7:7, P5:3);
ffa08bd2:	01 0c       	CC = R1 == 0x0;
ffa08bd4:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa08bd8:	00 34       	I0 = R0;
ffa08bda:	11 30       	R2 = R1;
ffa08bdc:	1a 14       	IF !CC JUMP 0xffa08c10 <_sprintf_int+0x40> (BP);
ffa08bde:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff9060e4 <_printf_temp> */
ffa08be2:	0b e1 e4 60 	P3.L = 0x60e4;		/* (24804)	P3=0xff9060e4 <_printf_temp> */
ffa08be6:	5a 91       	P2 = [P3];
ffa08be8:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa08bea:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa08bec:	10 9b       	B[P2] = R0;
ffa08bee:	88 32       	P1 = I0;
ffa08bf0:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa08bf2:	0b 52       	R0 = R3 - R1;
ffa08bf4:	00 32       	P0 = R0;
ffa08bf6:	5a 91       	P2 = [P3];
ffa08bf8:	09 64       	R1 += 0x1;		/* (  1) */
ffa08bfa:	99 08       	CC = R1 < R3;
ffa08bfc:	82 5a       	P2 = P2 + P0;
ffa08bfe:	90 e5 ff ff 	R0 = B[P2 + -0x1] (X);
ffa08c02:	08 9a       	B[P1++] = R0;
ffa08c04:	f7 1f       	IF CC JUMP 0xffa08bf2 <_sprintf_int+0x22> (BP);
ffa08c06:	01 e8 00 00 	UNLINK;
ffa08c0a:	03 30       	R0 = R3;
ffa08c0c:	bb 05       	(R7:7, P5:3) = [SP++];
ffa08c0e:	10 00       	RTS;
ffa08c10:	01 0d       	CC = R1 <= 0x0;
ffa08c12:	2d 18       	IF CC JUMP 0xffa08c6c <_sprintf_int+0x9c>;
ffa08c14:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff9060e4 <_printf_temp> */
ffa08c18:	47 e1 66 66 	R7.H = 0x6666;		/* (26214)	R7=0x66660009(1717960713) */
ffa08c1c:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa08c1e:	0b e1 e4 60 	P3.L = 0x60e4;		/* (24804)	P3=0xff9060e4 <_printf_temp> */
ffa08c22:	07 e1 67 66 	R7.L = 0x6667;		/* (26215)	R7=0x66666667(1717986919) */
ffa08c26:	5d 68       	P5 = 0xb (X);		/*		P5=0xb( 11) */
ffa08c28:	b2 e0 20 50 	LSETUP(0xffa08c2c <_sprintf_int+0x5c>, 0xffa08c68 <_sprintf_int+0x98>) LC1 = P5;
ffa08c2c:	80 c8 17 18 	A1 = R2.L * R7.L (FU) || P1 = [P3] || NOP;
ffa08c30:	59 91 00 00 
ffa08c34:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa08c38:	11 c1 17 86 	A1 += R2.H * R7.L (M), A0 = R2.H * R7.H (IS);
ffa08c3c:	11 c1 3a 98 	A1 += R7.H * R2.L (M, IS);
ffa08c40:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa08c44:	0b c4 00 00 	R0 = (A0 += A1);
ffa08c48:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa08c4c:	10 4d       	R0 >>>= 0x2;
ffa08c4e:	08 52       	R0 = R0 - R1;
ffa08c50:	00 32       	P0 = R0;
ffa08c52:	13 32       	P2 = R3;
ffa08c54:	0b 64       	R3 += 0x1;		/* (  1) */
ffa08c56:	40 0d       	CC = P0 <= 0x0;
ffa08c58:	51 5a       	P1 = P1 + P2;
ffa08c5a:	80 5e       	P2 = P0 + (P0 << 0x2);
ffa08c5c:	92 5a       	P2 = P2 << 0x1;
ffa08c5e:	4a 30       	R1 = P2;
ffa08c60:	0a 52       	R0 = R2 - R1;
ffa08c62:	80 65       	R0 += 0x30;		/* ( 48) */
ffa08c64:	08 9b       	B[P1] = R0;
ffa08c66:	39 18       	IF CC JUMP 0xffa08cd8 <_sprintf_int+0x108>;
ffa08c68:	50 30       	R2 = P0;
ffa08c6a:	c2 2f       	JUMP.S 0xffa08bee <_sprintf_int+0x1e>;
ffa08c6c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa08c6e:	fa 4c       	BITCLR (R2, 0x1f);		/* bit 31 */
ffa08c70:	f8 4f       	R0 <<= 0x1f;
ffa08c72:	90 52       	R2 = R0 - R2;
ffa08c74:	02 0d       	CC = R2 <= 0x0;
ffa08c76:	3c 18       	IF CC JUMP 0xffa08cee <_sprintf_int+0x11e>;
ffa08c78:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff9060e4 <_printf_temp> */
ffa08c7c:	43 e1 66 66 	R3.H = 0x6666;		/* (26214)	R3=0x66660000(1717960704) */
ffa08c80:	04 68       	P4 = 0x0 (X);		/*		P4=0x0(  0) */
ffa08c82:	0b e1 e4 60 	P3.L = 0x60e4;		/* (24804)	P3=0xff9060e4 <_printf_temp> */
ffa08c86:	03 e1 67 66 	R3.L = 0x6667;		/* (26215)	R3=0x66666667(1717986919) */
ffa08c8a:	5d 68       	P5 = 0xb (X);		/*		P5=0xb( 11) */
ffa08c8c:	b2 e0 1f 50 	LSETUP(0xffa08c90 <_sprintf_int+0xc0>, 0xffa08cca <_sprintf_int+0xfa>) LC1 = P5;
ffa08c90:	80 c8 13 18 	A1 = R2.L * R3.L (FU) || P1 = [P3] || NOP;
ffa08c94:	59 91 00 00 
ffa08c98:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa08c9c:	11 c1 13 86 	A1 += R2.H * R3.L (M), A0 = R2.H * R3.H (IS);
ffa08ca0:	11 c1 1a 98 	A1 += R3.H * R2.L (M, IS);
ffa08ca4:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa08ca8:	0b c4 00 00 	R0 = (A0 += A1);
ffa08cac:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa08cb0:	10 4d       	R0 >>>= 0x2;
ffa08cb2:	08 52       	R0 = R0 - R1;
ffa08cb4:	00 32       	P0 = R0;
ffa08cb6:	61 5a       	P1 = P1 + P4;
ffa08cb8:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa08cba:	80 5e       	P2 = P0 + (P0 << 0x2);
ffa08cbc:	92 5a       	P2 = P2 << 0x1;
ffa08cbe:	4a 30       	R1 = P2;
ffa08cc0:	0a 52       	R0 = R2 - R1;
ffa08cc2:	80 65       	R0 += 0x30;		/* ( 48) */
ffa08cc4:	40 0d       	CC = P0 <= 0x0;
ffa08cc6:	08 9b       	B[P1] = R0;
ffa08cc8:	0f 18       	IF CC JUMP 0xffa08ce6 <_sprintf_int+0x116>;
ffa08cca:	50 30       	R2 = P0;
ffa08ccc:	59 68       	P1 = 0xb (X);		/*		P1=0xb( 11) */
ffa08cce:	63 60       	R3 = 0xc (X);		/*		R3=0xc( 12) */
ffa08cd0:	5a 91       	P2 = [P3];
ffa08cd2:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa08cd4:	8a 5a       	P2 = P2 + P1;
ffa08cd6:	10 9b       	B[P2] = R0;
ffa08cd8:	03 0d       	CC = R3 <= 0x0;
ffa08cda:	8a 17       	IF !CC JUMP 0xffa08bee <_sprintf_int+0x1e> (BP);
ffa08cdc:	01 e8 00 00 	UNLINK;
ffa08ce0:	03 30       	R0 = R3;
ffa08ce2:	bb 05       	(R7:7, P5:3) = [SP++];
ffa08ce4:	10 00       	RTS;
ffa08ce6:	5c 30       	R3 = P4;
ffa08ce8:	4c 32       	P1 = P4;
ffa08cea:	0b 64       	R3 += 0x1;		/* (  1) */
ffa08cec:	f2 2f       	JUMP.S 0xffa08cd0 <_sprintf_int+0x100>;
ffa08cee:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff9060e4 <_printf_temp> */
ffa08cf2:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
ffa08cf4:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa08cf6:	0b e1 e4 60 	P3.L = 0x60e4;		/* (24804)	P3=0xff9060e4 <_printf_temp> */
ffa08cfa:	eb 2f       	JUMP.S 0xffa08cd0 <_sprintf_int+0x100>;

ffa08cfc <_sprintf_hex>:
ffa08cfc:	10 32       	P2 = R0;
ffa08cfe:	78 05       	[--SP] = (R7:7);
ffa08d00:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa08d02:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa08d06:	e2 60       	R2 = 0x1c (X);		/*		R2=0x1c( 28) */
ffa08d08:	10 9b       	B[P2] = R0;
ffa08d0a:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa08d0e:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa08d12:	7b 60       	R3 = 0xf (X);		/*		R3=0xf( 15) */
ffa08d14:	12 6c       	P2 += 0x2;		/* (  2) */
ffa08d16:	41 68       	P1 = 0x8 (X);		/*		P1=0x8(  8) */
ffa08d18:	4f 60       	R7 = 0x9 (X);		/*		R7=0x9(  9) */
ffa08d1a:	b2 e0 09 10 	LSETUP(0xffa08d1e <_sprintf_hex+0x22>, 0xffa08d2c <_sprintf_hex+0x30>) LC1 = P1;
ffa08d1e:	01 30       	R0 = R1;
ffa08d20:	10 40       	R0 >>>= R2;
ffa08d22:	18 54       	R0 = R0 & R3;
ffa08d24:	38 09       	CC = R0 <= R7;
ffa08d26:	09 1c       	IF CC JUMP 0xffa08d38 <_sprintf_hex+0x3c> (BP);
ffa08d28:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa08d2a:	10 9a       	B[P2++] = R0;
ffa08d2c:	e2 67       	R2 += -0x4;		/* ( -4) */
ffa08d2e:	01 e8 00 00 	UNLINK;
ffa08d32:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa08d34:	38 05       	(R7:7) = [SP++];
ffa08d36:	10 00       	RTS;
ffa08d38:	80 65       	R0 += 0x30;		/* ( 48) */
ffa08d3a:	f8 2f       	JUMP.S 0xffa08d2a <_sprintf_hex+0x2e>;

ffa08d3c <_strprintf_int>:
ffa08d3c:	fd 05       	[--SP] = (R7:7, P5:5);
ffa08d3e:	29 32       	P5 = R1;
ffa08d40:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa08d44:	0a 30       	R1 = R2;
ffa08d46:	38 30       	R7 = R0;
ffa08d48:	ff e3 44 ff 	CALL 0xffa08bd0 <_sprintf_int>;
ffa08d4c:	29 91       	R1 = [P5];
ffa08d4e:	41 50       	R1 = R1 + R0;
ffa08d50:	04 cc 38 0e 	R7 = R7 + R0 (NS) || [P5] = R1 || NOP;
ffa08d54:	29 93 00 00 
ffa08d58:	01 e8 00 00 	UNLINK;
ffa08d5c:	07 30       	R0 = R7;
ffa08d5e:	bd 05       	(R7:7, P5:5) = [SP++];
ffa08d60:	10 00       	RTS;
	...

ffa08d64 <_strprintf_hex>:
ffa08d64:	fd 05       	[--SP] = (R7:7, P5:5);
ffa08d66:	29 32       	P5 = R1;
ffa08d68:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa08d6c:	0a 30       	R1 = R2;
ffa08d6e:	38 30       	R7 = R0;
ffa08d70:	ff e3 c6 ff 	CALL 0xffa08cfc <_sprintf_hex>;
ffa08d74:	29 91       	R1 = [P5];
ffa08d76:	41 50       	R1 = R1 + R0;
ffa08d78:	04 cc 38 0e 	R7 = R7 + R0 (NS) || [P5] = R1 || NOP;
ffa08d7c:	29 93 00 00 
ffa08d80:	01 e8 00 00 	UNLINK;
ffa08d84:	07 30       	R0 = R7;
ffa08d86:	bd 05       	(R7:7, P5:5) = [SP++];
ffa08d88:	10 00       	RTS;
	...

ffa08d8c <_atoi>:
ffa08d8c:	08 32       	P1 = R0;
ffa08d8e:	6a 61       	R2 = 0x2d (X);		/*		R2=0x2d( 45) */
ffa08d90:	f5 05       	[--SP] = (R7:6, P5:5);
ffa08d92:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa08d96:	48 99       	R0 = B[P1] (X);
ffa08d98:	10 08       	CC = R0 == R2;
ffa08d9a:	25 18       	IF CC JUMP 0xffa08de4 <_atoi+0x58>;
ffa08d9c:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa08d9e:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa08da0:	41 32       	P0 = P1;
ffa08da2:	08 6c       	P0 += 0x1;		/* (  1) */
ffa08da4:	02 68       	P2 = 0x0 (X);		/*		P2=0x0(  0) */
ffa08da6:	4e 60       	R6 = 0x9 (X);		/*		R6=0x9(  9) */
ffa08da8:	12 20       	JUMP.S 0xffa08dcc <_atoi+0x40>;
ffa08daa:	8b 08       	CC = R3 < R1;
ffa08dac:	16 10       	IF !CC JUMP 0xffa08dd8 <_atoi+0x4c>;
ffa08dae:	10 43       	R0 = R2.B (X);
ffa08db0:	28 32       	P5 = R0;
ffa08db2:	4a 60       	R2 = 0x9 (X);		/*		R2=0x9(  9) */
ffa08db4:	40 99       	R0 = B[P0] (X);
ffa08db6:	80 66       	R0 += -0x30;		/* (-48) */
ffa08db8:	40 43       	R0 = R0.B (Z);
ffa08dba:	aa 5a       	P2 = P2 + P5;
ffa08dbc:	10 0a       	CC = R0 <= R2 (IU);
ffa08dbe:	82 6e       	P2 += -0x30;		/* (-48) */
ffa08dc0:	09 6c       	P1 += 0x1;		/* (  1) */
ffa08dc2:	03 14       	IF !CC JUMP 0xffa08dc8 <_atoi+0x3c> (BP);
ffa08dc4:	92 5e       	P2 = P2 + (P2 << 0x2);
ffa08dc6:	92 5a       	P2 = P2 << 0x1;
ffa08dc8:	0b 64       	R3 += 0x1;		/* (  1) */
ffa08dca:	08 6c       	P0 += 0x1;		/* (  1) */
ffa08dcc:	4a 99       	R2 = B[P1] (X);
ffa08dce:	02 30       	R0 = R2;
ffa08dd0:	80 66       	R0 += -0x30;		/* (-48) */
ffa08dd2:	40 43       	R0 = R0.B (Z);
ffa08dd4:	30 0a       	CC = R0 <= R6 (IU);
ffa08dd6:	ea 1f       	IF CC JUMP 0xffa08daa <_atoi+0x1e> (BP);
ffa08dd8:	42 30       	R0 = P2;
ffa08dda:	f8 40       	R0 *= R7;
ffa08ddc:	01 e8 00 00 	UNLINK;
ffa08de0:	b5 05       	(R7:6, P5:5) = [SP++];
ffa08de2:	10 00       	RTS;
ffa08de4:	09 6c       	P1 += 0x1;		/* (  1) */
ffa08de6:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa08de8:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa08dea:	db 2f       	JUMP.S 0xffa08da0 <_atoi+0x14>;

ffa08dec <_udelay>:
ffa08dec:	00 0d       	CC = R0 <= 0x0;
ffa08dee:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa08df2:	0b 18       	IF CC JUMP 0xffa08e08 <_udelay+0x1c>;
ffa08df4:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa08df6:	2a e1 a0 00 	P2 = 0xa0 (X);		/*		P2=0xa0(160) */
ffa08dfa:	b2 e0 03 20 	LSETUP(0xffa08dfe <_udelay+0x12>, 0xffa08e00 <_udelay+0x14>) LC1 = P2;
ffa08dfe:	00 00       	NOP;
ffa08e00:	00 00       	NOP;
ffa08e02:	09 64       	R1 += 0x1;		/* (  1) */
ffa08e04:	08 08       	CC = R0 == R1;
ffa08e06:	f8 17       	IF !CC JUMP 0xffa08df6 <_udelay+0xa> (BP);
ffa08e08:	01 e8 00 00 	UNLINK;
ffa08e0c:	10 00       	RTS;
	...

ffa08e10 <_spi_delay>:
ffa08e10:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc000a0(-4194144) */
ffa08e14:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa08e18:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa08e1c:	00 00       	NOP;
ffa08e1e:	50 95       	R0 = W[P2] (X);
ffa08e20:	c0 42       	R0 = R0.L (Z);
ffa08e22:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa08e24:	fc 17       	IF !CC JUMP 0xffa08e1c <_spi_delay+0xc> (BP);
ffa08e26:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa08e28:	0a 10       	IF !CC JUMP 0xffa08e3c <_spi_delay+0x2c>;
ffa08e2a:	00 00       	NOP;
ffa08e2c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa08e30:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa08e34:	00 00       	NOP;
ffa08e36:	50 95       	R0 = W[P2] (X);
ffa08e38:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa08e3a:	fd 1f       	IF CC JUMP 0xffa08e34 <_spi_delay+0x24> (BP);
ffa08e3c:	01 e8 00 00 	UNLINK;
ffa08e40:	10 00       	RTS;
	...

ffa08e44 <_spi_write_register>:
ffa08e44:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa08e48:	ed 05       	[--SP] = (R7:5, P5:5);
ffa08e4a:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa08e4e:	15 60       	R5 = 0x2 (X);		/*		R5=0x2(  2) */
ffa08e50:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa08e54:	82 ce 01 cc 	R6 = ROT R1 BY 0x0 || W[P2] = R5 || NOP;
ffa08e58:	15 97 00 00 
ffa08e5c:	24 00       	SSYNC;
ffa08e5e:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc0000b(-4194293) */
ffa08e62:	28 4a       	BITSET (R0, 0x5);		/* bit  5 */
ffa08e64:	40 43       	R0 = R0.B (Z);
ffa08e66:	0d e1 0c 05 	P5.L = 0x50c;		/* (1292)	P5=0xffc0050c(-4193012) */
ffa08e6a:	28 97       	W[P5] = R0;
ffa08e6c:	ff e3 d2 ff 	CALL 0xffa08e10 <_spi_delay>;
ffa08e70:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa08e74:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa08e78:	76 43       	R6 = R6.B (Z);
ffa08e7a:	57 95       	R7 = W[P2] (X);
ffa08e7c:	2e 97       	W[P5] = R6;
ffa08e7e:	ff e3 c9 ff 	CALL 0xffa08e10 <_spi_delay>;
ffa08e82:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa08e86:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa08e8a:	15 97       	W[P2] = R5;
ffa08e8c:	24 00       	SSYNC;
ffa08e8e:	7f 43       	R7 = R7.B (Z);
ffa08e90:	01 e8 00 00 	UNLINK;
ffa08e94:	07 30       	R0 = R7;
ffa08e96:	ad 05       	(R7:5, P5:5) = [SP++];
ffa08e98:	10 00       	RTS;
	...

ffa08e9c <_spi_read_register>:
ffa08e9c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa08ea0:	fc 05       	[--SP] = (R7:7, P5:4);
ffa08ea2:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa08ea6:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa08ea8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa08eac:	17 97       	W[P2] = R7;
ffa08eae:	24 00       	SSYNC;
ffa08eb0:	4c e1 c0 ff 	P4.H = 0xffc0;		/* (-64)	P4=0xffc00000(-4194304) */
ffa08eb4:	40 43       	R0 = R0.B (Z);
ffa08eb6:	0c e1 0c 05 	P4.L = 0x50c;		/* (1292)	P4=0xffc0050c(-4193012) */
ffa08eba:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc0050c(-4193012) */
ffa08ebe:	20 97       	W[P4] = R0;
ffa08ec0:	0d e1 18 05 	P5.L = 0x518;		/* (1304)	P5=0xffc00518(-4193000) */
ffa08ec4:	ff e3 a6 ff 	CALL 0xffa08e10 <_spi_delay>;
ffa08ec8:	68 95       	R0 = W[P5] (X);
ffa08eca:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa08ecc:	20 97       	W[P4] = R0;
ffa08ece:	ff e3 a1 ff 	CALL 0xffa08e10 <_spi_delay>;
ffa08ed2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa08ed6:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa08eda:	68 95       	R0 = W[P5] (X);
ffa08edc:	17 97       	W[P2] = R7;
ffa08ede:	24 00       	SSYNC;
ffa08ee0:	01 e8 00 00 	UNLINK;
ffa08ee4:	40 43       	R0 = R0.B (Z);
ffa08ee6:	bc 05       	(R7:7, P5:4) = [SP++];
ffa08ee8:	10 00       	RTS;
	...

ffa08eec <_spi_read_register_status>:
ffa08eec:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa08ef0:	f3 05       	[--SP] = (R7:6, P5:3);
ffa08ef2:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa08ef6:	16 60       	R6 = 0x2 (X);		/*		R6=0x2(  2) */
ffa08ef8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa08efc:	19 32       	P3 = R1;
ffa08efe:	16 97       	W[P2] = R6;
ffa08f00:	24 00       	SSYNC;
ffa08f02:	4c e1 c0 ff 	P4.H = 0xffc0;		/* (-64)	P4=0xffc0050c(-4193012) */
ffa08f06:	40 43       	R0 = R0.B (Z);
ffa08f08:	0c e1 0c 05 	P4.L = 0x50c;		/* (1292)	P4=0xffc0050c(-4193012) */
ffa08f0c:	20 97       	W[P4] = R0;
ffa08f0e:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00518(-4193000) */
ffa08f12:	ff e3 7f ff 	CALL 0xffa08e10 <_spi_delay>;
ffa08f16:	0d e1 18 05 	P5.L = 0x518;		/* (1304)	P5=0xffc00518(-4193000) */
ffa08f1a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa08f1c:	6f 95       	R7 = W[P5] (X);
ffa08f1e:	20 97       	W[P4] = R0;
ffa08f20:	ff e3 78 ff 	CALL 0xffa08e10 <_spi_delay>;
ffa08f24:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa08f28:	68 95       	R0 = W[P5] (X);
ffa08f2a:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa08f2e:	18 9b       	B[P3] = R0;
ffa08f30:	16 97       	W[P2] = R6;
ffa08f32:	24 00       	SSYNC;
ffa08f34:	7f 43       	R7 = R7.B (Z);
ffa08f36:	01 e8 00 00 	UNLINK;
ffa08f3a:	07 30       	R0 = R7;
ffa08f3c:	b3 05       	(R7:6, P5:3) = [SP++];
ffa08f3e:	10 00       	RTS;

ffa08f40 <_spi_write_byte>:
ffa08f40:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa08f44:	78 05       	[--SP] = (R7:7);
ffa08f46:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa08f4a:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa08f4c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa08f50:	17 97       	W[P2] = R7;
ffa08f52:	24 00       	SSYNC;
ffa08f54:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa08f58:	40 43       	R0 = R0.B (Z);
ffa08f5a:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa08f5e:	10 97       	W[P2] = R0;
ffa08f60:	ff e3 58 ff 	CALL 0xffa08e10 <_spi_delay>;
ffa08f64:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa08f68:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa08f6c:	50 95       	R0 = W[P2] (X);
ffa08f6e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa08f72:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa08f76:	17 97       	W[P2] = R7;
ffa08f78:	24 00       	SSYNC;
ffa08f7a:	01 e8 00 00 	UNLINK;
ffa08f7e:	40 43       	R0 = R0.B (Z);
ffa08f80:	38 05       	(R7:7) = [SP++];
ffa08f82:	10 00       	RTS;

ffa08f84 <_spi_write_packet>:
ffa08f84:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa08f88:	fd 05       	[--SP] = (R7:7, P5:5);
ffa08f8a:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa08f8e:	38 30       	R7 = R0;
ffa08f90:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa08f92:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa08f96:	10 97       	W[P2] = R0;
ffa08f98:	24 00       	SSYNC;
ffa08f9a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa08f9e:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa08fa2:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa08fa6:	10 97       	W[P2] = R0;
ffa08fa8:	ff e3 34 ff 	CALL 0xffa08e10 <_spi_delay>;
ffa08fac:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa08fb0:	20 e1 07 50 	R0 = 0x5007 (X);		/*		R0=0x5007(20487) */
ffa08fb4:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa08fb8:	10 97       	W[P2] = R0;
ffa08fba:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa08fbe:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa08fc0:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xffc00d50(-4190896) */
ffa08fc4:	10 97       	W[P2] = R0;
ffa08fc6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa08fc8:	22 6c       	P2 += 0x4;		/* (  4) */
ffa08fca:	10 97       	W[P2] = R0;
ffa08fcc:	82 6f       	P2 += -0x10;		/* (-16) */
ffa08fce:	17 93       	[P2] = R7;
ffa08fd0:	24 00       	SSYNC;
ffa08fd2:	20 e1 81 00 	R0 = 0x81 (X);		/*		R0=0x81(129) */
ffa08fd6:	22 6c       	P2 += 0x4;		/* (  4) */
ffa08fd8:	10 97       	W[P2] = R0;
ffa08fda:	01 20       	JUMP.S 0xffa08fdc <_spi_write_packet+0x58>;
	...
ffa08fe4:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00518(-4193000) */
ffa08fe8:	0d e1 68 0d 	P5.L = 0xd68;		/* (3432)	P5=0xffc00d68(-4190872) */
ffa08fec:	68 95       	R0 = W[P5] (X);
ffa08fee:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa08ff0:	f6 1f       	IF CC JUMP 0xffa08fdc <_spi_write_packet+0x58> (BP);
ffa08ff2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d50(-4190896) */
ffa08ff6:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa08ffa:	50 95       	R0 = W[P2] (X);
ffa08ffc:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa08ffe:	ef 17       	IF !CC JUMP 0xffa08fdc <_spi_write_packet+0x58> (BP);
ffa09000:	69 95       	R1 = W[P5] (X);
ffa09002:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa09004:	08 54       	R0 = R0 & R1;
ffa09006:	00 0c       	CC = R0 == 0x0;
ffa09008:	ea 17       	IF !CC JUMP 0xffa08fdc <_spi_write_packet+0x58> (BP);
ffa0900a:	ff e3 03 ff 	CALL 0xffa08e10 <_spi_delay>;
ffa0900e:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa09010:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa09014:	28 97       	W[P5] = R0;
ffa09016:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0901a:	20 e1 0d 50 	R0 = 0x500d (X);		/*		R0=0x500d(20493) */
ffa0901e:	10 97       	W[P2] = R0;
ffa09020:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa09024:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09026:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa0902a:	10 97       	W[P2] = R0;
ffa0902c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa09030:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09032:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa09036:	10 97       	W[P2] = R0;
ffa09038:	24 00       	SSYNC;
ffa0903a:	01 e8 00 00 	UNLINK;
ffa0903e:	bd 05       	(R7:7, P5:5) = [SP++];
ffa09040:	10 00       	RTS;
	...

ffa09044 <_spi_write_packet_noDMA>:
ffa09044:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa09048:	fc 05       	[--SP] = (R7:7, P5:4);
ffa0904a:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0904e:	38 30       	R7 = R0;
ffa09050:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09052:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa09056:	10 97       	W[P2] = R0;
ffa09058:	24 00       	SSYNC;
ffa0905a:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00d68(-4190872) */
ffa0905e:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa09062:	0d e1 0c 05 	P5.L = 0x50c;		/* (1292)	P5=0xffc0050c(-4193012) */
ffa09066:	28 97       	W[P5] = R0;
ffa09068:	27 32       	P4 = R7;
ffa0906a:	ff e3 d3 fe 	CALL 0xffa08e10 <_spi_delay>;
ffa0906e:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa09070:	0f 64       	R7 += 0x1;		/* (  1) */
ffa09072:	60 98       	R0 = B[P4++] (X);
ffa09074:	28 97       	W[P5] = R0;
ffa09076:	ff e3 cd fe 	CALL 0xffa08e10 <_spi_delay>;
ffa0907a:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa0907c:	07 08       	CC = R7 == R0;
ffa0907e:	f9 17       	IF !CC JUMP 0xffa09070 <_spi_write_packet_noDMA+0x2c> (BP);
ffa09080:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa09084:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09086:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0908a:	10 97       	W[P2] = R0;
ffa0908c:	24 00       	SSYNC;
ffa0908e:	01 e8 00 00 	UNLINK;
ffa09092:	bc 05       	(R7:7, P5:4) = [SP++];
ffa09094:	10 00       	RTS;
	...

ffa09098 <_spi_read_packet>:
ffa09098:	f3 05       	[--SP] = (R7:6, P5:3);
ffa0909a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0909e:	20 32       	P4 = R0;
ffa090a0:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa090a4:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa090a6:	ff e3 cf fe 	CALL 0xffa08e44 <_spi_write_register>;
ffa090aa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa090ae:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa090b0:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa090b4:	10 97       	W[P2] = R0;
ffa090b6:	24 00       	SSYNC;
ffa090b8:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc0050c(-4193012) */
ffa090bc:	0d e1 0c 05 	P5.L = 0x50c;		/* (1292)	P5=0xffc0050c(-4193012) */
ffa090c0:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa090c4:	28 97       	W[P5] = R0;
ffa090c6:	5d 32       	P3 = P5;
ffa090c8:	ff e3 a4 fe 	CALL 0xffa08e10 <_spi_delay>;
ffa090cc:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa090ce:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa090d0:	65 6c       	P5 += 0xc;		/* ( 12) */
ffa090d2:	1e 97       	W[P3] = R6;
ffa090d4:	ff e3 9e fe 	CALL 0xffa08e10 <_spi_delay>;
ffa090d8:	0f 64       	R7 += 0x1;		/* (  1) */
ffa090da:	68 95       	R0 = W[P5] (X);
ffa090dc:	20 9a       	B[P4++] = R0;
ffa090de:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa090e0:	78 43       	R0 = R7.B (Z);
ffa090e2:	08 08       	CC = R0 == R1;
ffa090e4:	f7 17       	IF !CC JUMP 0xffa090d2 <_spi_read_packet+0x3a> (BP);
ffa090e6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa090ea:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa090ec:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa090f0:	10 97       	W[P2] = R0;
ffa090f2:	24 00       	SSYNC;
ffa090f4:	01 e8 00 00 	UNLINK;
ffa090f8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa090fa:	b3 05       	(R7:6, P5:3) = [SP++];
ffa090fc:	10 00       	RTS;
	...

ffa09100 <_spi_read_packet_nocheck>:
ffa09100:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa09104:	78 05       	[--SP] = (R7:7);
ffa09106:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0910a:	38 30       	R7 = R0;
ffa0910c:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0910e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa09112:	10 97       	W[P2] = R0;
ffa09114:	24 00       	SSYNC;
ffa09116:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0911a:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa0911e:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa09122:	10 97       	W[P2] = R0;
ffa09124:	ff e3 76 fe 	CALL 0xffa08e10 <_spi_delay>;
ffa09128:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00008(-4194296) */
ffa0912c:	09 e1 00 05 	P1.L = 0x500;		/* (1280)	P1=0xffc00500(-4193024) */
ffa09130:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09132:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa09136:	08 97       	W[P1] = R0;
ffa09138:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xffc00d50(-4190896) */
ffa0913c:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa0913e:	10 97       	W[P2] = R0;
ffa09140:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09142:	22 6c       	P2 += 0x4;		/* (  4) */
ffa09144:	10 97       	W[P2] = R0;
ffa09146:	82 6f       	P2 += -0x10;		/* (-16) */
ffa09148:	17 93       	[P2] = R7;
ffa0914a:	20 e1 83 00 	R0 = 0x83 (X);		/*		R0=0x83(131) */
ffa0914e:	22 6c       	P2 += 0x4;		/* (  4) */
ffa09150:	10 97       	W[P2] = R0;
ffa09152:	20 e1 06 50 	R0 = 0x5006 (X);		/*		R0=0x5006(20486) */
ffa09156:	08 97       	W[P1] = R0;
	...
ffa09160:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00500(-4193024) */
ffa09164:	09 e1 68 0d 	P1.L = 0xd68;		/* (3432)	P1=0xffc00d68(-4190872) */
ffa09168:	48 95       	R0 = W[P1] (X);
ffa0916a:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0916c:	f6 1f       	IF CC JUMP 0xffa09158 <_spi_read_packet_nocheck+0x58> (BP);
ffa0916e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d50(-4190896) */
ffa09172:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09174:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa09178:	10 97       	W[P2] = R0;
ffa0917a:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0917c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa09180:	08 97       	W[P1] = R0;
ffa09182:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa09186:	20 e1 0d 50 	R0 = 0x500d (X);		/*		R0=0x500d(20493) */
ffa0918a:	10 97       	W[P2] = R0;
ffa0918c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa09190:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09192:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa09196:	10 97       	W[P2] = R0;
ffa09198:	24 00       	SSYNC;
ffa0919a:	01 e8 00 00 	UNLINK;
ffa0919e:	38 05       	(R7:7) = [SP++];
ffa091a0:	10 00       	RTS;
	...

ffa091a4 <_radio_set_rx>:
ffa091a4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa091a8:	78 05       	[--SP] = (R7:7);
ffa091aa:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa091ae:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa091b0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa091b4:	17 97       	W[P2] = R7;
ffa091b6:	24 00       	SSYNC;
ffa091b8:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa091ba:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa091bc:	ff e3 44 fe 	CALL 0xffa08e44 <_spi_write_register>;
ffa091c0:	20 e1 e2 00 	R0 = 0xe2 (X);		/*		R0=0xe2(226) */
ffa091c4:	ff e3 be fe 	CALL 0xffa08f40 <_spi_write_byte>;
ffa091c8:	f9 60       	R1 = 0x1f (X);		/*		R1=0x1f( 31) */
ffa091ca:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa091cc:	ff e3 3c fe 	CALL 0xffa08e44 <_spi_write_register>;
ffa091d0:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa091d4:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa091d6:	ff e3 37 fe 	CALL 0xffa08e44 <_spi_write_register>;
ffa091da:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa091de:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa091e0:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa091e4:	10 97       	W[P2] = R0;
ffa091e6:	24 00       	SSYNC;
ffa091e8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa091ec:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa091f0:	17 97       	W[P2] = R7;
ffa091f2:	24 00       	SSYNC;
ffa091f4:	01 e8 00 00 	UNLINK;
ffa091f8:	38 05       	(R7:7) = [SP++];
ffa091fa:	10 00       	RTS;

ffa091fc <_radio_set_tx>:
ffa091fc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa09200:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09202:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa09206:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0920a:	10 97       	W[P2] = R0;
ffa0920c:	24 00       	SSYNC;
ffa0920e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa09210:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09212:	ff e3 19 fe 	CALL 0xffa08e44 <_spi_write_register>;
ffa09216:	20 e1 e1 00 	R0 = 0xe1 (X);		/*		R0=0xe1(225) */
ffa0921a:	ff e3 93 fe 	CALL 0xffa08f40 <_spi_write_byte>;
ffa0921e:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa09222:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa09224:	ff e3 10 fe 	CALL 0xffa08e44 <_spi_write_register>;
ffa09228:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0922a:	f1 60       	R1 = 0x1e (X);		/*		R1=0x1e( 30) */
ffa0922c:	ff e3 0c fe 	CALL 0xffa08e44 <_spi_write_register>;
ffa09230:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa09234:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa09236:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0923a:	10 97       	W[P2] = R0;
ffa0923c:	01 e8 00 00 	UNLINK;
ffa09240:	10 00       	RTS;
	...

ffa09244 <_radio_wait_irq>:
ffa09244:	78 05       	[--SP] = (R7:7);
ffa09246:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0924a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0924e:	0a e1 00 07 	P2.L = 0x700;		/* (1792)	P2=0xffc00700(-4192512) */
ffa09252:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = W[P2] (X) || NOP;
ffa09256:	50 95 00 00 
ffa0925a:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0925c:	25 18       	IF CC JUMP 0xffa092a6 <_radio_wait_irq+0x62>;
ffa0925e:	01 0d       	CC = R1 <= 0x0;
ffa09260:	25 18       	IF CC JUMP 0xffa092aa <_radio_wait_irq+0x66>;
ffa09262:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa09264:	04 20       	JUMP.S 0xffa0926c <_radio_wait_irq+0x28>;
ffa09266:	39 08       	CC = R1 == R7;
ffa09268:	10 18       	IF CC JUMP 0xffa09288 <_radio_wait_irq+0x44>;
	...
ffa09272:	00 00       	NOP;
ffa09274:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00700(-4192512) */
ffa09278:	0a e1 00 07 	P2.L = 0x700;		/* (1792)	P2=0xffc00700(-4192512) */
ffa0927c:	50 95       	R0 = W[P2] (X);
ffa0927e:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa09280:	0f 64       	R7 += 0x1;		/* (  1) */
ffa09282:	f2 17       	IF !CC JUMP 0xffa09266 <_radio_wait_irq+0x22> (BP);
ffa09284:	39 09       	CC = R1 <= R7;
ffa09286:	06 10       	IF !CC JUMP 0xffa09292 <_radio_wait_irq+0x4e>;
ffa09288:	01 e8 00 00 	UNLINK;
ffa0928c:	07 30       	R0 = R7;
ffa0928e:	38 05       	(R7:7) = [SP++];
ffa09290:	10 00       	RTS;
ffa09292:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa09294:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa09298:	ff e3 d6 fd 	CALL 0xffa08e44 <_spi_write_register>;
ffa0929c:	01 e8 00 00 	UNLINK;
ffa092a0:	07 30       	R0 = R7;
ffa092a2:	38 05       	(R7:7) = [SP++];
ffa092a4:	10 00       	RTS;
ffa092a6:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa092a8:	ee 2f       	JUMP.S 0xffa09284 <_radio_wait_irq+0x40>;
ffa092aa:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa092ac:	ee 2f       	JUMP.S 0xffa09288 <_radio_wait_irq+0x44>;
	...

ffa092b0 <_spi_write_register_ver>:
ffa092b0:	68 05       	[--SP] = (R7:5);
ffa092b2:	47 43       	R7 = R0.B (Z);
ffa092b4:	4e 43       	R6 = R1.B (Z);
ffa092b6:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa092ba:	0e 30       	R1 = R6;
ffa092bc:	07 30       	R0 = R7;
ffa092be:	ff e3 c3 fd 	CALL 0xffa08e44 <_spi_write_register>;
ffa092c2:	07 30       	R0 = R7;
ffa092c4:	ff e3 ec fd 	CALL 0xffa08e9c <_spi_read_register>;
ffa092c8:	45 43       	R5 = R0.B (Z);
ffa092ca:	2e 08       	CC = R6 == R5;
ffa092cc:	29 18       	IF CC JUMP 0xffa0931e <_spi_write_register_ver+0x6e>;
ffa092ce:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900007(-7340025) */
ffa092d2:	0f 30       	R1 = R7;
ffa092d4:	00 e1 08 60 	R0.L = 0x6008;		/* (24584)	R0=0xff906008(-7315448) */
ffa092d8:	ff e3 b6 fa 	CALL 0xffa08844 <_printf_int>;
ffa092dc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff906008(-7315448) */
ffa092e0:	00 e1 24 60 	R0.L = 0x6024;		/* (24612)	R0=0xff906024(-7315420) */
ffa092e4:	ff e3 94 f9 	CALL 0xffa0860c <_uart_str>;
ffa092e8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff906024(-7315420) */
ffa092ec:	0e 30       	R1 = R6;
ffa092ee:	00 e1 1c 60 	R0.L = 0x601c;		/* (24604)	R0=0xff90601c(-7315428) */
ffa092f2:	ff e3 f7 f9 	CALL 0xffa086e0 <_printf_hex_byte>;
ffa092f6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90601c(-7315428) */
ffa092fa:	00 e1 24 60 	R0.L = 0x6024;		/* (24612)	R0=0xff906024(-7315420) */
ffa092fe:	ff e3 87 f9 	CALL 0xffa0860c <_uart_str>;
ffa09302:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff906024(-7315420) */
ffa09306:	00 e1 28 60 	R0.L = 0x6028;		/* (24616)	R0=0xff906028(-7315416) */
ffa0930a:	0d 30       	R1 = R5;
ffa0930c:	ff e3 ea f9 	CALL 0xffa086e0 <_printf_hex_byte>;
ffa09310:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff906028(-7315416) */
ffa09314:	00 e1 00 60 	R0.L = 0x6000;		/* (24576)	R0=0xff906000 <_l1_data_a>(-7315456) */
ffa09318:	35 30       	R6 = R5;
ffa0931a:	ff e3 79 f9 	CALL 0xffa0860c <_uart_str>;
ffa0931e:	01 e8 00 00 	UNLINK;
ffa09322:	06 30       	R0 = R6;
ffa09324:	28 05       	(R7:5) = [SP++];
ffa09326:	10 00       	RTS;

ffa09328 <_radio_init>:
ffa09328:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00d68(-4190872) */
ffa0932c:	78 05       	[--SP] = (R7:7);
ffa0932e:	09 e1 00 05 	P1.L = 0x500;		/* (1280)	P1=0xffc00500(-4193024) */
ffa09332:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa09334:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa09338:	0a 97       	W[P1] = R2;
ffa0933a:	24 00       	SSYNC;
ffa0933c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00700(-4192512) */
ffa09340:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa09342:	0a e1 14 05 	P2.L = 0x514;		/* (1300)	P2=0xffc00514(-4193004) */
ffa09346:	11 97       	W[P2] = R1;
ffa09348:	21 e1 2d 50 	R1 = 0x502d (X);		/*		R1=0x502d(20525) */
ffa0934c:	82 6f       	P2 += -0x10;		/* (-16) */
ffa0934e:	09 97       	W[P1] = R1;
ffa09350:	12 97       	W[P2] = R2;
ffa09352:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00514(-4193004) */
ffa09356:	11 60       	R1 = 0x2 (X);		/*		R1=0x2(  2) */
ffa09358:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0935c:	11 97       	W[P2] = R1;
ffa0935e:	c2 6d       	P2 += 0x38;		/* ( 56) */
ffa09360:	51 95       	R1 = W[P2] (X);
ffa09362:	19 4a       	BITSET (R1, 0x3);		/* bit  3 */
ffa09364:	11 97       	W[P2] = R1;
ffa09366:	82 6f       	P2 += -0x10;		/* (-16) */
ffa09368:	51 95       	R1 = W[P2] (X);
ffa0936a:	19 4c       	BITCLR (R1, 0x3);		/* bit  3 */
ffa0936c:	11 97       	W[P2] = R1;
ffa0936e:	52 95       	R2 = W[P2] (X);
ffa09370:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa09372:	51 56       	R1 = R1 | R2;
ffa09374:	11 97       	W[P2] = R1;
ffa09376:	22 e1 7c 00 	R2 = 0x7c (X);		/*		R2=0x7c(124) */
ffa0937a:	41 43       	R1 = R0.B (Z);
ffa0937c:	11 0a       	CC = R1 <= R2 (IU);
ffa0937e:	21 e1 7c 00 	R1 = 0x7c (X);		/*		R1=0x7c(124) */
ffa09382:	01 06       	IF !CC R0 = R1;
ffa09384:	47 43       	R7 = R0.B (Z);
ffa09386:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff906000 <_l1_data_a>(-7315456) */
ffa0938a:	0f 30       	R1 = R7;
ffa0938c:	00 e1 34 60 	R0.L = 0x6034;		/* (24628)	R0=0xff906034(-7315404) */
ffa09390:	ff e3 5a fa 	CALL 0xffa08844 <_printf_int>;
ffa09394:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff906034(-7315404) */
ffa09398:	00 e1 00 60 	R0.L = 0x6000;		/* (24576)	R0=0xff906000 <_l1_data_a>(-7315456) */
ffa0939c:	ff e3 38 f9 	CALL 0xffa0860c <_uart_str>;
ffa093a0:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa093a2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa093a4:	ff e3 50 fd 	CALL 0xffa08e44 <_spi_write_register>;
ffa093a8:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa093aa:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa093ac:	ff e3 82 ff 	CALL 0xffa092b0 <_spi_write_register_ver>;
ffa093b0:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa093b2:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa093b4:	ff e3 7e ff 	CALL 0xffa092b0 <_spi_write_register_ver>;
ffa093b8:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa093ba:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa093bc:	ff e3 7a ff 	CALL 0xffa092b0 <_spi_write_register_ver>;
ffa093c0:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa093c2:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa093c4:	ff e3 76 ff 	CALL 0xffa092b0 <_spi_write_register_ver>;
ffa093c8:	0f 30       	R1 = R7;
ffa093ca:	28 60       	R0 = 0x5 (X);		/*		R0=0x5(  5) */
ffa093cc:	ff e3 72 ff 	CALL 0xffa092b0 <_spi_write_register_ver>;
ffa093d0:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa093d2:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa093d4:	ff e3 6e ff 	CALL 0xffa092b0 <_spi_write_register_ver>;
ffa093d8:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa093dc:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa093de:	ff e3 69 ff 	CALL 0xffa092b0 <_spi_write_register_ver>;
ffa093e2:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa093e4:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa093e6:	ff e3 65 ff 	CALL 0xffa092b0 <_spi_write_register_ver>;
ffa093ea:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa093ee:	20 e1 00 50 	R0 = 0x5000 (X);		/*		R0=0x5000(20480) */
ffa093f2:	0a e1 6c 0d 	P2.L = 0xd6c;		/* (3436)	P2=0xffc00d6c(-4190868) */
ffa093f6:	10 97       	W[P2] = R0;
ffa093f8:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa093fa:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa093fc:	10 97       	W[P2] = R0;
ffa093fe:	20 e1 e2 00 	R0 = 0xe2 (X);		/*		R0=0xe2(226) */
ffa09402:	ff e3 9f fd 	CALL 0xffa08f40 <_spi_write_byte>;
ffa09406:	20 e1 e1 00 	R0 = 0xe1 (X);		/*		R0=0xe1(225) */
ffa0940a:	ff e3 9b fd 	CALL 0xffa08f40 <_spi_write_byte>;
ffa0940e:	01 e8 00 00 	UNLINK;
ffa09412:	40 43       	R0 = R0.B (Z);
ffa09414:	38 05       	(R7:7) = [SP++];
ffa09416:	10 00       	RTS;
