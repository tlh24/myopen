
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
ffa0801e:	01 e1 00 28 	R1.L = 0x2800;		/* (10240)	R1=0x2800(10240) */
ffa08022:	09 e1 24 01 	P1.L = 0x124;		/* (292)	P1=0x124 */
ffa08026:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00124(-4194012) */
ffa0802a:	08 91       	R0 = [P1];
ffa0802c:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa0802e:	08 93       	[P1] = R0;
ffa08030:	01 97       	W[P0] = R1;
ffa08032:	24 00       	SSYNC;
ffa08034:	30 00       	CLI R0;
ffa08036:	20 00       	IDLE;
ffa08038:	40 00       	STI R0;
ffa0803a:	08 91       	R0 = [P1];
ffa0803c:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa0803e:	08 93       	[P1] = R0;
ffa08040:	08 e1 04 00 	P0.L = 0x4;		/* (  4)	P0=0xffc00004(-4194300) */
ffa08044:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00004(-4194300) */
ffa08048:	00 e1 04 00 	R0.L = 0x4;		/* (  4)	R0=0x4(  4) */
ffa0804c:	00 97       	W[P0] = R0;
ffa0804e:	08 e1 08 20 	P0.L = 0x2008;		/* (8200)	P0=0xffc02008(-4186104) */
ffa08052:	48 e1 e0 ff 	P0.H = 0xffe0;		/* (-32)	P0=0xffe02008(-2088952) */
ffa08056:	00 e1 94 81 	R0.L = 0x8194;		/* (-32364)	R0=0x8194(33172) */
ffa0805a:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa08194 <_NHANDLER>(-6258284) */
ffa0805e:	00 92       	[P0++] = R0;
ffa08060:	00 e1 9a 81 	R0.L = 0x819a;		/* (-32358)	R0=0xffa0819a <EXC_HANDLER>(-6258278) */
ffa08064:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa0819a <EXC_HANDLER>(-6258278) */
ffa08068:	00 92       	[P0++] = R0;
ffa0806a:	00 92       	[P0++] = R0;
ffa0806c:	00 e1 8c 81 	R0.L = 0x818c;		/* (-32372)	R0=0xffa0818c <_HWHANDLER>(-6258292) */
ffa08070:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa0818c <_HWHANDLER>(-6258292) */
ffa08074:	00 92       	[P0++] = R0;
ffa08076:	00 e1 18 82 	R0.L = 0x8218;		/* (-32232)	R0=0xffa08218 <_THANDLER>(-6258152) */
ffa0807a:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa08218 <_THANDLER>(-6258152) */
ffa0807e:	00 92       	[P0++] = R0;
ffa08080:	00 e1 34 82 	R0.L = 0x8234;		/* (-32204)	R0=0xffa08234 <_RTCHANDLER>(-6258124) */
ffa08084:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa08234 <_RTCHANDLER>(-6258124) */
ffa08088:	00 92       	[P0++] = R0;
ffa0808a:	00 e1 3a 82 	R0.L = 0x823a;		/* (-32198)	R0=0xffa0823a <_I8HANDLER>(-6258118) */
ffa0808e:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa0823a <_I8HANDLER>(-6258118) */
ffa08092:	00 92       	[P0++] = R0;
ffa08094:	00 e1 40 82 	R0.L = 0x8240;		/* (-32192)	R0=0xffa08240 <_I9HANDLER>(-6258112) */
ffa08098:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa08240 <_I9HANDLER>(-6258112) */
ffa0809c:	00 92       	[P0++] = R0;
ffa0809e:	00 e1 66 81 	R0.L = 0x8166;		/* (-32410)	R0=0xffa08166 <_I11HANDLER>(-6258330) */
ffa080a2:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa08166 <_I11HANDLER>(-6258330) */
ffa080a6:	00 92       	[P0++] = R0;
ffa080a8:	00 e1 66 81 	R0.L = 0x8166;		/* (-32410)	R0=0xffa08166 <_I11HANDLER>(-6258330) */
ffa080ac:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa08166 <_I11HANDLER>(-6258330) */
ffa080b0:	00 92       	[P0++] = R0;
ffa080b2:	00 e1 68 81 	R0.L = 0x8168;		/* (-32408)	R0=0xffa08168 <_I12HANDLER>(-6258328) */
ffa080b6:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa08168 <_I12HANDLER>(-6258328) */
ffa080ba:	00 92       	[P0++] = R0;
ffa080bc:	00 e1 6a 81 	R0.L = 0x816a;		/* (-32406)	R0=0xffa0816a <_I13HANDLER>(-6258326) */
ffa080c0:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa0816a <_I13HANDLER>(-6258326) */
ffa080c4:	00 92       	[P0++] = R0;
ffa080c6:	00 e1 70 81 	R0.L = 0x8170;		/* (-32400)	R0=0xffa08170 <_I14HANDLER>(-6258320) */
ffa080ca:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa08170 <_I14HANDLER>(-6258320) */
ffa080ce:	00 92       	[P0++] = R0;
ffa080d0:	00 e1 76 81 	R0.L = 0x8176;		/* (-32394)	R0=0xffa08176 <_I15HANDLER>(-6258314) */
ffa080d4:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa08176 <_I15HANDLER>(-6258314) */
ffa080d8:	00 92       	[P0++] = R0;
ffa080da:	08 e1 3c 20 	P0.L = 0x203c;		/* (8252)	P0=0xffe0203c(-2088900) */
ffa080de:	48 e1 e0 ff 	P0.H = 0xffe0;		/* (-32)	P0=0xffe0203c(-2088900) */
ffa080e2:	00 e1 4c 81 	R0.L = 0x814c;		/* (-32436)	R0=0xffa0814c <call_main>(-6258356) */
ffa080e6:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa0814c <call_main>(-6258356) */
ffa080ea:	00 93       	[P0] = R0;
ffa080ec:	08 e1 0c 01 	P0.L = 0x10c;		/* (268)	P0=0xffe0010c(-2096884) */
ffa080f0:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc0010c(-4194036) */
ffa080f4:	00 e1 00 2c 	R0.L = 0x2c00;		/* (11264)	R0=0xffa02c00(-6280192) */
ffa080f8:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x2c00(11264) */
ffa080fc:	00 93       	[P0] = R0;
ffa080fe:	08 e1 10 01 	P0.L = 0x110;		/* (272)	P0=0xffc00110(-4194032) */
ffa08102:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00110(-4194032) */
ffa08106:	00 e1 5f ff 	R0.L = 0xff5f;		/* (-161)	R0=0xff5f(65375) */
ffa0810a:	40 e1 ff ff 	R0.H = 0xffff;		/* ( -1)	R0=0xffffff5f(-161) */
ffa0810e:	00 93       	[P0] = R0;
ffa08110:	08 e1 14 01 	P0.L = 0x114;		/* (276)	P0=0xffc00114(-4194028) */
ffa08114:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00114(-4194028) */
ffa08118:	00 e1 ff 34 	R0.L = 0x34ff;		/* (13567)	R0=0xffff34ff(-51969) */
ffa0811c:	40 e1 ff ff 	R0.H = 0xffff;		/* ( -1)	R0=0xffff34ff(-51969) */
ffa08120:	00 93       	[P0] = R0;
ffa08122:	08 e1 18 01 	P0.L = 0x118;		/* (280)	P0=0xffc00118(-4194024) */
ffa08126:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00118(-4194024) */
ffa0812a:	00 e1 ff ff 	R0.L = 0xffff;		/* ( -1)	R0=0xffffffff( -1) */
ffa0812e:	40 e1 ff ff 	R0.H = 0xffff;		/* ( -1)	R0=0xffffffff( -1) */
ffa08132:	00 93       	[P0] = R0;
ffa08134:	23 00       	CSYNC;
ffa08136:	80 e1 00 80 	R0 = 0x8000 (Z);		/*		R0=0x8000(32768) */
ffa0813a:	40 00       	STI R0;
ffa0813c:	9f 00       	RAISE 0xf;
ffa0813e:	08 e1 4a 81 	P0.L = 0x814a;		/* (-32438)	P0=0xffc0814a(-4161206) */
ffa08142:	48 e1 a0 ff 	P0.H = 0xffa0;		/* (-96)	P0=0xffa0814a <wait> */
ffa08146:	58 3e       	RETI = P0;
ffa08148:	11 00       	RTI;

ffa0814a <wait>:
ffa0814a:	00 20       	JUMP.S 0xffa0814a <wait>;

ffa0814c <call_main>:
ffa0814c:	7b 01       	[--SP] = RETI;
ffa0814e:	08 e1 1c 97 	P0.L = 0x971c;		/* (-26852)	P0=0xffa0971c <_main> */
ffa08152:	48 e1 a0 ff 	P0.H = 0xffa0;		/* (-96)	P0=0xffa0971c <_main> */
ffa08156:	00 e1 62 81 	R0.L = 0x8162;		/* (-32414)	R0=0x8162(33122) */
ffa0815a:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa08162 <end>(-6258334) */
ffa0815e:	38 38       	RETS = R0;
ffa08160:	50 00       	JUMP (P0);

ffa08162 <end>:
ffa08162:	20 00       	IDLE;
ffa08164:	ff 2f       	JUMP.S 0xffa08162 <end>;

ffa08166 <_I11HANDLER>:
ffa08166:	11 00       	RTI;

ffa08168 <_I12HANDLER>:
ffa08168:	11 00       	RTI;

ffa0816a <_I13HANDLER>:
ffa0816a:	00 e1 0d 00 	R0.L = 0xd;		/* ( 13)	R0=0xffa0000d(-6291443) */
ffa0816e:	0a 20       	JUMP.S 0xffa08182 <display_fail>;

ffa08170 <_I14HANDLER>:
ffa08170:	00 e1 0e 00 	R0.L = 0xe;		/* ( 14)	R0=0xffa0000e(-6291442) */
ffa08174:	07 20       	JUMP.S 0xffa08182 <display_fail>;

ffa08176 <_I15HANDLER>:
ffa08176:	00 e1 0f 00 	R0.L = 0xf;		/* ( 15)	R0=0xffa0000f(-6291441) */
ffa0817a:	04 20       	JUMP.S 0xffa08182 <display_fail>;

ffa0817c <idle_loop>:
ffa0817c:	20 00       	IDLE;
ffa0817e:	24 00       	SSYNC;
ffa08180:	fe 2f       	JUMP.S 0xffa0817c <idle_loop>;

ffa08182 <display_fail>:
ffa08182:	c1 31       	R0 = SEQSTAT;
ffa08184:	cc 31       	R1 = RETX;
ffa08186:	00 e3 f9 09 	CALL 0xffa09578 <_exception_report>;
ffa0818a:	12 00       	RTX;

ffa0818c <_HWHANDLER>:
ffa0818c:	c1 31       	R0 = SEQSTAT;
ffa0818e:	cc 31       	R1 = RETX;
ffa08190:	fe 2f       	JUMP.S 0xffa0818c <_HWHANDLER>;
ffa08192:	11 00       	RTI;

ffa08194 <_NHANDLER>:
ffa08194:	00 e3 b2 0a 	CALL 0xffa096f8 <_nmi_report>;
ffa08198:	12 00       	RTX;

ffa0819a <EXC_HANDLER>:
ffa0819a:	00 00       	NOP;
ffa0819c:	00 00       	NOP;
ffa0819e:	00 00       	NOP;
ffa081a0:	cc 31       	R1 = RETX;
ffa081a2:	fc 2f       	JUMP.S 0xffa0819a <EXC_HANDLER>;
ffa081a4:	4d 01       	[--SP] = P5;
ffa081a6:	0d e1 04 70 	P5.L = 0x7004;		/* (28676)	P5=0x7004 */
ffa081aa:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff907004 <_g_excregs> */
ffa081ae:	28 92       	[P5++] = R0;
ffa081b0:	29 92       	[P5++] = R1;
ffa081b2:	2a 92       	[P5++] = R2;
ffa081b4:	2b 92       	[P5++] = R3;
ffa081b6:	2c 92       	[P5++] = R4;
ffa081b8:	2d 92       	[P5++] = R5;
ffa081ba:	2e 92       	[P5++] = R6;
ffa081bc:	2f 92       	[P5++] = R7;
ffa081be:	68 92       	[P5++] = P0;
ffa081c0:	69 92       	[P5++] = P1;
ffa081c2:	6a 92       	[P5++] = P2;
ffa081c4:	6b 92       	[P5++] = P3;
ffa081c6:	6c 92       	[P5++] = P4;
ffa081c8:	65 32       	P4 = P5;
ffa081ca:	75 90       	P5 = [SP++];
ffa081cc:	65 92       	[P4++] = P5;
ffa081ce:	80 30       	R0 = I0;
ffa081d0:	20 92       	[P4++] = R0;
ffa081d2:	c0 30       	R0 = B0;
ffa081d4:	20 92       	[P4++] = R0;
ffa081d6:	c4 30       	R0 = L0;
ffa081d8:	20 92       	[P4++] = R0;
ffa081da:	81 30       	R0 = I1;
ffa081dc:	20 92       	[P4++] = R0;
ffa081de:	c1 30       	R0 = B1;
ffa081e0:	20 92       	[P4++] = R0;
ffa081e2:	c5 30       	R0 = L1;
ffa081e4:	20 92       	[P4++] = R0;
ffa081e6:	82 30       	R0 = I2;
ffa081e8:	20 92       	[P4++] = R0;
ffa081ea:	c2 30       	R0 = B2;
ffa081ec:	20 92       	[P4++] = R0;
ffa081ee:	c6 30       	R0 = L2;
ffa081f0:	20 92       	[P4++] = R0;
ffa081f2:	83 30       	R0 = I3;
ffa081f4:	20 92       	[P4++] = R0;
ffa081f6:	c3 30       	R0 = B3;
ffa081f8:	20 92       	[P4++] = R0;
ffa081fa:	c7 30       	R0 = L3;
ffa081fc:	20 92       	[P4++] = R0;
ffa081fe:	84 30       	R0 = M0;
ffa08200:	20 92       	[P4++] = R0;
ffa08202:	85 30       	R0 = M1;
ffa08204:	20 92       	[P4++] = R0;
ffa08206:	86 30       	R0 = M2;
ffa08208:	20 92       	[P4++] = R0;
ffa0820a:	87 30       	R0 = M3;
ffa0820c:	20 92       	[P4++] = R0;
ffa0820e:	c1 31       	R0 = SEQSTAT;
ffa08210:	cc 31       	R1 = RETX;
ffa08212:	00 e3 b3 09 	CALL 0xffa09578 <_exception_report>;
ffa08216:	12 00       	RTX;

ffa08218 <_THANDLER>:
ffa08218:	4a 01       	[--SP] = P2;
ffa0821a:	40 01       	[--SP] = R0;
ffa0821c:	41 01       	[--SP] = R1;
ffa0821e:	66 01       	[--SP] = ASTAT;
ffa08220:	10 91       	R0 = [P2];
ffa08222:	81 e1 01 00 	R1 = 0x1 (Z);		/*		R1=0x1(  1) */
ffa08226:	08 50       	R0 = R0 + R1;
ffa08228:	10 93       	[P2] = R0;
ffa0822a:	26 01       	ASTAT = [SP++];
ffa0822c:	31 90       	R1 = [SP++];
ffa0822e:	30 90       	R0 = [SP++];
ffa08230:	72 90       	P2 = [SP++];
ffa08232:	11 00       	RTI;

ffa08234 <_RTCHANDLER>:
ffa08234:	00 e1 07 00 	R0.L = 0x7;		/* (  7)	R0=0xffa00007(-6291449) */
ffa08238:	a5 2f       	JUMP.S 0xffa08182 <display_fail>;

ffa0823a <_I8HANDLER>:
ffa0823a:	00 e1 08 00 	R0.L = 0x8;		/* (  8)	R0=0xffa00008(-6291448) */
ffa0823e:	a2 2f       	JUMP.S 0xffa08182 <display_fail>;

ffa08240 <_I9HANDLER>:
ffa08240:	00 e1 09 00 	R0.L = 0x9;		/* (  9)	R0=0xffa00009(-6291447) */
ffa08244:	9f 2f       	JUMP.S 0xffa08182 <display_fail>;

ffa08246 <_atexit>:
ffa08246:	10 00       	RTS;

ffa08248 <_clearirq_asm>:
ffa08248:	67 01       	[--SP] = RETS;
ffa0824a:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa0824c:	8f b4       	W[P1 + 0x4] = R7;
ffa0824e:	00 e3 1d 03 	CALL 0xffa08888 <_get_asm>;
ffa08252:	3e 61       	R6 = 0x27 (X);		/*		R6=0x27( 39) */
ffa08254:	1e 97       	W[P3] = R6;
ffa08256:	00 e3 19 03 	CALL 0xffa08888 <_get_asm>;
ffa0825a:	26 e1 70 00 	R6 = 0x70 (X);		/*		R6=0x70(112) */
ffa0825e:	1e 97       	W[P3] = R6;
ffa08260:	00 e3 14 03 	CALL 0xffa08888 <_get_asm>;
ffa08264:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa08266:	0f b5       	W[P1 + 0x8] = R7;
ffa08268:	00 e3 10 03 	CALL 0xffa08888 <_get_asm>;
ffa0826c:	27 01       	RETS = [SP++];
ffa0826e:	10 00       	RTS;

ffa08270 <_waitirq_asm>:
ffa08270:	67 01       	[--SP] = RETS;
ffa08272:	27 e1 b6 00 	R7 = 0xb6 (X);		/*		R7=0xb6(182) */
ffa08276:	87 bb       	[FP -0x20] = R7;

ffa08278 <waitirq_loop>:
ffa08278:	0e 95       	R6 = W[P1] (Z);
ffa0827a:	1e 49       	CC = BITTST (R6, 0x3);		/* bit  3 */
ffa0827c:	0c 10       	IF !CC JUMP 0xffa08294 <waitirq_end>;
ffa0827e:	00 e3 05 03 	CALL 0xffa08888 <_get_asm>;
ffa08282:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa08284:	87 b9       	R7 = [FP -0x20];
ffa08286:	3e 08       	CC = R6 == R7;
ffa08288:	06 18       	IF CC JUMP 0xffa08294 <waitirq_end>;
ffa0828a:	ff 67       	R7 += -0x1;		/* ( -1) */
ffa0828c:	87 bb       	[FP -0x20] = R7;
ffa0828e:	00 e3 fd 02 	CALL 0xffa08888 <_get_asm>;
ffa08292:	f3 2f       	JUMP.S 0xffa08278 <waitirq_loop>;

ffa08294 <waitirq_end>:
ffa08294:	00 e3 fa 02 	CALL 0xffa08888 <_get_asm>;
ffa08298:	27 01       	RETS = [SP++];
ffa0829a:	10 00       	RTS;
ffa0829c:	00 00       	NOP;
	...

ffa082a0 <_clearfifos_asm>:
ffa082a0:	67 01       	[--SP] = RETS;
ffa082a2:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa082a4:	8f b4       	W[P1 + 0x4] = R7;
ffa082a6:	00 e3 f1 02 	CALL 0xffa08888 <_get_asm>;
ffa082aa:	26 e1 e2 00 	R6 = 0xe2 (X);		/*		R6=0xe2(226) */
ffa082ae:	1e 97       	W[P3] = R6;
ffa082b0:	00 e3 ec 02 	CALL 0xffa08888 <_get_asm>;
ffa082b4:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa082b6:	0f b5       	W[P1 + 0x8] = R7;
ffa082b8:	00 e3 e8 02 	CALL 0xffa08888 <_get_asm>;
ffa082bc:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa082be:	8f b4       	W[P1 + 0x4] = R7;
ffa082c0:	00 e3 e4 02 	CALL 0xffa08888 <_get_asm>;
ffa082c4:	26 e1 e1 00 	R6 = 0xe1 (X);		/*		R6=0xe1(225) */
ffa082c8:	1e 97       	W[P3] = R6;
ffa082ca:	00 e3 df 02 	CALL 0xffa08888 <_get_asm>;
ffa082ce:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa082d0:	0f b5       	W[P1 + 0x8] = R7;
ffa082d2:	00 e3 db 02 	CALL 0xffa08888 <_get_asm>;
ffa082d6:	27 01       	RETS = [SP++];
ffa082d8:	10 00       	RTS;
ffa082da:	00 00       	NOP;
ffa082dc:	00 00       	NOP;
	...

ffa082e0 <_radio_bidi_asm>:
ffa082e0:	0d e1 14 05 	P5.L = 0x514;		/* (1300)	P5=0xff900514 */
ffa082e4:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00514(-4193004) */
ffa082e8:	80 e1 04 00 	R0 = 0x4 (Z);		/*		R0=0x4(  4) */
ffa082ec:	28 97       	W[P5] = R0;
ffa082ee:	0f e1 00 72 	FP.L = 0x7200;		/* (29184)	FP=0x7200 */
ffa082f2:	4f e1 90 ff 	FP.H = 0xff90;		/* (-112)	FP=0xff907200 */
ffa082f6:	08 e1 18 08 	P0.L = 0x818;		/* (2072)	P0=0xffa00818 */
ffa082fa:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00818(-4192232) */
ffa082fe:	68 bb       	[FP -0x28] = P0;
ffa08300:	09 e1 00 07 	P1.L = 0x700;		/* (1792)	P1=0xffc00700(-4192512) */
ffa08304:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00700(-4192512) */
ffa08308:	49 bb       	[FP -0x30] = P1;
ffa0830a:	0a e1 00 70 	P2.L = 0x7000;		/* (28672)	P2=0x7000 */
ffa0830e:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff807000 */
ffa08312:	0b e1 0c 05 	P3.L = 0x50c;		/* (1292)	P3=0x50c */
ffa08316:	4b e1 c0 ff 	P3.H = 0xffc0;		/* (-64)	P3=0xffc0050c(-4193012) */
ffa0831a:	5b bb       	[FP -0x2c] = P3;
ffa0831c:	0c e1 00 70 	P4.L = 0x7000;		/* (28672)	P4=0x7000 */
ffa08320:	4c e1 80 ff 	P4.H = 0xff80;		/* (-128)	P4=0xff807000 */
ffa08324:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa08326:	f0 bb       	[FP -0x4] = R0;
ffa08328:	f0 ba       	[FP -0x44] = R0;
ffa0832a:	e0 bb       	[FP -0x8] = R0;
ffa0832c:	d0 bb       	[FP -0xc] = R0;
ffa0832e:	00 e1 00 63 	R0.L = 0x6300;		/* (25344)	R0=0x6300(25344) */
ffa08332:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff806300(-8363264) */
ffa08336:	30 bb       	[FP -0x34] = R0;
ffa08338:	00 e1 20 63 	R0.L = 0x6320;		/* (25376)	R0=0xff806320(-8363232) */
ffa0833c:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff806320(-8363232) */
ffa08340:	20 bb       	[FP -0x38] = R0;
ffa08342:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa08344:	e0 ba       	[FP -0x48] = R0;
ffa08346:	00 e1 00 64 	R0.L = 0x6400;		/* (25600)	R0=0x6400(25600) */
ffa0834a:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff806400(-8363008) */
ffa0834e:	10 bb       	[FP -0x3c] = R0;
ffa08350:	00 e1 00 65 	R0.L = 0x6500;		/* (25856)	R0=0xff806500(-8362752) */
ffa08354:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff806500(-8362752) */
ffa08358:	82 c6 f0 81 	R0 = R0 >> 0x2;
ffa0835c:	00 bb       	[FP -0x40] = R0;
ffa0835e:	00 e1 ff 0f 	R0.L = 0xfff;		/* (4095)	R0=0xff800fff(-8384513) */
ffa08362:	40 e1 ff 0f 	R0.H = 0xfff;		/* (4095)	R0=0xfff0fff(268374015) */
ffa08366:	d0 ba       	[FP -0x4c] = R0;
ffa08368:	00 e1 00 40 	R0.L = 0x4000;		/* (16384)	R0=0xfff4000(268386304) */
ffa0836c:	40 e1 00 40 	R0.H = 0x4000;		/* (16384)	R0=0x40004000(1073758208) */
ffa08370:	c0 ba       	[FP -0x50] = R0;
ffa08372:	00 e1 15 40 	R0.L = 0x4015;		/* (16405)	R0=0x40004015(1073758229) */
ffa08376:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff804015(-8372203) */
ffa0837a:	90 bb       	[FP -0x1c] = R0;
ffa0837c:	00 e1 17 40 	R0.L = 0x4017;		/* (16407)	R0=0xff804017(-8372201) */
ffa08380:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff804017(-8372201) */
ffa08384:	a0 bb       	[FP -0x18] = R0;
ffa08386:	00 e1 55 40 	R0.L = 0x4055;		/* (16469)	R0=0xff804055(-8372139) */
ffa0838a:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff804055(-8372139) */
ffa0838e:	b0 bb       	[FP -0x14] = R0;
ffa08390:	00 e1 57 40 	R0.L = 0x4057;		/* (16471)	R0=0xff804057(-8372137) */
ffa08394:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff804057(-8372137) */
ffa08398:	c0 bb       	[FP -0x10] = R0;
ffa0839a:	20 e1 93 01 	R0 = 0x193 (X);		/*		R0=0x193(403) */
ffa0839e:	48 e6 18 00 	W[P1 + 0x30] = R0;
ffa083a2:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa083a4:	48 e6 20 00 	W[P1 + 0x40] = R0;
ffa083a8:	27 e1 00 01 	R7 = 0x100 (X);		/*		R7=0x100(256) */
ffa083ac:	0f b5       	W[P1 + 0x8] = R7;
ffa083ae:	24 00       	SSYNC;
ffa083b0:	27 e1 80 00 	R7 = 0x80 (X);		/*		R7=0x80(128) */
ffa083b4:	8f b4       	W[P1 + 0x4] = R7;
ffa083b6:	24 00       	SSYNC;
ffa083b8:	00 e3 2c 01 	CALL 0xffa08610 <_init6>;
ffa083bc:	0d e1 00 63 	P5.L = 0x6300;		/* (25344)	P5=0xffc06300(-4168960) */
ffa083c0:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff806300 */
ffa083c4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa083c6:	28 92       	[P5++] = R0;
ffa083c8:	28 92       	[P5++] = R0;
ffa083ca:	28 92       	[P5++] = R0;
ffa083cc:	28 92       	[P5++] = R0;
ffa083ce:	28 92       	[P5++] = R0;
ffa083d0:	28 92       	[P5++] = R0;
ffa083d2:	28 92       	[P5++] = R0;
ffa083d4:	28 92       	[P5++] = R0;
ffa083d6:	00 e3 cd 04 	CALL 0xffa08d70 <_enc_create>;
ffa083da:	0d e1 04 02 	P5.L = 0x204;		/* (516)	P5=0xff800204 */
ffa083de:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00204(-4193788) */
ffa083e2:	40 e1 0c 00 	R0.H = 0xc;		/* ( 12)	R0=0xc0000(786432) */
ffa083e6:	00 e1 00 35 	R0.L = 0x3500;		/* (13568)	R0=0xc3500(800000) */
ffa083ea:	a8 92       	[P5--] = R0;
ffa083ec:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa083ee:	28 97       	W[P5] = R0;
ffa083f0:	27 e1 80 00 	R7 = 0x80 (X);		/*		R7=0x80(128) */
ffa083f4:	0f b5       	W[P1 + 0x8] = R7;
ffa083f6:	24 00       	SSYNC;
ffa083f8:	0d e1 20 09 	P5.L = 0x920;		/* (2336)	P5=0xffc00920(-4191968) */
ffa083fc:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00920(-4191968) */
ffa08400:	00 e1 01 04 	R0.L = 0x401;		/* (1025)	R0=0x401(1025) */
ffa08404:	28 97       	W[P5] = R0;
ffa08406:	0d e1 20 08 	P5.L = 0x820;		/* (2080)	P5=0xffc00820(-4192224) */
ffa0840a:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00820(-4192224) */
ffa0840e:	00 e1 03 06 	R0.L = 0x603;		/* (1539)	R0=0x603(1539) */
ffa08412:	28 97       	W[P5] = R0;

ffa08414 <radio_loop>:
ffa08414:	00 e3 3a 02 	CALL 0xffa08888 <_get_asm>;
ffa08418:	f5 b9       	R5 = [FP -0x4];
ffa0841a:	25 49       	CC = BITTST (R5, 0x4);		/* bit  4 */
ffa0841c:	fc 13       	IF !CC JUMP 0xffa08414 <radio_loop>;
ffa0841e:	00 e3 35 02 	CALL 0xffa08888 <_get_asm>;
ffa08422:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa08424:	f5 bb       	[FP -0x4] = R5;
ffa08426:	ff e3 3d ff 	CALL 0xffa082a0 <_clearfifos_asm>;
ffa0842a:	ff e3 0f ff 	CALL 0xffa08248 <_clearirq_asm>;
ffa0842e:	85 68       	P5 = 0x10 (X);		/*		P5=0x10( 16) */
ffa08430:	a2 e0 24 50 	LSETUP(0xffa08434 <wp_top>, 0xffa08478 <wp_bot>) LC0 = P5;

ffa08434 <wp_top>:
ffa08434:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa08436:	8f b4       	W[P1 + 0x4] = R7;
ffa08438:	00 e3 28 02 	CALL 0xffa08888 <_get_asm>;
ffa0843c:	26 e1 a0 00 	R6 = 0xa0 (X);		/*		R6=0xa0(160) */
ffa08440:	1e 97       	W[P3] = R6;
ffa08442:	00 e3 23 02 	CALL 0xffa08888 <_get_asm>;
ffa08446:	05 69       	P5 = 0x20 (X);		/*		P5=0x20( 32) */
ffa08448:	b2 e0 06 50 	LSETUP(0xffa0844c <pb_top>, 0xffa08454 <pb_bot>) LC1 = P5;

ffa0844c <pb_top>:
ffa0844c:	16 98       	R6 = B[P2++] (Z);
ffa0844e:	1e 97       	W[P3] = R6;
ffa08450:	00 e3 1c 02 	CALL 0xffa08888 <_get_asm>;

ffa08454 <pb_bot>:
ffa08454:	00 00       	NOP;
ffa08456:	7a 30       	R7 = P2;
ffa08458:	57 4c       	BITCLR (R7, 0xa);		/* bit 10 */
ffa0845a:	17 32       	P2 = R7;
ffa0845c:	00 e3 16 02 	CALL 0xffa08888 <_get_asm>;
ffa08460:	1f 60       	R7 = 0x3 (X);		/*		R7=0x3(  3) */
ffa08462:	0f b5       	W[P1 + 0x8] = R7;
ffa08464:	00 e3 12 02 	CALL 0xffa08888 <_get_asm>;
ffa08468:	87 60       	R7 = 0x10 (X);		/*		R7=0x10( 16) */
ffa0846a:	b0 31       	R6 = LC0;
ffa0846c:	37 08       	CC = R7 == R6;
ffa0846e:	05 18       	IF CC JUMP 0xffa08478 <wp_bot>;
ffa08470:	ff e3 00 ff 	CALL 0xffa08270 <_waitirq_asm>;
ffa08474:	ff e3 ea fe 	CALL 0xffa08248 <_clearirq_asm>;

ffa08478 <wp_bot>:
ffa08478:	00 00       	NOP;
ffa0847a:	ff e3 fb fe 	CALL 0xffa08270 <_waitirq_asm>;
ffa0847e:	ff e3 e5 fe 	CALL 0xffa08248 <_clearirq_asm>;
ffa08482:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa08484:	8f b4       	W[P1 + 0x4] = R7;
ffa08486:	00 e3 01 02 	CALL 0xffa08888 <_get_asm>;
ffa0848a:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa0848c:	8f b4       	W[P1 + 0x4] = R7;
ffa0848e:	00 e3 fd 01 	CALL 0xffa08888 <_get_asm>;
ffa08492:	26 e1 e2 00 	R6 = 0xe2 (X);		/*		R6=0xe2(226) */
ffa08496:	1e 97       	W[P3] = R6;
ffa08498:	00 e3 f8 01 	CALL 0xffa08888 <_get_asm>;
ffa0849c:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa0849e:	0f b5       	W[P1 + 0x8] = R7;
ffa084a0:	00 e3 f4 01 	CALL 0xffa08888 <_get_asm>;
ffa084a4:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa084a6:	8f b4       	W[P1 + 0x4] = R7;
ffa084a8:	00 e3 f0 01 	CALL 0xffa08888 <_get_asm>;
ffa084ac:	06 61       	R6 = 0x20 (X);		/*		R6=0x20( 32) */
ffa084ae:	1e 97       	W[P3] = R6;
ffa084b0:	00 e3 ec 01 	CALL 0xffa08888 <_get_asm>;
ffa084b4:	fe 60       	R6 = 0x1f (X);		/*		R6=0x1f( 31) */
ffa084b6:	1e 97       	W[P3] = R6;
ffa084b8:	00 e3 e8 01 	CALL 0xffa08888 <_get_asm>;
ffa084bc:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa084be:	0f b5       	W[P1 + 0x8] = R7;
ffa084c0:	00 e3 e4 01 	CALL 0xffa08888 <_get_asm>;
ffa084c4:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa084c6:	0f b5       	W[P1 + 0x8] = R7;
ffa084c8:	00 e3 e0 01 	CALL 0xffa08888 <_get_asm>;
ffa084cc:	ff e3 d2 fe 	CALL 0xffa08270 <_waitirq_asm>;
ffa084d0:	0f 95       	R7 = W[P1] (Z);
ffa084d2:	1f 49       	CC = BITTST (R7, 0x3);		/* bit  3 */
ffa084d4:	63 18       	IF CC JUMP 0xffa0859a <no_rxpacket>;
ffa084d6:	ff e3 b9 fe 	CALL 0xffa08248 <_clearirq_asm>;
ffa084da:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa084dc:	8f b4       	W[P1 + 0x4] = R7;
ffa084de:	00 e3 d5 01 	CALL 0xffa08888 <_get_asm>;
ffa084e2:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa084e4:	8f b4       	W[P1 + 0x4] = R7;
ffa084e6:	00 e3 d1 01 	CALL 0xffa08888 <_get_asm>;
ffa084ea:	26 e1 61 00 	R6 = 0x61 (X);		/*		R6=0x61( 97) */
ffa084ee:	1e 97       	W[P3] = R6;
ffa084f0:	00 e3 cc 01 	CALL 0xffa08888 <_get_asm>;
ffa084f4:	25 68       	P5 = 0x4 (X);		/*		P5=0x4(  4) */
ffa084f6:	a2 e0 4b 50 	LSETUP(0xffa084fa <rp_top>, 0xffa0858c <rp_bot>) LC0 = P5;

ffa084fa <rp_top>:
ffa084fa:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa084fc:	e7 bb       	[FP -0x8] = R7;
ffa084fe:	d7 bb       	[FP -0xc] = R7;
ffa08500:	00 e3 c4 01 	CALL 0xffa08888 <_get_asm>;
ffa08504:	25 68       	P5 = 0x4 (X);		/*		P5=0x4(  4) */
ffa08506:	b2 e0 0e 50 	LSETUP(0xffa0850a <a32_top>, 0xffa08522 <a32_bot>) LC1 = P5;

ffa0850a <a32_top>:
ffa0850a:	1f 97       	W[P3] = R7;
ffa0850c:	00 e3 be 01 	CALL 0xffa08888 <_get_asm>;
ffa08510:	9f a5       	R7 = W[P3 + 0xc] (Z);
ffa08512:	26 e1 ff 00 	R6 = 0xff (X);		/*		R6=0xff(255) */
ffa08516:	f7 55       	R7 = R7 & R6;
ffa08518:	e6 b9       	R6 = [FP -0x8];
ffa0851a:	82 c6 46 8c 	R6 = R6 << 0x8;
ffa0851e:	be 51       	R6 = R6 + R7;
ffa08520:	e6 bb       	[FP -0x8] = R6;

ffa08522 <a32_bot>:
ffa08522:	00 00       	NOP;
ffa08524:	00 e3 b2 01 	CALL 0xffa08888 <_get_asm>;
ffa08528:	25 68       	P5 = 0x4 (X);		/*		P5=0x4(  4) */
ffa0852a:	b2 e0 0e 50 	LSETUP(0xffa0852e <v32_top>, 0xffa08546 <v32_bot>) LC1 = P5;

ffa0852e <v32_top>:
ffa0852e:	1f 97       	W[P3] = R7;
ffa08530:	00 e3 ac 01 	CALL 0xffa08888 <_get_asm>;
ffa08534:	9f a5       	R7 = W[P3 + 0xc] (Z);
ffa08536:	26 e1 ff 00 	R6 = 0xff (X);		/*		R6=0xff(255) */
ffa0853a:	f7 55       	R7 = R7 & R6;
ffa0853c:	d6 b9       	R6 = [FP -0xc];
ffa0853e:	82 c6 46 8c 	R6 = R6 << 0x8;
ffa08542:	be 51       	R6 = R6 + R7;
ffa08544:	d6 bb       	[FP -0xc] = R6;

ffa08546 <v32_bot>:
ffa08546:	00 00       	NOP;
ffa08548:	00 e3 a0 01 	CALL 0xffa08888 <_get_asm>;
ffa0854c:	e7 b9       	R7 = [FP -0x8];
ffa0854e:	82 c6 27 8d 	R6 = R7 >> 0x1c;
ffa08552:	06 32       	P0 = R6;
ffa08554:	0d b9       	P5 = [FP -0x40];
ffa08556:	7e 60       	R6 = 0xf (X);		/*		R6=0xf( 15) */
ffa08558:	82 c6 e6 8c 	R6 = R6 << 0x1c;
ffa0855c:	f7 57       	R7 = R7 | R6;
ffa0855e:	e7 bb       	[FP -0x8] = R7;
ffa08560:	c5 45       	P5 = (P5 + P0) << 0x2;
ffa08562:	2f 91       	R7 = [P5];
ffa08564:	f7 ba       	[FP -0x44] = R7;
ffa08566:	00 e3 91 01 	CALL 0xffa08888 <_get_asm>;
ffa0856a:	e7 b9       	R7 = [FP -0x8];
ffa0856c:	46 e1 ef ff 	R6.H = 0xffef;		/* (-17)	R6=0xffef000f(-1114097) */
ffa08570:	06 e1 03 c0 	R6.L = 0xc003;		/* (-16381)	R6=0xffefc003(-1064957) */
ffa08574:	77 55       	R5 = R7 & R6;
ffa08576:	46 e1 80 ff 	R6.H = 0xff80;		/* (-128)	R6=0xff80c003(-8339453) */
ffa0857a:	06 e1 00 40 	R6.L = 0x4000;		/* (16384)	R6=0xff804000(-8372224) */
ffa0857e:	35 08       	CC = R5 == R6;
ffa08580:	04 10       	IF !CC JUMP 0xffa08588 <invalid>;
ffa08582:	2f 32       	P5 = R7;
ffa08584:	d6 b9       	R6 = [FP -0xc];
ffa08586:	2e 93       	[P5] = R6;

ffa08588 <invalid>:
ffa08588:	00 e3 80 01 	CALL 0xffa08888 <_get_asm>;

ffa0858c <rp_bot>:
ffa0858c:	00 00       	NOP;
ffa0858e:	00 e3 7d 01 	CALL 0xffa08888 <_get_asm>;
ffa08592:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa08594:	0f b5       	W[P1 + 0x8] = R7;
ffa08596:	00 e3 79 01 	CALL 0xffa08888 <_get_asm>;

ffa0859a <no_rxpacket>:
ffa0859a:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa0859c:	8f b4       	W[P1 + 0x4] = R7;
ffa0859e:	00 e3 75 01 	CALL 0xffa08888 <_get_asm>;
ffa085a2:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa085a4:	8f b4       	W[P1 + 0x4] = R7;
ffa085a6:	00 e3 71 01 	CALL 0xffa08888 <_get_asm>;
ffa085aa:	26 e1 e1 00 	R6 = 0xe1 (X);		/*		R6=0xe1(225) */
ffa085ae:	1e 97       	W[P3] = R6;
ffa085b0:	00 e3 6c 01 	CALL 0xffa08888 <_get_asm>;
ffa085b4:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa085b6:	0f b5       	W[P1 + 0x8] = R7;
ffa085b8:	00 e3 68 01 	CALL 0xffa08888 <_get_asm>;
ffa085bc:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa085be:	8f b4       	W[P1 + 0x4] = R7;
ffa085c0:	00 e3 64 01 	CALL 0xffa08888 <_get_asm>;
ffa085c4:	06 61       	R6 = 0x20 (X);		/*		R6=0x20( 32) */
ffa085c6:	1e 97       	W[P3] = R6;
ffa085c8:	00 e3 60 01 	CALL 0xffa08888 <_get_asm>;
ffa085cc:	f6 60       	R6 = 0x1e (X);		/*		R6=0x1e( 30) */
ffa085ce:	1e 97       	W[P3] = R6;
ffa085d0:	00 e3 5c 01 	CALL 0xffa08888 <_get_asm>;
ffa085d4:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa085d6:	0f b5       	W[P1 + 0x8] = R7;
ffa085d8:	00 e3 58 01 	CALL 0xffa08888 <_get_asm>;
ffa085dc:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00004(-4194300) */
ffa085e0:	0d e1 08 02 	P5.L = 0x208;		/* (520)	P5=0xffc00208(-4193784) */
ffa085e4:	2f 93       	[P5] = R7;
ffa085e6:	00 e3 51 01 	CALL 0xffa08888 <_get_asm>;
ffa085ea:	87 60       	R7 = 0x10 (X);		/*		R7=0x10( 16) */
ffa085ec:	8f b4       	W[P1 + 0x4] = R7;
ffa085ee:	00 e3 4d 01 	CALL 0xffa08888 <_get_asm>;
ffa085f2:	e7 b8       	R7 = [FP -0x48];
ffa085f4:	86 e1 01 00 	R6 = 0x1 (Z);		/*		R6=0x1(  1) */
ffa085f8:	f7 51       	R7 = R7 + R6;
ffa085fa:	82 c6 e7 8d 	R6 = R7 >> 0x4;
ffa085fe:	0e b5       	W[P1 + 0x8] = R6;
ffa08600:	47 4c       	BITCLR (R7, 0x8);		/* bit  8 */
ffa08602:	e7 ba       	[FP -0x48] = R7;
ffa08604:	00 e3 42 01 	CALL 0xffa08888 <_get_asm>;
ffa08608:	06 2f       	JUMP.S 0xffa08414 <radio_loop>;
ffa0860a:	00 00       	NOP;
ffa0860c:	00 00       	NOP;
	...

ffa08610 <_init6>:
ffa08610:	10 e1 00 40 	I0.L = 0x4000;		/* (16384)	I0=0x4000(16384) */
ffa08614:	50 e1 90 ff 	I0.H = 0xff90;		/* (-112)	I0=0xff904000(-7323648) */
ffa08618:	80 36       	B0 = I0;
ffa0861a:	1c e1 00 30 	L0.L = 0x3000;		/* (12288)	L0=0x3000(12288) */
ffa0861e:	5c e1 00 00 	L0.H = 0x0;		/* (  0)	L0=0x3000(12288) */
ffa08622:	14 e1 40 01 	M0.L = 0x140;		/* (320)	M0=0x140(320) */
ffa08626:	54 e1 00 00 	M0.H = 0x0;		/* (  0)	M0=0x140(320) */
ffa0862a:	05 69       	P5 = 0x20 (X);		/*		P5=0x20( 32) */
ffa0862c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0862e:	a2 e0 af 50 	LSETUP(0xffa08632 <lt_top>, 0xffa0878c <lt_bot>) LC0 = P5;

ffa08632 <lt_top>:
ffa08632:	20 e1 00 01 	R0 = 0x100 (X);		/*		R0=0x100(256) */
ffa08636:	00 9e       	[I0++] = R0;
ffa08638:	15 68       	P5 = 0x2 (X);		/*		P5=0x2(  2) */
ffa0863a:	b2 e0 97 50 	LSETUP(0xffa0863e <lt2_top>, 0xffa08768 <lt2_bot>) LC1 = P5;

ffa0863e <lt2_top>:
ffa0863e:	00 e1 00 40 	R0.L = 0x4000;		/* (16384)	R0=0x4000(16384) */
ffa08642:	20 9e       	W[I0++] = R0.L;
ffa08644:	20 9e       	W[I0++] = R0.L;
ffa08646:	00 e1 00 00 	R0.L = 0x0;		/* (  0)	R0=0x0(  0) */
ffa0864a:	20 9e       	W[I0++] = R0.L;
ffa0864c:	20 9e       	W[I0++] = R0.L;
ffa0864e:	00 e1 00 c0 	R0.L = 0xc000;		/* (-16384)	R0=0xc000(49152) */
ffa08652:	20 9e       	W[I0++] = R0.L;
ffa08654:	20 9e       	W[I0++] = R0.L;
ffa08656:	00 e1 07 5d 	R0.L = 0x5d07;		/* (23815)	R0=0x5d07(23815) */
ffa0865a:	20 9e       	W[I0++] = R0.L;
ffa0865c:	20 9e       	W[I0++] = R0.L;
ffa0865e:	00 e1 2b dd 	R0.L = 0xdd2b;		/* (-8917)	R0=0xdd2b(56619) */
ffa08662:	20 9e       	W[I0++] = R0.L;
ffa08664:	20 9e       	W[I0++] = R0.L;
ffa08666:	00 e1 bb 26 	R0.L = 0x26bb;		/* (9915)	R0=0x26bb(9915) */
ffa0866a:	40 e1 bb 26 	R0.H = 0x26bb;		/* (9915)	R0=0x26bb26bb(649799355) */
ffa0866e:	00 9e       	[I0++] = R0;
ffa08670:	00 e1 01 00 	R0.L = 0x1;		/* (  1)	R0=0x26bb0001(649789441) */
ffa08674:	20 9e       	W[I0++] = R0.L;
ffa08676:	20 9e       	W[I0++] = R0.L;
ffa08678:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0867a:	00 9e       	[I0++] = R0;
ffa0867c:	00 9e       	[I0++] = R0;
ffa0867e:	00 9e       	[I0++] = R0;
ffa08680:	00 9e       	[I0++] = R0;
ffa08682:	00 9e       	[I0++] = R0;
ffa08684:	00 9e       	[I0++] = R0;
ffa08686:	00 9e       	[I0++] = R0;
ffa08688:	00 9e       	[I0++] = R0;
ffa0868a:	00 9e       	[I0++] = R0;
ffa0868c:	00 9e       	[I0++] = R0;
ffa0868e:	00 9e       	[I0++] = R0;
ffa08690:	00 9e       	[I0++] = R0;
ffa08692:	00 9e       	[I0++] = R0;
ffa08694:	00 9e       	[I0++] = R0;
ffa08696:	00 9e       	[I0++] = R0;
ffa08698:	00 e1 ff 7f 	R0.L = 0x7fff;		/* (32767)	R0=0x7fff(32767) */
ffa0869c:	20 9e       	W[I0++] = R0.L;
ffa0869e:	20 9e       	W[I0++] = R0.L;
ffa086a0:	20 e1 d4 1e 	R0 = 0x1ed4 (X);		/*		R0=0x1ed4(7892) */
ffa086a4:	20 9e       	W[I0++] = R0.L;
ffa086a6:	20 9e       	W[I0++] = R0.L;
ffa086a8:	20 e1 a9 3d 	R0 = 0x3da9 (X);		/*		R0=0x3da9(15785) */
ffa086ac:	20 9e       	W[I0++] = R0.L;
ffa086ae:	20 9e       	W[I0++] = R0.L;
ffa086b0:	20 e1 d4 1e 	R0 = 0x1ed4 (X);		/*		R0=0x1ed4(7892) */
ffa086b4:	20 9e       	W[I0++] = R0.L;
ffa086b6:	20 9e       	W[I0++] = R0.L;
ffa086b8:	20 e1 ad 14 	R0 = 0x14ad (X);		/*		R0=0x14ad(5293) */
ffa086bc:	20 9e       	W[I0++] = R0.L;
ffa086be:	20 9e       	W[I0++] = R0.L;
ffa086c0:	20 e1 c9 e2 	R0 = -0x1d37 (X);		/*		R0=0xffffe2c9(-7479) */
ffa086c4:	20 9e       	W[I0++] = R0.L;
ffa086c6:	20 9e       	W[I0++] = R0.L;
ffa086c8:	20 e1 ee 3b 	R0 = 0x3bee (X);		/*		R0=0x3bee(15342) */
ffa086cc:	20 9e       	W[I0++] = R0.L;
ffa086ce:	20 9e       	W[I0++] = R0.L;
ffa086d0:	20 e1 21 88 	R0 = -0x77df (X);		/*		R0=0xffff8821(-30687) */
ffa086d4:	20 9e       	W[I0++] = R0.L;
ffa086d6:	20 9e       	W[I0++] = R0.L;
ffa086d8:	20 e1 ee 3b 	R0 = 0x3bee (X);		/*		R0=0x3bee(15342) */
ffa086dc:	20 9e       	W[I0++] = R0.L;
ffa086de:	20 9e       	W[I0++] = R0.L;
ffa086e0:	20 e1 a5 7a 	R0 = 0x7aa5 (X);		/*		R0=0x7aa5(31397) */
ffa086e4:	20 9e       	W[I0++] = R0.L;
ffa086e6:	20 9e       	W[I0++] = R0.L;
ffa086e8:	20 e1 bc c4 	R0 = -0x3b44 (X);		/*		R0=0xffffc4bc(-15172) */
ffa086ec:	20 9e       	W[I0++] = R0.L;
ffa086ee:	20 9e       	W[I0++] = R0.L;
ffa086f0:	20 e1 80 3e 	R0 = 0x3e80 (X);		/*		R0=0x3e80(16000) */
ffa086f4:	20 9e       	W[I0++] = R0.L;
ffa086f6:	20 9e       	W[I0++] = R0.L;
ffa086f8:	20 e1 d4 1e 	R0 = 0x1ed4 (X);		/*		R0=0x1ed4(7892) */
ffa086fc:	20 9e       	W[I0++] = R0.L;
ffa086fe:	20 9e       	W[I0++] = R0.L;
ffa08700:	20 e1 a6 3d 	R0 = 0x3da6 (X);		/*		R0=0x3da6(15782) */
ffa08704:	20 9e       	W[I0++] = R0.L;
ffa08706:	20 9e       	W[I0++] = R0.L;
ffa08708:	20 e1 d4 1e 	R0 = 0x1ed4 (X);		/*		R0=0x1ed4(7892) */
ffa0870c:	20 9e       	W[I0++] = R0.L;
ffa0870e:	20 9e       	W[I0++] = R0.L;
ffa08710:	20 e1 f0 0e 	R0 = 0xef0 (X);		/*		R0=0xef0(3824) */
ffa08714:	20 9e       	W[I0++] = R0.L;
ffa08716:	20 9e       	W[I0++] = R0.L;
ffa08718:	20 e1 aa fc 	R0 = -0x356 (X);		/*		R0=0xfffffcaa(-854) */
ffa0871c:	20 9e       	W[I0++] = R0.L;
ffa0871e:	20 9e       	W[I0++] = R0.L;
ffa08720:	20 e1 ee 3b 	R0 = 0x3bee (X);		/*		R0=0x3bee(15342) */
ffa08724:	20 9e       	W[I0++] = R0.L;
ffa08726:	20 9e       	W[I0++] = R0.L;
ffa08728:	20 e1 27 88 	R0 = -0x77d9 (X);		/*		R0=0xffff8827(-30681) */
ffa0872c:	20 9e       	W[I0++] = R0.L;
ffa0872e:	20 9e       	W[I0++] = R0.L;
ffa08730:	20 e1 ee 3b 	R0 = 0x3bee (X);		/*		R0=0x3bee(15342) */
ffa08734:	20 9e       	W[I0++] = R0.L;
ffa08736:	20 9e       	W[I0++] = R0.L;
ffa08738:	20 e1 8c 74 	R0 = 0x748c (X);		/*		R0=0x748c(29836) */
ffa0873c:	20 9e       	W[I0++] = R0.L;
ffa0873e:	20 9e       	W[I0++] = R0.L;
ffa08740:	20 e1 dd ca 	R0 = -0x3523 (X);		/*		R0=0xffffcadd(-13603) */
ffa08744:	20 9e       	W[I0++] = R0.L;
ffa08746:	20 9e       	W[I0++] = R0.L;
ffa08748:	20 e1 80 3e 	R0 = 0x3e80 (X);		/*		R0=0x3e80(16000) */
ffa0874c:	20 9e       	W[I0++] = R0.L;
ffa0874e:	20 9e       	W[I0++] = R0.L;
ffa08750:	00 e1 01 00 	R0.L = 0x1;		/* (  1)	R0=0x1(  1) */
ffa08754:	20 9e       	W[I0++] = R0.L;
ffa08756:	00 e1 10 00 	R0.L = 0x10;		/* ( 16)	R0=0x10( 16) */
ffa0875a:	20 9e       	W[I0++] = R0.L;
ffa0875c:	00 e1 02 00 	R0.L = 0x2;		/* (  2)	R0=0x2(  2) */
ffa08760:	20 9e       	W[I0++] = R0.L;
ffa08762:	00 e1 20 00 	R0.L = 0x20;		/* ( 32)	R0=0x20( 32) */
ffa08766:	20 9e       	W[I0++] = R0.L;

ffa08768 <lt2_bot>:
ffa08768:	37 e1 08 00 	M3 = 0x8 (X);		/*		M3=0x8(  8) */
ffa0876c:	7c 9e       	I0 -= M3;
ffa0876e:	00 e1 04 00 	R0.L = 0x4;		/* (  4)	R0=0x4(  4) */
ffa08772:	20 9e       	W[I0++] = R0.L;
ffa08774:	00 e1 40 00 	R0.L = 0x40;		/* ( 64)	R0=0x40( 64) */
ffa08778:	20 9e       	W[I0++] = R0.L;
ffa0877a:	00 e1 08 00 	R0.L = 0x8;		/* (  8)	R0=0x8(  8) */
ffa0877e:	20 9e       	W[I0++] = R0.L;
ffa08780:	00 e1 80 00 	R0.L = 0x80;		/* (128)	R0=0x80(128) */
ffa08784:	20 9e       	W[I0++] = R0.L;
ffa08786:	01 9e       	[I0++] = R1;
ffa08788:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0878a:	41 50       	R1 = R1 + R0;

ffa0878c <lt_bot>:
ffa0878c:	08 e1 80 6b 	P0.L = 0x6b80;		/* (27520)	P0=0xffc06b80(-4166784) */
ffa08790:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff906b80 */
ffa08794:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa08798:	00 93       	[P0] = R0;
ffa0879a:	11 e1 00 40 	I1.L = 0x4000;		/* (16384)	I1=0x4000(16384) */
ffa0879e:	51 e1 80 ff 	I1.H = 0xff80;		/* (-128)	I1=0xff804000(-8372224) */
ffa087a2:	1d e1 00 14 	L1.L = 0x1400;		/* (5120)	L1=0x1400(5120) */
ffa087a6:	5d e1 00 00 	L1.H = 0x0;		/* (  0)	L1=0x1400(5120) */
ffa087aa:	91 34       	I2 = I1;
ffa087ac:	89 36       	B1 = I1;
ffa087ae:	92 36       	B2 = I2;
ffa087b0:	f5 36       	L2 = L1;
ffa087b2:	35 e1 40 00 	M1 = 0x40 (X);		/*		M1=0x40( 64) */
ffa087b6:	b4 34       	M2 = M0;
ffa087b8:	08 e1 00 40 	P0.L = 0x4000;		/* (16384)	P0=0xff904000 */
ffa087bc:	48 e1 80 ff 	P0.H = 0xff80;		/* (-128)	P0=0xff804000 */
ffa087c0:	0d e1 00 05 	P5.L = 0x500;		/* (1280)	P5=0x500 */
ffa087c4:	4d e1 00 00 	P5.H = 0x0;		/* (  0)	P5=0x500 */
ffa087c8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa087ca:	a2 e0 04 50 	LSETUP(0xffa087ce <lt3_top>, 0xffa087d2 <lt3_bot>) LC0 = P5;

ffa087ce <lt3_top>:
ffa087ce:	00 00       	NOP;
ffa087d0:	00 92       	[P0++] = R0;

ffa087d2 <lt3_bot>:
ffa087d2:	00 00       	NOP;
ffa087d4:	13 e1 00 54 	I3.L = 0x5400;		/* (21504)	I3=0x5400(21504) */
ffa087d8:	53 e1 80 ff 	I3.H = 0xff80;		/* (-128)	I3=0xff805400(-8367104) */
ffa087dc:	1f e1 00 0f 	L3.L = 0xf00;		/* (3840)	L3=0xf00(3840) */
ffa087e0:	5f e1 00 00 	L3.H = 0x0;		/* (  0)	L3=0xf00(3840) */
ffa087e4:	9b 36       	B3 = I3;
ffa087e6:	37 e1 08 00 	M3 = 0x8 (X);		/*		M3=0x8(  8) */
ffa087ea:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa087ec:	8c 30       	R1 = M0;
ffa087ee:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa087f0:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa087f2:	85 69       	P5 = 0x30 (X);		/*		P5=0x30( 48) */
ffa087f4:	a2 e0 46 50 	LSETUP(0xffa087f8 <lt4_top>, 0xffa08880 <lt4_bot>) LC0 = P5;

ffa087f8 <lt4_top>:
ffa087f8:	00 00       	NOP;
ffa087fa:	35 68       	P5 = 0x6 (X);		/*		P5=0x6(  6) */
ffa087fc:	b2 e0 18 50 	LSETUP(0xffa08800 <lt5_top>, 0xffa0882c <lt5_bot>) LC1 = P5;

ffa08800 <lt5_top>:
ffa08800:	84 60       	R4 = 0x10 (X);		/*		R4=0x10( 16) */
ffa08802:	c4 52       	R3 = R4 - R0;
ffa08804:	24 60       	R4 = 0x4 (X);		/*		R4=0x4(  4) */
ffa08806:	e3 40       	R3 *= R4;
ffa08808:	1b 9e       	[I3++] = R3;
ffa0880a:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa0880c:	e0 50       	R3 = R0 + R4;
ffa0880e:	cb 40       	R3 *= R1;
ffa08810:	1b 9e       	[I3++] = R3;
ffa08812:	1f 9e       	[I3++] = R7;
ffa08814:	20 50       	R0 = R0 + R4;
ffa08816:	e7 51       	R7 = R7 + R4;
ffa08818:	7c 60       	R4 = 0xf (X);		/*		R4=0xf( 15) */
ffa0881a:	20 08       	CC = R0 == R4;
ffa0881c:	02 10       	IF !CC JUMP 0xffa08820 <no_rollover>;
ffa0881e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */

ffa08820 <no_rollover>:
ffa08820:	00 00       	NOP;
ffa08822:	34 60       	R4 = 0x6 (X);		/*		R4=0x6(  6) */
ffa08824:	27 08       	CC = R7 == R4;
ffa08826:	02 10       	IF !CC JUMP 0xffa0882a <no_rollover2>;
ffa08828:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */

ffa0882a <no_rollover2>:
	...

ffa0882c <lt5_bot>:
ffa0882c:	00 00       	NOP;
ffa0882e:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa08830:	82 c6 e2 86 	R3 = R2 << 0x1c;
ffa08834:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa08836:	82 c6 fc 88 	R4 = R4 << 0x1f;
ffa0883a:	e3 54       	R3 = R3 & R4;
ffa0883c:	5d 57       	R5 = R5 | R3;
ffa0883e:	82 c6 aa 86 	R3 = R2 << 0x15;
ffa08842:	82 c6 c4 89 	R4 = R4 >> 0x8;
ffa08846:	e3 54       	R3 = R3 & R4;
ffa08848:	5d 57       	R5 = R5 | R3;
ffa0884a:	82 c6 72 86 	R3 = R2 << 0xe;
ffa0884e:	82 c6 c4 89 	R4 = R4 >> 0x8;
ffa08852:	e3 54       	R3 = R3 & R4;
ffa08854:	5d 57       	R5 = R5 | R3;
ffa08856:	82 c6 3a 86 	R3 = R2 << 0x7;
ffa0885a:	82 c6 c4 89 	R4 = R4 >> 0x8;
ffa0885e:	e3 54       	R3 = R3 & R4;
ffa08860:	5d 57       	R5 = R5 | R3;
ffa08862:	1d 9e       	[I3++] = R5;
ffa08864:	03 e1 20 63 	R3.L = 0x6320;		/* (25376)	R3=0x6320(25376) */
ffa08868:	43 e1 80 ff 	R3.H = 0xff80;		/* (-128)	R3=0xff806320(-8363232) */
ffa0886c:	1c 60       	R4 = 0x3 (X);		/*		R4=0x3(  3) */
ffa0886e:	62 55       	R5 = R2 & R4;
ffa08870:	82 c6 1d 8a 	R5 = R5 << 0x3;
ffa08874:	5d 51       	R5 = R5 + R3;
ffa08876:	1d 9e       	[I3++] = R5;
ffa08878:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa0887a:	a2 50       	R2 = R2 + R4;
ffa0887c:	7c 60       	R4 = 0xf (X);		/*		R4=0xf( 15) */
ffa0887e:	a2 54       	R2 = R2 & R4;

ffa08880 <lt4_bot>:
ffa08880:	00 00       	NOP;
ffa08882:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa08884:	10 00       	RTS;
	...

ffa08888 <_get_asm>:
ffa08888:	68 b9       	P0 = [FP -0x28];
ffa0888a:	27 e1 00 01 	R7 = 0x100 (X);		/*		R7=0x100(256) */
ffa0888e:	8f b4       	W[P1 + 0x4] = R7;
ffa08890:	27 e1 80 00 	R7 = 0x80 (X);		/*		R7=0x80(128) */
ffa08894:	0f b5       	W[P1 + 0x8] = R7;

ffa08896 <wait_samples>:
ffa08896:	03 a7       	R3 = W[P0 + 0x18] (Z);
ffa08898:	03 48       	CC = !BITTST (R3, 0x0);		/* bit  0 */
ffa0889a:	fe 1b       	IF CC JUMP 0xffa08896 <wait_samples>;
ffa0889c:	00 95       	R0 = W[P0] (Z);
ffa0889e:	01 95       	R1 = W[P0] (Z);
ffa088a0:	d2 b8       	R2 = [FP -0x4c];
ffa088a2:	81 4f       	R1 <<= 0x10;
ffa088a4:	08 56       	R0 = R0 | R1;
ffa088a6:	d0 55       	R7 = R0 & R2;
ffa088a8:	05 9c       	R5 = [I0++];
ffa088aa:	8d b5       	W[P1 + 0xc] = R5;
ffa088ac:	c6 b8       	R6 = [FP -0x50];
ffa088ae:	00 00       	NOP;
ffa088b0:	03 c8 00 18 	MNOP || R5 = [I0++] || R1 = [I1++];
ffa088b4:	05 9c 09 9c 
ffa088b8:	00 c8 3d c0 	A1 = R7.H * R5.H, A0 = R7.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa088bc:	05 9c 0a 9c 
ffa088c0:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || R4 = [I1++];
ffa088c4:	05 9c 0c 9c 
ffa088c8:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R5 = [I0++] || R3 = [I1++];
ffa088cc:	05 9c 0b 9c 
ffa088d0:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || [I2++] = R7;
ffa088d4:	05 9c 17 9e 
ffa088d8:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || R5 = [I1++] || NOP;
ffa088dc:	0d 9c 00 00 
ffa088e0:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || [I2++] = R1 || NOP;
ffa088e4:	11 9e 00 00 
ffa088e8:	83 ce 38 00 	A0 = A0 << 0x7 || [I2++] = R3 || NOP;
ffa088ec:	13 9e 00 00 
ffa088f0:	83 ce 38 10 	A1 = A1 << 0x7 || [I2++] = R0 || NOP;
ffa088f4:	10 9e 00 00 
ffa088f8:	07 c8 c0 39 	R7.H = A1, R7.L = A0 || I1 += M0 || NOP;
ffa088fc:	61 9e 00 00 
ffa08900:	10 cc 00 c0 	A1 = ABS A1, A0 = ABS A0 || R1 = [I0++] || NOP;
ffa08904:	01 9c 00 00 
ffa08908:	06 c9 09 f1 	R4.H = (A1 -= R1.H * R1.H), R4.L = (A0 -= R1.L * R1.L) (IS) || R1 = [I0++] || NOP;
ffa0890c:	01 9c 00 00 
ffa08910:	00 c0 2e 80 	A1 = R5.H * R6.L, A0 = R5.L * R6.L;
ffa08914:	26 c0 e1 f0 	R3.H = (A1 -= R4.H * R1.H), R3.L = (A0 -= R4.L * R1.L) (S2RND);
ffa08918:	06 c4 18 86 	R3 = ABS R3 (V);
ffa0891c:	03 c8 00 18 	MNOP || [I2++] = R3 || NOP;
ffa08920:	13 9e 00 00 
ffa08924:	81 ce 6f 40 	R0 = R7 << 0xd (V, S) || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08928:	89 9d 02 9c 
ffa0892c:	00 c8 0a c0 	A1 = R1.H * R2.H, A0 = R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08930:	89 9d 02 9c 
ffa08934:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08938:	89 9d 02 9c 
ffa0893c:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08940:	89 9d 02 9c 
ffa08944:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08948:	89 9d 02 9c 
ffa0894c:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08950:	89 9d 02 9c 
ffa08954:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08958:	89 9d 02 9c 
ffa0895c:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08960:	89 9d 02 9c 
ffa08964:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08968:	89 9d 02 9c 
ffa0896c:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08970:	89 9d 02 9c 
ffa08974:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08978:	89 9d 02 9c 
ffa0897c:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08980:	89 9d 02 9c 
ffa08984:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08988:	89 9d 02 9c 
ffa0898c:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08990:	89 9d 02 9c 
ffa08994:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08998:	89 9d 02 9c 
ffa0899c:	05 c8 8a e9 	R6.H = (A1 += R1.H * R2.H), R6.L = (A0 += R1.L * R2.L) || R1 = [I1++] || R5 = [I0++];
ffa089a0:	09 9c 05 9c 
ffa089a4:	00 cc 3e ee 	R7 = R7 -|- R6 (S) || I0 -= M1 || [I2++] = R7;
ffa089a8:	74 9e 17 9e 
ffa089ac:	81 ce 3f 46 	R3 = R7 << 0x7 (V, S) || I1 += M2 || [I2++] = R0;
ffa089b0:	69 9e 10 9e 
ffa089b4:	81 ce 93 47 	R3 = R3 >>> 0xe (V, S) || R1 = [I1 ++ M3] || R2 = [I0];
ffa089b8:	e9 9d 02 9d 
ffa089bc:	00 c8 0b c0 	A1 = R1.H * R3.H, A0 = R1.L * R3.L || [I2++] = R6 || NOP;
ffa089c0:	16 9e 00 00 
ffa089c4:	05 c8 15 e9 	R4.H = (A1 += R2.H * R5.H), R4.L = (A0 += R2.L * R5.L) || I1 -= M2 || NOP;
ffa089c8:	79 9e 00 00 
ffa089cc:	03 c8 00 18 	MNOP || [I0 ++ M1] = R4 || NOP;
ffa089d0:	a4 9f 00 00 
ffa089d4:	03 c8 00 18 	MNOP || R5 = [I0++] || R1 = [I1++];
ffa089d8:	05 9c 09 9c 
ffa089dc:	00 c8 3d c0 	A1 = R7.H * R5.H, A0 = R7.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa089e0:	05 9c 0a 9c 
ffa089e4:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || R3 = [I1++];
ffa089e8:	05 9c 0b 9c 
ffa089ec:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R5 = [I0++] || R4 = [I1++];
ffa089f0:	05 9c 0c 9c 
ffa089f4:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || [I2++] = R7;
ffa089f8:	05 9c 17 9e 
ffa089fc:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || [I2++] = R1 || NOP;
ffa08a00:	11 9e 00 00 
ffa08a04:	03 c8 00 18 	MNOP || R5 = [I0++] || [I2++] = R0;
ffa08a08:	05 9c 10 9e 
ffa08a0c:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || R5 = [I0++] || [I2++] = R3;
ffa08a10:	05 9c 13 9e 
ffa08a14:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || R1 = [I1++];
ffa08a18:	05 9c 09 9c 
ffa08a1c:	01 c8 25 c8 	A1 += R4.H * R5.H, A0 += R4.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa08a20:	05 9c 0a 9c 
ffa08a24:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || NOP;
ffa08a28:	05 9c 00 00 
ffa08a2c:	25 c8 15 e8 	R0.H = (A1 += R2.H * R5.H), R0.L = (A0 += R2.L * R5.L) (S2RND) || R5 = [I0++] || NOP;
ffa08a30:	05 9c 00 00 
ffa08a34:	00 cc 05 20 	R0 = R0 +|+ R5 (S) || [I2++] = R0 || NOP;
ffa08a38:	10 9e 00 00 
ffa08a3c:	81 ce 88 0d 	R6 = R0 >>> 0xf (V) || [I2++] = R1 || NOP;
ffa08a40:	11 9e 00 00 
ffa08a44:	03 c8 00 18 	MNOP || R5 = [I0++] || R1 = [I1++];
ffa08a48:	05 9c 09 9c 
ffa08a4c:	00 c8 3d c0 	A1 = R7.H * R5.H, A0 = R7.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa08a50:	05 9c 0a 9c 
ffa08a54:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || R3 = [I1++];
ffa08a58:	05 9c 0b 9c 
ffa08a5c:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R5 = [I0++] || R4 = [I1++];
ffa08a60:	05 9c 0c 9c 
ffa08a64:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || [I2++] = R7;
ffa08a68:	05 9c 17 9e 
ffa08a6c:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || [I2++] = R1 || NOP;
ffa08a70:	11 9e 00 00 
ffa08a74:	03 c8 00 18 	MNOP || R5 = [I0++] || [I2++] = R0;
ffa08a78:	05 9c 10 9e 
ffa08a7c:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || R5 = [I0++] || [I2++] = R3;
ffa08a80:	05 9c 13 9e 
ffa08a84:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || R1 = [I1++];
ffa08a88:	05 9c 09 9c 
ffa08a8c:	01 c8 25 c8 	A1 += R4.H * R5.H, A0 += R4.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa08a90:	05 9c 0a 9c 
ffa08a94:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || NOP;
ffa08a98:	05 9c 00 00 
ffa08a9c:	25 c8 15 e8 	R0.H = (A1 += R2.H * R5.H), R0.L = (A0 += R2.L * R5.L) (S2RND) || R5 = [I0++] || NOP;
ffa08aa0:	05 9c 00 00 
ffa08aa4:	00 cc 05 20 	R0 = R0 +|+ R5 (S) || R7 = [I0++] || [I2++] = R0;
ffa08aa8:	07 9c 10 9e 
ffa08aac:	81 ce 88 41 	R0 = R0 >>> 0xf (V, S) || R5 = [I0++] || [I2++] = R1;
ffa08ab0:	05 9c 11 9e 
ffa08ab4:	be 55       	R6 = R6 & R7;
ffa08ab6:	28 54       	R0 = R0 & R5;
ffa08ab8:	86 57       	R6 = R6 | R0;
ffa08aba:	76 bb       	[FP -0x24] = R6;
ffa08abc:	40 e4 80 00 	R0 = W[P0 + 0x100] (Z);
ffa08ac0:	41 e4 80 00 	R1 = W[P0 + 0x100] (Z);
ffa08ac4:	d2 b8       	R2 = [FP -0x4c];
ffa08ac6:	81 4f       	R1 <<= 0x10;
ffa08ac8:	08 56       	R0 = R0 | R1;
ffa08aca:	d0 55       	R7 = R0 & R2;
ffa08acc:	c6 b8       	R6 = [FP -0x50];
ffa08ace:	00 00       	NOP;
ffa08ad0:	03 c8 00 18 	MNOP || R5 = [I0++] || R1 = [I1++];
ffa08ad4:	05 9c 09 9c 
ffa08ad8:	00 c8 3d c0 	A1 = R7.H * R5.H, A0 = R7.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa08adc:	05 9c 0a 9c 
ffa08ae0:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || R4 = [I1++];
ffa08ae4:	05 9c 0c 9c 
ffa08ae8:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R5 = [I0++] || R3 = [I1++];
ffa08aec:	05 9c 0b 9c 
ffa08af0:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || [I2++] = R7;
ffa08af4:	05 9c 17 9e 
ffa08af8:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || R5 = [I1++] || NOP;
ffa08afc:	0d 9c 00 00 
ffa08b00:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || [I2++] = R1 || NOP;
ffa08b04:	11 9e 00 00 
ffa08b08:	83 ce 38 00 	A0 = A0 << 0x7 || [I2++] = R3 || NOP;
ffa08b0c:	13 9e 00 00 
ffa08b10:	83 ce 38 10 	A1 = A1 << 0x7 || [I2++] = R0 || NOP;
ffa08b14:	10 9e 00 00 
ffa08b18:	07 c8 c0 39 	R7.H = A1, R7.L = A0 || I1 += M0 || NOP;
ffa08b1c:	61 9e 00 00 
ffa08b20:	10 cc 00 c0 	A1 = ABS A1, A0 = ABS A0 || R1 = [I0++] || NOP;
ffa08b24:	01 9c 00 00 
ffa08b28:	06 c9 09 f1 	R4.H = (A1 -= R1.H * R1.H), R4.L = (A0 -= R1.L * R1.L) (IS) || R1 = [I0++] || NOP;
ffa08b2c:	01 9c 00 00 
ffa08b30:	00 c0 2e 80 	A1 = R5.H * R6.L, A0 = R5.L * R6.L;
ffa08b34:	26 c0 e1 f0 	R3.H = (A1 -= R4.H * R1.H), R3.L = (A0 -= R4.L * R1.L) (S2RND);
ffa08b38:	06 c4 18 86 	R3 = ABS R3 (V);
ffa08b3c:	03 c8 00 18 	MNOP || [I2++] = R3 || NOP;
ffa08b40:	13 9e 00 00 
ffa08b44:	81 ce 6f 40 	R0 = R7 << 0xd (V, S) || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08b48:	89 9d 02 9c 
ffa08b4c:	00 c8 0a c0 	A1 = R1.H * R2.H, A0 = R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08b50:	89 9d 02 9c 
ffa08b54:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08b58:	89 9d 02 9c 
ffa08b5c:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08b60:	89 9d 02 9c 
ffa08b64:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08b68:	89 9d 02 9c 
ffa08b6c:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08b70:	89 9d 02 9c 
ffa08b74:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08b78:	89 9d 02 9c 
ffa08b7c:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08b80:	89 9d 02 9c 
ffa08b84:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08b88:	89 9d 02 9c 
ffa08b8c:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08b90:	89 9d 02 9c 
ffa08b94:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08b98:	89 9d 02 9c 
ffa08b9c:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08ba0:	89 9d 02 9c 
ffa08ba4:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08ba8:	89 9d 02 9c 
ffa08bac:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08bb0:	89 9d 02 9c 
ffa08bb4:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08bb8:	89 9d 02 9c 
ffa08bbc:	05 c8 8a e9 	R6.H = (A1 += R1.H * R2.H), R6.L = (A0 += R1.L * R2.L) || R1 = [I1++] || R5 = [I0++];
ffa08bc0:	09 9c 05 9c 
ffa08bc4:	00 cc 3e ee 	R7 = R7 -|- R6 (S) || I0 -= M1 || [I2++] = R7;
ffa08bc8:	74 9e 17 9e 
ffa08bcc:	81 ce 3f 46 	R3 = R7 << 0x7 (V, S) || I1 += M2 || [I2++] = R0;
ffa08bd0:	69 9e 10 9e 
ffa08bd4:	81 ce 93 47 	R3 = R3 >>> 0xe (V, S) || R1 = [I1 ++ M3] || R2 = [I0];
ffa08bd8:	e9 9d 02 9d 
ffa08bdc:	00 c8 0b c0 	A1 = R1.H * R3.H, A0 = R1.L * R3.L || [I2++] = R6 || NOP;
ffa08be0:	16 9e 00 00 
ffa08be4:	05 c8 15 e9 	R4.H = (A1 += R2.H * R5.H), R4.L = (A0 += R2.L * R5.L) || I1 -= M2 || NOP;
ffa08be8:	79 9e 00 00 
ffa08bec:	03 c8 00 18 	MNOP || [I0 ++ M1] = R4 || NOP;
ffa08bf0:	a4 9f 00 00 
ffa08bf4:	03 c8 00 18 	MNOP || R5 = [I0++] || R1 = [I1++];
ffa08bf8:	05 9c 09 9c 
ffa08bfc:	00 c8 3d c0 	A1 = R7.H * R5.H, A0 = R7.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa08c00:	05 9c 0a 9c 
ffa08c04:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || R3 = [I1++];
ffa08c08:	05 9c 0b 9c 
ffa08c0c:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R5 = [I0++] || R4 = [I1++];
ffa08c10:	05 9c 0c 9c 
ffa08c14:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || [I2++] = R7;
ffa08c18:	05 9c 17 9e 
ffa08c1c:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || [I2++] = R1 || NOP;
ffa08c20:	11 9e 00 00 
ffa08c24:	03 c8 00 18 	MNOP || R5 = [I0++] || [I2++] = R0;
ffa08c28:	05 9c 10 9e 
ffa08c2c:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || R5 = [I0++] || [I2++] = R3;
ffa08c30:	05 9c 13 9e 
ffa08c34:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || R1 = [I1++];
ffa08c38:	05 9c 09 9c 
ffa08c3c:	01 c8 25 c8 	A1 += R4.H * R5.H, A0 += R4.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa08c40:	05 9c 0a 9c 
ffa08c44:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || NOP;
ffa08c48:	05 9c 00 00 
ffa08c4c:	25 c8 15 e8 	R0.H = (A1 += R2.H * R5.H), R0.L = (A0 += R2.L * R5.L) (S2RND) || R5 = [I0++] || NOP;
ffa08c50:	05 9c 00 00 
ffa08c54:	00 cc 05 20 	R0 = R0 +|+ R5 (S) || [I2++] = R0 || NOP;
ffa08c58:	10 9e 00 00 
ffa08c5c:	81 ce 88 0d 	R6 = R0 >>> 0xf (V) || [I2++] = R1 || NOP;
ffa08c60:	11 9e 00 00 
ffa08c64:	03 c8 00 18 	MNOP || R5 = [I0++] || R1 = [I1++];
ffa08c68:	05 9c 09 9c 
ffa08c6c:	00 c8 3d c0 	A1 = R7.H * R5.H, A0 = R7.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa08c70:	05 9c 0a 9c 
ffa08c74:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || R3 = [I1++];
ffa08c78:	05 9c 0b 9c 
ffa08c7c:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R5 = [I0++] || R4 = [I1++];
ffa08c80:	05 9c 0c 9c 
ffa08c84:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || [I2++] = R7;
ffa08c88:	05 9c 17 9e 
ffa08c8c:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || [I2++] = R1 || NOP;
ffa08c90:	11 9e 00 00 
ffa08c94:	03 c8 00 18 	MNOP || R5 = [I0++] || [I2++] = R0;
ffa08c98:	05 9c 10 9e 
ffa08c9c:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || R5 = [I0++] || [I2++] = R3;
ffa08ca0:	05 9c 13 9e 
ffa08ca4:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || R1 = [I1++];
ffa08ca8:	05 9c 09 9c 
ffa08cac:	01 c8 25 c8 	A1 += R4.H * R5.H, A0 += R4.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa08cb0:	05 9c 0a 9c 
ffa08cb4:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || NOP;
ffa08cb8:	05 9c 00 00 
ffa08cbc:	25 c8 15 e8 	R0.H = (A1 += R2.H * R5.H), R0.L = (A0 += R2.L * R5.L) (S2RND) || R5 = [I0++] || NOP;
ffa08cc0:	05 9c 00 00 
ffa08cc4:	00 cc 05 20 	R0 = R0 +|+ R5 (S) || R7 = [I0++] || [I2++] = R0;
ffa08cc8:	07 9c 10 9e 
ffa08ccc:	81 ce 90 41 	R0 = R0 >>> 0xe (V, S) || R5 = [I0++] || [I2++] = R1;
ffa08cd0:	05 9c 11 9e 
ffa08cd4:	be 55       	R6 = R6 & R7;
ffa08cd6:	28 54       	R0 = R0 & R5;
ffa08cd8:	86 57       	R6 = R6 | R0;
ffa08cda:	77 b9       	R7 = [FP -0x24];
ffa08cdc:	37 56       	R0 = R7 | R6;
ffa08cde:	06 9c       	R6 = [I0++];
ffa08ce0:	06 32       	P0 = R6;
ffa08ce2:	3d b9       	P5 = [FP -0x34];
ffa08ce4:	19 b9       	P1 = [FP -0x3c];
ffa08ce6:	02 c4 00 40 	R0.L = R0.L + R0.H (NS);
ffa08cea:	40 43       	R0 = R0.B (Z);
ffa08cec:	45 5b       	P5 = P5 + P0;
ffa08cee:	29 99       	R1 = B[P5] (Z);
ffa08cf0:	41 56       	R1 = R1 | R0;
ffa08cf2:	01 32       	P0 = R1;
ffa08cf4:	29 9b       	B[P5] = R1;
ffa08cf6:	03 69       	P3 = 0x20 (X);		/*		P3=0x20( 32) */
ffa08cf8:	5d 5b       	P5 = P5 + P3;
ffa08cfa:	41 5a       	P1 = P1 + P0;
ffa08cfc:	0a 99       	R2 = B[P1] (Z);
ffa08cfe:	2a 9b       	B[P5] = R2;
ffa08d00:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa08d02:	06 08       	CC = R6 == R0;
ffa08d04:	33 14       	IF !CC JUMP 0xffa08d6a <end_txchan> (BP);
ffa08d06:	98 b9       	P0 = [FP -0x1c];
ffa08d08:	2f 60       	R7 = 0x5 (X);		/*		R7=0x5(  5) */
ffa08d0a:	00 00       	NOP;
ffa08d0c:	00 00       	NOP;
ffa08d0e:	00 00       	NOP;
ffa08d10:	03 c8 00 18 	MNOP || P1 = [FP -0x18] || R0 = [I3++];
ffa08d14:	a9 b9 18 9c 
ffa08d18:	03 c8 00 18 	MNOP || P3 = [FP -0x14] || R1 = [I3++];
ffa08d1c:	bb b9 19 9c 
ffa08d20:	03 c8 00 18 	MNOP || P5 = [FP -0x10] || R4 = [I3++];
ffa08d24:	cd b9 1c 9c 
ffa08d28:	28 34       	M1 = R0;
ffa08d2a:	31 34       	M2 = R1;
ffa08d2c:	00 99       	R0 = B[P0] (Z);
ffa08d2e:	09 99       	R1 = B[P1] (Z);
ffa08d30:	1a 99       	R2 = B[P3] (Z);
ffa08d32:	2b 99       	R3 = B[P5] (Z);
ffa08d34:	20 9a       	B[P4++] = R0;
ffa08d36:	21 9a       	B[P4++] = R1;
ffa08d38:	22 9a       	B[P4++] = R2;
ffa08d3a:	23 9a       	B[P4++] = R3;
ffa08d3c:	3c 08       	CC = R4 == R7;
ffa08d3e:	13 14       	IF !CC JUMP 0xffa08d64 <end_txchan_qs> (BP);
ffa08d40:	1f 9c       	R7 = [I3++];
ffa08d42:	1e 9c       	R6 = [I3++];
ffa08d44:	2e 32       	P5 = R6;
ffa08d46:	f5 b9       	R5 = [FP -0x4];
ffa08d48:	0d 64       	R5 += 0x1;		/* (  1) */
ffa08d4a:	f5 bb       	[FP -0x4] = R5;
ffa08d4c:	f5 b8       	R5 = [FP -0x44];
ffa08d4e:	28 90       	R0 = [P5++];
ffa08d50:	29 90       	R1 = [P5++];
ffa08d52:	38 56       	R0 = R0 | R7;
ffa08d54:	69 56       	R1 = R1 | R5;
ffa08d56:	e0 6a       	P0 = -0x24 (X);		/*		P0=0xffffffdc(-36) */
ffa08d58:	45 5b       	P5 = P5 + P0;
ffa08d5a:	20 92       	[P4++] = R0;
ffa08d5c:	21 92       	[P4++] = R1;
ffa08d5e:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa08d60:	ac 92       	[P5--] = R4;
ffa08d62:	ac 92       	[P5--] = R4;

ffa08d64 <end_txchan_qs>:
ffa08d64:	7c 30       	R7 = P4;
ffa08d66:	57 4c       	BITCLR (R7, 0xa);		/* bit 10 */
ffa08d68:	27 32       	P4 = R7;

ffa08d6a <end_txchan>:
ffa08d6a:	5b b9       	P3 = [FP -0x2c];
ffa08d6c:	49 b9       	P1 = [FP -0x30];
ffa08d6e:	10 00       	RTS;

ffa08d70 <_enc_create>:
ffa08d70:	0d e1 00 64 	P5.L = 0x6400;		/* (25600)	P5=0x6400 */
ffa08d74:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff806400 */
ffa08d78:	50 61       	R0 = 0x2a (X);		/*		R0=0x2a( 42) */
ffa08d7a:	28 9a       	B[P5++] = R0;
ffa08d7c:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa08d7e:	28 9a       	B[P5++] = R0;
ffa08d80:	60 61       	R0 = 0x2c (X);		/*		R0=0x2c( 44) */
ffa08d82:	28 9a       	B[P5++] = R0;
ffa08d84:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa08d86:	28 9a       	B[P5++] = R0;
ffa08d88:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa08d8a:	28 9a       	B[P5++] = R0;
ffa08d8c:	70 61       	R0 = 0x2e (X);		/*		R0=0x2e( 46) */
ffa08d8e:	28 9a       	B[P5++] = R0;
ffa08d90:	78 61       	R0 = 0x2f (X);		/*		R0=0x2f( 47) */
ffa08d92:	28 9a       	B[P5++] = R0;
ffa08d94:	70 61       	R0 = 0x2e (X);		/*		R0=0x2e( 46) */
ffa08d96:	28 9a       	B[P5++] = R0;
ffa08d98:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa08d9a:	28 9a       	B[P5++] = R0;
ffa08d9c:	88 61       	R0 = 0x31 (X);		/*		R0=0x31( 49) */
ffa08d9e:	28 9a       	B[P5++] = R0;
ffa08da0:	90 61       	R0 = 0x32 (X);		/*		R0=0x32( 50) */
ffa08da2:	28 9a       	B[P5++] = R0;
ffa08da4:	88 61       	R0 = 0x31 (X);		/*		R0=0x31( 49) */
ffa08da6:	28 9a       	B[P5++] = R0;
ffa08da8:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa08daa:	28 9a       	B[P5++] = R0;
ffa08dac:	70 61       	R0 = 0x2e (X);		/*		R0=0x2e( 46) */
ffa08dae:	28 9a       	B[P5++] = R0;
ffa08db0:	78 61       	R0 = 0x2f (X);		/*		R0=0x2f( 47) */
ffa08db2:	28 9a       	B[P5++] = R0;
ffa08db4:	70 61       	R0 = 0x2e (X);		/*		R0=0x2e( 46) */
ffa08db6:	28 9a       	B[P5++] = R0;
ffa08db8:	98 61       	R0 = 0x33 (X);		/*		R0=0x33( 51) */
ffa08dba:	28 9a       	B[P5++] = R0;
ffa08dbc:	a0 61       	R0 = 0x34 (X);		/*		R0=0x34( 52) */
ffa08dbe:	28 9a       	B[P5++] = R0;
ffa08dc0:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa08dc2:	28 9a       	B[P5++] = R0;
ffa08dc4:	b0 61       	R0 = 0x36 (X);		/*		R0=0x36( 54) */
ffa08dc6:	28 9a       	B[P5++] = R0;
ffa08dc8:	b8 61       	R0 = 0x37 (X);		/*		R0=0x37( 55) */
ffa08dca:	28 9a       	B[P5++] = R0;
ffa08dcc:	c0 61       	R0 = 0x38 (X);		/*		R0=0x38( 56) */
ffa08dce:	28 9a       	B[P5++] = R0;
ffa08dd0:	c8 61       	R0 = 0x39 (X);		/*		R0=0x39( 57) */
ffa08dd2:	28 9a       	B[P5++] = R0;
ffa08dd4:	c0 61       	R0 = 0x38 (X);		/*		R0=0x38( 56) */
ffa08dd6:	28 9a       	B[P5++] = R0;
ffa08dd8:	d0 61       	R0 = 0x3a (X);		/*		R0=0x3a( 58) */
ffa08dda:	28 9a       	B[P5++] = R0;
ffa08ddc:	d8 61       	R0 = 0x3b (X);		/*		R0=0x3b( 59) */
ffa08dde:	28 9a       	B[P5++] = R0;
ffa08de0:	e0 61       	R0 = 0x3c (X);		/*		R0=0x3c( 60) */
ffa08de2:	28 9a       	B[P5++] = R0;
ffa08de4:	d8 61       	R0 = 0x3b (X);		/*		R0=0x3b( 59) */
ffa08de6:	28 9a       	B[P5++] = R0;
ffa08de8:	b8 61       	R0 = 0x37 (X);		/*		R0=0x37( 55) */
ffa08dea:	28 9a       	B[P5++] = R0;
ffa08dec:	c0 61       	R0 = 0x38 (X);		/*		R0=0x38( 56) */
ffa08dee:	28 9a       	B[P5++] = R0;
ffa08df0:	e8 61       	R0 = 0x3d (X);		/*		R0=0x3d( 61) */
ffa08df2:	28 9a       	B[P5++] = R0;
ffa08df4:	f0 61       	R0 = 0x3e (X);		/*		R0=0x3e( 62) */
ffa08df6:	28 9a       	B[P5++] = R0;
ffa08df8:	f8 61       	R0 = 0x3f (X);		/*		R0=0x3f( 63) */
ffa08dfa:	28 9a       	B[P5++] = R0;
ffa08dfc:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa08e00:	28 9a       	B[P5++] = R0;
ffa08e02:	20 e1 41 00 	R0 = 0x41 (X);		/*		R0=0x41( 65) */
ffa08e06:	28 9a       	B[P5++] = R0;
ffa08e08:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa08e0c:	28 9a       	B[P5++] = R0;
ffa08e0e:	20 e1 42 00 	R0 = 0x42 (X);		/*		R0=0x42( 66) */
ffa08e12:	28 9a       	B[P5++] = R0;
ffa08e14:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa08e18:	28 9a       	B[P5++] = R0;
ffa08e1a:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa08e1e:	28 9a       	B[P5++] = R0;
ffa08e20:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa08e24:	28 9a       	B[P5++] = R0;
ffa08e26:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa08e2a:	28 9a       	B[P5++] = R0;
ffa08e2c:	20 e1 46 00 	R0 = 0x46 (X);		/*		R0=0x46( 70) */
ffa08e30:	28 9a       	B[P5++] = R0;
ffa08e32:	20 e1 47 00 	R0 = 0x47 (X);		/*		R0=0x47( 71) */
ffa08e36:	28 9a       	B[P5++] = R0;
ffa08e38:	20 e1 48 00 	R0 = 0x48 (X);		/*		R0=0x48( 72) */
ffa08e3c:	28 9a       	B[P5++] = R0;
ffa08e3e:	20 e1 42 00 	R0 = 0x42 (X);		/*		R0=0x42( 66) */
ffa08e42:	28 9a       	B[P5++] = R0;
ffa08e44:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa08e48:	28 9a       	B[P5++] = R0;
ffa08e4a:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa08e4e:	28 9a       	B[P5++] = R0;
ffa08e50:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa08e54:	28 9a       	B[P5++] = R0;
ffa08e56:	98 61       	R0 = 0x33 (X);		/*		R0=0x33( 51) */
ffa08e58:	28 9a       	B[P5++] = R0;
ffa08e5a:	a0 61       	R0 = 0x34 (X);		/*		R0=0x34( 52) */
ffa08e5c:	28 9a       	B[P5++] = R0;
ffa08e5e:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa08e60:	28 9a       	B[P5++] = R0;
ffa08e62:	a0 61       	R0 = 0x34 (X);		/*		R0=0x34( 52) */
ffa08e64:	28 9a       	B[P5++] = R0;
ffa08e66:	20 e1 49 00 	R0 = 0x49 (X);		/*		R0=0x49( 73) */
ffa08e6a:	28 9a       	B[P5++] = R0;
ffa08e6c:	20 e1 4a 00 	R0 = 0x4a (X);		/*		R0=0x4a( 74) */
ffa08e70:	28 9a       	B[P5++] = R0;
ffa08e72:	20 e1 4b 00 	R0 = 0x4b (X);		/*		R0=0x4b( 75) */
ffa08e76:	28 9a       	B[P5++] = R0;
ffa08e78:	c0 61       	R0 = 0x38 (X);		/*		R0=0x38( 56) */
ffa08e7a:	28 9a       	B[P5++] = R0;
ffa08e7c:	d0 61       	R0 = 0x3a (X);		/*		R0=0x3a( 58) */
ffa08e7e:	28 9a       	B[P5++] = R0;
ffa08e80:	d8 61       	R0 = 0x3b (X);		/*		R0=0x3b( 59) */
ffa08e82:	28 9a       	B[P5++] = R0;
ffa08e84:	e0 61       	R0 = 0x3c (X);		/*		R0=0x3c( 60) */
ffa08e86:	28 9a       	B[P5++] = R0;
ffa08e88:	d8 61       	R0 = 0x3b (X);		/*		R0=0x3b( 59) */
ffa08e8a:	28 9a       	B[P5++] = R0;
ffa08e8c:	b8 61       	R0 = 0x37 (X);		/*		R0=0x37( 55) */
ffa08e8e:	28 9a       	B[P5++] = R0;
ffa08e90:	c0 61       	R0 = 0x38 (X);		/*		R0=0x38( 56) */
ffa08e92:	28 9a       	B[P5++] = R0;
ffa08e94:	c8 61       	R0 = 0x39 (X);		/*		R0=0x39( 57) */
ffa08e96:	28 9a       	B[P5++] = R0;
ffa08e98:	20 e1 4c 00 	R0 = 0x4c (X);		/*		R0=0x4c( 76) */
ffa08e9c:	28 9a       	B[P5++] = R0;
ffa08e9e:	20 e1 4d 00 	R0 = 0x4d (X);		/*		R0=0x4d( 77) */
ffa08ea2:	28 9a       	B[P5++] = R0;
ffa08ea4:	20 e1 4e 00 	R0 = 0x4e (X);		/*		R0=0x4e( 78) */
ffa08ea8:	28 9a       	B[P5++] = R0;
ffa08eaa:	20 e1 4f 00 	R0 = 0x4f (X);		/*		R0=0x4f( 79) */
ffa08eae:	28 9a       	B[P5++] = R0;
ffa08eb0:	20 e1 4e 00 	R0 = 0x4e (X);		/*		R0=0x4e( 78) */
ffa08eb4:	28 9a       	B[P5++] = R0;
ffa08eb6:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa08eba:	28 9a       	B[P5++] = R0;
ffa08ebc:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa08ec0:	28 9a       	B[P5++] = R0;
ffa08ec2:	20 e1 52 00 	R0 = 0x52 (X);		/*		R0=0x52( 82) */
ffa08ec6:	28 9a       	B[P5++] = R0;
ffa08ec8:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa08ecc:	28 9a       	B[P5++] = R0;
ffa08ece:	20 e1 53 00 	R0 = 0x53 (X);		/*		R0=0x53( 83) */
ffa08ed2:	28 9a       	B[P5++] = R0;
ffa08ed4:	20 e1 54 00 	R0 = 0x54 (X);		/*		R0=0x54( 84) */
ffa08ed8:	28 9a       	B[P5++] = R0;
ffa08eda:	20 e1 55 00 	R0 = 0x55 (X);		/*		R0=0x55( 85) */
ffa08ede:	28 9a       	B[P5++] = R0;
ffa08ee0:	20 e1 56 00 	R0 = 0x56 (X);		/*		R0=0x56( 86) */
ffa08ee4:	28 9a       	B[P5++] = R0;
ffa08ee6:	20 e1 57 00 	R0 = 0x57 (X);		/*		R0=0x57( 87) */
ffa08eea:	28 9a       	B[P5++] = R0;
ffa08eec:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa08ef0:	28 9a       	B[P5++] = R0;
ffa08ef2:	20 e1 52 00 	R0 = 0x52 (X);		/*		R0=0x52( 82) */
ffa08ef6:	28 9a       	B[P5++] = R0;
ffa08ef8:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa08efc:	28 9a       	B[P5++] = R0;
ffa08efe:	20 e1 58 00 	R0 = 0x58 (X);		/*		R0=0x58( 88) */
ffa08f02:	28 9a       	B[P5++] = R0;
ffa08f04:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa08f08:	28 9a       	B[P5++] = R0;
ffa08f0a:	20 e1 5a 00 	R0 = 0x5a (X);		/*		R0=0x5a( 90) */
ffa08f0e:	28 9a       	B[P5++] = R0;
ffa08f10:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa08f14:	28 9a       	B[P5++] = R0;
ffa08f16:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa08f1a:	28 9a       	B[P5++] = R0;
ffa08f1c:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa08f20:	28 9a       	B[P5++] = R0;
ffa08f22:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa08f26:	28 9a       	B[P5++] = R0;
ffa08f28:	20 e1 5e 00 	R0 = 0x5e (X);		/*		R0=0x5e( 94) */
ffa08f2c:	28 9a       	B[P5++] = R0;
ffa08f2e:	20 e1 5f 00 	R0 = 0x5f (X);		/*		R0=0x5f( 95) */
ffa08f32:	28 9a       	B[P5++] = R0;
ffa08f34:	20 e1 60 00 	R0 = 0x60 (X);		/*		R0=0x60( 96) */
ffa08f38:	28 9a       	B[P5++] = R0;
ffa08f3a:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa08f3e:	28 9a       	B[P5++] = R0;
ffa08f40:	20 e1 60 00 	R0 = 0x60 (X);		/*		R0=0x60( 96) */
ffa08f44:	28 9a       	B[P5++] = R0;
ffa08f46:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa08f4a:	28 9a       	B[P5++] = R0;
ffa08f4c:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa08f50:	28 9a       	B[P5++] = R0;
ffa08f52:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa08f56:	28 9a       	B[P5++] = R0;
ffa08f58:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa08f5c:	28 9a       	B[P5++] = R0;
ffa08f5e:	20 e1 62 00 	R0 = 0x62 (X);		/*		R0=0x62( 98) */
ffa08f62:	28 9a       	B[P5++] = R0;
ffa08f64:	20 e1 63 00 	R0 = 0x63 (X);		/*		R0=0x63( 99) */
ffa08f68:	28 9a       	B[P5++] = R0;
ffa08f6a:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa08f6e:	28 9a       	B[P5++] = R0;
ffa08f70:	20 e1 63 00 	R0 = 0x63 (X);		/*		R0=0x63( 99) */
ffa08f74:	28 9a       	B[P5++] = R0;
ffa08f76:	20 e1 65 00 	R0 = 0x65 (X);		/*		R0=0x65(101) */
ffa08f7a:	28 9a       	B[P5++] = R0;
ffa08f7c:	20 e1 66 00 	R0 = 0x66 (X);		/*		R0=0x66(102) */
ffa08f80:	28 9a       	B[P5++] = R0;
ffa08f82:	20 e1 67 00 	R0 = 0x67 (X);		/*		R0=0x67(103) */
ffa08f86:	28 9a       	B[P5++] = R0;
ffa08f88:	20 e1 66 00 	R0 = 0x66 (X);		/*		R0=0x66(102) */
ffa08f8c:	28 9a       	B[P5++] = R0;
ffa08f8e:	20 e1 68 00 	R0 = 0x68 (X);		/*		R0=0x68(104) */
ffa08f92:	28 9a       	B[P5++] = R0;
ffa08f94:	20 e1 69 00 	R0 = 0x69 (X);		/*		R0=0x69(105) */
ffa08f98:	28 9a       	B[P5++] = R0;
ffa08f9a:	20 e1 6a 00 	R0 = 0x6a (X);		/*		R0=0x6a(106) */
ffa08f9e:	28 9a       	B[P5++] = R0;
ffa08fa0:	20 e1 6b 00 	R0 = 0x6b (X);		/*		R0=0x6b(107) */
ffa08fa4:	28 9a       	B[P5++] = R0;
ffa08fa6:	20 e1 6c 00 	R0 = 0x6c (X);		/*		R0=0x6c(108) */
ffa08faa:	28 9a       	B[P5++] = R0;
ffa08fac:	20 e1 6d 00 	R0 = 0x6d (X);		/*		R0=0x6d(109) */
ffa08fb0:	28 9a       	B[P5++] = R0;
ffa08fb2:	20 e1 67 00 	R0 = 0x67 (X);		/*		R0=0x67(103) */
ffa08fb6:	28 9a       	B[P5++] = R0;
ffa08fb8:	20 e1 66 00 	R0 = 0x66 (X);		/*		R0=0x66(102) */
ffa08fbc:	28 9a       	B[P5++] = R0;
ffa08fbe:	20 e1 58 00 	R0 = 0x58 (X);		/*		R0=0x58( 88) */
ffa08fc2:	28 9a       	B[P5++] = R0;
ffa08fc4:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa08fc8:	28 9a       	B[P5++] = R0;
ffa08fca:	20 e1 5a 00 	R0 = 0x5a (X);		/*		R0=0x5a( 90) */
ffa08fce:	28 9a       	B[P5++] = R0;
ffa08fd0:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa08fd4:	28 9a       	B[P5++] = R0;
ffa08fd6:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa08fda:	28 9a       	B[P5++] = R0;
ffa08fdc:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa08fe0:	28 9a       	B[P5++] = R0;
ffa08fe2:	20 e1 6e 00 	R0 = 0x6e (X);		/*		R0=0x6e(110) */
ffa08fe6:	28 9a       	B[P5++] = R0;
ffa08fe8:	20 e1 6f 00 	R0 = 0x6f (X);		/*		R0=0x6f(111) */
ffa08fec:	28 9a       	B[P5++] = R0;
ffa08fee:	20 e1 70 00 	R0 = 0x70 (X);		/*		R0=0x70(112) */
ffa08ff2:	28 9a       	B[P5++] = R0;
ffa08ff4:	20 e1 60 00 	R0 = 0x60 (X);		/*		R0=0x60( 96) */
ffa08ff8:	28 9a       	B[P5++] = R0;
ffa08ffa:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa08ffe:	28 9a       	B[P5++] = R0;
ffa09000:	20 e1 60 00 	R0 = 0x60 (X);		/*		R0=0x60( 96) */
ffa09004:	28 9a       	B[P5++] = R0;
ffa09006:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa0900a:	28 9a       	B[P5++] = R0;
ffa0900c:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa09010:	28 9a       	B[P5++] = R0;
ffa09012:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa09016:	28 9a       	B[P5++] = R0;
ffa09018:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa0901c:	28 9a       	B[P5++] = R0;
ffa0901e:	20 e1 71 00 	R0 = 0x71 (X);		/*		R0=0x71(113) */
ffa09022:	28 9a       	B[P5++] = R0;
ffa09024:	20 e1 72 00 	R0 = 0x72 (X);		/*		R0=0x72(114) */
ffa09028:	28 9a       	B[P5++] = R0;
ffa0902a:	20 e1 73 00 	R0 = 0x73 (X);		/*		R0=0x73(115) */
ffa0902e:	28 9a       	B[P5++] = R0;
ffa09030:	20 e1 74 00 	R0 = 0x74 (X);		/*		R0=0x74(116) */
ffa09034:	28 9a       	B[P5++] = R0;
ffa09036:	20 e1 75 00 	R0 = 0x75 (X);		/*		R0=0x75(117) */
ffa0903a:	28 9a       	B[P5++] = R0;
ffa0903c:	20 e1 76 00 	R0 = 0x76 (X);		/*		R0=0x76(118) */
ffa09040:	28 9a       	B[P5++] = R0;
ffa09042:	20 e1 77 00 	R0 = 0x77 (X);		/*		R0=0x77(119) */
ffa09046:	28 9a       	B[P5++] = R0;
ffa09048:	20 e1 76 00 	R0 = 0x76 (X);		/*		R0=0x76(118) */
ffa0904c:	28 9a       	B[P5++] = R0;
ffa0904e:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa09052:	28 9a       	B[P5++] = R0;
ffa09054:	20 e1 79 00 	R0 = 0x79 (X);		/*		R0=0x79(121) */
ffa09058:	28 9a       	B[P5++] = R0;
ffa0905a:	20 e1 7a 00 	R0 = 0x7a (X);		/*		R0=0x7a(122) */
ffa0905e:	28 9a       	B[P5++] = R0;
ffa09060:	20 e1 79 00 	R0 = 0x79 (X);		/*		R0=0x79(121) */
ffa09064:	28 9a       	B[P5++] = R0;
ffa09066:	20 e1 7b 00 	R0 = 0x7b (X);		/*		R0=0x7b(123) */
ffa0906a:	28 9a       	B[P5++] = R0;
ffa0906c:	20 e1 7c 00 	R0 = 0x7c (X);		/*		R0=0x7c(124) */
ffa09070:	28 9a       	B[P5++] = R0;
ffa09072:	20 e1 7d 00 	R0 = 0x7d (X);		/*		R0=0x7d(125) */
ffa09076:	28 9a       	B[P5++] = R0;
ffa09078:	20 e1 76 00 	R0 = 0x76 (X);		/*		R0=0x76(118) */
ffa0907c:	28 9a       	B[P5++] = R0;
ffa0907e:	20 e1 7e 00 	R0 = 0x7e (X);		/*		R0=0x7e(126) */
ffa09082:	28 9a       	B[P5++] = R0;
ffa09084:	20 e1 7f 00 	R0 = 0x7f (X);		/*		R0=0x7f(127) */
ffa09088:	28 9a       	B[P5++] = R0;
ffa0908a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0908c:	28 9a       	B[P5++] = R0;
ffa0908e:	20 e1 7f 00 	R0 = 0x7f (X);		/*		R0=0x7f(127) */
ffa09092:	28 9a       	B[P5++] = R0;
ffa09094:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09096:	28 9a       	B[P5++] = R0;
ffa09098:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0909a:	28 9a       	B[P5++] = R0;
ffa0909c:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0909e:	28 9a       	B[P5++] = R0;
ffa090a0:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa090a2:	28 9a       	B[P5++] = R0;
ffa090a4:	28 60       	R0 = 0x5 (X);		/*		R0=0x5(  5) */
ffa090a6:	28 9a       	B[P5++] = R0;
ffa090a8:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa090aa:	28 9a       	B[P5++] = R0;
ffa090ac:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa090ae:	28 9a       	B[P5++] = R0;
ffa090b0:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa090b2:	28 9a       	B[P5++] = R0;
ffa090b4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa090b6:	28 9a       	B[P5++] = R0;
ffa090b8:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa090ba:	28 9a       	B[P5++] = R0;
ffa090bc:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa090be:	28 9a       	B[P5++] = R0;
ffa090c0:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa090c2:	28 9a       	B[P5++] = R0;
ffa090c4:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa090c6:	28 9a       	B[P5++] = R0;
ffa090c8:	48 60       	R0 = 0x9 (X);		/*		R0=0x9(  9) */
ffa090ca:	28 9a       	B[P5++] = R0;
ffa090cc:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa090ce:	28 9a       	B[P5++] = R0;
ffa090d0:	58 60       	R0 = 0xb (X);		/*		R0=0xb( 11) */
ffa090d2:	28 9a       	B[P5++] = R0;
ffa090d4:	60 60       	R0 = 0xc (X);		/*		R0=0xc( 12) */
ffa090d6:	28 9a       	B[P5++] = R0;
ffa090d8:	68 60       	R0 = 0xd (X);		/*		R0=0xd( 13) */
ffa090da:	28 9a       	B[P5++] = R0;
ffa090dc:	70 60       	R0 = 0xe (X);		/*		R0=0xe( 14) */
ffa090de:	28 9a       	B[P5++] = R0;
ffa090e0:	68 60       	R0 = 0xd (X);		/*		R0=0xd( 13) */
ffa090e2:	28 9a       	B[P5++] = R0;
ffa090e4:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa090e6:	28 9a       	B[P5++] = R0;
ffa090e8:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa090ea:	28 9a       	B[P5++] = R0;
ffa090ec:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa090ee:	28 9a       	B[P5++] = R0;
ffa090f0:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa090f2:	28 9a       	B[P5++] = R0;
ffa090f4:	60 60       	R0 = 0xc (X);		/*		R0=0xc( 12) */
ffa090f6:	28 9a       	B[P5++] = R0;
ffa090f8:	90 60       	R0 = 0x12 (X);		/*		R0=0x12( 18) */
ffa090fa:	28 9a       	B[P5++] = R0;
ffa090fc:	98 60       	R0 = 0x13 (X);		/*		R0=0x13( 19) */
ffa090fe:	28 9a       	B[P5++] = R0;
ffa09100:	a0 60       	R0 = 0x14 (X);		/*		R0=0x14( 20) */
ffa09102:	28 9a       	B[P5++] = R0;
ffa09104:	20 e1 7e 00 	R0 = 0x7e (X);		/*		R0=0x7e(126) */
ffa09108:	28 9a       	B[P5++] = R0;
ffa0910a:	20 e1 7f 00 	R0 = 0x7f (X);		/*		R0=0x7f(127) */
ffa0910e:	28 9a       	B[P5++] = R0;
ffa09110:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09112:	28 9a       	B[P5++] = R0;
ffa09114:	20 e1 7f 00 	R0 = 0x7f (X);		/*		R0=0x7f(127) */
ffa09118:	28 9a       	B[P5++] = R0;
ffa0911a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0911c:	28 9a       	B[P5++] = R0;
ffa0911e:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09120:	28 9a       	B[P5++] = R0;
ffa09122:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa09124:	28 9a       	B[P5++] = R0;
ffa09126:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09128:	28 9a       	B[P5++] = R0;
ffa0912a:	a8 60       	R0 = 0x15 (X);		/*		R0=0x15( 21) */
ffa0912c:	28 9a       	B[P5++] = R0;
ffa0912e:	b0 60       	R0 = 0x16 (X);		/*		R0=0x16( 22) */
ffa09130:	28 9a       	B[P5++] = R0;
ffa09132:	b8 60       	R0 = 0x17 (X);		/*		R0=0x17( 23) */
ffa09134:	28 9a       	B[P5++] = R0;
ffa09136:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa09138:	28 9a       	B[P5++] = R0;
ffa0913a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0913c:	28 9a       	B[P5++] = R0;
ffa0913e:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09140:	28 9a       	B[P5++] = R0;
ffa09142:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa09144:	28 9a       	B[P5++] = R0;
ffa09146:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09148:	28 9a       	B[P5++] = R0;
ffa0914a:	20 e1 4d 00 	R0 = 0x4d (X);		/*		R0=0x4d( 77) */
ffa0914e:	28 9a       	B[P5++] = R0;
ffa09150:	20 e1 4e 00 	R0 = 0x4e (X);		/*		R0=0x4e( 78) */
ffa09154:	28 9a       	B[P5++] = R0;
ffa09156:	20 e1 4f 00 	R0 = 0x4f (X);		/*		R0=0x4f( 79) */
ffa0915a:	28 9a       	B[P5++] = R0;
ffa0915c:	c0 60       	R0 = 0x18 (X);		/*		R0=0x18( 24) */
ffa0915e:	28 9a       	B[P5++] = R0;
ffa09160:	c8 60       	R0 = 0x19 (X);		/*		R0=0x19( 25) */
ffa09162:	28 9a       	B[P5++] = R0;
ffa09164:	d0 60       	R0 = 0x1a (X);		/*		R0=0x1a( 26) */
ffa09166:	28 9a       	B[P5++] = R0;
ffa09168:	20 e1 52 00 	R0 = 0x52 (X);		/*		R0=0x52( 82) */
ffa0916c:	28 9a       	B[P5++] = R0;
ffa0916e:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa09172:	28 9a       	B[P5++] = R0;
ffa09174:	20 e1 53 00 	R0 = 0x53 (X);		/*		R0=0x53( 83) */
ffa09178:	28 9a       	B[P5++] = R0;
ffa0917a:	20 e1 54 00 	R0 = 0x54 (X);		/*		R0=0x54( 84) */
ffa0917e:	28 9a       	B[P5++] = R0;
ffa09180:	20 e1 55 00 	R0 = 0x55 (X);		/*		R0=0x55( 85) */
ffa09184:	28 9a       	B[P5++] = R0;
ffa09186:	20 e1 54 00 	R0 = 0x54 (X);		/*		R0=0x54( 84) */
ffa0918a:	28 9a       	B[P5++] = R0;
ffa0918c:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa09190:	28 9a       	B[P5++] = R0;
ffa09192:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa09196:	28 9a       	B[P5++] = R0;
ffa09198:	d8 60       	R0 = 0x1b (X);		/*		R0=0x1b( 27) */
ffa0919a:	28 9a       	B[P5++] = R0;
ffa0919c:	e0 60       	R0 = 0x1c (X);		/*		R0=0x1c( 28) */
ffa0919e:	28 9a       	B[P5++] = R0;
ffa091a0:	e8 60       	R0 = 0x1d (X);		/*		R0=0x1d( 29) */
ffa091a2:	28 9a       	B[P5++] = R0;
ffa091a4:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa091a8:	28 9a       	B[P5++] = R0;
ffa091aa:	20 e1 5a 00 	R0 = 0x5a (X);		/*		R0=0x5a( 90) */
ffa091ae:	28 9a       	B[P5++] = R0;
ffa091b0:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa091b4:	28 9a       	B[P5++] = R0;
ffa091b6:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa091ba:	28 9a       	B[P5++] = R0;
ffa091bc:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa091c0:	28 9a       	B[P5++] = R0;
ffa091c2:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa091c6:	28 9a       	B[P5++] = R0;
ffa091c8:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa091cc:	28 9a       	B[P5++] = R0;
ffa091ce:	20 e1 5f 00 	R0 = 0x5f (X);		/*		R0=0x5f( 95) */
ffa091d2:	28 9a       	B[P5++] = R0;
ffa091d4:	f0 60       	R0 = 0x1e (X);		/*		R0=0x1e( 30) */
ffa091d6:	28 9a       	B[P5++] = R0;
ffa091d8:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa091da:	28 9a       	B[P5++] = R0;
ffa091dc:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa091de:	28 9a       	B[P5++] = R0;
ffa091e0:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa091e4:	28 9a       	B[P5++] = R0;
ffa091e6:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa091ea:	28 9a       	B[P5++] = R0;
ffa091ec:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa091f0:	28 9a       	B[P5++] = R0;
ffa091f2:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa091f6:	28 9a       	B[P5++] = R0;
ffa091f8:	20 e1 62 00 	R0 = 0x62 (X);		/*		R0=0x62( 98) */
ffa091fc:	28 9a       	B[P5++] = R0;
ffa091fe:	20 e1 63 00 	R0 = 0x63 (X);		/*		R0=0x63( 99) */
ffa09202:	28 9a       	B[P5++] = R0;
ffa09204:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa09208:	28 9a       	B[P5++] = R0;
ffa0920a:	20 e1 63 00 	R0 = 0x63 (X);		/*		R0=0x63( 99) */
ffa0920e:	28 9a       	B[P5++] = R0;
ffa09210:	08 61       	R0 = 0x21 (X);		/*		R0=0x21( 33) */
ffa09212:	28 9a       	B[P5++] = R0;
ffa09214:	10 61       	R0 = 0x22 (X);		/*		R0=0x22( 34) */
ffa09216:	28 9a       	B[P5++] = R0;
ffa09218:	18 61       	R0 = 0x23 (X);		/*		R0=0x23( 35) */
ffa0921a:	28 9a       	B[P5++] = R0;
ffa0921c:	20 e1 66 00 	R0 = 0x66 (X);		/*		R0=0x66(102) */
ffa09220:	28 9a       	B[P5++] = R0;
ffa09222:	20 e1 68 00 	R0 = 0x68 (X);		/*		R0=0x68(104) */
ffa09226:	28 9a       	B[P5++] = R0;
ffa09228:	20 e1 69 00 	R0 = 0x69 (X);		/*		R0=0x69(105) */
ffa0922c:	28 9a       	B[P5++] = R0;
ffa0922e:	20 e1 6a 00 	R0 = 0x6a (X);		/*		R0=0x6a(106) */
ffa09232:	28 9a       	B[P5++] = R0;
ffa09234:	20 e1 69 00 	R0 = 0x69 (X);		/*		R0=0x69(105) */
ffa09238:	28 9a       	B[P5++] = R0;
ffa0923a:	20 e1 65 00 	R0 = 0x65 (X);		/*		R0=0x65(101) */
ffa0923e:	28 9a       	B[P5++] = R0;
ffa09240:	20 e1 66 00 	R0 = 0x66 (X);		/*		R0=0x66(102) */
ffa09244:	28 9a       	B[P5++] = R0;
ffa09246:	20 e1 67 00 	R0 = 0x67 (X);		/*		R0=0x67(103) */
ffa0924a:	28 9a       	B[P5++] = R0;
ffa0924c:	20 61       	R0 = 0x24 (X);		/*		R0=0x24( 36) */
ffa0924e:	28 9a       	B[P5++] = R0;
ffa09250:	28 61       	R0 = 0x25 (X);		/*		R0=0x25( 37) */
ffa09252:	28 9a       	B[P5++] = R0;
ffa09254:	30 61       	R0 = 0x26 (X);		/*		R0=0x26( 38) */
ffa09256:	28 9a       	B[P5++] = R0;
ffa09258:	20 e1 5a 00 	R0 = 0x5a (X);		/*		R0=0x5a( 90) */
ffa0925c:	28 9a       	B[P5++] = R0;
ffa0925e:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa09262:	28 9a       	B[P5++] = R0;
ffa09264:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa09268:	28 9a       	B[P5++] = R0;
ffa0926a:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa0926e:	28 9a       	B[P5++] = R0;
ffa09270:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa09274:	28 9a       	B[P5++] = R0;
ffa09276:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa0927a:	28 9a       	B[P5++] = R0;
ffa0927c:	20 e1 5f 00 	R0 = 0x5f (X);		/*		R0=0x5f( 95) */
ffa09280:	28 9a       	B[P5++] = R0;
ffa09282:	20 e1 60 00 	R0 = 0x60 (X);		/*		R0=0x60( 96) */
ffa09286:	28 9a       	B[P5++] = R0;
ffa09288:	38 61       	R0 = 0x27 (X);		/*		R0=0x27( 39) */
ffa0928a:	28 9a       	B[P5++] = R0;
ffa0928c:	40 61       	R0 = 0x28 (X);		/*		R0=0x28( 40) */
ffa0928e:	28 9a       	B[P5++] = R0;
ffa09290:	48 61       	R0 = 0x29 (X);		/*		R0=0x29( 41) */
ffa09292:	28 9a       	B[P5++] = R0;
ffa09294:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa09298:	28 9a       	B[P5++] = R0;
ffa0929a:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa0929e:	28 9a       	B[P5++] = R0;
ffa092a0:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa092a4:	28 9a       	B[P5++] = R0;
ffa092a6:	0d e1 00 65 	P5.L = 0x6500;		/* (25856)	P5=0xff806500 */
ffa092aa:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff806500 */
ffa092ae:	00 e1 00 00 	R0.L = 0x0;		/* (  0)	R0=0x0(  0) */
ffa092b2:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x0(  0) */
ffa092b6:	28 92       	[P5++] = R0;
ffa092b8:	00 e1 80 00 	R0.L = 0x80;		/* (128)	R0=0x80(128) */
ffa092bc:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x80(128) */
ffa092c0:	28 92       	[P5++] = R0;
ffa092c2:	00 e1 00 80 	R0.L = 0x8000;		/* (-32768)	R0=0x8000(32768) */
ffa092c6:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x8000(32768) */
ffa092ca:	28 92       	[P5++] = R0;
ffa092cc:	00 e1 80 80 	R0.L = 0x8080;		/* (-32640)	R0=0x8080(32896) */
ffa092d0:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x8080(32896) */
ffa092d4:	28 92       	[P5++] = R0;
ffa092d6:	00 e1 00 00 	R0.L = 0x0;		/* (  0)	R0=0x0(  0) */
ffa092da:	40 e1 80 00 	R0.H = 0x80;		/* (128)	R0=0x800000(8388608) */
ffa092de:	28 92       	[P5++] = R0;
ffa092e0:	00 e1 80 00 	R0.L = 0x80;		/* (128)	R0=0x800080(8388736) */
ffa092e4:	40 e1 80 00 	R0.H = 0x80;		/* (128)	R0=0x800080(8388736) */
ffa092e8:	28 92       	[P5++] = R0;
ffa092ea:	00 e1 00 80 	R0.L = 0x8000;		/* (-32768)	R0=0x808000(8421376) */
ffa092ee:	40 e1 80 00 	R0.H = 0x80;		/* (128)	R0=0x808000(8421376) */
ffa092f2:	28 92       	[P5++] = R0;
ffa092f4:	00 e1 80 80 	R0.L = 0x8080;		/* (-32640)	R0=0x808080(8421504) */
ffa092f8:	40 e1 80 00 	R0.H = 0x80;		/* (128)	R0=0x808080(8421504) */
ffa092fc:	28 92       	[P5++] = R0;
ffa092fe:	00 e1 00 00 	R0.L = 0x0;		/* (  0)	R0=0x800000(8388608) */
ffa09302:	40 e1 00 80 	R0.H = 0x8000;		/* (-32768)	R0=0x80000000(-2147483648) */
ffa09306:	28 92       	[P5++] = R0;
ffa09308:	00 e1 80 00 	R0.L = 0x80;		/* (128)	R0=0x80000080(-2147483520) */
ffa0930c:	40 e1 00 80 	R0.H = 0x8000;		/* (-32768)	R0=0x80000080(-2147483520) */
ffa09310:	28 92       	[P5++] = R0;
ffa09312:	00 e1 00 80 	R0.L = 0x8000;		/* (-32768)	R0=0x80008000(-2147450880) */
ffa09316:	40 e1 00 80 	R0.H = 0x8000;		/* (-32768)	R0=0x80008000(-2147450880) */
ffa0931a:	28 92       	[P5++] = R0;
ffa0931c:	00 e1 80 80 	R0.L = 0x8080;		/* (-32640)	R0=0x80008080(-2147450752) */
ffa09320:	40 e1 00 80 	R0.H = 0x8000;		/* (-32768)	R0=0x80008080(-2147450752) */
ffa09324:	28 92       	[P5++] = R0;
ffa09326:	00 e1 00 00 	R0.L = 0x0;		/* (  0)	R0=0x80000000(-2147483648) */
ffa0932a:	40 e1 80 80 	R0.H = 0x8080;		/* (-32640)	R0=0x80800000(-2139095040) */
ffa0932e:	28 92       	[P5++] = R0;
ffa09330:	00 e1 80 00 	R0.L = 0x80;		/* (128)	R0=0x80800080(-2139094912) */
ffa09334:	40 e1 80 80 	R0.H = 0x8080;		/* (-32640)	R0=0x80800080(-2139094912) */
ffa09338:	28 92       	[P5++] = R0;
ffa0933a:	00 e1 00 80 	R0.L = 0x8000;		/* (-32768)	R0=0x80808000(-2139062272) */
ffa0933e:	40 e1 80 80 	R0.H = 0x8080;		/* (-32640)	R0=0x80808000(-2139062272) */
ffa09342:	28 92       	[P5++] = R0;
ffa09344:	00 e1 80 80 	R0.L = 0x8080;		/* (-32640)	R0=0x80808080(-2139062144) */
ffa09348:	40 e1 80 80 	R0.H = 0x8080;		/* (-32640)	R0=0x80808080(-2139062144) */
ffa0934c:	28 92       	[P5++] = R0;
ffa0934e:	10 00       	RTS;

ffa09350 <___divsi3>:
ffa09350:	c8 58       	R3 = R0 ^ R1;
ffa09352:	07 c4 00 80 	R0 = ABS R0;
ffa09356:	18 03       	CC = V;
ffa09358:	82 c6 fb c7 	R3 = ROT R3 BY -0x1;
ffa0935c:	07 c4 08 82 	R1 = ABS R1;
ffa09360:	88 08       	CC = R0 < R1;
ffa09362:	76 18       	IF CC JUMP 0xffa0944e <___divsi3+0xfe>;
ffa09364:	82 c6 89 85 	R2 = R1 >> 0xf;
ffa09368:	0a 02       	CC = R2;
ffa0936a:	1e 18       	IF CC JUMP 0xffa093a6 <___divsi3+0x56>;
ffa0936c:	82 c6 81 84 	R2 = R1 << 0x10;
ffa09370:	02 09       	CC = R2 <= R0;
ffa09372:	1a 18       	IF CC JUMP 0xffa093a6 <___divsi3+0x56>;
ffa09374:	48 42       	DIVS (R0, R1);
ffa09376:	08 42       	DIVQ (R0, R1);
ffa09378:	08 42       	DIVQ (R0, R1);
ffa0937a:	08 42       	DIVQ (R0, R1);
ffa0937c:	08 42       	DIVQ (R0, R1);
ffa0937e:	08 42       	DIVQ (R0, R1);
ffa09380:	08 42       	DIVQ (R0, R1);
ffa09382:	08 42       	DIVQ (R0, R1);
ffa09384:	08 42       	DIVQ (R0, R1);
ffa09386:	08 42       	DIVQ (R0, R1);
ffa09388:	08 42       	DIVQ (R0, R1);
ffa0938a:	08 42       	DIVQ (R0, R1);
ffa0938c:	08 42       	DIVQ (R0, R1);
ffa0938e:	08 42       	DIVQ (R0, R1);
ffa09390:	08 42       	DIVQ (R0, R1);
ffa09392:	08 42       	DIVQ (R0, R1);
ffa09394:	08 42       	DIVQ (R0, R1);
ffa09396:	c0 42       	R0 = R0.L (Z);
ffa09398:	82 c6 0b 83 	R1 = R3 >> 0x1f;
ffa0939c:	08 50       	R0 = R0 + R1;
ffa0939e:	81 43       	R1 = -R0;
ffa093a0:	f3 49       	CC = BITTST (R3, 0x1e);		/* bit 30 */
ffa093a2:	01 07       	IF CC R0 = R1;
ffa093a4:	10 00       	RTS;
ffa093a6:	01 0c       	CC = R1 == 0x0;
ffa093a8:	34 18       	IF CC JUMP 0xffa09410 <___divsi3+0xc0>;
ffa093aa:	00 0c       	CC = R0 == 0x0;
ffa093ac:	3f 18       	IF CC JUMP 0xffa0942a <___divsi3+0xda>;
ffa093ae:	08 08       	CC = R0 == R1;
ffa093b0:	30 18       	IF CC JUMP 0xffa09410 <___divsi3+0xc0>;
ffa093b2:	09 0c       	CC = R1 == 0x1;
ffa093b4:	2e 18       	IF CC JUMP 0xffa09410 <___divsi3+0xc0>;
ffa093b6:	06 c6 01 c4 	R2.L = ONES R1;
ffa093ba:	d2 42       	R2 = R2.L (Z);
ffa093bc:	0a 0c       	CC = R2 == 0x1;
ffa093be:	37 18       	IF CC JUMP 0xffa0942c <___divsi3+0xdc>;
ffa093c0:	f9 68       	P1 = 0x1f (X);		/*		P1=0x1f( 31) */
ffa093c2:	68 05       	[--SP] = (R7:5);
ffa093c4:	8a 43       	R2 = -R1;
ffa093c6:	42 01       	[--SP] = R2;
ffa093c8:	82 c6 08 84 	R2 = R0 << 0x1;
ffa093cc:	88 59       	R6 = R0 ^ R1;
ffa093ce:	82 c6 0e 8b 	R5 = R6 >> 0x1f;
ffa093d2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa093d4:	aa 56       	R2 = R2 | R5;
ffa093d6:	88 59       	R6 = R0 ^ R1;
ffa093d8:	a2 e0 12 10 	LSETUP(0xffa093dc <___divsi3+0x8c>, 0xffa093fc <___divsi3+0xac>) LC0 = P1;
ffa093dc:	82 c6 0a 8f 	R7 = R2 >> 0x1f;
ffa093e0:	82 c6 0a 84 	R2 = R2 << 0x1;
ffa093e4:	82 ce 08 80 	R0 = R0 << 0x1 || R5 = [SP] || NOP;
ffa093e8:	35 91 00 00 
ffa093ec:	38 56       	R0 = R0 | R7;
ffa093ee:	86 0c       	CC = R6 < 0x0;
ffa093f0:	29 07       	IF CC R5 = R1;
ffa093f2:	28 50       	R0 = R0 + R5;
ffa093f4:	88 59       	R6 = R0 ^ R1;
ffa093f6:	82 c6 0e 8b 	R5 = R6 >> 0x1f;
ffa093fa:	05 4b       	BITTGL (R5, 0x0);		/* bit  0 */
ffa093fc:	aa 50       	R2 = R2 + R5;
ffa093fe:	82 c6 0b 83 	R1 = R3 >> 0x1f;
ffa09402:	8a 50       	R2 = R2 + R1;
ffa09404:	f3 49       	CC = BITTST (R3, 0x1e);		/* bit 30 */
ffa09406:	90 43       	R0 = -R2;
ffa09408:	02 06       	IF !CC R0 = R2;
ffa0940a:	26 6c       	SP += 0x4;		/* (  4) */
ffa0940c:	28 05       	(R7:5) = [SP++];
ffa0940e:	10 00       	RTS;
ffa09410:	01 0c       	CC = R1 == 0x0;
ffa09412:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa09414:	0a 4e       	R2 >>= 0x1;
ffa09416:	06 18       	IF CC JUMP 0xffa09422 <___divsi3+0xd2>;
ffa09418:	08 08       	CC = R0 == R1;
ffa0941a:	82 e1 01 00 	R2 = 0x1 (Z);		/*		R2=0x1(  1) */
ffa0941e:	02 18       	IF CC JUMP 0xffa09422 <___divsi3+0xd2>;
ffa09420:	10 30       	R2 = R0;
ffa09422:	02 30       	R0 = R2;
ffa09424:	92 43       	R2 = -R2;
ffa09426:	f3 49       	CC = BITTST (R3, 0x1e);		/* bit 30 */
ffa09428:	02 07       	IF CC R0 = R2;
ffa0942a:	10 00       	RTS;
ffa0942c:	82 c6 08 85 	R2 = R0 >> 0x1f;
ffa09430:	81 0c       	CC = R1 < 0x0;
ffa09432:	f8 1b       	IF CC JUMP 0xffa09422 <___divsi3+0xd2>;
ffa09434:	05 c6 01 02 	R1.L = SIGNBITS R1;
ffa09438:	c9 42       	R1 = R1.L (Z);
ffa0943a:	11 67       	R1 += -0x1e;		/* (-30) */
ffa0943c:	02 c6 08 80 	R0 = LSHIFT R0 BY R1.L;
ffa09440:	82 c6 0b 83 	R1 = R3 >> 0x1f;
ffa09444:	08 50       	R0 = R0 + R1;
ffa09446:	82 43       	R2 = -R0;
ffa09448:	f3 49       	CC = BITTST (R3, 0x1e);		/* bit 30 */
ffa0944a:	02 07       	IF CC R0 = R2;
ffa0944c:	10 00       	RTS;
ffa0944e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09450:	10 00       	RTS;
	...

ffa09454 <_NOP>:
ffa09454:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa09458:	00 00       	NOP;
ffa0945a:	01 e8 00 00 	UNLINK;
ffa0945e:	10 00       	RTS;

ffa09460 <_cli>:
ffa09460:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa09464:	30 00       	CLI R0;
ffa09466:	f0 bb       	[FP -0x4] = R0;
ffa09468:	f0 b9       	R0 = [FP -0x4];
ffa0946a:	e0 bb       	[FP -0x8] = R0;
ffa0946c:	e0 b9       	R0 = [FP -0x8];
ffa0946e:	01 e8 00 00 	UNLINK;
ffa09472:	10 00       	RTS;

ffa09474 <_sti>:
ffa09474:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa09478:	b8 b0       	[FP + 0x8] = R0;
ffa0947a:	b8 a0       	R0 = [FP + 0x8];
ffa0947c:	40 00       	STI R0;
ffa0947e:	01 e8 00 00 	UNLINK;
ffa09482:	10 00       	RTS;

ffa09484 <_idle>:
ffa09484:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa09488:	20 00       	IDLE;
ffa0948a:	01 e8 00 00 	UNLINK;
ffa0948e:	10 00       	RTS;

ffa09490 <_prefetch>:
ffa09490:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa09494:	b8 b0       	[FP + 0x8] = R0;
ffa09496:	ba ac       	P2 = [FP + 0x8];
ffa09498:	42 02       	PREFETCH[P2];
ffa0949a:	01 e8 00 00 	UNLINK;
ffa0949e:	10 00       	RTS;

ffa094a0 <_prefetchmodup>:
ffa094a0:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa094a4:	b8 b0       	[FP + 0x8] = R0;
ffa094a6:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa094a8:	47 30       	R0 = FP;
ffa094aa:	40 64       	R0 += 0x8;		/* (  8) */
ffa094ac:	f0 bb       	[FP -0x4] = R0;
ffa094ae:	f0 b9       	R0 = [FP -0x4];
ffa094b0:	10 32       	P2 = R0;
ffa094b2:	62 02       	PREFETCH[P2++];
ffa094b4:	fa bb       	[FP -0x4] = P2;
ffa094b6:	f0 b9       	R0 = [FP -0x4];
ffa094b8:	e0 bb       	[FP -0x8] = R0;
ffa094ba:	e0 b9       	R0 = [FP -0x8];
ffa094bc:	01 e8 00 00 	UNLINK;
ffa094c0:	10 00       	RTS;
	...

ffa094c4 <_flushinv>:
ffa094c4:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa094c8:	b8 b0       	[FP + 0x8] = R0;
ffa094ca:	ba ac       	P2 = [FP + 0x8];
ffa094cc:	4a 02       	FLUSHINV[P2];
ffa094ce:	01 e8 00 00 	UNLINK;
ffa094d2:	10 00       	RTS;

ffa094d4 <_flushinvmodup>:
ffa094d4:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa094d8:	b8 b0       	[FP + 0x8] = R0;
ffa094da:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa094dc:	47 30       	R0 = FP;
ffa094de:	40 64       	R0 += 0x8;		/* (  8) */
ffa094e0:	f0 bb       	[FP -0x4] = R0;
ffa094e2:	f0 b9       	R0 = [FP -0x4];
ffa094e4:	10 32       	P2 = R0;
ffa094e6:	6a 02       	FLUSHINV[P2++];
ffa094e8:	fa bb       	[FP -0x4] = P2;
ffa094ea:	f0 b9       	R0 = [FP -0x4];
ffa094ec:	e0 bb       	[FP -0x8] = R0;
ffa094ee:	e0 b9       	R0 = [FP -0x8];
ffa094f0:	01 e8 00 00 	UNLINK;
ffa094f4:	10 00       	RTS;
	...

ffa094f8 <_flush>:
ffa094f8:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa094fc:	b8 b0       	[FP + 0x8] = R0;
ffa094fe:	ba ac       	P2 = [FP + 0x8];
ffa09500:	52 02       	FLUSH[P2];
ffa09502:	01 e8 00 00 	UNLINK;
ffa09506:	10 00       	RTS;

ffa09508 <_flushmodup>:
ffa09508:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa0950c:	b8 b0       	[FP + 0x8] = R0;
ffa0950e:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa09510:	47 30       	R0 = FP;
ffa09512:	40 64       	R0 += 0x8;		/* (  8) */
ffa09514:	f0 bb       	[FP -0x4] = R0;
ffa09516:	f0 b9       	R0 = [FP -0x4];
ffa09518:	10 32       	P2 = R0;
ffa0951a:	72 02       	FLUSH[P2++];
ffa0951c:	fa bb       	[FP -0x4] = P2;
ffa0951e:	f0 b9       	R0 = [FP -0x4];
ffa09520:	e0 bb       	[FP -0x8] = R0;
ffa09522:	e0 b9       	R0 = [FP -0x8];
ffa09524:	01 e8 00 00 	UNLINK;
ffa09528:	10 00       	RTS;
	...

ffa0952c <_iflush>:
ffa0952c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa09530:	b8 b0       	[FP + 0x8] = R0;
ffa09532:	ba ac       	P2 = [FP + 0x8];
ffa09534:	5a 02       	IFLUSH[P2];
ffa09536:	01 e8 00 00 	UNLINK;
ffa0953a:	10 00       	RTS;

ffa0953c <_iflushmodup>:
ffa0953c:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa09540:	b8 b0       	[FP + 0x8] = R0;
ffa09542:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa09544:	47 30       	R0 = FP;
ffa09546:	40 64       	R0 += 0x8;		/* (  8) */
ffa09548:	f0 bb       	[FP -0x4] = R0;
ffa0954a:	f0 b9       	R0 = [FP -0x4];
ffa0954c:	10 32       	P2 = R0;
ffa0954e:	7a 02       	IFLUSH[P2++];
ffa09550:	fa bb       	[FP -0x4] = P2;
ffa09552:	f0 b9       	R0 = [FP -0x4];
ffa09554:	e0 bb       	[FP -0x8] = R0;
ffa09556:	e0 b9       	R0 = [FP -0x8];
ffa09558:	01 e8 00 00 	UNLINK;
ffa0955c:	10 00       	RTS;
	...

ffa09560 <_csync>:
ffa09560:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa09564:	23 00       	CSYNC;
ffa09566:	01 e8 00 00 	UNLINK;
ffa0956a:	10 00       	RTS;

ffa0956c <_ssync>:
ffa0956c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa09570:	24 00       	SSYNC;
ffa09572:	01 e8 00 00 	UNLINK;
ffa09576:	10 00       	RTS;

ffa09578 <_exception_report>:
ffa09578:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0957c:	b8 b0       	[FP + 0x8] = R0;
ffa0957e:	f9 b0       	[FP + 0xc] = R1;
ffa09580:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc07000(-4165632) */
ffa09584:	0a e1 00 07 	P2.L = 0x700;		/* (1792)	P2=0xffc00700(-4192512) */
ffa09588:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0958a:	10 97       	W[P2] = R0;
ffa0958c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00700(-4192512) */
ffa09590:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa09594:	20 e1 00 01 	R0 = 0x100 (X);		/*		R0=0x100(256) */
ffa09598:	10 97       	W[P2] = R0;
ffa0959a:	24 00       	SSYNC;
ffa0959c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa095a0:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa095a4:	20 e1 00 01 	R0 = 0x100 (X);		/*		R0=0x100(256) */
ffa095a8:	10 97       	W[P2] = R0;
ffa095aa:	24 00       	SSYNC;
ffa095ac:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa095ae:	d0 bb       	[FP -0xc] = R0;
ffa095b0:	b8 a0       	R0 = [FP + 0x8];
ffa095b2:	e0 bb       	[FP -0x8] = R0;
ffa095b4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa095b6:	f0 bb       	[FP -0x4] = R0;
ffa095b8:	27 20       	JUMP.S 0xffa09606 <_exception_report+0x8e>;
ffa095ba:	d0 b9       	R0 = [FP -0xc];
ffa095bc:	e1 b9       	R1 = [FP -0x8];
ffa095be:	08 54       	R0 = R0 & R1;
ffa095c0:	00 0c       	CC = R0 == 0x0;
ffa095c2:	08 18       	IF CC JUMP 0xffa095d2 <_exception_report+0x5a>;
ffa095c4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa095c8:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa095cc:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa095ce:	10 97       	W[P2] = R0;
ffa095d0:	07 20       	JUMP.S 0xffa095de <_exception_report+0x66>;
ffa095d2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa095d6:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa095da:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa095dc:	10 97       	W[P2] = R0;
ffa095de:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa095e2:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa095e6:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa095e8:	10 97       	W[P2] = R0;
ffa095ea:	24 00       	SSYNC;
ffa095ec:	d0 b9       	R0 = [FP -0xc];
ffa095ee:	08 4e       	R0 >>= 0x1;
ffa095f0:	d0 bb       	[FP -0xc] = R0;
ffa095f2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa095f6:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa095fa:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa095fc:	10 97       	W[P2] = R0;
ffa095fe:	24 00       	SSYNC;
ffa09600:	f0 b9       	R0 = [FP -0x4];
ffa09602:	08 64       	R0 += 0x1;		/* (  1) */
ffa09604:	f0 bb       	[FP -0x4] = R0;
ffa09606:	f0 b9       	R0 = [FP -0x4];
ffa09608:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa0960a:	08 09       	CC = R0 <= R1;
ffa0960c:	d7 1b       	IF CC JUMP 0xffa095ba <_exception_report+0x42>;
ffa0960e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa09612:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa09616:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09618:	10 97       	W[P2] = R0;
ffa0961a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0961c:	f0 bb       	[FP -0x4] = R0;
ffa0961e:	06 20       	JUMP.S 0xffa0962a <_exception_report+0xb2>;
ffa09620:	00 00       	NOP;
ffa09622:	00 00       	NOP;
ffa09624:	f0 b9       	R0 = [FP -0x4];
ffa09626:	08 64       	R0 += 0x1;		/* (  1) */
ffa09628:	f0 bb       	[FP -0x4] = R0;
ffa0962a:	f0 b9       	R0 = [FP -0x4];
ffa0962c:	e9 60       	R1 = 0x1d (X);		/*		R1=0x1d( 29) */
ffa0962e:	08 09       	CC = R0 <= R1;
ffa09630:	f8 1b       	IF CC JUMP 0xffa09620 <_exception_report+0xa8>;
ffa09632:	80 e1 00 80 	R0 = 0x8000 (Z);		/*		R0=0x8000(32768) */
ffa09636:	d0 bb       	[FP -0xc] = R0;
ffa09638:	f8 a0       	R0 = [FP + 0xc];
ffa0963a:	e0 bb       	[FP -0x8] = R0;
ffa0963c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0963e:	f0 bb       	[FP -0x4] = R0;
ffa09640:	44 20       	JUMP.S 0xffa096c8 <_exception_report+0x150>;
ffa09642:	d0 b9       	R0 = [FP -0xc];
ffa09644:	e1 b9       	R1 = [FP -0x8];
ffa09646:	08 54       	R0 = R0 & R1;
ffa09648:	00 0c       	CC = R0 == 0x0;
ffa0964a:	08 18       	IF CC JUMP 0xffa0965a <_exception_report+0xe2>;
ffa0964c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa09650:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa09654:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09656:	10 97       	W[P2] = R0;
ffa09658:	07 20       	JUMP.S 0xffa09666 <_exception_report+0xee>;
ffa0965a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0965e:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa09662:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09664:	10 97       	W[P2] = R0;
ffa09666:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0966a:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa0966e:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09670:	10 97       	W[P2] = R0;
ffa09672:	24 00       	SSYNC;
ffa09674:	d0 b9       	R0 = [FP -0xc];
ffa09676:	08 4e       	R0 >>= 0x1;
ffa09678:	d0 bb       	[FP -0xc] = R0;
ffa0967a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa0967e:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa09682:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09684:	10 97       	W[P2] = R0;
ffa09686:	24 00       	SSYNC;
ffa09688:	f1 b9       	R1 = [FP -0x4];
ffa0968a:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0968c:	01 54       	R0 = R1 & R0;
ffa0968e:	18 0c       	CC = R0 == 0x3;
ffa09690:	19 10       	IF !CC JUMP 0xffa096c2 <_exception_report+0x14a>;
	...
ffa096c2:	f0 b9       	R0 = [FP -0x4];
ffa096c4:	08 64       	R0 += 0x1;		/* (  1) */
ffa096c6:	f0 bb       	[FP -0x4] = R0;
ffa096c8:	f0 b9       	R0 = [FP -0x4];
ffa096ca:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa096cc:	08 09       	CC = R0 <= R1;
ffa096ce:	ba 1b       	IF CC JUMP 0xffa09642 <_exception_report+0xca>;
ffa096d0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa096d4:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa096d8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa096da:	10 97       	W[P2] = R0;
ffa096dc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa096de:	f0 bb       	[FP -0x4] = R0;
ffa096e0:	06 20       	JUMP.S 0xffa096ec <_exception_report+0x174>;
ffa096e2:	00 00       	NOP;
ffa096e4:	00 00       	NOP;
ffa096e6:	f0 b9       	R0 = [FP -0x4];
ffa096e8:	08 64       	R0 += 0x1;		/* (  1) */
ffa096ea:	f0 bb       	[FP -0x4] = R0;
ffa096ec:	f0 b9       	R0 = [FP -0x4];
ffa096ee:	21 e1 2b 01 	R1 = 0x12b (X);		/*		R1=0x12b(299) */
ffa096f2:	08 09       	CC = R0 <= R1;
ffa096f4:	f7 1b       	IF CC JUMP 0xffa096e2 <_exception_report+0x16a>;
ffa096f6:	4b 2f       	JUMP.S 0xffa0958c <_exception_report+0x14>;

ffa096f8 <_nmi_report>:
ffa096f8:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa096fc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa096fe:	f0 bb       	[FP -0x4] = R0;
ffa09700:	06 20       	JUMP.S 0xffa0970c <_nmi_report+0x14>;
ffa09702:	00 00       	NOP;
ffa09704:	00 00       	NOP;
ffa09706:	f0 b9       	R0 = [FP -0x4];
ffa09708:	08 64       	R0 += 0x1;		/* (  1) */
ffa0970a:	f0 bb       	[FP -0x4] = R0;
ffa0970c:	f0 b9       	R0 = [FP -0x4];
ffa0970e:	21 e1 2b 01 	R1 = 0x12b (X);		/*		R1=0x12b(299) */
ffa09712:	08 09       	CC = R0 <= R1;
ffa09714:	f7 1b       	IF CC JUMP 0xffa09702 <_nmi_report+0xa>;
ffa09716:	01 e8 00 00 	UNLINK;
ffa0971a:	10 00       	RTS;

ffa0971c <_main>:
ffa0971c:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa09720:	4a e1 e0 ff 	P2.H = 0xffe0;		/* (-32)	P2=0xffe00704(-2095356) */
ffa09724:	0a e1 04 10 	P2.L = 0x1004;		/* (4100)	P2=0xffe01004(-2093052) */
ffa09728:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0972a:	10 93       	[P2] = R0;
ffa0972c:	23 00       	CSYNC;
ffa0972e:	4a e1 e0 ff 	P2.H = 0xffe0;		/* (-32)	P2=0xffe01004(-2093052) */
ffa09732:	0a e1 04 00 	P2.L = 0x4;		/* (  4)	P2=0xffe00004(-2097148) */
ffa09736:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09738:	10 93       	[P2] = R0;
ffa0973a:	23 00       	CSYNC;
ffa0973c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00004(-4194300) */
ffa09740:	0a e1 40 07 	P2.L = 0x740;		/* (1856)	P2=0xffc00740(-4192448) */
ffa09744:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa09746:	10 97       	W[P2] = R0;
ffa09748:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc0001f(-4194273) */
ffa0974c:	09 e1 30 07 	P1.L = 0x730;		/* (1840)	P1=0xffc00730(-4192464) */
ffa09750:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00740(-4192448) */
ffa09754:	0a e1 40 07 	P2.L = 0x740;		/* (1856)	P2=0xffc00740(-4192448) */
ffa09758:	10 95       	R0 = W[P2] (Z);
ffa0975a:	c0 43       	R0 =~ R0;
ffa0975c:	08 97       	W[P1] = R0;
ffa0975e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00740(-4192448) */
ffa09762:	0a e1 00 07 	P2.L = 0x700;		/* (1792)	P2=0xffc00700(-4192512) */
ffa09766:	20 e1 87 01 	R0 = 0x187 (X);		/*		R0=0x187(391) */
ffa0976a:	10 97       	W[P2] = R0;
ffa0976c:	20 e1 7c 00 	R0 = 0x7c (X);		/*		R0=0x7c(124) */
ffa09770:	00 e3 ce 06 	CALL 0xffa0a50c <_radio_init>;
ffa09774:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00700(-4192512) */
ffa09778:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0977c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0977e:	10 97       	W[P2] = R0;
ffa09780:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa09784:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa09788:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa0978c:	10 97       	W[P2] = R0;
ffa0978e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09790:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa09794:	0a 20       	JUMP.S 0xffa097a8 <_main+0x8c>;
	...
ffa0979e:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa097a2:	08 64       	R0 += 0x1;		/* (  1) */
ffa097a4:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa097a8:	78 e4 fe ff 	R0 = W[FP + -0x4] (Z);
ffa097ac:	21 e1 e7 03 	R1 = 0x3e7 (X);		/*		R1=0x3e7(999) */
ffa097b0:	08 0a       	CC = R0 <= R1 (IU);
ffa097b2:	f2 1b       	IF CC JUMP 0xffa09796 <_main+0x7a>;
ffa097b4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa097b8:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa097bc:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa097c0:	10 97       	W[P2] = R0;
ffa097c2:	00 e3 59 06 	CALL 0xffa0a474 <_radio_set_tx>;
ffa097c6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa097ca:	0a e1 28 08 	P2.L = 0x828;		/* (2088)	P2=0xffc00828(-4192216) */
ffa097ce:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa097d0:	10 97       	W[P2] = R0;
ffa097d2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00828(-4192216) */
ffa097d6:	0a e1 2c 08 	P2.L = 0x82c;		/* (2092)	P2=0xffc0082c(-4192212) */
ffa097da:	98 60       	R0 = 0x13 (X);		/*		R0=0x13( 19) */
ffa097dc:	10 97       	W[P2] = R0;
ffa097de:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0082c(-4192212) */
ffa097e2:	0a e1 24 08 	P2.L = 0x824;		/* (2084)	P2=0xffc00824(-4192220) */
ffa097e6:	20 e1 0f 01 	R0 = 0x10f (X);		/*		R0=0x10f(271) */
ffa097ea:	10 97       	W[P2] = R0;
ffa097ec:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00824(-4192220) */
ffa097f0:	0a e1 28 09 	P2.L = 0x928;		/* (2344)	P2=0xffc00928(-4191960) */
ffa097f4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa097f6:	10 97       	W[P2] = R0;
ffa097f8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00928(-4191960) */
ffa097fc:	0a e1 2c 09 	P2.L = 0x92c;		/* (2348)	P2=0xffc0092c(-4191956) */
ffa09800:	98 60       	R0 = 0x13 (X);		/*		R0=0x13( 19) */
ffa09802:	10 97       	W[P2] = R0;
ffa09804:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0092c(-4191956) */
ffa09808:	0a e1 24 09 	P2.L = 0x924;		/* (2340)	P2=0xffc00924(-4191964) */
ffa0980c:	20 e1 0f 01 	R0 = 0x10f (X);		/*		R0=0x10f(271) */
ffa09810:	10 97       	W[P2] = R0;
ffa09812:	ff e3 67 f5 	CALL 0xffa082e0 <_radio_bidi_asm>;
ffa09816:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09818:	01 e8 00 00 	UNLINK;
ffa0981c:	10 00       	RTS;
	...

ffa09820 <_div_>:
ffa09820:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa09824:	b8 b0       	[FP + 0x8] = R0;
ffa09826:	f9 b0       	[FP + 0xc] = R1;
ffa09828:	b8 a0       	R0 = [FP + 0x8];
ffa0982a:	08 4f       	R0 <<= 0x1;
ffa0982c:	b8 b0       	[FP + 0x8] = R0;
ffa0982e:	b8 a0       	R0 = [FP + 0x8];
ffa09830:	f9 a0       	R1 = [FP + 0xc];
ffa09832:	48 42       	DIVS (R0, R1);
ffa09834:	b8 b0       	[FP + 0x8] = R0;
ffa09836:	f9 b0       	[FP + 0xc] = R1;
ffa09838:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0983a:	f0 bb       	[FP -0x4] = R0;
ffa0983c:	09 20       	JUMP.S 0xffa0984e <_div_+0x2e>;
ffa0983e:	b8 a0       	R0 = [FP + 0x8];
ffa09840:	f9 a0       	R1 = [FP + 0xc];
ffa09842:	08 42       	DIVQ (R0, R1);
ffa09844:	b8 b0       	[FP + 0x8] = R0;
ffa09846:	f9 b0       	[FP + 0xc] = R1;
ffa09848:	f0 b9       	R0 = [FP -0x4];
ffa0984a:	08 64       	R0 += 0x1;		/* (  1) */
ffa0984c:	f0 bb       	[FP -0x4] = R0;
ffa0984e:	f0 b9       	R0 = [FP -0x4];
ffa09850:	71 60       	R1 = 0xe (X);		/*		R1=0xe( 14) */
ffa09852:	08 09       	CC = R0 <= R1;
ffa09854:	f5 1b       	IF CC JUMP 0xffa0983e <_div_+0x1e>;
ffa09856:	b8 a0       	R0 = [FP + 0x8];
ffa09858:	80 42       	R0 = R0.L (X);
ffa0985a:	b8 b0       	[FP + 0x8] = R0;
ffa0985c:	b8 a0       	R0 = [FP + 0x8];
ffa0985e:	01 e8 00 00 	UNLINK;
ffa09862:	10 00       	RTS;

ffa09864 <_mod>:
ffa09864:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa09868:	b8 b0       	[FP + 0x8] = R0;
ffa0986a:	f9 b0       	[FP + 0xc] = R1;
ffa0986c:	f9 a0       	R1 = [FP + 0xc];
ffa0986e:	b8 a0       	R0 = [FP + 0x8];
ffa09870:	ff e3 d8 ff 	CALL 0xffa09820 <_div_>;
ffa09874:	f0 bb       	[FP -0x4] = R0;
ffa09876:	f1 b9       	R1 = [FP -0x4];
ffa09878:	f8 a0       	R0 = [FP + 0xc];
ffa0987a:	c1 40       	R1 *= R0;
ffa0987c:	b8 a0       	R0 = [FP + 0x8];
ffa0987e:	08 52       	R0 = R0 - R1;
ffa09880:	01 e8 00 00 	UNLINK;
ffa09884:	10 00       	RTS;
	...

ffa09888 <_memcpy_>:
ffa09888:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa0988c:	b8 b0       	[FP + 0x8] = R0;
ffa0988e:	f9 b0       	[FP + 0xc] = R1;
ffa09890:	3a b1       	[FP + 0x10] = R2;
ffa09892:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09894:	f0 bb       	[FP -0x4] = R0;
ffa09896:	0e 20       	JUMP.S 0xffa098b2 <_memcpy_+0x2a>;
ffa09898:	ba ac       	P2 = [FP + 0x8];
ffa0989a:	50 99       	R0 = B[P2] (X);
ffa0989c:	fa ac       	P2 = [FP + 0xc];
ffa0989e:	10 9b       	B[P2] = R0;
ffa098a0:	f8 a0       	R0 = [FP + 0xc];
ffa098a2:	08 64       	R0 += 0x1;		/* (  1) */
ffa098a4:	f8 b0       	[FP + 0xc] = R0;
ffa098a6:	b8 a0       	R0 = [FP + 0x8];
ffa098a8:	08 64       	R0 += 0x1;		/* (  1) */
ffa098aa:	b8 b0       	[FP + 0x8] = R0;
ffa098ac:	f0 b9       	R0 = [FP -0x4];
ffa098ae:	08 64       	R0 += 0x1;		/* (  1) */
ffa098b0:	f0 bb       	[FP -0x4] = R0;
ffa098b2:	f1 b9       	R1 = [FP -0x4];
ffa098b4:	38 a1       	R0 = [FP + 0x10];
ffa098b6:	81 08       	CC = R1 < R0;
ffa098b8:	f0 1b       	IF CC JUMP 0xffa09898 <_memcpy_+0x10>;
ffa098ba:	01 e8 00 00 	UNLINK;
ffa098be:	10 00       	RTS;

ffa098c0 <_memset_>:
ffa098c0:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa098c4:	b8 b0       	[FP + 0x8] = R0;
ffa098c6:	3a b1       	[FP + 0x10] = R2;
ffa098c8:	01 30       	R0 = R1;
ffa098ca:	b8 e6 0c 00 	B[FP + 0xc] = R0;
ffa098ce:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa098d0:	f0 bb       	[FP -0x4] = R0;
ffa098d2:	0b 20       	JUMP.S 0xffa098e8 <_memset_+0x28>;
ffa098d4:	ba ac       	P2 = [FP + 0x8];
ffa098d6:	b8 e5 0c 00 	R0 = B[FP + 0xc] (X);
ffa098da:	10 9b       	B[P2] = R0;
ffa098dc:	b8 a0       	R0 = [FP + 0x8];
ffa098de:	08 64       	R0 += 0x1;		/* (  1) */
ffa098e0:	b8 b0       	[FP + 0x8] = R0;
ffa098e2:	f0 b9       	R0 = [FP -0x4];
ffa098e4:	08 64       	R0 += 0x1;		/* (  1) */
ffa098e6:	f0 bb       	[FP -0x4] = R0;
ffa098e8:	f1 b9       	R1 = [FP -0x4];
ffa098ea:	38 a1       	R0 = [FP + 0x10];
ffa098ec:	81 08       	CC = R1 < R0;
ffa098ee:	f3 1b       	IF CC JUMP 0xffa098d4 <_memset_+0x14>;
ffa098f0:	01 e8 00 00 	UNLINK;
ffa098f4:	10 00       	RTS;
	...

ffa098f8 <_strlen_>:
ffa098f8:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa098fc:	b8 b0       	[FP + 0x8] = R0;
ffa098fe:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09900:	f0 bb       	[FP -0x4] = R0;
ffa09902:	0f 20       	JUMP.S 0xffa09920 <_strlen_+0x28>;
ffa09904:	f1 b9       	R1 = [FP -0x4];
ffa09906:	b8 a0       	R0 = [FP + 0x8];
ffa09908:	08 50       	R0 = R0 + R1;
ffa0990a:	10 32       	P2 = R0;
ffa0990c:	50 99       	R0 = B[P2] (X);
ffa0990e:	00 43       	R0 = R0.B (X);
ffa09910:	00 0c       	CC = R0 == 0x0;
ffa09912:	04 10       	IF !CC JUMP 0xffa0991a <_strlen_+0x22>;
ffa09914:	f0 b9       	R0 = [FP -0x4];
ffa09916:	e0 bb       	[FP -0x8] = R0;
ffa09918:	0b 20       	JUMP.S 0xffa0992e <_strlen_+0x36>;
ffa0991a:	f0 b9       	R0 = [FP -0x4];
ffa0991c:	08 64       	R0 += 0x1;		/* (  1) */
ffa0991e:	f0 bb       	[FP -0x4] = R0;
ffa09920:	f0 b9       	R0 = [FP -0x4];
ffa09922:	21 e1 ff 04 	R1 = 0x4ff (X);		/*		R1=0x4ff(1279) */
ffa09926:	08 09       	CC = R0 <= R1;
ffa09928:	ee 1b       	IF CC JUMP 0xffa09904 <_strlen_+0xc>;
ffa0992a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0992c:	e0 bb       	[FP -0x8] = R0;
ffa0992e:	e0 b9       	R0 = [FP -0x8];
ffa09930:	01 e8 00 00 	UNLINK;
ffa09934:	10 00       	RTS;
	...

ffa09938 <_strcpy_>:
ffa09938:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa0993c:	b8 b0       	[FP + 0x8] = R0;
ffa0993e:	f9 b0       	[FP + 0xc] = R1;
ffa09940:	3a b1       	[FP + 0x10] = R2;
ffa09942:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09944:	f0 bb       	[FP -0x4] = R0;
ffa09946:	0e 20       	JUMP.S 0xffa09962 <_strcpy_+0x2a>;
ffa09948:	3a ad       	P2 = [FP + 0x10];
ffa0994a:	50 99       	R0 = B[P2] (X);
ffa0994c:	ba ac       	P2 = [FP + 0x8];
ffa0994e:	10 9b       	B[P2] = R0;
ffa09950:	b8 a0       	R0 = [FP + 0x8];
ffa09952:	08 64       	R0 += 0x1;		/* (  1) */
ffa09954:	b8 b0       	[FP + 0x8] = R0;
ffa09956:	38 a1       	R0 = [FP + 0x10];
ffa09958:	08 64       	R0 += 0x1;		/* (  1) */
ffa0995a:	38 b1       	[FP + 0x10] = R0;
ffa0995c:	f0 b9       	R0 = [FP -0x4];
ffa0995e:	08 64       	R0 += 0x1;		/* (  1) */
ffa09960:	f0 bb       	[FP -0x4] = R0;
ffa09962:	3a ad       	P2 = [FP + 0x10];
ffa09964:	50 99       	R0 = B[P2] (X);
ffa09966:	00 43       	R0 = R0.B (X);
ffa09968:	00 0c       	CC = R0 == 0x0;
ffa0996a:	08 18       	IF CC JUMP 0xffa0997a <_strcpy_+0x42>;
ffa0996c:	f0 b9       	R0 = [FP -0x4];
ffa0996e:	21 e1 ff 04 	R1 = 0x4ff (X);		/*		R1=0x4ff(1279) */
ffa09972:	08 09       	CC = R0 <= R1;
ffa09974:	ea 1b       	IF CC JUMP 0xffa09948 <_strcpy_+0x10>;
ffa09976:	00 00       	NOP;
ffa09978:	00 00       	NOP;
ffa0997a:	fa ac       	P2 = [FP + 0xc];
ffa0997c:	11 91       	R1 = [P2];
ffa0997e:	f0 b9       	R0 = [FP -0x4];
ffa09980:	01 50       	R0 = R1 + R0;
ffa09982:	fa ac       	P2 = [FP + 0xc];
ffa09984:	10 93       	[P2] = R0;
ffa09986:	b8 a0       	R0 = [FP + 0x8];
ffa09988:	01 e8 00 00 	UNLINK;
ffa0998c:	10 00       	RTS;
	...

ffa09990 <_strprepend>:
ffa09990:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa09994:	b8 b0       	[FP + 0x8] = R0;
ffa09996:	f9 b0       	[FP + 0xc] = R1;
ffa09998:	3a b1       	[FP + 0x10] = R2;
ffa0999a:	38 a1       	R0 = [FP + 0x10];
ffa0999c:	ff e3 ae ff 	CALL 0xffa098f8 <_strlen_>;
ffa099a0:	d0 bb       	[FP -0xc] = R0;
ffa099a2:	fa ac       	P2 = [FP + 0xc];
ffa099a4:	10 91       	R0 = [P2];
ffa099a6:	81 43       	R1 = -R0;
ffa099a8:	b8 a0       	R0 = [FP + 0x8];
ffa099aa:	08 50       	R0 = R0 + R1;
ffa099ac:	e0 bb       	[FP -0x8] = R0;
ffa099ae:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa099b0:	f0 bb       	[FP -0x4] = R0;
ffa099b2:	0e 20       	JUMP.S 0xffa099ce <_strprepend+0x3e>;
ffa099b4:	3a ad       	P2 = [FP + 0x10];
ffa099b6:	50 99       	R0 = B[P2] (X);
ffa099b8:	ea b9       	P2 = [FP -0x8];
ffa099ba:	10 9b       	B[P2] = R0;
ffa099bc:	e0 b9       	R0 = [FP -0x8];
ffa099be:	08 64       	R0 += 0x1;		/* (  1) */
ffa099c0:	e0 bb       	[FP -0x8] = R0;
ffa099c2:	38 a1       	R0 = [FP + 0x10];
ffa099c4:	08 64       	R0 += 0x1;		/* (  1) */
ffa099c6:	38 b1       	[FP + 0x10] = R0;
ffa099c8:	f0 b9       	R0 = [FP -0x4];
ffa099ca:	08 64       	R0 += 0x1;		/* (  1) */
ffa099cc:	f0 bb       	[FP -0x4] = R0;
ffa099ce:	f1 b9       	R1 = [FP -0x4];
ffa099d0:	d0 b9       	R0 = [FP -0xc];
ffa099d2:	81 08       	CC = R1 < R0;
ffa099d4:	f0 1b       	IF CC JUMP 0xffa099b4 <_strprepend+0x24>;
ffa099d6:	00 00       	NOP;
ffa099d8:	00 00       	NOP;
ffa099da:	fa ac       	P2 = [FP + 0xc];
ffa099dc:	10 91       	R0 = [P2];
ffa099de:	81 43       	R1 = -R0;
ffa099e0:	b8 a0       	R0 = [FP + 0x8];
ffa099e2:	08 50       	R0 = R0 + R1;
ffa099e4:	01 e8 00 00 	UNLINK;
ffa099e8:	10 00       	RTS;
	...

ffa099ec <_strcmp>:
ffa099ec:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa099f0:	b8 b0       	[FP + 0x8] = R0;
ffa099f2:	f9 b0       	[FP + 0xc] = R1;
ffa099f4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa099f6:	f0 bb       	[FP -0x4] = R0;
ffa099f8:	1a 20       	JUMP.S 0xffa09a2c <_strcmp+0x40>;
ffa099fa:	ba ac       	P2 = [FP + 0x8];
ffa099fc:	51 99       	R1 = B[P2] (X);
ffa099fe:	fa ac       	P2 = [FP + 0xc];
ffa09a00:	50 99       	R0 = B[P2] (X);
ffa09a02:	09 43       	R1 = R1.B (X);
ffa09a04:	00 43       	R0 = R0.B (X);
ffa09a06:	01 08       	CC = R1 == R0;
ffa09a08:	18 02       	CC = !CC;
ffa09a0a:	00 02       	R0 = CC;
ffa09a0c:	08 30       	R1 = R0;
ffa09a0e:	b8 a0       	R0 = [FP + 0x8];
ffa09a10:	08 64       	R0 += 0x1;		/* (  1) */
ffa09a12:	b8 b0       	[FP + 0x8] = R0;
ffa09a14:	f8 a0       	R0 = [FP + 0xc];
ffa09a16:	08 64       	R0 += 0x1;		/* (  1) */
ffa09a18:	f8 b0       	[FP + 0xc] = R0;
ffa09a1a:	48 43       	R0 = R1.B (Z);
ffa09a1c:	00 0c       	CC = R0 == 0x0;
ffa09a1e:	04 18       	IF CC JUMP 0xffa09a26 <_strcmp+0x3a>;
ffa09a20:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09a22:	e0 bb       	[FP -0x8] = R0;
ffa09a24:	17 20       	JUMP.S 0xffa09a52 <_strcmp+0x66>;
ffa09a26:	f0 b9       	R0 = [FP -0x4];
ffa09a28:	08 64       	R0 += 0x1;		/* (  1) */
ffa09a2a:	f0 bb       	[FP -0x4] = R0;
ffa09a2c:	ba ac       	P2 = [FP + 0x8];
ffa09a2e:	50 99       	R0 = B[P2] (X);
ffa09a30:	00 43       	R0 = R0.B (X);
ffa09a32:	00 0c       	CC = R0 == 0x0;
ffa09a34:	0d 18       	IF CC JUMP 0xffa09a4e <_strcmp+0x62>;
ffa09a36:	00 00       	NOP;
ffa09a38:	00 00       	NOP;
ffa09a3a:	fa ac       	P2 = [FP + 0xc];
ffa09a3c:	50 99       	R0 = B[P2] (X);
ffa09a3e:	00 43       	R0 = R0.B (X);
ffa09a40:	00 0c       	CC = R0 == 0x0;
ffa09a42:	06 18       	IF CC JUMP 0xffa09a4e <_strcmp+0x62>;
ffa09a44:	f0 b9       	R0 = [FP -0x4];
ffa09a46:	21 e1 ff 04 	R1 = 0x4ff (X);		/*		R1=0x4ff(1279) */
ffa09a4a:	08 09       	CC = R0 <= R1;
ffa09a4c:	d7 1b       	IF CC JUMP 0xffa099fa <_strcmp+0xe>;
ffa09a4e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09a50:	e0 bb       	[FP -0x8] = R0;
ffa09a52:	e0 b9       	R0 = [FP -0x8];
ffa09a54:	01 e8 00 00 	UNLINK;
ffa09a58:	10 00       	RTS;
	...

ffa09a5c <_substr>:
ffa09a5c:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa09a60:	b8 b0       	[FP + 0x8] = R0;
ffa09a62:	f9 b0       	[FP + 0xc] = R1;
ffa09a64:	3a b1       	[FP + 0x10] = R2;
ffa09a66:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09a68:	e0 bb       	[FP -0x8] = R0;
ffa09a6a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09a6c:	f0 bb       	[FP -0x4] = R0;
ffa09a6e:	39 20       	JUMP.S 0xffa09ae0 <_substr+0x84>;
ffa09a70:	ba ac       	P2 = [FP + 0x8];
ffa09a72:	51 99       	R1 = B[P2] (X);
ffa09a74:	fa ac       	P2 = [FP + 0xc];
ffa09a76:	50 99       	R0 = B[P2] (X);
ffa09a78:	09 43       	R1 = R1.B (X);
ffa09a7a:	00 43       	R0 = R0.B (X);
ffa09a7c:	01 08       	CC = R1 == R0;
ffa09a7e:	2b 10       	IF !CC JUMP 0xffa09ad4 <_substr+0x78>;
ffa09a80:	b8 a0       	R0 = [FP + 0x8];
ffa09a82:	08 64       	R0 += 0x1;		/* (  1) */
ffa09a84:	c0 bb       	[FP -0x10] = R0;
ffa09a86:	f8 a0       	R0 = [FP + 0xc];
ffa09a88:	08 64       	R0 += 0x1;		/* (  1) */
ffa09a8a:	d0 bb       	[FP -0xc] = R0;
ffa09a8c:	e0 b9       	R0 = [FP -0x8];
ffa09a8e:	08 64       	R0 += 0x1;		/* (  1) */
ffa09a90:	f0 bb       	[FP -0x4] = R0;
ffa09a92:	12 20       	JUMP.S 0xffa09ab6 <_substr+0x5a>;
ffa09a94:	c0 b9       	R0 = [FP -0x10];
ffa09a96:	08 64       	R0 += 0x1;		/* (  1) */
ffa09a98:	c0 bb       	[FP -0x10] = R0;
ffa09a9a:	d0 b9       	R0 = [FP -0xc];
ffa09a9c:	08 64       	R0 += 0x1;		/* (  1) */
ffa09a9e:	d0 bb       	[FP -0xc] = R0;
ffa09aa0:	f0 b9       	R0 = [FP -0x4];
ffa09aa2:	08 64       	R0 += 0x1;		/* (  1) */
ffa09aa4:	f0 bb       	[FP -0x4] = R0;
ffa09aa6:	ca b9       	P2 = [FP -0x10];
ffa09aa8:	50 99       	R0 = B[P2] (X);
ffa09aaa:	00 43       	R0 = R0.B (X);
ffa09aac:	00 0c       	CC = R0 == 0x0;
ffa09aae:	04 10       	IF !CC JUMP 0xffa09ab6 <_substr+0x5a>;
ffa09ab0:	f0 b9       	R0 = [FP -0x4];
ffa09ab2:	b0 bb       	[FP -0x14] = R0;
ffa09ab4:	28 20       	JUMP.S 0xffa09b04 <_substr+0xa8>;
ffa09ab6:	ca b9       	P2 = [FP -0x10];
ffa09ab8:	51 99       	R1 = B[P2] (X);
ffa09aba:	da b9       	P2 = [FP -0xc];
ffa09abc:	50 99       	R0 = B[P2] (X);
ffa09abe:	09 43       	R1 = R1.B (X);
ffa09ac0:	00 43       	R0 = R0.B (X);
ffa09ac2:	01 08       	CC = R1 == R0;
ffa09ac4:	08 10       	IF !CC JUMP 0xffa09ad4 <_substr+0x78>;
ffa09ac6:	00 00       	NOP;
ffa09ac8:	00 00       	NOP;
ffa09aca:	da b9       	P2 = [FP -0xc];
ffa09acc:	50 99       	R0 = B[P2] (X);
ffa09ace:	00 43       	R0 = R0.B (X);
ffa09ad0:	00 0c       	CC = R0 == 0x0;
ffa09ad2:	e1 13       	IF !CC JUMP 0xffa09a94 <_substr+0x38>;
ffa09ad4:	f8 a0       	R0 = [FP + 0xc];
ffa09ad6:	08 64       	R0 += 0x1;		/* (  1) */
ffa09ad8:	f8 b0       	[FP + 0xc] = R0;
ffa09ada:	e0 b9       	R0 = [FP -0x8];
ffa09adc:	08 64       	R0 += 0x1;		/* (  1) */
ffa09ade:	e0 bb       	[FP -0x8] = R0;
ffa09ae0:	ba ac       	P2 = [FP + 0x8];
ffa09ae2:	50 99       	R0 = B[P2] (X);
ffa09ae4:	00 43       	R0 = R0.B (X);
ffa09ae6:	00 0c       	CC = R0 == 0x0;
ffa09ae8:	0c 18       	IF CC JUMP 0xffa09b00 <_substr+0xa4>;
ffa09aea:	00 00       	NOP;
ffa09aec:	00 00       	NOP;
ffa09aee:	fa ac       	P2 = [FP + 0xc];
ffa09af0:	50 99       	R0 = B[P2] (X);
ffa09af2:	00 43       	R0 = R0.B (X);
ffa09af4:	00 0c       	CC = R0 == 0x0;
ffa09af6:	05 18       	IF CC JUMP 0xffa09b00 <_substr+0xa4>;
ffa09af8:	e1 b9       	R1 = [FP -0x8];
ffa09afa:	38 a1       	R0 = [FP + 0x10];
ffa09afc:	81 08       	CC = R1 < R0;
ffa09afe:	b9 1b       	IF CC JUMP 0xffa09a70 <_substr+0x14>;
ffa09b00:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09b02:	b0 bb       	[FP -0x14] = R0;
ffa09b04:	b0 b9       	R0 = [FP -0x14];
ffa09b06:	01 e8 00 00 	UNLINK;
ffa09b0a:	10 00       	RTS;

ffa09b0c <_sprintf_int>:
ffa09b0c:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa09b10:	b8 b0       	[FP + 0x8] = R0;
ffa09b12:	f9 b0       	[FP + 0xc] = R1;
ffa09b14:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09b16:	c0 bb       	[FP -0x10] = R0;
ffa09b18:	f8 a0       	R0 = [FP + 0xc];
ffa09b1a:	00 0c       	CC = R0 == 0x0;
ffa09b1c:	0b 10       	IF !CC JUMP 0xffa09b32 <_sprintf_int+0x26>;
ffa09b1e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900924 */
ffa09b22:	0a e1 80 70 	P2.L = 0x7080;		/* (28800)	P2=0xff907080 <_printf_temp> */
ffa09b26:	52 91       	P2 = [P2];
ffa09b28:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa09b2a:	10 9b       	B[P2] = R0;
ffa09b2c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09b2e:	c0 bb       	[FP -0x10] = R0;
ffa09b30:	70 20       	JUMP.S 0xffa09c10 <_sprintf_int+0x104>;
ffa09b32:	f8 a0       	R0 = [FP + 0xc];
ffa09b34:	00 0d       	CC = R0 <= 0x0;
ffa09b36:	2c 18       	IF CC JUMP 0xffa09b8e <_sprintf_int+0x82>;
ffa09b38:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09b3a:	c0 bb       	[FP -0x10] = R0;
ffa09b3c:	21 20       	JUMP.S 0xffa09b7e <_sprintf_int+0x72>;
ffa09b3e:	f8 a0       	R0 = [FP + 0xc];
ffa09b40:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa09b42:	ff e3 07 fc 	CALL 0xffa09350 <___divsi3>;
ffa09b46:	f0 bb       	[FP -0x4] = R0;
ffa09b48:	f1 b9       	R1 = [FP -0x4];
ffa09b4a:	01 30       	R0 = R1;
ffa09b4c:	e8 4f       	R0 <<= 0x1d;
ffa09b4e:	08 52       	R0 = R0 - R1;
ffa09b50:	10 4f       	R0 <<= 0x2;
ffa09b52:	08 52       	R0 = R0 - R1;
ffa09b54:	08 4f       	R0 <<= 0x1;
ffa09b56:	08 30       	R1 = R0;
ffa09b58:	f8 a0       	R0 = [FP + 0xc];
ffa09b5a:	01 50       	R0 = R1 + R0;
ffa09b5c:	d0 bb       	[FP -0xc] = R0;
ffa09b5e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff907080 <_printf_temp> */
ffa09b62:	0a e1 80 70 	P2.L = 0x7080;		/* (28800)	P2=0xff907080 <_printf_temp> */
ffa09b66:	11 91       	R1 = [P2];
ffa09b68:	c0 b9       	R0 = [FP -0x10];
ffa09b6a:	41 50       	R1 = R1 + R0;
ffa09b6c:	11 32       	P2 = R1;
ffa09b6e:	d0 b9       	R0 = [FP -0xc];
ffa09b70:	80 65       	R0 += 0x30;		/* ( 48) */
ffa09b72:	10 9b       	B[P2] = R0;
ffa09b74:	c0 b9       	R0 = [FP -0x10];
ffa09b76:	08 64       	R0 += 0x1;		/* (  1) */
ffa09b78:	c0 bb       	[FP -0x10] = R0;
ffa09b7a:	f0 b9       	R0 = [FP -0x4];
ffa09b7c:	f8 b0       	[FP + 0xc] = R0;
ffa09b7e:	f8 a0       	R0 = [FP + 0xc];
ffa09b80:	00 0d       	CC = R0 <= 0x0;
ffa09b82:	47 18       	IF CC JUMP 0xffa09c10 <_sprintf_int+0x104>;
ffa09b84:	c0 b9       	R0 = [FP -0x10];
ffa09b86:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa09b88:	08 09       	CC = R0 <= R1;
ffa09b8a:	da 1b       	IF CC JUMP 0xffa09b3e <_sprintf_int+0x32>;
ffa09b8c:	42 20       	JUMP.S 0xffa09c10 <_sprintf_int+0x104>;
ffa09b8e:	f8 a0       	R0 = [FP + 0xc];
ffa09b90:	80 0c       	CC = R0 < 0x0;
ffa09b92:	3f 10       	IF !CC JUMP 0xffa09c10 <_sprintf_int+0x104>;
ffa09b94:	f8 a0       	R0 = [FP + 0xc];
ffa09b96:	08 30       	R1 = R0;
ffa09b98:	f9 4c       	BITCLR (R1, 0x1f);		/* bit 31 */
ffa09b9a:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa09b9c:	f8 4f       	R0 <<= 0x1f;
ffa09b9e:	08 52       	R0 = R0 - R1;
ffa09ba0:	f8 b0       	[FP + 0xc] = R0;
ffa09ba2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09ba4:	c0 bb       	[FP -0x10] = R0;
ffa09ba6:	21 20       	JUMP.S 0xffa09be8 <_sprintf_int+0xdc>;
ffa09ba8:	f8 a0       	R0 = [FP + 0xc];
ffa09baa:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa09bac:	ff e3 d2 fb 	CALL 0xffa09350 <___divsi3>;
ffa09bb0:	f0 bb       	[FP -0x4] = R0;
ffa09bb2:	f1 b9       	R1 = [FP -0x4];
ffa09bb4:	01 30       	R0 = R1;
ffa09bb6:	e8 4f       	R0 <<= 0x1d;
ffa09bb8:	08 52       	R0 = R0 - R1;
ffa09bba:	10 4f       	R0 <<= 0x2;
ffa09bbc:	08 52       	R0 = R0 - R1;
ffa09bbe:	08 4f       	R0 <<= 0x1;
ffa09bc0:	08 30       	R1 = R0;
ffa09bc2:	f8 a0       	R0 = [FP + 0xc];
ffa09bc4:	01 50       	R0 = R1 + R0;
ffa09bc6:	d0 bb       	[FP -0xc] = R0;
ffa09bc8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff907080 <_printf_temp> */
ffa09bcc:	0a e1 80 70 	P2.L = 0x7080;		/* (28800)	P2=0xff907080 <_printf_temp> */
ffa09bd0:	11 91       	R1 = [P2];
ffa09bd2:	c0 b9       	R0 = [FP -0x10];
ffa09bd4:	41 50       	R1 = R1 + R0;
ffa09bd6:	11 32       	P2 = R1;
ffa09bd8:	d0 b9       	R0 = [FP -0xc];
ffa09bda:	80 65       	R0 += 0x30;		/* ( 48) */
ffa09bdc:	10 9b       	B[P2] = R0;
ffa09bde:	c0 b9       	R0 = [FP -0x10];
ffa09be0:	08 64       	R0 += 0x1;		/* (  1) */
ffa09be2:	c0 bb       	[FP -0x10] = R0;
ffa09be4:	f0 b9       	R0 = [FP -0x4];
ffa09be6:	f8 b0       	[FP + 0xc] = R0;
ffa09be8:	f8 a0       	R0 = [FP + 0xc];
ffa09bea:	00 0d       	CC = R0 <= 0x0;
ffa09bec:	05 18       	IF CC JUMP 0xffa09bf6 <_sprintf_int+0xea>;
ffa09bee:	c0 b9       	R0 = [FP -0x10];
ffa09bf0:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa09bf2:	08 09       	CC = R0 <= R1;
ffa09bf4:	da 1b       	IF CC JUMP 0xffa09ba8 <_sprintf_int+0x9c>;
ffa09bf6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff907080 <_printf_temp> */
ffa09bfa:	0a e1 80 70 	P2.L = 0x7080;		/* (28800)	P2=0xff907080 <_printf_temp> */
ffa09bfe:	11 91       	R1 = [P2];
ffa09c00:	c0 b9       	R0 = [FP -0x10];
ffa09c02:	41 50       	R1 = R1 + R0;
ffa09c04:	11 32       	P2 = R1;
ffa09c06:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa09c08:	10 9b       	B[P2] = R0;
ffa09c0a:	c0 b9       	R0 = [FP -0x10];
ffa09c0c:	08 64       	R0 += 0x1;		/* (  1) */
ffa09c0e:	c0 bb       	[FP -0x10] = R0;
ffa09c10:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09c12:	e0 bb       	[FP -0x8] = R0;
ffa09c14:	15 20       	JUMP.S 0xffa09c3e <_sprintf_int+0x132>;
ffa09c16:	e1 b9       	R1 = [FP -0x8];
ffa09c18:	b8 a0       	R0 = [FP + 0x8];
ffa09c1a:	08 50       	R0 = R0 + R1;
ffa09c1c:	08 32       	P1 = R0;
ffa09c1e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff907080 <_printf_temp> */
ffa09c22:	0a e1 80 70 	P2.L = 0x7080;		/* (28800)	P2=0xff907080 <_printf_temp> */
ffa09c26:	12 91       	R2 = [P2];
ffa09c28:	c1 b9       	R1 = [FP -0x10];
ffa09c2a:	e0 b9       	R0 = [FP -0x8];
ffa09c2c:	01 52       	R0 = R1 - R0;
ffa09c2e:	f8 67       	R0 += -0x1;		/* ( -1) */
ffa09c30:	82 50       	R2 = R2 + R0;
ffa09c32:	12 32       	P2 = R2;
ffa09c34:	50 99       	R0 = B[P2] (X);
ffa09c36:	08 9b       	B[P1] = R0;
ffa09c38:	e0 b9       	R0 = [FP -0x8];
ffa09c3a:	08 64       	R0 += 0x1;		/* (  1) */
ffa09c3c:	e0 bb       	[FP -0x8] = R0;
ffa09c3e:	e1 b9       	R1 = [FP -0x8];
ffa09c40:	c0 b9       	R0 = [FP -0x10];
ffa09c42:	81 08       	CC = R1 < R0;
ffa09c44:	e9 1b       	IF CC JUMP 0xffa09c16 <_sprintf_int+0x10a>;
ffa09c46:	c0 b9       	R0 = [FP -0x10];
ffa09c48:	01 e8 00 00 	UNLINK;
ffa09c4c:	10 00       	RTS;
	...

ffa09c50 <_sprintf_hex>:
ffa09c50:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa09c54:	b8 b0       	[FP + 0x8] = R0;
ffa09c56:	f9 b0       	[FP + 0xc] = R1;
ffa09c58:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09c5a:	d0 bb       	[FP -0xc] = R0;
ffa09c5c:	d1 b9       	R1 = [FP -0xc];
ffa09c5e:	b8 a0       	R0 = [FP + 0x8];
ffa09c60:	08 50       	R0 = R0 + R1;
ffa09c62:	10 32       	P2 = R0;
ffa09c64:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa09c66:	10 9b       	B[P2] = R0;
ffa09c68:	d0 b9       	R0 = [FP -0xc];
ffa09c6a:	08 64       	R0 += 0x1;		/* (  1) */
ffa09c6c:	d0 bb       	[FP -0xc] = R0;
ffa09c6e:	d1 b9       	R1 = [FP -0xc];
ffa09c70:	b8 a0       	R0 = [FP + 0x8];
ffa09c72:	08 50       	R0 = R0 + R1;
ffa09c74:	10 32       	P2 = R0;
ffa09c76:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa09c7a:	10 9b       	B[P2] = R0;
ffa09c7c:	d0 b9       	R0 = [FP -0xc];
ffa09c7e:	08 64       	R0 += 0x1;		/* (  1) */
ffa09c80:	d0 bb       	[FP -0xc] = R0;
ffa09c82:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09c84:	c0 bb       	[FP -0x10] = R0;
ffa09c86:	2c 20       	JUMP.S 0xffa09cde <_sprintf_hex+0x8e>;
ffa09c88:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa09c8a:	c0 b9       	R0 = [FP -0x10];
ffa09c8c:	01 52       	R0 = R1 - R0;
ffa09c8e:	82 c6 10 82 	R1 = R0 << 0x2;
ffa09c92:	f8 a0       	R0 = [FP + 0xc];
ffa09c94:	08 40       	R0 >>>= R1;
ffa09c96:	e0 bb       	[FP -0x8] = R0;
ffa09c98:	e0 b9       	R0 = [FP -0x8];
ffa09c9a:	08 30       	R1 = R0;
ffa09c9c:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa09c9e:	01 54       	R0 = R1 & R0;
ffa09ca0:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa09ca4:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa09ca8:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa09caa:	08 09       	CC = R0 <= R1;
ffa09cac:	07 18       	IF CC JUMP 0xffa09cba <_sprintf_hex+0x6a>;
ffa09cae:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa09cb2:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa09cb4:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa09cb8:	06 20       	JUMP.S 0xffa09cc4 <_sprintf_hex+0x74>;
ffa09cba:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa09cbe:	80 65       	R0 += 0x30;		/* ( 48) */
ffa09cc0:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa09cc4:	d1 b9       	R1 = [FP -0xc];
ffa09cc6:	c0 b9       	R0 = [FP -0x10];
ffa09cc8:	01 50       	R0 = R1 + R0;
ffa09cca:	08 30       	R1 = R0;
ffa09ccc:	b8 a0       	R0 = [FP + 0x8];
ffa09cce:	08 50       	R0 = R0 + R1;
ffa09cd0:	10 32       	P2 = R0;
ffa09cd2:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa09cd6:	10 9b       	B[P2] = R0;
ffa09cd8:	c0 b9       	R0 = [FP -0x10];
ffa09cda:	08 64       	R0 += 0x1;		/* (  1) */
ffa09cdc:	c0 bb       	[FP -0x10] = R0;
ffa09cde:	c0 b9       	R0 = [FP -0x10];
ffa09ce0:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa09ce2:	08 09       	CC = R0 <= R1;
ffa09ce4:	d2 1b       	IF CC JUMP 0xffa09c88 <_sprintf_hex+0x38>;
ffa09ce6:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa09ce8:	01 e8 00 00 	UNLINK;
ffa09cec:	10 00       	RTS;
	...

ffa09cf0 <_strprintf_int>:
ffa09cf0:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa09cf4:	b8 b0       	[FP + 0x8] = R0;
ffa09cf6:	f9 b0       	[FP + 0xc] = R1;
ffa09cf8:	3a b1       	[FP + 0x10] = R2;
ffa09cfa:	39 a1       	R1 = [FP + 0x10];
ffa09cfc:	b8 a0       	R0 = [FP + 0x8];
ffa09cfe:	ff e3 07 ff 	CALL 0xffa09b0c <_sprintf_int>;
ffa09d02:	f0 bb       	[FP -0x4] = R0;
ffa09d04:	fa ac       	P2 = [FP + 0xc];
ffa09d06:	11 91       	R1 = [P2];
ffa09d08:	f0 b9       	R0 = [FP -0x4];
ffa09d0a:	01 50       	R0 = R1 + R0;
ffa09d0c:	fa ac       	P2 = [FP + 0xc];
ffa09d0e:	10 93       	[P2] = R0;
ffa09d10:	f1 b9       	R1 = [FP -0x4];
ffa09d12:	b8 a0       	R0 = [FP + 0x8];
ffa09d14:	08 50       	R0 = R0 + R1;
ffa09d16:	b8 b0       	[FP + 0x8] = R0;
ffa09d18:	b8 a0       	R0 = [FP + 0x8];
ffa09d1a:	01 e8 00 00 	UNLINK;
ffa09d1e:	10 00       	RTS;

ffa09d20 <_strprintf_hex>:
ffa09d20:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa09d24:	b8 b0       	[FP + 0x8] = R0;
ffa09d26:	f9 b0       	[FP + 0xc] = R1;
ffa09d28:	3a b1       	[FP + 0x10] = R2;
ffa09d2a:	39 a1       	R1 = [FP + 0x10];
ffa09d2c:	b8 a0       	R0 = [FP + 0x8];
ffa09d2e:	ff e3 91 ff 	CALL 0xffa09c50 <_sprintf_hex>;
ffa09d32:	f0 bb       	[FP -0x4] = R0;
ffa09d34:	fa ac       	P2 = [FP + 0xc];
ffa09d36:	11 91       	R1 = [P2];
ffa09d38:	f0 b9       	R0 = [FP -0x4];
ffa09d3a:	01 50       	R0 = R1 + R0;
ffa09d3c:	fa ac       	P2 = [FP + 0xc];
ffa09d3e:	10 93       	[P2] = R0;
ffa09d40:	f1 b9       	R1 = [FP -0x4];
ffa09d42:	b8 a0       	R0 = [FP + 0x8];
ffa09d44:	08 50       	R0 = R0 + R1;
ffa09d46:	b8 b0       	[FP + 0x8] = R0;
ffa09d48:	b8 a0       	R0 = [FP + 0x8];
ffa09d4a:	01 e8 00 00 	UNLINK;
ffa09d4e:	10 00       	RTS;

ffa09d50 <_atoi_>:
ffa09d50:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa09d54:	b8 b0       	[FP + 0x8] = R0;
ffa09d56:	f9 b0       	[FP + 0xc] = R1;
ffa09d58:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09d5a:	d0 bb       	[FP -0xc] = R0;
ffa09d5c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09d5e:	e0 bb       	[FP -0x8] = R0;
ffa09d60:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09d62:	f0 bb       	[FP -0x4] = R0;
ffa09d64:	ba ac       	P2 = [FP + 0x8];
ffa09d66:	50 99       	R0 = B[P2] (X);
ffa09d68:	00 43       	R0 = R0.B (X);
ffa09d6a:	69 61       	R1 = 0x2d (X);		/*		R1=0x2d( 45) */
ffa09d6c:	08 08       	CC = R0 == R1;
ffa09d6e:	2d 10       	IF !CC JUMP 0xffa09dc8 <_atoi_+0x78>;
ffa09d70:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa09d72:	f0 bb       	[FP -0x4] = R0;
ffa09d74:	b8 a0       	R0 = [FP + 0x8];
ffa09d76:	08 64       	R0 += 0x1;		/* (  1) */
ffa09d78:	b8 b0       	[FP + 0x8] = R0;
ffa09d7a:	d0 b9       	R0 = [FP -0xc];
ffa09d7c:	08 64       	R0 += 0x1;		/* (  1) */
ffa09d7e:	d0 bb       	[FP -0xc] = R0;
ffa09d80:	24 20       	JUMP.S 0xffa09dc8 <_atoi_+0x78>;
ffa09d82:	ba ac       	P2 = [FP + 0x8];
ffa09d84:	50 99       	R0 = B[P2] (X);
ffa09d86:	00 43       	R0 = R0.B (X);
ffa09d88:	08 30       	R1 = R0;
ffa09d8a:	81 66       	R1 += -0x30;		/* (-48) */
ffa09d8c:	e0 b9       	R0 = [FP -0x8];
ffa09d8e:	08 50       	R0 = R0 + R1;
ffa09d90:	e0 bb       	[FP -0x8] = R0;
ffa09d92:	b8 a0       	R0 = [FP + 0x8];
ffa09d94:	08 64       	R0 += 0x1;		/* (  1) */
ffa09d96:	b8 b0       	[FP + 0x8] = R0;
ffa09d98:	d0 b9       	R0 = [FP -0xc];
ffa09d9a:	08 64       	R0 += 0x1;		/* (  1) */
ffa09d9c:	d0 bb       	[FP -0xc] = R0;
ffa09d9e:	ba ac       	P2 = [FP + 0x8];
ffa09da0:	50 99       	R0 = B[P2] (X);
ffa09da2:	00 43       	R0 = R0.B (X);
ffa09da4:	79 61       	R1 = 0x2f (X);		/*		R1=0x2f( 47) */
ffa09da6:	08 09       	CC = R0 <= R1;
ffa09da8:	10 18       	IF CC JUMP 0xffa09dc8 <_atoi_+0x78>;
ffa09daa:	00 00       	NOP;
ffa09dac:	00 00       	NOP;
ffa09dae:	ba ac       	P2 = [FP + 0x8];
ffa09db0:	50 99       	R0 = B[P2] (X);
ffa09db2:	00 43       	R0 = R0.B (X);
ffa09db4:	c9 61       	R1 = 0x39 (X);		/*		R1=0x39( 57) */
ffa09db6:	08 09       	CC = R0 <= R1;
ffa09db8:	08 10       	IF !CC JUMP 0xffa09dc8 <_atoi_+0x78>;
ffa09dba:	e0 b9       	R0 = [FP -0x8];
ffa09dbc:	08 30       	R1 = R0;
ffa09dbe:	11 4f       	R1 <<= 0x2;
ffa09dc0:	41 50       	R1 = R1 + R0;
ffa09dc2:	82 c6 09 80 	R0 = R1 << 0x1;
ffa09dc6:	e0 bb       	[FP -0x8] = R0;
ffa09dc8:	ba ac       	P2 = [FP + 0x8];
ffa09dca:	50 99       	R0 = B[P2] (X);
ffa09dcc:	00 43       	R0 = R0.B (X);
ffa09dce:	79 61       	R1 = 0x2f (X);		/*		R1=0x2f( 47) */
ffa09dd0:	08 09       	CC = R0 <= R1;
ffa09dd2:	0d 18       	IF CC JUMP 0xffa09dec <_atoi_+0x9c>;
ffa09dd4:	00 00       	NOP;
ffa09dd6:	00 00       	NOP;
ffa09dd8:	ba ac       	P2 = [FP + 0x8];
ffa09dda:	50 99       	R0 = B[P2] (X);
ffa09ddc:	00 43       	R0 = R0.B (X);
ffa09dde:	c9 61       	R1 = 0x39 (X);		/*		R1=0x39( 57) */
ffa09de0:	08 09       	CC = R0 <= R1;
ffa09de2:	05 10       	IF !CC JUMP 0xffa09dec <_atoi_+0x9c>;
ffa09de4:	d1 b9       	R1 = [FP -0xc];
ffa09de6:	f8 a0       	R0 = [FP + 0xc];
ffa09de8:	81 08       	CC = R1 < R0;
ffa09dea:	cc 1b       	IF CC JUMP 0xffa09d82 <_atoi_+0x32>;
ffa09dec:	e1 b9       	R1 = [FP -0x8];
ffa09dee:	f0 b9       	R0 = [FP -0x4];
ffa09df0:	c8 40       	R0 *= R1;
ffa09df2:	01 e8 00 00 	UNLINK;
ffa09df6:	10 00       	RTS;

ffa09df8 <_udelay>:
ffa09df8:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa09dfc:	b8 b0       	[FP + 0x8] = R0;
ffa09dfe:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09e00:	e0 bb       	[FP -0x8] = R0;
ffa09e02:	10 20       	JUMP.S 0xffa09e22 <_udelay+0x2a>;
ffa09e04:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09e06:	f0 bb       	[FP -0x4] = R0;
ffa09e08:	05 20       	JUMP.S 0xffa09e12 <_udelay+0x1a>;
ffa09e0a:	00 00       	NOP;
ffa09e0c:	f0 b9       	R0 = [FP -0x4];
ffa09e0e:	08 64       	R0 += 0x1;		/* (  1) */
ffa09e10:	f0 bb       	[FP -0x4] = R0;
ffa09e12:	f0 b9       	R0 = [FP -0x4];
ffa09e14:	21 e1 9f 00 	R1 = 0x9f (X);		/*		R1=0x9f(159) */
ffa09e18:	08 09       	CC = R0 <= R1;
ffa09e1a:	f8 1b       	IF CC JUMP 0xffa09e0a <_udelay+0x12>;
ffa09e1c:	e0 b9       	R0 = [FP -0x8];
ffa09e1e:	08 64       	R0 += 0x1;		/* (  1) */
ffa09e20:	e0 bb       	[FP -0x8] = R0;
ffa09e22:	e1 b9       	R1 = [FP -0x8];
ffa09e24:	b8 a0       	R0 = [FP + 0x8];
ffa09e26:	81 08       	CC = R1 < R0;
ffa09e28:	ee 1b       	IF CC JUMP 0xffa09e04 <_udelay+0xc>;
ffa09e2a:	01 e8 00 00 	UNLINK;
ffa09e2e:	10 00       	RTS;

ffa09e30 <_NOP>:
ffa09e30:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa09e34:	00 00       	NOP;
ffa09e36:	01 e8 00 00 	UNLINK;
ffa09e3a:	10 00       	RTS;

ffa09e3c <_cli>:
ffa09e3c:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa09e40:	30 00       	CLI R0;
ffa09e42:	f0 bb       	[FP -0x4] = R0;
ffa09e44:	f0 b9       	R0 = [FP -0x4];
ffa09e46:	e0 bb       	[FP -0x8] = R0;
ffa09e48:	e0 b9       	R0 = [FP -0x8];
ffa09e4a:	01 e8 00 00 	UNLINK;
ffa09e4e:	10 00       	RTS;

ffa09e50 <_sti>:
ffa09e50:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa09e54:	b8 b0       	[FP + 0x8] = R0;
ffa09e56:	b8 a0       	R0 = [FP + 0x8];
ffa09e58:	40 00       	STI R0;
ffa09e5a:	01 e8 00 00 	UNLINK;
ffa09e5e:	10 00       	RTS;

ffa09e60 <_idle>:
ffa09e60:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa09e64:	20 00       	IDLE;
ffa09e66:	01 e8 00 00 	UNLINK;
ffa09e6a:	10 00       	RTS;

ffa09e6c <_prefetch>:
ffa09e6c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa09e70:	b8 b0       	[FP + 0x8] = R0;
ffa09e72:	ba ac       	P2 = [FP + 0x8];
ffa09e74:	42 02       	PREFETCH[P2];
ffa09e76:	01 e8 00 00 	UNLINK;
ffa09e7a:	10 00       	RTS;

ffa09e7c <_prefetchmodup>:
ffa09e7c:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa09e80:	b8 b0       	[FP + 0x8] = R0;
ffa09e82:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa09e84:	47 30       	R0 = FP;
ffa09e86:	40 64       	R0 += 0x8;		/* (  8) */
ffa09e88:	f0 bb       	[FP -0x4] = R0;
ffa09e8a:	f0 b9       	R0 = [FP -0x4];
ffa09e8c:	10 32       	P2 = R0;
ffa09e8e:	62 02       	PREFETCH[P2++];
ffa09e90:	fa bb       	[FP -0x4] = P2;
ffa09e92:	f0 b9       	R0 = [FP -0x4];
ffa09e94:	e0 bb       	[FP -0x8] = R0;
ffa09e96:	e0 b9       	R0 = [FP -0x8];
ffa09e98:	01 e8 00 00 	UNLINK;
ffa09e9c:	10 00       	RTS;
	...

ffa09ea0 <_flushinv>:
ffa09ea0:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa09ea4:	b8 b0       	[FP + 0x8] = R0;
ffa09ea6:	ba ac       	P2 = [FP + 0x8];
ffa09ea8:	4a 02       	FLUSHINV[P2];
ffa09eaa:	01 e8 00 00 	UNLINK;
ffa09eae:	10 00       	RTS;

ffa09eb0 <_flushinvmodup>:
ffa09eb0:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa09eb4:	b8 b0       	[FP + 0x8] = R0;
ffa09eb6:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa09eb8:	47 30       	R0 = FP;
ffa09eba:	40 64       	R0 += 0x8;		/* (  8) */
ffa09ebc:	f0 bb       	[FP -0x4] = R0;
ffa09ebe:	f0 b9       	R0 = [FP -0x4];
ffa09ec0:	10 32       	P2 = R0;
ffa09ec2:	6a 02       	FLUSHINV[P2++];
ffa09ec4:	fa bb       	[FP -0x4] = P2;
ffa09ec6:	f0 b9       	R0 = [FP -0x4];
ffa09ec8:	e0 bb       	[FP -0x8] = R0;
ffa09eca:	e0 b9       	R0 = [FP -0x8];
ffa09ecc:	01 e8 00 00 	UNLINK;
ffa09ed0:	10 00       	RTS;
	...

ffa09ed4 <_flush>:
ffa09ed4:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa09ed8:	b8 b0       	[FP + 0x8] = R0;
ffa09eda:	ba ac       	P2 = [FP + 0x8];
ffa09edc:	52 02       	FLUSH[P2];
ffa09ede:	01 e8 00 00 	UNLINK;
ffa09ee2:	10 00       	RTS;

ffa09ee4 <_flushmodup>:
ffa09ee4:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa09ee8:	b8 b0       	[FP + 0x8] = R0;
ffa09eea:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa09eec:	47 30       	R0 = FP;
ffa09eee:	40 64       	R0 += 0x8;		/* (  8) */
ffa09ef0:	f0 bb       	[FP -0x4] = R0;
ffa09ef2:	f0 b9       	R0 = [FP -0x4];
ffa09ef4:	10 32       	P2 = R0;
ffa09ef6:	72 02       	FLUSH[P2++];
ffa09ef8:	fa bb       	[FP -0x4] = P2;
ffa09efa:	f0 b9       	R0 = [FP -0x4];
ffa09efc:	e0 bb       	[FP -0x8] = R0;
ffa09efe:	e0 b9       	R0 = [FP -0x8];
ffa09f00:	01 e8 00 00 	UNLINK;
ffa09f04:	10 00       	RTS;
	...

ffa09f08 <_iflush>:
ffa09f08:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa09f0c:	b8 b0       	[FP + 0x8] = R0;
ffa09f0e:	ba ac       	P2 = [FP + 0x8];
ffa09f10:	5a 02       	IFLUSH[P2];
ffa09f12:	01 e8 00 00 	UNLINK;
ffa09f16:	10 00       	RTS;

ffa09f18 <_iflushmodup>:
ffa09f18:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa09f1c:	b8 b0       	[FP + 0x8] = R0;
ffa09f1e:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa09f20:	47 30       	R0 = FP;
ffa09f22:	40 64       	R0 += 0x8;		/* (  8) */
ffa09f24:	f0 bb       	[FP -0x4] = R0;
ffa09f26:	f0 b9       	R0 = [FP -0x4];
ffa09f28:	10 32       	P2 = R0;
ffa09f2a:	7a 02       	IFLUSH[P2++];
ffa09f2c:	fa bb       	[FP -0x4] = P2;
ffa09f2e:	f0 b9       	R0 = [FP -0x4];
ffa09f30:	e0 bb       	[FP -0x8] = R0;
ffa09f32:	e0 b9       	R0 = [FP -0x8];
ffa09f34:	01 e8 00 00 	UNLINK;
ffa09f38:	10 00       	RTS;
	...

ffa09f3c <_csync>:
ffa09f3c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa09f40:	23 00       	CSYNC;
ffa09f42:	01 e8 00 00 	UNLINK;
ffa09f46:	10 00       	RTS;

ffa09f48 <_ssync>:
ffa09f48:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa09f4c:	24 00       	SSYNC;
ffa09f4e:	01 e8 00 00 	UNLINK;
ffa09f52:	10 00       	RTS;

ffa09f54 <_spi_delay>:
ffa09f54:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa09f58:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa09f5a:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa09f5e:	08 20       	JUMP.S 0xffa09f6e <_spi_delay+0x1a>;
ffa09f60:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc07080(-4165504) */
ffa09f64:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa09f68:	10 95       	R0 = W[P2] (Z);
ffa09f6a:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa09f6e:	78 e4 fe ff 	R0 = W[FP + -0x4] (Z);
ffa09f72:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa09f74:	08 54       	R0 = R0 & R1;
ffa09f76:	00 0c       	CC = R0 == 0x0;
ffa09f78:	f4 13       	IF !CC JUMP 0xffa09f60 <_spi_delay+0xc>;
ffa09f7a:	08 20       	JUMP.S 0xffa09f8a <_spi_delay+0x36>;
ffa09f7c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa09f80:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa09f84:	10 95       	R0 = W[P2] (Z);
ffa09f86:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa09f8a:	78 e4 fe ff 	R0 = W[FP + -0x4] (Z);
ffa09f8e:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa09f90:	08 54       	R0 = R0 & R1;
ffa09f92:	00 0c       	CC = R0 == 0x0;
ffa09f94:	f4 1b       	IF CC JUMP 0xffa09f7c <_spi_delay+0x28>;
ffa09f96:	01 e8 00 00 	UNLINK;
ffa09f9a:	10 00       	RTS;

ffa09f9c <_spi_write_register>:
ffa09f9c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa09fa0:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa09fa4:	01 30       	R0 = R1;
ffa09fa6:	b8 e6 0c 00 	B[FP + 0xc] = R0;
ffa09faa:	b8 e5 08 00 	R0 = B[FP + 0x8] (X);
ffa09fae:	28 4a       	BITSET (R0, 0x5);		/* bit  5 */
ffa09fb0:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa09fb4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa09fb8:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa09fbc:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09fbe:	10 97       	W[P2] = R0;
ffa09fc0:	24 00       	SSYNC;
ffa09fc2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa09fc6:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa09fca:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa09fce:	10 97       	W[P2] = R0;
ffa09fd0:	ff e3 c2 ff 	CALL 0xffa09f54 <_spi_delay>;
ffa09fd4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa09fd8:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa09fdc:	10 95       	R0 = W[P2] (Z);
ffa09fde:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa09fe2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa09fe6:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa09fea:	b8 e4 0c 00 	R0 = B[FP + 0xc] (Z);
ffa09fee:	10 97       	W[P2] = R0;
ffa09ff0:	ff e3 b2 ff 	CALL 0xffa09f54 <_spi_delay>;
ffa09ff4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa09ff8:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa09ffc:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09ffe:	10 97       	W[P2] = R0;
ffa0a000:	24 00       	SSYNC;
ffa0a002:	b8 e5 08 00 	R0 = B[FP + 0x8] (X);
ffa0a006:	01 e8 00 00 	UNLINK;
ffa0a00a:	10 00       	RTS;

ffa0a00c <_spi_write_register_ver>:
ffa0a00c:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0a010:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a014:	01 30       	R0 = R1;
ffa0a016:	b8 e6 0c 00 	B[FP + 0xc] = R0;
ffa0a01a:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a01e:	b9 e4 0c 00 	R1 = B[FP + 0xc] (Z);
ffa0a022:	ff e3 bd ff 	CALL 0xffa09f9c <_spi_write_register>;
ffa0a026:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a02a:	00 e3 09 00 	CALL 0xffa0a03c <_spi_read_register>;
ffa0a02e:	b8 e6 ff ff 	B[FP + -0x1] = R0;
ffa0a032:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa0a036:	01 e8 00 00 	UNLINK;
ffa0a03a:	10 00       	RTS;

ffa0a03c <_spi_read_register>:
ffa0a03c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a040:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a044:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a048:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a04c:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a04e:	10 97       	W[P2] = R0;
ffa0a050:	24 00       	SSYNC;
ffa0a052:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a056:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a05a:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a05e:	10 97       	W[P2] = R0;
ffa0a060:	ff e3 7a ff 	CALL 0xffa09f54 <_spi_delay>;
ffa0a064:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a068:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0a06c:	10 95       	R0 = W[P2] (Z);
ffa0a06e:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a072:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0a076:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a07a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a07c:	10 97       	W[P2] = R0;
ffa0a07e:	ff e3 6b ff 	CALL 0xffa09f54 <_spi_delay>;
ffa0a082:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a086:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0a08a:	10 95       	R0 = W[P2] (Z);
ffa0a08c:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a090:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0a094:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a098:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a09a:	10 97       	W[P2] = R0;
ffa0a09c:	24 00       	SSYNC;
ffa0a09e:	b8 e5 08 00 	R0 = B[FP + 0x8] (X);
ffa0a0a2:	01 e8 00 00 	UNLINK;
ffa0a0a6:	10 00       	RTS;

ffa0a0a8 <_spi_read_register_status>:
ffa0a0a8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a0ac:	f9 b0       	[FP + 0xc] = R1;
ffa0a0ae:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a0b2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a0b6:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a0ba:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a0bc:	10 97       	W[P2] = R0;
ffa0a0be:	24 00       	SSYNC;
ffa0a0c0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a0c4:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a0c8:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a0cc:	10 97       	W[P2] = R0;
ffa0a0ce:	ff e3 43 ff 	CALL 0xffa09f54 <_spi_delay>;
ffa0a0d2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a0d6:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0a0da:	10 95       	R0 = W[P2] (Z);
ffa0a0dc:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a0e0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0a0e4:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a0e8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a0ea:	10 97       	W[P2] = R0;
ffa0a0ec:	ff e3 34 ff 	CALL 0xffa09f54 <_spi_delay>;
ffa0a0f0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a0f4:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0a0f8:	10 95       	R0 = W[P2] (Z);
ffa0a0fa:	fa ac       	P2 = [FP + 0xc];
ffa0a0fc:	10 9b       	B[P2] = R0;
ffa0a0fe:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0a102:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a106:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a108:	10 97       	W[P2] = R0;
ffa0a10a:	24 00       	SSYNC;
ffa0a10c:	b8 e5 08 00 	R0 = B[FP + 0x8] (X);
ffa0a110:	01 e8 00 00 	UNLINK;
ffa0a114:	10 00       	RTS;
	...

ffa0a118 <_spi_write_byte>:
ffa0a118:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a11c:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a120:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a124:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a128:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a12a:	10 97       	W[P2] = R0;
ffa0a12c:	24 00       	SSYNC;
ffa0a12e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a132:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a136:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a13a:	10 97       	W[P2] = R0;
ffa0a13c:	ff e3 0c ff 	CALL 0xffa09f54 <_spi_delay>;
ffa0a140:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a144:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0a148:	10 95       	R0 = W[P2] (Z);
ffa0a14a:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a14e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0a152:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a156:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a158:	10 97       	W[P2] = R0;
ffa0a15a:	24 00       	SSYNC;
ffa0a15c:	b8 e5 08 00 	R0 = B[FP + 0x8] (X);
ffa0a160:	01 e8 00 00 	UNLINK;
ffa0a164:	10 00       	RTS;
	...

ffa0a168 <_spi_write_packet>:
ffa0a168:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a16c:	b8 b0       	[FP + 0x8] = R0;
ffa0a16e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a172:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a176:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a178:	10 97       	W[P2] = R0;
ffa0a17a:	24 00       	SSYNC;
ffa0a17c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a180:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a184:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa0a188:	10 97       	W[P2] = R0;
ffa0a18a:	ff e3 e5 fe 	CALL 0xffa09f54 <_spi_delay>;
ffa0a18e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a192:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a196:	20 e1 07 50 	R0 = 0x5007 (X);		/*		R0=0x5007(20487) */
ffa0a19a:	10 97       	W[P2] = R0;
ffa0a19c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a1a0:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xffc00d50(-4190896) */
ffa0a1a4:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa0a1a6:	10 97       	W[P2] = R0;
ffa0a1a8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d50(-4190896) */
ffa0a1ac:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xffc00d54(-4190892) */
ffa0a1b0:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a1b2:	10 97       	W[P2] = R0;
ffa0a1b4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d54(-4190892) */
ffa0a1b8:	0a e1 44 0d 	P2.L = 0xd44;		/* (3396)	P2=0xffc00d44(-4190908) */
ffa0a1bc:	b8 a0       	R0 = [FP + 0x8];
ffa0a1be:	10 93       	[P2] = R0;
ffa0a1c0:	24 00       	SSYNC;
ffa0a1c2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d44(-4190908) */
ffa0a1c6:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa0a1ca:	20 e1 81 00 	R0 = 0x81 (X);		/*		R0=0x81(129) */
ffa0a1ce:	10 97       	W[P2] = R0;
	...
ffa0a1d8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa0a1dc:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a1e0:	10 95       	R0 = W[P2] (Z);
ffa0a1e2:	c1 42       	R1 = R0.L (Z);
ffa0a1e4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a1e6:	01 54       	R0 = R1 & R0;
ffa0a1e8:	00 0c       	CC = R0 == 0x0;
ffa0a1ea:	f3 1b       	IF CC JUMP 0xffa0a1d0 <_spi_write_packet+0x68>;
ffa0a1ec:	00 00       	NOP;
ffa0a1ee:	00 00       	NOP;
ffa0a1f0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a1f4:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0a1f8:	10 95       	R0 = W[P2] (Z);
ffa0a1fa:	c1 42       	R1 = R0.L (Z);
ffa0a1fc:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa0a1fe:	01 54       	R0 = R1 & R0;
ffa0a200:	00 0c       	CC = R0 == 0x0;
ffa0a202:	e7 13       	IF !CC JUMP 0xffa0a1d0 <_spi_write_packet+0x68>;
ffa0a204:	00 00       	NOP;
ffa0a206:	00 00       	NOP;
ffa0a208:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0a20c:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a210:	10 95       	R0 = W[P2] (Z);
ffa0a212:	c1 42       	R1 = R0.L (Z);
ffa0a214:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa0a216:	01 54       	R0 = R1 & R0;
ffa0a218:	00 0c       	CC = R0 == 0x0;
ffa0a21a:	db 13       	IF !CC JUMP 0xffa0a1d0 <_spi_write_packet+0x68>;
ffa0a21c:	ff e3 9c fe 	CALL 0xffa09f54 <_spi_delay>;
ffa0a220:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a224:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a228:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a22a:	10 97       	W[P2] = R0;
ffa0a22c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a230:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a234:	20 e1 0d 50 	R0 = 0x500d (X);		/*		R0=0x500d(20493) */
ffa0a238:	10 97       	W[P2] = R0;
ffa0a23a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a23e:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa0a242:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a244:	10 97       	W[P2] = R0;
ffa0a246:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa0a24a:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a24e:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a250:	10 97       	W[P2] = R0;
ffa0a252:	24 00       	SSYNC;
ffa0a254:	01 e8 00 00 	UNLINK;
ffa0a258:	10 00       	RTS;
	...

ffa0a25c <_spi_write_packet_noDMA>:
ffa0a25c:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa0a260:	b8 b0       	[FP + 0x8] = R0;
ffa0a262:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a266:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a26a:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a26c:	10 97       	W[P2] = R0;
ffa0a26e:	24 00       	SSYNC;
ffa0a270:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a274:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a278:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa0a27c:	10 97       	W[P2] = R0;
ffa0a27e:	ff e3 6b fe 	CALL 0xffa09f54 <_spi_delay>;
ffa0a282:	b8 a0       	R0 = [FP + 0x8];
ffa0a284:	f0 bb       	[FP -0x4] = R0;
ffa0a286:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a288:	e0 bb       	[FP -0x8] = R0;
ffa0a28a:	11 20       	JUMP.S 0xffa0a2ac <_spi_write_packet_noDMA+0x50>;
ffa0a28c:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00730(-4192464) */
ffa0a290:	09 e1 0c 05 	P1.L = 0x50c;		/* (1292)	P1=0xffc0050c(-4193012) */
ffa0a294:	fa b9       	P2 = [FP -0x4];
ffa0a296:	50 99       	R0 = B[P2] (X);
ffa0a298:	00 43       	R0 = R0.B (X);
ffa0a29a:	08 97       	W[P1] = R0;
ffa0a29c:	f0 b9       	R0 = [FP -0x4];
ffa0a29e:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a2a0:	f0 bb       	[FP -0x4] = R0;
ffa0a2a2:	ff e3 59 fe 	CALL 0xffa09f54 <_spi_delay>;
ffa0a2a6:	e0 b9       	R0 = [FP -0x8];
ffa0a2a8:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a2aa:	e0 bb       	[FP -0x8] = R0;
ffa0a2ac:	e0 b9       	R0 = [FP -0x8];
ffa0a2ae:	f9 60       	R1 = 0x1f (X);		/*		R1=0x1f( 31) */
ffa0a2b0:	08 09       	CC = R0 <= R1;
ffa0a2b2:	ed 1b       	IF CC JUMP 0xffa0a28c <_spi_write_packet_noDMA+0x30>;
ffa0a2b4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a2b8:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a2bc:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a2be:	10 97       	W[P2] = R0;
ffa0a2c0:	24 00       	SSYNC;
ffa0a2c2:	01 e8 00 00 	UNLINK;
ffa0a2c6:	10 00       	RTS;

ffa0a2c8 <_spi_read_packet>:
ffa0a2c8:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa0a2cc:	b8 b0       	[FP + 0x8] = R0;
ffa0a2ce:	b8 a0       	R0 = [FP + 0x8];
ffa0a2d0:	f0 bb       	[FP -0x4] = R0;
ffa0a2d2:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0a2d4:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0a2d8:	ff e3 62 fe 	CALL 0xffa09f9c <_spi_write_register>;
ffa0a2dc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a2e0:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a2e4:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a2e6:	10 97       	W[P2] = R0;
ffa0a2e8:	24 00       	SSYNC;
ffa0a2ea:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a2ee:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a2f2:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa0a2f6:	10 97       	W[P2] = R0;
ffa0a2f8:	ff e3 2e fe 	CALL 0xffa09f54 <_spi_delay>;
ffa0a2fc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a2fe:	b8 e6 fb ff 	B[FP + -0x5] = R0;
ffa0a302:	18 20       	JUMP.S 0xffa0a332 <_spi_read_packet+0x6a>;
ffa0a304:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a308:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a30c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a30e:	10 97       	W[P2] = R0;
ffa0a310:	ff e3 22 fe 	CALL 0xffa09f54 <_spi_delay>;
ffa0a314:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a318:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0a31c:	10 95       	R0 = W[P2] (Z);
ffa0a31e:	fa b9       	P2 = [FP -0x4];
ffa0a320:	10 9b       	B[P2] = R0;
ffa0a322:	f0 b9       	R0 = [FP -0x4];
ffa0a324:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a326:	f0 bb       	[FP -0x4] = R0;
ffa0a328:	b8 e5 fb ff 	R0 = B[FP + -0x5] (X);
ffa0a32c:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a32e:	b8 e6 fb ff 	B[FP + -0x5] = R0;
ffa0a332:	b8 e4 fb ff 	R0 = B[FP + -0x5] (Z);
ffa0a336:	f9 60       	R1 = 0x1f (X);		/*		R1=0x1f( 31) */
ffa0a338:	08 0a       	CC = R0 <= R1 (IU);
ffa0a33a:	e5 1b       	IF CC JUMP 0xffa0a304 <_spi_read_packet+0x3c>;
ffa0a33c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0a340:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a344:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a346:	10 97       	W[P2] = R0;
ffa0a348:	24 00       	SSYNC;
ffa0a34a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a34c:	01 e8 00 00 	UNLINK;
ffa0a350:	10 00       	RTS;
	...

ffa0a354 <_spi_read_packet_nocheck>:
ffa0a354:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a358:	b8 b0       	[FP + 0x8] = R0;
ffa0a35a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a35e:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a362:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a364:	10 97       	W[P2] = R0;
ffa0a366:	24 00       	SSYNC;
ffa0a368:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a36c:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a370:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa0a374:	10 97       	W[P2] = R0;
ffa0a376:	ff e3 ef fd 	CALL 0xffa09f54 <_spi_delay>;
ffa0a37a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a37e:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a382:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a384:	10 97       	W[P2] = R0;
ffa0a386:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a38a:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xffc00d50(-4190896) */
ffa0a38e:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa0a390:	10 97       	W[P2] = R0;
ffa0a392:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d50(-4190896) */
ffa0a396:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xffc00d54(-4190892) */
ffa0a39a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a39c:	10 97       	W[P2] = R0;
ffa0a39e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d54(-4190892) */
ffa0a3a2:	0a e1 44 0d 	P2.L = 0xd44;		/* (3396)	P2=0xffc00d44(-4190908) */
ffa0a3a6:	b8 a0       	R0 = [FP + 0x8];
ffa0a3a8:	10 93       	[P2] = R0;
ffa0a3aa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d44(-4190908) */
ffa0a3ae:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa0a3b2:	20 e1 83 00 	R0 = 0x83 (X);		/*		R0=0x83(131) */
ffa0a3b6:	10 97       	W[P2] = R0;
ffa0a3b8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa0a3bc:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a3c0:	20 e1 06 50 	R0 = 0x5006 (X);		/*		R0=0x5006(20486) */
ffa0a3c4:	10 97       	W[P2] = R0;
	...
ffa0a3ce:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a3d2:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a3d6:	10 95       	R0 = W[P2] (Z);
ffa0a3d8:	c1 42       	R1 = R0.L (Z);
ffa0a3da:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a3dc:	01 54       	R0 = R1 & R0;
ffa0a3de:	00 0c       	CC = R0 == 0x0;
ffa0a3e0:	f3 1b       	IF CC JUMP 0xffa0a3c6 <_spi_read_packet_nocheck+0x72>;
ffa0a3e2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a3e6:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa0a3ea:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a3ec:	10 97       	W[P2] = R0;
ffa0a3ee:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa0a3f2:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a3f6:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a3f8:	10 97       	W[P2] = R0;
ffa0a3fa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a3fe:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a402:	20 e1 0d 50 	R0 = 0x500d (X);		/*		R0=0x500d(20493) */
ffa0a406:	10 97       	W[P2] = R0;
ffa0a408:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a40c:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a410:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a412:	10 97       	W[P2] = R0;
ffa0a414:	24 00       	SSYNC;
ffa0a416:	01 e8 00 00 	UNLINK;
ffa0a41a:	10 00       	RTS;

ffa0a41c <_radio_set_rx>:
ffa0a41c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a420:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a424:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a428:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a42a:	10 97       	W[P2] = R0;
ffa0a42c:	24 00       	SSYNC;
ffa0a42e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a430:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a432:	ff e3 b5 fd 	CALL 0xffa09f9c <_spi_write_register>;
ffa0a436:	20 e1 e2 00 	R0 = 0xe2 (X);		/*		R0=0xe2(226) */
ffa0a43a:	ff e3 6f fe 	CALL 0xffa0a118 <_spi_write_byte>;
ffa0a43e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a440:	f9 60       	R1 = 0x1f (X);		/*		R1=0x1f( 31) */
ffa0a442:	ff e3 ad fd 	CALL 0xffa09f9c <_spi_write_register>;
ffa0a446:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0a448:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0a44c:	ff e3 a8 fd 	CALL 0xffa09f9c <_spi_write_register>;
ffa0a450:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a454:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a458:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a45a:	10 97       	W[P2] = R0;
ffa0a45c:	24 00       	SSYNC;
ffa0a45e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a462:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a466:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a468:	10 97       	W[P2] = R0;
ffa0a46a:	24 00       	SSYNC;
ffa0a46c:	01 e8 00 00 	UNLINK;
ffa0a470:	10 00       	RTS;
	...

ffa0a474 <_radio_set_tx>:
ffa0a474:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a478:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a47c:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a480:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a482:	10 97       	W[P2] = R0;
ffa0a484:	24 00       	SSYNC;
ffa0a486:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a488:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a48a:	ff e3 89 fd 	CALL 0xffa09f9c <_spi_write_register>;
ffa0a48e:	20 e1 e1 00 	R0 = 0xe1 (X);		/*		R0=0xe1(225) */
ffa0a492:	ff e3 43 fe 	CALL 0xffa0a118 <_spi_write_byte>;
ffa0a496:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0a498:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0a49c:	ff e3 80 fd 	CALL 0xffa09f9c <_spi_write_register>;
ffa0a4a0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a4a2:	f1 60       	R1 = 0x1e (X);		/*		R1=0x1e( 30) */
ffa0a4a4:	ff e3 7c fd 	CALL 0xffa09f9c <_spi_write_register>;
ffa0a4a8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a4ac:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a4b0:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a4b2:	10 97       	W[P2] = R0;
ffa0a4b4:	01 e8 00 00 	UNLINK;
ffa0a4b8:	10 00       	RTS;
	...

ffa0a4bc <_radio_wait_irq>:
ffa0a4bc:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0a4c0:	b8 b0       	[FP + 0x8] = R0;
ffa0a4c2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a4c4:	f0 bb       	[FP -0x4] = R0;
ffa0a4c6:	08 20       	JUMP.S 0xffa0a4d6 <_radio_wait_irq+0x1a>;
	...
ffa0a4d0:	f0 b9       	R0 = [FP -0x4];
ffa0a4d2:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a4d4:	f0 bb       	[FP -0x4] = R0;
ffa0a4d6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a4da:	0a e1 00 07 	P2.L = 0x700;		/* (1792)	P2=0xffc00700(-4192512) */
ffa0a4de:	10 95       	R0 = W[P2] (Z);
ffa0a4e0:	c1 42       	R1 = R0.L (Z);
ffa0a4e2:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa0a4e4:	01 54       	R0 = R1 & R0;
ffa0a4e6:	00 0c       	CC = R0 == 0x0;
ffa0a4e8:	05 18       	IF CC JUMP 0xffa0a4f2 <_radio_wait_irq+0x36>;
ffa0a4ea:	f1 b9       	R1 = [FP -0x4];
ffa0a4ec:	b8 a0       	R0 = [FP + 0x8];
ffa0a4ee:	81 08       	CC = R1 < R0;
ffa0a4f0:	ec 1b       	IF CC JUMP 0xffa0a4c8 <_radio_wait_irq+0xc>;
ffa0a4f2:	f1 b9       	R1 = [FP -0x4];
ffa0a4f4:	b8 a0       	R0 = [FP + 0x8];
ffa0a4f6:	81 08       	CC = R1 < R0;
ffa0a4f8:	06 10       	IF !CC JUMP 0xffa0a504 <_radio_wait_irq+0x48>;
ffa0a4fa:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0a4fc:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0a500:	ff e3 4e fd 	CALL 0xffa09f9c <_spi_write_register>;
ffa0a504:	f0 b9       	R0 = [FP -0x4];
ffa0a506:	01 e8 00 00 	UNLINK;
ffa0a50a:	10 00       	RTS;

ffa0a50c <_radio_init>:
ffa0a50c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a510:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a514:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00700(-4192512) */
ffa0a518:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a51c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a51e:	10 97       	W[P2] = R0;
ffa0a520:	24 00       	SSYNC;
ffa0a522:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a526:	0a e1 14 05 	P2.L = 0x514;		/* (1300)	P2=0xffc00514(-4193004) */
ffa0a52a:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa0a52c:	10 97       	W[P2] = R0;
ffa0a52e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00514(-4193004) */
ffa0a532:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a536:	20 e1 2d 50 	R0 = 0x502d (X);		/*		R0=0x502d(20525) */
ffa0a53a:	10 97       	W[P2] = R0;
ffa0a53c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a540:	0a e1 04 05 	P2.L = 0x504;		/* (1284)	P2=0xffc00504(-4193020) */
ffa0a544:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a546:	10 97       	W[P2] = R0;
ffa0a548:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00504(-4193020) */
ffa0a54c:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a550:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a552:	10 97       	W[P2] = R0;
ffa0a554:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc0050c(-4193012) */
ffa0a558:	09 e1 40 07 	P1.L = 0x740;		/* (1856)	P1=0xffc00740(-4192448) */
ffa0a55c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a560:	0a e1 40 07 	P2.L = 0x740;		/* (1856)	P2=0xffc00740(-4192448) */
ffa0a564:	10 95       	R0 = W[P2] (Z);
ffa0a566:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa0a568:	08 97       	W[P1] = R0;
ffa0a56a:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00740(-4192448) */
ffa0a56e:	09 e1 30 07 	P1.L = 0x730;		/* (1840)	P1=0xffc00730(-4192464) */
ffa0a572:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00740(-4192448) */
ffa0a576:	0a e1 30 07 	P2.L = 0x730;		/* (1840)	P2=0xffc00730(-4192464) */
ffa0a57a:	10 95       	R0 = W[P2] (Z);
ffa0a57c:	18 4c       	BITCLR (R0, 0x3);		/* bit  3 */
ffa0a57e:	08 97       	W[P1] = R0;
ffa0a580:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00730(-4192464) */
ffa0a584:	09 e1 30 07 	P1.L = 0x730;		/* (1840)	P1=0xffc00730(-4192464) */
ffa0a588:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00730(-4192464) */
ffa0a58c:	0a e1 30 07 	P2.L = 0x730;		/* (1840)	P2=0xffc00730(-4192464) */
ffa0a590:	11 95       	R1 = W[P2] (Z);
ffa0a592:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a594:	01 56       	R0 = R1 | R0;
ffa0a596:	08 97       	W[P1] = R0;
ffa0a598:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a59c:	21 e1 7c 00 	R1 = 0x7c (X);		/*		R1=0x7c(124) */
ffa0a5a0:	08 0a       	CC = R0 <= R1 (IU);
ffa0a5a2:	05 18       	IF CC JUMP 0xffa0a5ac <_radio_init+0xa0>;
ffa0a5a4:	20 e1 7c 00 	R0 = 0x7c (X);		/*		R0=0x7c(124) */
ffa0a5a8:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a5ac:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a5ae:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a5b0:	ff e3 f6 fc 	CALL 0xffa09f9c <_spi_write_register>;
ffa0a5b4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a5b6:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a5b8:	ff e3 2a fd 	CALL 0xffa0a00c <_spi_write_register_ver>;
ffa0a5bc:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a5be:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa0a5c0:	ff e3 26 fd 	CALL 0xffa0a00c <_spi_write_register_ver>;
ffa0a5c4:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a5c6:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa0a5c8:	ff e3 22 fd 	CALL 0xffa0a00c <_spi_write_register_ver>;
ffa0a5cc:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa0a5ce:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a5d0:	ff e3 1e fd 	CALL 0xffa0a00c <_spi_write_register_ver>;
ffa0a5d4:	b9 e4 08 00 	R1 = B[FP + 0x8] (Z);
ffa0a5d8:	28 60       	R0 = 0x5 (X);		/*		R0=0x5(  5) */
ffa0a5da:	ff e3 19 fd 	CALL 0xffa0a00c <_spi_write_register_ver>;
ffa0a5de:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa0a5e0:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa0a5e2:	ff e3 15 fd 	CALL 0xffa0a00c <_spi_write_register_ver>;
ffa0a5e6:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0a5e8:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0a5ec:	ff e3 10 fd 	CALL 0xffa0a00c <_spi_write_register_ver>;
ffa0a5f0:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa0a5f2:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa0a5f4:	ff e3 0c fd 	CALL 0xffa0a00c <_spi_write_register_ver>;
ffa0a5f8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00730(-4192464) */
ffa0a5fc:	0a e1 6c 0d 	P2.L = 0xd6c;		/* (3436)	P2=0xffc00d6c(-4190868) */
ffa0a600:	20 e1 00 50 	R0 = 0x5000 (X);		/*		R0=0x5000(20480) */
ffa0a604:	10 97       	W[P2] = R0;
ffa0a606:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d6c(-4190868) */
ffa0a60a:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a60e:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a610:	10 97       	W[P2] = R0;
ffa0a612:	20 e1 e2 00 	R0 = 0xe2 (X);		/*		R0=0xe2(226) */
ffa0a616:	ff e3 81 fd 	CALL 0xffa0a118 <_spi_write_byte>;
ffa0a61a:	20 e1 e1 00 	R0 = 0xe1 (X);		/*		R0=0xe1(225) */
ffa0a61e:	ff e3 7d fd 	CALL 0xffa0a118 <_spi_write_byte>;
ffa0a622:	01 e8 00 00 	UNLINK;
ffa0a626:	10 00       	RTS;
