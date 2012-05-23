
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
ffa0814e:	08 e1 f8 95 	P0.L = 0x95f8;		/* (-27144)	P0=0xffa095f8 <_main> */
ffa08152:	48 e1 a0 ff 	P0.H = 0xffa0;		/* (-96)	P0=0xffa095f8 <_main> */
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
ffa08186:	00 e3 67 09 	CALL 0xffa09454 <_exception_report>;
ffa0818a:	12 00       	RTX;

ffa0818c <_HWHANDLER>:
ffa0818c:	c1 31       	R0 = SEQSTAT;
ffa0818e:	cc 31       	R1 = RETX;
ffa08190:	fe 2f       	JUMP.S 0xffa0818c <_HWHANDLER>;
ffa08192:	11 00       	RTI;

ffa08194 <_NHANDLER>:
ffa08194:	00 e3 20 0a 	CALL 0xffa095d4 <_nmi_report>;
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
ffa08212:	00 e3 21 09 	CALL 0xffa09454 <_exception_report>;
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
ffa0824e:	00 e3 e1 01 	CALL 0xffa08610 <_get_asm>;
ffa08252:	3e 61       	R6 = 0x27 (X);		/*		R6=0x27( 39) */
ffa08254:	1e 97       	W[P3] = R6;
ffa08256:	00 e3 dd 01 	CALL 0xffa08610 <_get_asm>;
ffa0825a:	26 e1 70 00 	R6 = 0x70 (X);		/*		R6=0x70(112) */
ffa0825e:	1e 97       	W[P3] = R6;
ffa08260:	00 e3 d8 01 	CALL 0xffa08610 <_get_asm>;
ffa08264:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa08266:	0f b5       	W[P1 + 0x8] = R7;
ffa08268:	00 e3 d4 01 	CALL 0xffa08610 <_get_asm>;
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
ffa0827e:	00 e3 c9 01 	CALL 0xffa08610 <_get_asm>;
ffa08282:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa08284:	87 b9       	R7 = [FP -0x20];
ffa08286:	3e 08       	CC = R6 == R7;
ffa08288:	06 18       	IF CC JUMP 0xffa08294 <waitirq_end>;
ffa0828a:	ff 67       	R7 += -0x1;		/* ( -1) */
ffa0828c:	87 bb       	[FP -0x20] = R7;
ffa0828e:	00 e3 c1 01 	CALL 0xffa08610 <_get_asm>;
ffa08292:	f3 2f       	JUMP.S 0xffa08278 <waitirq_loop>;

ffa08294 <waitirq_end>:
ffa08294:	00 e3 be 01 	CALL 0xffa08610 <_get_asm>;
ffa08298:	27 01       	RETS = [SP++];
ffa0829a:	10 00       	RTS;
ffa0829c:	00 00       	NOP;
	...

ffa082a0 <_clearfifos_asm>:
ffa082a0:	67 01       	[--SP] = RETS;
ffa082a2:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa082a4:	8f b4       	W[P1 + 0x4] = R7;
ffa082a6:	00 e3 b5 01 	CALL 0xffa08610 <_get_asm>;
ffa082aa:	26 e1 e2 00 	R6 = 0xe2 (X);		/*		R6=0xe2(226) */
ffa082ae:	1e 97       	W[P3] = R6;
ffa082b0:	00 e3 b0 01 	CALL 0xffa08610 <_get_asm>;
ffa082b4:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa082b6:	0f b5       	W[P1 + 0x8] = R7;
ffa082b8:	00 e3 ac 01 	CALL 0xffa08610 <_get_asm>;
ffa082bc:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa082be:	8f b4       	W[P1 + 0x4] = R7;
ffa082c0:	00 e3 a8 01 	CALL 0xffa08610 <_get_asm>;
ffa082c4:	26 e1 e1 00 	R6 = 0xe1 (X);		/*		R6=0xe1(225) */
ffa082c8:	1e 97       	W[P3] = R6;
ffa082ca:	00 e3 a3 01 	CALL 0xffa08610 <_get_asm>;
ffa082ce:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa082d0:	0f b5       	W[P1 + 0x8] = R7;
ffa082d2:	00 e3 9f 01 	CALL 0xffa08610 <_get_asm>;
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
ffa083b8:	00 e3 a0 03 	CALL 0xffa08af8 <_init6>;
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
ffa08414:	00 e3 fe 00 	CALL 0xffa08610 <_get_asm>;
ffa08418:	f5 b9       	R5 = [FP -0x4];
ffa0841a:	25 49       	CC = BITTST (R5, 0x4);		/* bit  4 */
ffa0841c:	fc 13       	IF !CC JUMP 0xffa08414 <radio_loop>;
ffa0841e:	00 e3 f9 00 	CALL 0xffa08610 <_get_asm>;
ffa08422:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa08424:	f5 bb       	[FP -0x4] = R5;
ffa08426:	ff e3 3d ff 	CALL 0xffa082a0 <_clearfifos_asm>;
ffa0842a:	ff e3 0f ff 	CALL 0xffa08248 <_clearirq_asm>;
ffa0842e:	85 68       	P5 = 0x10 (X);		/*		P5=0x10( 16) */
ffa08430:	a2 e0 24 50 	LSETUP(0xffa08434 <wp_top>, 0xffa08478 <wp_bot>) LC0 = P5;

ffa08434 <wp_top>:
ffa08434:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa08436:	8f b4       	W[P1 + 0x4] = R7;
ffa08438:	00 e3 ec 00 	CALL 0xffa08610 <_get_asm>;
ffa0843c:	26 e1 a0 00 	R6 = 0xa0 (X);		/*		R6=0xa0(160) */
ffa08440:	1e 97       	W[P3] = R6;
ffa08442:	00 e3 e7 00 	CALL 0xffa08610 <_get_asm>;
ffa08446:	05 69       	P5 = 0x20 (X);		/*		P5=0x20( 32) */
ffa08448:	b2 e0 06 50 	LSETUP(0xffa0844c <pb_top>, 0xffa08454 <pb_bot>) LC1 = P5;

ffa0844c <pb_top>:
ffa0844c:	16 98       	R6 = B[P2++] (Z);
ffa0844e:	1e 97       	W[P3] = R6;
ffa08450:	00 e3 e0 00 	CALL 0xffa08610 <_get_asm>;

ffa08454 <pb_bot>:
ffa08454:	00 00       	NOP;
ffa08456:	7a 30       	R7 = P2;
ffa08458:	57 4c       	BITCLR (R7, 0xa);		/* bit 10 */
ffa0845a:	17 32       	P2 = R7;
ffa0845c:	00 e3 da 00 	CALL 0xffa08610 <_get_asm>;
ffa08460:	1f 60       	R7 = 0x3 (X);		/*		R7=0x3(  3) */
ffa08462:	0f b5       	W[P1 + 0x8] = R7;
ffa08464:	00 e3 d6 00 	CALL 0xffa08610 <_get_asm>;
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
ffa08486:	00 e3 c5 00 	CALL 0xffa08610 <_get_asm>;
ffa0848a:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa0848c:	8f b4       	W[P1 + 0x4] = R7;
ffa0848e:	00 e3 c1 00 	CALL 0xffa08610 <_get_asm>;
ffa08492:	26 e1 e2 00 	R6 = 0xe2 (X);		/*		R6=0xe2(226) */
ffa08496:	1e 97       	W[P3] = R6;
ffa08498:	00 e3 bc 00 	CALL 0xffa08610 <_get_asm>;
ffa0849c:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa0849e:	0f b5       	W[P1 + 0x8] = R7;
ffa084a0:	00 e3 b8 00 	CALL 0xffa08610 <_get_asm>;
ffa084a4:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa084a6:	8f b4       	W[P1 + 0x4] = R7;
ffa084a8:	00 e3 b4 00 	CALL 0xffa08610 <_get_asm>;
ffa084ac:	06 61       	R6 = 0x20 (X);		/*		R6=0x20( 32) */
ffa084ae:	1e 97       	W[P3] = R6;
ffa084b0:	00 e3 b0 00 	CALL 0xffa08610 <_get_asm>;
ffa084b4:	fe 60       	R6 = 0x1f (X);		/*		R6=0x1f( 31) */
ffa084b6:	1e 97       	W[P3] = R6;
ffa084b8:	00 e3 ac 00 	CALL 0xffa08610 <_get_asm>;
ffa084bc:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa084be:	0f b5       	W[P1 + 0x8] = R7;
ffa084c0:	00 e3 a8 00 	CALL 0xffa08610 <_get_asm>;
ffa084c4:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa084c6:	0f b5       	W[P1 + 0x8] = R7;
ffa084c8:	00 e3 a4 00 	CALL 0xffa08610 <_get_asm>;
ffa084cc:	ff e3 d2 fe 	CALL 0xffa08270 <_waitirq_asm>;
ffa084d0:	0f 95       	R7 = W[P1] (Z);
ffa084d2:	1f 49       	CC = BITTST (R7, 0x3);		/* bit  3 */
ffa084d4:	63 18       	IF CC JUMP 0xffa0859a <no_rxpacket>;
ffa084d6:	ff e3 b9 fe 	CALL 0xffa08248 <_clearirq_asm>;
ffa084da:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa084dc:	8f b4       	W[P1 + 0x4] = R7;
ffa084de:	00 e3 99 00 	CALL 0xffa08610 <_get_asm>;
ffa084e2:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa084e4:	8f b4       	W[P1 + 0x4] = R7;
ffa084e6:	00 e3 95 00 	CALL 0xffa08610 <_get_asm>;
ffa084ea:	26 e1 61 00 	R6 = 0x61 (X);		/*		R6=0x61( 97) */
ffa084ee:	1e 97       	W[P3] = R6;
ffa084f0:	00 e3 90 00 	CALL 0xffa08610 <_get_asm>;
ffa084f4:	25 68       	P5 = 0x4 (X);		/*		P5=0x4(  4) */
ffa084f6:	a2 e0 4b 50 	LSETUP(0xffa084fa <rp_top>, 0xffa0858c <rp_bot>) LC0 = P5;

ffa084fa <rp_top>:
ffa084fa:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa084fc:	e7 bb       	[FP -0x8] = R7;
ffa084fe:	d7 bb       	[FP -0xc] = R7;
ffa08500:	00 e3 88 00 	CALL 0xffa08610 <_get_asm>;
ffa08504:	25 68       	P5 = 0x4 (X);		/*		P5=0x4(  4) */
ffa08506:	b2 e0 0e 50 	LSETUP(0xffa0850a <a32_top>, 0xffa08522 <a32_bot>) LC1 = P5;

ffa0850a <a32_top>:
ffa0850a:	1f 97       	W[P3] = R7;
ffa0850c:	00 e3 82 00 	CALL 0xffa08610 <_get_asm>;
ffa08510:	9f a5       	R7 = W[P3 + 0xc] (Z);
ffa08512:	26 e1 ff 00 	R6 = 0xff (X);		/*		R6=0xff(255) */
ffa08516:	f7 55       	R7 = R7 & R6;
ffa08518:	e6 b9       	R6 = [FP -0x8];
ffa0851a:	82 c6 46 8c 	R6 = R6 << 0x8;
ffa0851e:	be 51       	R6 = R6 + R7;
ffa08520:	e6 bb       	[FP -0x8] = R6;

ffa08522 <a32_bot>:
ffa08522:	00 00       	NOP;
ffa08524:	00 e3 76 00 	CALL 0xffa08610 <_get_asm>;
ffa08528:	25 68       	P5 = 0x4 (X);		/*		P5=0x4(  4) */
ffa0852a:	b2 e0 0e 50 	LSETUP(0xffa0852e <v32_top>, 0xffa08546 <v32_bot>) LC1 = P5;

ffa0852e <v32_top>:
ffa0852e:	1f 97       	W[P3] = R7;
ffa08530:	00 e3 70 00 	CALL 0xffa08610 <_get_asm>;
ffa08534:	9f a5       	R7 = W[P3 + 0xc] (Z);
ffa08536:	26 e1 ff 00 	R6 = 0xff (X);		/*		R6=0xff(255) */
ffa0853a:	f7 55       	R7 = R7 & R6;
ffa0853c:	d6 b9       	R6 = [FP -0xc];
ffa0853e:	82 c6 46 8c 	R6 = R6 << 0x8;
ffa08542:	be 51       	R6 = R6 + R7;
ffa08544:	d6 bb       	[FP -0xc] = R6;

ffa08546 <v32_bot>:
ffa08546:	00 00       	NOP;
ffa08548:	00 e3 64 00 	CALL 0xffa08610 <_get_asm>;
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
ffa08566:	00 e3 55 00 	CALL 0xffa08610 <_get_asm>;
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
ffa08588:	00 e3 44 00 	CALL 0xffa08610 <_get_asm>;

ffa0858c <rp_bot>:
ffa0858c:	00 00       	NOP;
ffa0858e:	00 e3 41 00 	CALL 0xffa08610 <_get_asm>;
ffa08592:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa08594:	0f b5       	W[P1 + 0x8] = R7;
ffa08596:	00 e3 3d 00 	CALL 0xffa08610 <_get_asm>;

ffa0859a <no_rxpacket>:
ffa0859a:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa0859c:	8f b4       	W[P1 + 0x4] = R7;
ffa0859e:	00 e3 39 00 	CALL 0xffa08610 <_get_asm>;
ffa085a2:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa085a4:	8f b4       	W[P1 + 0x4] = R7;
ffa085a6:	00 e3 35 00 	CALL 0xffa08610 <_get_asm>;
ffa085aa:	26 e1 e1 00 	R6 = 0xe1 (X);		/*		R6=0xe1(225) */
ffa085ae:	1e 97       	W[P3] = R6;
ffa085b0:	00 e3 30 00 	CALL 0xffa08610 <_get_asm>;
ffa085b4:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa085b6:	0f b5       	W[P1 + 0x8] = R7;
ffa085b8:	00 e3 2c 00 	CALL 0xffa08610 <_get_asm>;
ffa085bc:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa085be:	8f b4       	W[P1 + 0x4] = R7;
ffa085c0:	00 e3 28 00 	CALL 0xffa08610 <_get_asm>;
ffa085c4:	06 61       	R6 = 0x20 (X);		/*		R6=0x20( 32) */
ffa085c6:	1e 97       	W[P3] = R6;
ffa085c8:	00 e3 24 00 	CALL 0xffa08610 <_get_asm>;
ffa085cc:	f6 60       	R6 = 0x1e (X);		/*		R6=0x1e( 30) */
ffa085ce:	1e 97       	W[P3] = R6;
ffa085d0:	00 e3 20 00 	CALL 0xffa08610 <_get_asm>;
ffa085d4:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa085d6:	0f b5       	W[P1 + 0x8] = R7;
ffa085d8:	00 e3 1c 00 	CALL 0xffa08610 <_get_asm>;
ffa085dc:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00004(-4194300) */
ffa085e0:	0d e1 08 02 	P5.L = 0x208;		/* (520)	P5=0xffc00208(-4193784) */
ffa085e4:	2f 93       	[P5] = R7;
ffa085e6:	00 e3 15 00 	CALL 0xffa08610 <_get_asm>;
ffa085ea:	87 60       	R7 = 0x10 (X);		/*		R7=0x10( 16) */
ffa085ec:	8f b4       	W[P1 + 0x4] = R7;
ffa085ee:	00 e3 11 00 	CALL 0xffa08610 <_get_asm>;
ffa085f2:	e7 b8       	R7 = [FP -0x48];
ffa085f4:	86 e1 01 00 	R6 = 0x1 (Z);		/*		R6=0x1(  1) */
ffa085f8:	f7 51       	R7 = R7 + R6;
ffa085fa:	82 c6 e7 8d 	R6 = R7 >> 0x4;
ffa085fe:	0e b5       	W[P1 + 0x8] = R6;
ffa08600:	47 4c       	BITCLR (R7, 0x8);		/* bit  8 */
ffa08602:	e7 ba       	[FP -0x48] = R7;
ffa08604:	00 e3 06 00 	CALL 0xffa08610 <_get_asm>;
ffa08608:	06 2f       	JUMP.S 0xffa08414 <radio_loop>;
ffa0860a:	00 00       	NOP;
ffa0860c:	00 00       	NOP;
	...

ffa08610 <_get_asm>:
ffa08610:	68 b9       	P0 = [FP -0x28];
ffa08612:	27 e1 00 01 	R7 = 0x100 (X);		/*		R7=0x100(256) */
ffa08616:	8f b4       	W[P1 + 0x4] = R7;
ffa08618:	27 e1 80 00 	R7 = 0x80 (X);		/*		R7=0x80(128) */
ffa0861c:	0f b5       	W[P1 + 0x8] = R7;

ffa0861e <wait_samples>:
ffa0861e:	03 a7       	R3 = W[P0 + 0x18] (Z);
ffa08620:	03 48       	CC = !BITTST (R3, 0x0);		/* bit  0 */
ffa08622:	fe 1b       	IF CC JUMP 0xffa0861e <wait_samples>;
ffa08624:	00 95       	R0 = W[P0] (Z);
ffa08626:	01 95       	R1 = W[P0] (Z);
ffa08628:	d2 b8       	R2 = [FP -0x4c];
ffa0862a:	81 4f       	R1 <<= 0x10;
ffa0862c:	08 56       	R0 = R0 | R1;
ffa0862e:	d0 55       	R7 = R0 & R2;
ffa08630:	05 9c       	R5 = [I0++];
ffa08632:	8d b5       	W[P1 + 0xc] = R5;
ffa08634:	c6 b8       	R6 = [FP -0x50];
ffa08636:	00 00       	NOP;
ffa08638:	03 c8 00 18 	MNOP || R5 = [I0++] || R1 = [I1++];
ffa0863c:	05 9c 09 9c 
ffa08640:	00 c8 3d c0 	A1 = R7.H * R5.H, A0 = R7.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa08644:	05 9c 0a 9c 
ffa08648:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || R4 = [I1++];
ffa0864c:	05 9c 0c 9c 
ffa08650:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R5 = [I0++] || R3 = [I1++];
ffa08654:	05 9c 0b 9c 
ffa08658:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || [I2++] = R7;
ffa0865c:	05 9c 17 9e 
ffa08660:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || R5 = [I1++] || NOP;
ffa08664:	0d 9c 00 00 
ffa08668:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || [I2++] = R1 || NOP;
ffa0866c:	11 9e 00 00 
ffa08670:	83 ce 38 00 	A0 = A0 << 0x7 || [I2++] = R3 || NOP;
ffa08674:	13 9e 00 00 
ffa08678:	83 ce 38 10 	A1 = A1 << 0x7 || [I2++] = R0 || NOP;
ffa0867c:	10 9e 00 00 
ffa08680:	07 c8 c0 39 	R7.H = A1, R7.L = A0 || I1 += M0 || NOP;
ffa08684:	61 9e 00 00 
ffa08688:	10 cc 00 c0 	A1 = ABS A0, A0 = ABS A0 || R1 = [I0++] || NOP;
ffa0868c:	01 9c 00 00 
ffa08690:	06 c9 09 f1 	R4.H = (A1 -= R1.H * R1.H), R4.L = (A0 -= R1.L * R1.L) (IS) || R1 = [I0++] || NOP;
ffa08694:	01 9c 00 00 
ffa08698:	00 c0 2e 80 	A1 = R5.H * R6.L, A0 = R5.L * R6.L;
ffa0869c:	26 c0 e1 f0 	R3.H = (A1 -= R4.H * R1.H), R3.L = (A0 -= R4.L * R1.L) (S2RND);
ffa086a0:	06 c4 18 86 	R3 = ABS R3 (V);
ffa086a4:	03 c8 00 18 	MNOP || [I2++] = R3 || NOP;
ffa086a8:	13 9e 00 00 
ffa086ac:	81 ce 6f 40 	R0 = R7 << 0xd (V, S) || R1 = [I1 ++ M0] || R2 = [I0++];
ffa086b0:	89 9d 02 9c 
ffa086b4:	00 c8 0a c0 	A1 = R1.H * R2.H, A0 = R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa086b8:	89 9d 02 9c 
ffa086bc:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa086c0:	89 9d 02 9c 
ffa086c4:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa086c8:	89 9d 02 9c 
ffa086cc:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa086d0:	89 9d 02 9c 
ffa086d4:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa086d8:	89 9d 02 9c 
ffa086dc:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa086e0:	89 9d 02 9c 
ffa086e4:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa086e8:	89 9d 02 9c 
ffa086ec:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa086f0:	89 9d 02 9c 
ffa086f4:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa086f8:	89 9d 02 9c 
ffa086fc:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08700:	89 9d 02 9c 
ffa08704:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08708:	89 9d 02 9c 
ffa0870c:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08710:	89 9d 02 9c 
ffa08714:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08718:	89 9d 02 9c 
ffa0871c:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08720:	89 9d 02 9c 
ffa08724:	05 c8 8a e9 	R6.H = (A1 += R1.H * R2.H), R6.L = (A0 += R1.L * R2.L) || R1 = [I1++] || R5 = [I0++];
ffa08728:	09 9c 05 9c 
ffa0872c:	00 cc 3e ee 	R7 = R7 -|- R6 (S) || I0 -= M1 || [I2++] = R7;
ffa08730:	74 9e 17 9e 
ffa08734:	81 ce 3f 46 	R3 = R7 << 0x7 (V, S) || I1 += M2 || [I2++] = R0;
ffa08738:	69 9e 10 9e 
ffa0873c:	81 ce 93 47 	R3 = R3 >>> 0xe (V) || R1 = [I1 ++ M3] || R2 = [I0];
ffa08740:	e9 9d 02 9d 
ffa08744:	00 c8 0b c0 	A1 = R1.H * R3.H, A0 = R1.L * R3.L || [I2++] = R6 || NOP;
ffa08748:	16 9e 00 00 
ffa0874c:	05 c8 15 e9 	R4.H = (A1 += R2.H * R5.H), R4.L = (A0 += R2.L * R5.L) || I1 -= M2 || NOP;
ffa08750:	79 9e 00 00 
ffa08754:	03 c8 00 18 	MNOP || [I0 ++ M1] = R4 || NOP;
ffa08758:	a4 9f 00 00 
ffa0875c:	03 c8 00 18 	MNOP || R5 = [I0++] || R1 = [I1++];
ffa08760:	05 9c 09 9c 
ffa08764:	00 c8 3d c0 	A1 = R7.H * R5.H, A0 = R7.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa08768:	05 9c 0a 9c 
ffa0876c:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || R3 = [I1++];
ffa08770:	05 9c 0b 9c 
ffa08774:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R5 = [I0++] || R4 = [I1++];
ffa08778:	05 9c 0c 9c 
ffa0877c:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || [I2++] = R7;
ffa08780:	05 9c 17 9e 
ffa08784:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || [I2++] = R1 || NOP;
ffa08788:	11 9e 00 00 
ffa0878c:	03 c8 00 18 	MNOP || R5 = [I0++] || [I2++] = R0;
ffa08790:	05 9c 10 9e 
ffa08794:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || R5 = [I0++] || [I2++] = R3;
ffa08798:	05 9c 13 9e 
ffa0879c:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || R1 = [I1++];
ffa087a0:	05 9c 09 9c 
ffa087a4:	01 c8 25 c8 	A1 += R4.H * R5.H, A0 += R4.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa087a8:	05 9c 0a 9c 
ffa087ac:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || NOP;
ffa087b0:	05 9c 00 00 
ffa087b4:	25 c8 15 e8 	R0.H = (A1 += R2.H * R5.H), R0.L = (A0 += R2.L * R5.L) (S2RND) || R5 = [I0++] || NOP;
ffa087b8:	05 9c 00 00 
ffa087bc:	00 cc 05 20 	R0 = R0 +|+ R5 (S) || [I2++] = R0 || NOP;
ffa087c0:	10 9e 00 00 
ffa087c4:	81 ce 88 0d 	R6 = R0 >>> 0xf (V) || [I2++] = R1 || NOP;
ffa087c8:	11 9e 00 00 
ffa087cc:	03 c8 00 18 	MNOP || R5 = [I0++] || R1 = [I1++];
ffa087d0:	05 9c 09 9c 
ffa087d4:	00 c8 3d c0 	A1 = R7.H * R5.H, A0 = R7.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa087d8:	05 9c 0a 9c 
ffa087dc:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || R3 = [I1++];
ffa087e0:	05 9c 0b 9c 
ffa087e4:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R5 = [I0++] || R4 = [I1++];
ffa087e8:	05 9c 0c 9c 
ffa087ec:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || [I2++] = R7;
ffa087f0:	05 9c 17 9e 
ffa087f4:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || [I2++] = R1 || NOP;
ffa087f8:	11 9e 00 00 
ffa087fc:	03 c8 00 18 	MNOP || R5 = [I0++] || [I2++] = R0;
ffa08800:	05 9c 10 9e 
ffa08804:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || R5 = [I0++] || [I2++] = R3;
ffa08808:	05 9c 13 9e 
ffa0880c:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || R1 = [I1++];
ffa08810:	05 9c 09 9c 
ffa08814:	01 c8 25 c8 	A1 += R4.H * R5.H, A0 += R4.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa08818:	05 9c 0a 9c 
ffa0881c:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || NOP;
ffa08820:	05 9c 00 00 
ffa08824:	25 c8 15 e8 	R0.H = (A1 += R2.H * R5.H), R0.L = (A0 += R2.L * R5.L) (S2RND) || R5 = [I0++] || NOP;
ffa08828:	05 9c 00 00 
ffa0882c:	00 cc 05 20 	R0 = R0 +|+ R5 (S) || R7 = [I0++] || [I2++] = R0;
ffa08830:	07 9c 10 9e 
ffa08834:	81 ce 88 41 	R0 = R0 >>> 0xf (V) || R5 = [I0++] || [I2++] = R1;
ffa08838:	05 9c 11 9e 
ffa0883c:	be 55       	R6 = R6 & R7;
ffa0883e:	28 54       	R0 = R0 & R5;
ffa08840:	86 57       	R6 = R6 | R0;
ffa08842:	76 bb       	[FP -0x24] = R6;
ffa08844:	40 e4 80 00 	R0 = W[P0 + 0x100] (Z);
ffa08848:	41 e4 80 00 	R1 = W[P0 + 0x100] (Z);
ffa0884c:	d2 b8       	R2 = [FP -0x4c];
ffa0884e:	81 4f       	R1 <<= 0x10;
ffa08850:	08 56       	R0 = R0 | R1;
ffa08852:	d0 55       	R7 = R0 & R2;
ffa08854:	c6 b8       	R6 = [FP -0x50];
ffa08856:	00 00       	NOP;
ffa08858:	03 c8 00 18 	MNOP || R5 = [I0++] || R1 = [I1++];
ffa0885c:	05 9c 09 9c 
ffa08860:	00 c8 3d c0 	A1 = R7.H * R5.H, A0 = R7.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa08864:	05 9c 0a 9c 
ffa08868:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || R4 = [I1++];
ffa0886c:	05 9c 0c 9c 
ffa08870:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R5 = [I0++] || R3 = [I1++];
ffa08874:	05 9c 0b 9c 
ffa08878:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || [I2++] = R7;
ffa0887c:	05 9c 17 9e 
ffa08880:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || R5 = [I1++] || NOP;
ffa08884:	0d 9c 00 00 
ffa08888:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || [I2++] = R1 || NOP;
ffa0888c:	11 9e 00 00 
ffa08890:	83 ce 38 00 	A0 = A0 << 0x7 || [I2++] = R3 || NOP;
ffa08894:	13 9e 00 00 
ffa08898:	83 ce 38 10 	A1 = A1 << 0x7 || [I2++] = R0 || NOP;
ffa0889c:	10 9e 00 00 
ffa088a0:	07 c8 c0 39 	R7.H = A1, R7.L = A0 || I1 += M0 || NOP;
ffa088a4:	61 9e 00 00 
ffa088a8:	10 cc 00 c0 	A1 = ABS A0, A0 = ABS A0 || R1 = [I0++] || NOP;
ffa088ac:	01 9c 00 00 
ffa088b0:	06 c9 09 f1 	R4.H = (A1 -= R1.H * R1.H), R4.L = (A0 -= R1.L * R1.L) (IS) || R1 = [I0++] || NOP;
ffa088b4:	01 9c 00 00 
ffa088b8:	00 c0 2e 80 	A1 = R5.H * R6.L, A0 = R5.L * R6.L;
ffa088bc:	26 c0 e1 f0 	R3.H = (A1 -= R4.H * R1.H), R3.L = (A0 -= R4.L * R1.L) (S2RND);
ffa088c0:	06 c4 18 86 	R3 = ABS R3 (V);
ffa088c4:	03 c8 00 18 	MNOP || [I2++] = R3 || NOP;
ffa088c8:	13 9e 00 00 
ffa088cc:	81 ce 6f 40 	R0 = R7 << 0xd (V, S) || R1 = [I1 ++ M0] || R2 = [I0++];
ffa088d0:	89 9d 02 9c 
ffa088d4:	00 c8 0a c0 	A1 = R1.H * R2.H, A0 = R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa088d8:	89 9d 02 9c 
ffa088dc:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa088e0:	89 9d 02 9c 
ffa088e4:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa088e8:	89 9d 02 9c 
ffa088ec:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa088f0:	89 9d 02 9c 
ffa088f4:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa088f8:	89 9d 02 9c 
ffa088fc:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08900:	89 9d 02 9c 
ffa08904:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08908:	89 9d 02 9c 
ffa0890c:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08910:	89 9d 02 9c 
ffa08914:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08918:	89 9d 02 9c 
ffa0891c:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08920:	89 9d 02 9c 
ffa08924:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08928:	89 9d 02 9c 
ffa0892c:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08930:	89 9d 02 9c 
ffa08934:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08938:	89 9d 02 9c 
ffa0893c:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08940:	89 9d 02 9c 
ffa08944:	05 c8 8a e9 	R6.H = (A1 += R1.H * R2.H), R6.L = (A0 += R1.L * R2.L) || R1 = [I1++] || R5 = [I0++];
ffa08948:	09 9c 05 9c 
ffa0894c:	00 cc 3e ee 	R7 = R7 -|- R6 (S) || I0 -= M1 || [I2++] = R7;
ffa08950:	74 9e 17 9e 
ffa08954:	81 ce 3f 46 	R3 = R7 << 0x7 (V, S) || I1 += M2 || [I2++] = R0;
ffa08958:	69 9e 10 9e 
ffa0895c:	81 ce 93 47 	R3 = R3 >>> 0xe (V) || R1 = [I1 ++ M3] || R2 = [I0];
ffa08960:	e9 9d 02 9d 
ffa08964:	00 c8 0b c0 	A1 = R1.H * R3.H, A0 = R1.L * R3.L || [I2++] = R6 || NOP;
ffa08968:	16 9e 00 00 
ffa0896c:	05 c8 15 e9 	R4.H = (A1 += R2.H * R5.H), R4.L = (A0 += R2.L * R5.L) || I1 -= M2 || NOP;
ffa08970:	79 9e 00 00 
ffa08974:	03 c8 00 18 	MNOP || [I0 ++ M1] = R4 || NOP;
ffa08978:	a4 9f 00 00 
ffa0897c:	03 c8 00 18 	MNOP || R5 = [I0++] || R1 = [I1++];
ffa08980:	05 9c 09 9c 
ffa08984:	00 c8 3d c0 	A1 = R7.H * R5.H, A0 = R7.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa08988:	05 9c 0a 9c 
ffa0898c:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || R3 = [I1++];
ffa08990:	05 9c 0b 9c 
ffa08994:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R5 = [I0++] || R4 = [I1++];
ffa08998:	05 9c 0c 9c 
ffa0899c:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || [I2++] = R7;
ffa089a0:	05 9c 17 9e 
ffa089a4:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || [I2++] = R1 || NOP;
ffa089a8:	11 9e 00 00 
ffa089ac:	03 c8 00 18 	MNOP || R5 = [I0++] || [I2++] = R0;
ffa089b0:	05 9c 10 9e 
ffa089b4:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || R5 = [I0++] || [I2++] = R3;
ffa089b8:	05 9c 13 9e 
ffa089bc:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || R1 = [I1++];
ffa089c0:	05 9c 09 9c 
ffa089c4:	01 c8 25 c8 	A1 += R4.H * R5.H, A0 += R4.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa089c8:	05 9c 0a 9c 
ffa089cc:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || NOP;
ffa089d0:	05 9c 00 00 
ffa089d4:	25 c8 15 e8 	R0.H = (A1 += R2.H * R5.H), R0.L = (A0 += R2.L * R5.L) (S2RND) || R5 = [I0++] || NOP;
ffa089d8:	05 9c 00 00 
ffa089dc:	00 cc 05 20 	R0 = R0 +|+ R5 (S) || [I2++] = R0 || NOP;
ffa089e0:	10 9e 00 00 
ffa089e4:	81 ce 88 0d 	R6 = R0 >>> 0xf (V) || [I2++] = R1 || NOP;
ffa089e8:	11 9e 00 00 
ffa089ec:	03 c8 00 18 	MNOP || R5 = [I0++] || R1 = [I1++];
ffa089f0:	05 9c 09 9c 
ffa089f4:	00 c8 3d c0 	A1 = R7.H * R5.H, A0 = R7.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa089f8:	05 9c 0a 9c 
ffa089fc:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || R3 = [I1++];
ffa08a00:	05 9c 0b 9c 
ffa08a04:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R5 = [I0++] || R4 = [I1++];
ffa08a08:	05 9c 0c 9c 
ffa08a0c:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || [I2++] = R7;
ffa08a10:	05 9c 17 9e 
ffa08a14:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || [I2++] = R1 || NOP;
ffa08a18:	11 9e 00 00 
ffa08a1c:	03 c8 00 18 	MNOP || R5 = [I0++] || [I2++] = R0;
ffa08a20:	05 9c 10 9e 
ffa08a24:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || R5 = [I0++] || [I2++] = R3;
ffa08a28:	05 9c 13 9e 
ffa08a2c:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || R1 = [I1++];
ffa08a30:	05 9c 09 9c 
ffa08a34:	01 c8 25 c8 	A1 += R4.H * R5.H, A0 += R4.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa08a38:	05 9c 0a 9c 
ffa08a3c:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || NOP;
ffa08a40:	05 9c 00 00 
ffa08a44:	25 c8 15 e8 	R0.H = (A1 += R2.H * R5.H), R0.L = (A0 += R2.L * R5.L) (S2RND) || R5 = [I0++] || NOP;
ffa08a48:	05 9c 00 00 
ffa08a4c:	00 cc 05 20 	R0 = R0 +|+ R5 (S) || R7 = [I0++] || [I2++] = R0;
ffa08a50:	07 9c 10 9e 
ffa08a54:	81 ce 90 41 	R0 = R0 >>> 0xe (V) || R5 = [I0++] || [I2++] = R1;
ffa08a58:	05 9c 11 9e 
ffa08a5c:	be 55       	R6 = R6 & R7;
ffa08a5e:	28 54       	R0 = R0 & R5;
ffa08a60:	86 57       	R6 = R6 | R0;
ffa08a62:	77 b9       	R7 = [FP -0x24];
ffa08a64:	37 56       	R0 = R7 | R6;
ffa08a66:	06 9c       	R6 = [I0++];
ffa08a68:	06 32       	P0 = R6;
ffa08a6a:	3d b9       	P5 = [FP -0x34];
ffa08a6c:	19 b9       	P1 = [FP -0x3c];
ffa08a6e:	02 c4 00 40 	R0.L = R0.L + R0.H (NS);
ffa08a72:	40 43       	R0 = R0.B (Z);
ffa08a74:	45 5b       	P5 = P5 + P0;
ffa08a76:	29 99       	R1 = B[P5] (Z);
ffa08a78:	41 56       	R1 = R1 | R0;
ffa08a7a:	01 32       	P0 = R1;
ffa08a7c:	29 9b       	B[P5] = R1;
ffa08a7e:	03 69       	P3 = 0x20 (X);		/*		P3=0x20( 32) */
ffa08a80:	5d 5b       	P5 = P5 + P3;
ffa08a82:	41 5a       	P1 = P1 + P0;
ffa08a84:	0a 99       	R2 = B[P1] (Z);
ffa08a86:	2a 9b       	B[P5] = R2;
ffa08a88:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa08a8a:	06 08       	CC = R6 == R0;
ffa08a8c:	33 14       	IF !CC JUMP 0xffa08af2 <end_txchan> (BP);
ffa08a8e:	98 b9       	P0 = [FP -0x1c];
ffa08a90:	2f 60       	R7 = 0x5 (X);		/*		R7=0x5(  5) */
ffa08a92:	00 00       	NOP;
ffa08a94:	00 00       	NOP;
ffa08a96:	00 00       	NOP;
ffa08a98:	03 c8 00 18 	MNOP || P1 = [FP -0x18] || R0 = [I3++];
ffa08a9c:	a9 b9 18 9c 
ffa08aa0:	03 c8 00 18 	MNOP || P3 = [FP -0x14] || R1 = [I3++];
ffa08aa4:	bb b9 19 9c 
ffa08aa8:	03 c8 00 18 	MNOP || P5 = [FP -0x10] || R4 = [I3++];
ffa08aac:	cd b9 1c 9c 
ffa08ab0:	28 34       	M1 = R0;
ffa08ab2:	31 34       	M2 = R1;
ffa08ab4:	00 99       	R0 = B[P0] (Z);
ffa08ab6:	09 99       	R1 = B[P1] (Z);
ffa08ab8:	1a 99       	R2 = B[P3] (Z);
ffa08aba:	2b 99       	R3 = B[P5] (Z);
ffa08abc:	20 9a       	B[P4++] = R0;
ffa08abe:	21 9a       	B[P4++] = R1;
ffa08ac0:	22 9a       	B[P4++] = R2;
ffa08ac2:	23 9a       	B[P4++] = R3;
ffa08ac4:	3c 08       	CC = R4 == R7;
ffa08ac6:	13 14       	IF !CC JUMP 0xffa08aec <end_txchan_qs> (BP);
ffa08ac8:	1f 9c       	R7 = [I3++];
ffa08aca:	1e 9c       	R6 = [I3++];
ffa08acc:	2e 32       	P5 = R6;
ffa08ace:	f5 b9       	R5 = [FP -0x4];
ffa08ad0:	0d 64       	R5 += 0x1;		/* (  1) */
ffa08ad2:	f5 bb       	[FP -0x4] = R5;
ffa08ad4:	f5 b8       	R5 = [FP -0x44];
ffa08ad6:	28 90       	R0 = [P5++];
ffa08ad8:	29 90       	R1 = [P5++];
ffa08ada:	38 56       	R0 = R0 | R7;
ffa08adc:	69 56       	R1 = R1 | R5;
ffa08ade:	e0 6a       	P0 = -0x24 (X);		/*		P0=0xffffffdc(-36) */
ffa08ae0:	45 5b       	P5 = P5 + P0;
ffa08ae2:	20 92       	[P4++] = R0;
ffa08ae4:	21 92       	[P4++] = R1;
ffa08ae6:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa08ae8:	ac 92       	[P5--] = R4;
ffa08aea:	ac 92       	[P5--] = R4;

ffa08aec <end_txchan_qs>:
ffa08aec:	7c 30       	R7 = P4;
ffa08aee:	57 4c       	BITCLR (R7, 0xa);		/* bit 10 */
ffa08af0:	27 32       	P4 = R7;

ffa08af2 <end_txchan>:
ffa08af2:	5b b9       	P3 = [FP -0x2c];
ffa08af4:	49 b9       	P1 = [FP -0x30];
ffa08af6:	10 00       	RTS;

ffa08af8 <_init6>:
ffa08af8:	10 e1 00 40 	I0.L = 0x4000;		/* (16384)	I0=0x4000(16384) */
ffa08afc:	50 e1 90 ff 	I0.H = 0xff90;		/* (-112)	I0=0xff904000(-7323648) */
ffa08b00:	80 36       	B0 = I0;
ffa08b02:	1c e1 00 30 	L0.L = 0x3000;		/* (12288)	L0=0x3000(12288) */
ffa08b06:	5c e1 00 00 	L0.H = 0x0;		/* (  0)	L0=0x3000(12288) */
ffa08b0a:	14 e1 40 01 	M0.L = 0x140;		/* (320)	M0=0x140(320) */
ffa08b0e:	54 e1 00 00 	M0.H = 0x0;		/* (  0)	M0=0x140(320) */
ffa08b12:	05 69       	P5 = 0x20 (X);		/*		P5=0x20( 32) */
ffa08b14:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa08b16:	a2 e0 af 50 	LSETUP(0xffa08b1a <lt_top>, 0xffa08c74 <lt_bot>) LC0 = P5;

ffa08b1a <lt_top>:
ffa08b1a:	20 e1 00 01 	R0 = 0x100 (X);		/*		R0=0x100(256) */
ffa08b1e:	00 9e       	[I0++] = R0;
ffa08b20:	15 68       	P5 = 0x2 (X);		/*		P5=0x2(  2) */
ffa08b22:	b2 e0 97 50 	LSETUP(0xffa08b26 <lt2_top>, 0xffa08c50 <lt2_bot>) LC1 = P5;

ffa08b26 <lt2_top>:
ffa08b26:	00 e1 00 40 	R0.L = 0x4000;		/* (16384)	R0=0x4000(16384) */
ffa08b2a:	20 9e       	W[I0++] = R0.L;
ffa08b2c:	20 9e       	W[I0++] = R0.L;
ffa08b2e:	00 e1 00 00 	R0.L = 0x0;		/* (  0)	R0=0x0(  0) */
ffa08b32:	20 9e       	W[I0++] = R0.L;
ffa08b34:	20 9e       	W[I0++] = R0.L;
ffa08b36:	00 e1 00 c0 	R0.L = 0xc000;		/* (-16384)	R0=0xc000(49152) */
ffa08b3a:	20 9e       	W[I0++] = R0.L;
ffa08b3c:	20 9e       	W[I0++] = R0.L;
ffa08b3e:	00 e1 07 5d 	R0.L = 0x5d07;		/* (23815)	R0=0x5d07(23815) */
ffa08b42:	20 9e       	W[I0++] = R0.L;
ffa08b44:	20 9e       	W[I0++] = R0.L;
ffa08b46:	00 e1 2b dd 	R0.L = 0xdd2b;		/* (-8917)	R0=0xdd2b(56619) */
ffa08b4a:	20 9e       	W[I0++] = R0.L;
ffa08b4c:	20 9e       	W[I0++] = R0.L;
ffa08b4e:	00 e1 bb 26 	R0.L = 0x26bb;		/* (9915)	R0=0x26bb(9915) */
ffa08b52:	40 e1 bb 26 	R0.H = 0x26bb;		/* (9915)	R0=0x26bb26bb(649799355) */
ffa08b56:	00 9e       	[I0++] = R0;
ffa08b58:	00 e1 01 00 	R0.L = 0x1;		/* (  1)	R0=0x26bb0001(649789441) */
ffa08b5c:	20 9e       	W[I0++] = R0.L;
ffa08b5e:	20 9e       	W[I0++] = R0.L;
ffa08b60:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa08b62:	00 9e       	[I0++] = R0;
ffa08b64:	00 9e       	[I0++] = R0;
ffa08b66:	00 9e       	[I0++] = R0;
ffa08b68:	00 9e       	[I0++] = R0;
ffa08b6a:	00 9e       	[I0++] = R0;
ffa08b6c:	00 9e       	[I0++] = R0;
ffa08b6e:	00 9e       	[I0++] = R0;
ffa08b70:	00 9e       	[I0++] = R0;
ffa08b72:	00 9e       	[I0++] = R0;
ffa08b74:	00 9e       	[I0++] = R0;
ffa08b76:	00 9e       	[I0++] = R0;
ffa08b78:	00 9e       	[I0++] = R0;
ffa08b7a:	00 9e       	[I0++] = R0;
ffa08b7c:	00 9e       	[I0++] = R0;
ffa08b7e:	00 9e       	[I0++] = R0;
ffa08b80:	00 e1 ff 7f 	R0.L = 0x7fff;		/* (32767)	R0=0x7fff(32767) */
ffa08b84:	20 9e       	W[I0++] = R0.L;
ffa08b86:	20 9e       	W[I0++] = R0.L;
ffa08b88:	20 e1 d4 1e 	R0 = 0x1ed4 (X);		/*		R0=0x1ed4(7892) */
ffa08b8c:	20 9e       	W[I0++] = R0.L;
ffa08b8e:	20 9e       	W[I0++] = R0.L;
ffa08b90:	20 e1 a9 3d 	R0 = 0x3da9 (X);		/*		R0=0x3da9(15785) */
ffa08b94:	20 9e       	W[I0++] = R0.L;
ffa08b96:	20 9e       	W[I0++] = R0.L;
ffa08b98:	20 e1 d4 1e 	R0 = 0x1ed4 (X);		/*		R0=0x1ed4(7892) */
ffa08b9c:	20 9e       	W[I0++] = R0.L;
ffa08b9e:	20 9e       	W[I0++] = R0.L;
ffa08ba0:	20 e1 ad 14 	R0 = 0x14ad (X);		/*		R0=0x14ad(5293) */
ffa08ba4:	20 9e       	W[I0++] = R0.L;
ffa08ba6:	20 9e       	W[I0++] = R0.L;
ffa08ba8:	20 e1 c9 e2 	R0 = -0x1d37 (X);		/*		R0=0xffffe2c9(-7479) */
ffa08bac:	20 9e       	W[I0++] = R0.L;
ffa08bae:	20 9e       	W[I0++] = R0.L;
ffa08bb0:	20 e1 ee 3b 	R0 = 0x3bee (X);		/*		R0=0x3bee(15342) */
ffa08bb4:	20 9e       	W[I0++] = R0.L;
ffa08bb6:	20 9e       	W[I0++] = R0.L;
ffa08bb8:	20 e1 21 88 	R0 = -0x77df (X);		/*		R0=0xffff8821(-30687) */
ffa08bbc:	20 9e       	W[I0++] = R0.L;
ffa08bbe:	20 9e       	W[I0++] = R0.L;
ffa08bc0:	20 e1 ee 3b 	R0 = 0x3bee (X);		/*		R0=0x3bee(15342) */
ffa08bc4:	20 9e       	W[I0++] = R0.L;
ffa08bc6:	20 9e       	W[I0++] = R0.L;
ffa08bc8:	20 e1 a5 7a 	R0 = 0x7aa5 (X);		/*		R0=0x7aa5(31397) */
ffa08bcc:	20 9e       	W[I0++] = R0.L;
ffa08bce:	20 9e       	W[I0++] = R0.L;
ffa08bd0:	20 e1 bc c4 	R0 = -0x3b44 (X);		/*		R0=0xffffc4bc(-15172) */
ffa08bd4:	20 9e       	W[I0++] = R0.L;
ffa08bd6:	20 9e       	W[I0++] = R0.L;
ffa08bd8:	20 e1 80 3e 	R0 = 0x3e80 (X);		/*		R0=0x3e80(16000) */
ffa08bdc:	20 9e       	W[I0++] = R0.L;
ffa08bde:	20 9e       	W[I0++] = R0.L;
ffa08be0:	20 e1 d4 1e 	R0 = 0x1ed4 (X);		/*		R0=0x1ed4(7892) */
ffa08be4:	20 9e       	W[I0++] = R0.L;
ffa08be6:	20 9e       	W[I0++] = R0.L;
ffa08be8:	20 e1 a6 3d 	R0 = 0x3da6 (X);		/*		R0=0x3da6(15782) */
ffa08bec:	20 9e       	W[I0++] = R0.L;
ffa08bee:	20 9e       	W[I0++] = R0.L;
ffa08bf0:	20 e1 d4 1e 	R0 = 0x1ed4 (X);		/*		R0=0x1ed4(7892) */
ffa08bf4:	20 9e       	W[I0++] = R0.L;
ffa08bf6:	20 9e       	W[I0++] = R0.L;
ffa08bf8:	20 e1 f0 0e 	R0 = 0xef0 (X);		/*		R0=0xef0(3824) */
ffa08bfc:	20 9e       	W[I0++] = R0.L;
ffa08bfe:	20 9e       	W[I0++] = R0.L;
ffa08c00:	20 e1 aa fc 	R0 = -0x356 (X);		/*		R0=0xfffffcaa(-854) */
ffa08c04:	20 9e       	W[I0++] = R0.L;
ffa08c06:	20 9e       	W[I0++] = R0.L;
ffa08c08:	20 e1 ee 3b 	R0 = 0x3bee (X);		/*		R0=0x3bee(15342) */
ffa08c0c:	20 9e       	W[I0++] = R0.L;
ffa08c0e:	20 9e       	W[I0++] = R0.L;
ffa08c10:	20 e1 27 88 	R0 = -0x77d9 (X);		/*		R0=0xffff8827(-30681) */
ffa08c14:	20 9e       	W[I0++] = R0.L;
ffa08c16:	20 9e       	W[I0++] = R0.L;
ffa08c18:	20 e1 ee 3b 	R0 = 0x3bee (X);		/*		R0=0x3bee(15342) */
ffa08c1c:	20 9e       	W[I0++] = R0.L;
ffa08c1e:	20 9e       	W[I0++] = R0.L;
ffa08c20:	20 e1 8c 74 	R0 = 0x748c (X);		/*		R0=0x748c(29836) */
ffa08c24:	20 9e       	W[I0++] = R0.L;
ffa08c26:	20 9e       	W[I0++] = R0.L;
ffa08c28:	20 e1 dd ca 	R0 = -0x3523 (X);		/*		R0=0xffffcadd(-13603) */
ffa08c2c:	20 9e       	W[I0++] = R0.L;
ffa08c2e:	20 9e       	W[I0++] = R0.L;
ffa08c30:	20 e1 80 3e 	R0 = 0x3e80 (X);		/*		R0=0x3e80(16000) */
ffa08c34:	20 9e       	W[I0++] = R0.L;
ffa08c36:	20 9e       	W[I0++] = R0.L;
ffa08c38:	00 e1 01 00 	R0.L = 0x1;		/* (  1)	R0=0x1(  1) */
ffa08c3c:	20 9e       	W[I0++] = R0.L;
ffa08c3e:	00 e1 10 00 	R0.L = 0x10;		/* ( 16)	R0=0x10( 16) */
ffa08c42:	20 9e       	W[I0++] = R0.L;
ffa08c44:	00 e1 02 00 	R0.L = 0x2;		/* (  2)	R0=0x2(  2) */
ffa08c48:	20 9e       	W[I0++] = R0.L;
ffa08c4a:	00 e1 20 00 	R0.L = 0x20;		/* ( 32)	R0=0x20( 32) */
ffa08c4e:	20 9e       	W[I0++] = R0.L;

ffa08c50 <lt2_bot>:
ffa08c50:	37 e1 08 00 	M3 = 0x8 (X);		/*		M3=0x8(  8) */
ffa08c54:	7c 9e       	I0 -= M3;
ffa08c56:	00 e1 04 00 	R0.L = 0x4;		/* (  4)	R0=0x4(  4) */
ffa08c5a:	20 9e       	W[I0++] = R0.L;
ffa08c5c:	00 e1 40 00 	R0.L = 0x40;		/* ( 64)	R0=0x40( 64) */
ffa08c60:	20 9e       	W[I0++] = R0.L;
ffa08c62:	00 e1 08 00 	R0.L = 0x8;		/* (  8)	R0=0x8(  8) */
ffa08c66:	20 9e       	W[I0++] = R0.L;
ffa08c68:	00 e1 80 00 	R0.L = 0x80;		/* (128)	R0=0x80(128) */
ffa08c6c:	20 9e       	W[I0++] = R0.L;
ffa08c6e:	01 9e       	[I0++] = R1;
ffa08c70:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa08c72:	41 50       	R1 = R1 + R0;

ffa08c74 <lt_bot>:
ffa08c74:	08 e1 80 6b 	P0.L = 0x6b80;		/* (27520)	P0=0xffff6b80(-38016) */
ffa08c78:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff906b80 */
ffa08c7c:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa08c80:	00 93       	[P0] = R0;
ffa08c82:	11 e1 00 40 	I1.L = 0x4000;		/* (16384)	I1=0x4000(16384) */
ffa08c86:	51 e1 80 ff 	I1.H = 0xff80;		/* (-128)	I1=0xff804000(-8372224) */
ffa08c8a:	1d e1 00 14 	L1.L = 0x1400;		/* (5120)	L1=0x1400(5120) */
ffa08c8e:	5d e1 00 00 	L1.H = 0x0;		/* (  0)	L1=0x1400(5120) */
ffa08c92:	91 34       	I2 = I1;
ffa08c94:	89 36       	B1 = I1;
ffa08c96:	92 36       	B2 = I2;
ffa08c98:	f5 36       	L2 = L1;
ffa08c9a:	35 e1 40 00 	M1 = 0x40 (X);		/*		M1=0x40( 64) */
ffa08c9e:	b4 34       	M2 = M0;
ffa08ca0:	08 e1 00 40 	P0.L = 0x4000;		/* (16384)	P0=0xff904000 */
ffa08ca4:	48 e1 80 ff 	P0.H = 0xff80;		/* (-128)	P0=0xff804000 */
ffa08ca8:	0d e1 00 05 	P5.L = 0x500;		/* (1280)	P5=0x500 */
ffa08cac:	4d e1 00 00 	P5.H = 0x0;		/* (  0)	P5=0x500 */
ffa08cb0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa08cb2:	a2 e0 04 50 	LSETUP(0xffa08cb6 <lt3_top>, 0xffa08cba <lt3_bot>) LC0 = P5;

ffa08cb6 <lt3_top>:
ffa08cb6:	00 00       	NOP;
ffa08cb8:	00 92       	[P0++] = R0;

ffa08cba <lt3_bot>:
ffa08cba:	00 00       	NOP;
ffa08cbc:	13 e1 00 54 	I3.L = 0x5400;		/* (21504)	I3=0x5400(21504) */
ffa08cc0:	53 e1 80 ff 	I3.H = 0xff80;		/* (-128)	I3=0xff805400(-8367104) */
ffa08cc4:	1f e1 00 0f 	L3.L = 0xf00;		/* (3840)	L3=0xf00(3840) */
ffa08cc8:	5f e1 00 00 	L3.H = 0x0;		/* (  0)	L3=0xf00(3840) */
ffa08ccc:	9b 36       	B3 = I3;
ffa08cce:	37 e1 08 00 	M3 = 0x8 (X);		/*		M3=0x8(  8) */
ffa08cd2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa08cd4:	8c 30       	R1 = M0;
ffa08cd6:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa08cd8:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa08cda:	85 69       	P5 = 0x30 (X);		/*		P5=0x30( 48) */
ffa08cdc:	a2 e0 46 50 	LSETUP(0xffa08ce0 <lt4_top>, 0xffa08d68 <lt4_bot>) LC0 = P5;

ffa08ce0 <lt4_top>:
ffa08ce0:	00 00       	NOP;
ffa08ce2:	35 68       	P5 = 0x6 (X);		/*		P5=0x6(  6) */
ffa08ce4:	b2 e0 18 50 	LSETUP(0xffa08ce8 <lt5_top>, 0xffa08d14 <lt5_bot>) LC1 = P5;

ffa08ce8 <lt5_top>:
ffa08ce8:	84 60       	R4 = 0x10 (X);		/*		R4=0x10( 16) */
ffa08cea:	c4 52       	R3 = R4 - R0;
ffa08cec:	24 60       	R4 = 0x4 (X);		/*		R4=0x4(  4) */
ffa08cee:	e3 40       	R3 *= R4;
ffa08cf0:	1b 9e       	[I3++] = R3;
ffa08cf2:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa08cf4:	e0 50       	R3 = R0 + R4;
ffa08cf6:	cb 40       	R3 *= R1;
ffa08cf8:	1b 9e       	[I3++] = R3;
ffa08cfa:	1f 9e       	[I3++] = R7;
ffa08cfc:	20 50       	R0 = R0 + R4;
ffa08cfe:	e7 51       	R7 = R7 + R4;
ffa08d00:	7c 60       	R4 = 0xf (X);		/*		R4=0xf( 15) */
ffa08d02:	20 08       	CC = R0 == R4;
ffa08d04:	02 10       	IF !CC JUMP 0xffa08d08 <no_rollover>;
ffa08d06:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */

ffa08d08 <no_rollover>:
ffa08d08:	00 00       	NOP;
ffa08d0a:	34 60       	R4 = 0x6 (X);		/*		R4=0x6(  6) */
ffa08d0c:	27 08       	CC = R7 == R4;
ffa08d0e:	02 10       	IF !CC JUMP 0xffa08d12 <no_rollover2>;
ffa08d10:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */

ffa08d12 <no_rollover2>:
	...

ffa08d14 <lt5_bot>:
ffa08d14:	00 00       	NOP;
ffa08d16:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa08d18:	82 c6 e2 86 	R3 = R2 << 0x1c;
ffa08d1c:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa08d1e:	82 c6 fc 88 	R4 = R4 << 0x1f;
ffa08d22:	e3 54       	R3 = R3 & R4;
ffa08d24:	5d 57       	R5 = R5 | R3;
ffa08d26:	82 c6 aa 86 	R3 = R2 << 0x15;
ffa08d2a:	82 c6 c4 89 	R4 = R4 >> 0x8;
ffa08d2e:	e3 54       	R3 = R3 & R4;
ffa08d30:	5d 57       	R5 = R5 | R3;
ffa08d32:	82 c6 72 86 	R3 = R2 << 0xe;
ffa08d36:	82 c6 c4 89 	R4 = R4 >> 0x8;
ffa08d3a:	e3 54       	R3 = R3 & R4;
ffa08d3c:	5d 57       	R5 = R5 | R3;
ffa08d3e:	82 c6 3a 86 	R3 = R2 << 0x7;
ffa08d42:	82 c6 c4 89 	R4 = R4 >> 0x8;
ffa08d46:	e3 54       	R3 = R3 & R4;
ffa08d48:	5d 57       	R5 = R5 | R3;
ffa08d4a:	1d 9e       	[I3++] = R5;
ffa08d4c:	03 e1 20 63 	R3.L = 0x6320;		/* (25376)	R3=0x6320(25376) */
ffa08d50:	43 e1 80 ff 	R3.H = 0xff80;		/* (-128)	R3=0xff806320(-8363232) */
ffa08d54:	1c 60       	R4 = 0x3 (X);		/*		R4=0x3(  3) */
ffa08d56:	62 55       	R5 = R2 & R4;
ffa08d58:	82 c6 1d 8a 	R5 = R5 << 0x3;
ffa08d5c:	5d 51       	R5 = R5 + R3;
ffa08d5e:	1d 9e       	[I3++] = R5;
ffa08d60:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa08d62:	a2 50       	R2 = R2 + R4;
ffa08d64:	7c 60       	R4 = 0xf (X);		/*		R4=0xf( 15) */
ffa08d66:	a2 54       	R2 = R2 & R4;

ffa08d68 <lt4_bot>:
ffa08d68:	00 00       	NOP;
ffa08d6a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa08d6c:	10 00       	RTS;
	...

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
ffa0943c:	02 c6 08 80 	R0 = SHIFT R0 BY R1.L;
ffa09440:	82 c6 0b 83 	R1 = R3 >> 0x1f;
ffa09444:	08 50       	R0 = R0 + R1;
ffa09446:	82 43       	R2 = -R0;
ffa09448:	f3 49       	CC = BITTST (R3, 0x1e);		/* bit 30 */
ffa0944a:	02 07       	IF CC R0 = R2;
ffa0944c:	10 00       	RTS;
ffa0944e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09450:	10 00       	RTS;
	...

ffa09454 <_exception_report>:
ffa09454:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa09458:	b8 b0       	[FP + 0x8] = R0;
ffa0945a:	f9 b0       	[FP + 0xc] = R1;
ffa0945c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc07000(-4165632) */
ffa09460:	0a e1 00 07 	P2.L = 0x700;		/* (1792)	P2=0xffc00700(-4192512) */
ffa09464:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09466:	10 97       	W[P2] = R0;
ffa09468:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00700(-4192512) */
ffa0946c:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa09470:	20 e1 00 01 	R0 = 0x100 (X);		/*		R0=0x100(256) */
ffa09474:	10 97       	W[P2] = R0;
ffa09476:	24 00       	SSYNC;
ffa09478:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa0947c:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa09480:	20 e1 00 01 	R0 = 0x100 (X);		/*		R0=0x100(256) */
ffa09484:	10 97       	W[P2] = R0;
ffa09486:	24 00       	SSYNC;
ffa09488:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa0948a:	d0 bb       	[FP -0xc] = R0;
ffa0948c:	b8 a0       	R0 = [FP + 0x8];
ffa0948e:	e0 bb       	[FP -0x8] = R0;
ffa09490:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09492:	f0 bb       	[FP -0x4] = R0;
ffa09494:	27 20       	JUMP.S 0xffa094e2 <_exception_report+0x8e>;
ffa09496:	d0 b9       	R0 = [FP -0xc];
ffa09498:	e1 b9       	R1 = [FP -0x8];
ffa0949a:	08 54       	R0 = R0 & R1;
ffa0949c:	00 0c       	CC = R0 == 0x0;
ffa0949e:	08 18       	IF CC JUMP 0xffa094ae <_exception_report+0x5a>;
ffa094a0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa094a4:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa094a8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa094aa:	10 97       	W[P2] = R0;
ffa094ac:	07 20       	JUMP.S 0xffa094ba <_exception_report+0x66>;
ffa094ae:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa094b2:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa094b6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa094b8:	10 97       	W[P2] = R0;
ffa094ba:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa094be:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa094c2:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa094c4:	10 97       	W[P2] = R0;
ffa094c6:	24 00       	SSYNC;
ffa094c8:	d0 b9       	R0 = [FP -0xc];
ffa094ca:	08 4e       	R0 >>= 0x1;
ffa094cc:	d0 bb       	[FP -0xc] = R0;
ffa094ce:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa094d2:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa094d6:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa094d8:	10 97       	W[P2] = R0;
ffa094da:	24 00       	SSYNC;
ffa094dc:	f0 b9       	R0 = [FP -0x4];
ffa094de:	08 64       	R0 += 0x1;		/* (  1) */
ffa094e0:	f0 bb       	[FP -0x4] = R0;
ffa094e2:	f0 b9       	R0 = [FP -0x4];
ffa094e4:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa094e6:	08 09       	CC = R0 <= R1;
ffa094e8:	d7 1b       	IF CC JUMP 0xffa09496 <_exception_report+0x42>;
ffa094ea:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa094ee:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa094f2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa094f4:	10 97       	W[P2] = R0;
ffa094f6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa094f8:	f0 bb       	[FP -0x4] = R0;
ffa094fa:	06 20       	JUMP.S 0xffa09506 <_exception_report+0xb2>;
ffa094fc:	00 00       	NOP;
ffa094fe:	00 00       	NOP;
ffa09500:	f0 b9       	R0 = [FP -0x4];
ffa09502:	08 64       	R0 += 0x1;		/* (  1) */
ffa09504:	f0 bb       	[FP -0x4] = R0;
ffa09506:	f0 b9       	R0 = [FP -0x4];
ffa09508:	e9 60       	R1 = 0x1d (X);		/*		R1=0x1d( 29) */
ffa0950a:	08 09       	CC = R0 <= R1;
ffa0950c:	f8 1b       	IF CC JUMP 0xffa094fc <_exception_report+0xa8>;
ffa0950e:	80 e1 00 80 	R0 = 0x8000 (Z);		/*		R0=0x8000(32768) */
ffa09512:	d0 bb       	[FP -0xc] = R0;
ffa09514:	f8 a0       	R0 = [FP + 0xc];
ffa09516:	e0 bb       	[FP -0x8] = R0;
ffa09518:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0951a:	f0 bb       	[FP -0x4] = R0;
ffa0951c:	44 20       	JUMP.S 0xffa095a4 <_exception_report+0x150>;
ffa0951e:	d0 b9       	R0 = [FP -0xc];
ffa09520:	e1 b9       	R1 = [FP -0x8];
ffa09522:	08 54       	R0 = R0 & R1;
ffa09524:	00 0c       	CC = R0 == 0x0;
ffa09526:	08 18       	IF CC JUMP 0xffa09536 <_exception_report+0xe2>;
ffa09528:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0952c:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa09530:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09532:	10 97       	W[P2] = R0;
ffa09534:	07 20       	JUMP.S 0xffa09542 <_exception_report+0xee>;
ffa09536:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0953a:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0953e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09540:	10 97       	W[P2] = R0;
ffa09542:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa09546:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa0954a:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0954c:	10 97       	W[P2] = R0;
ffa0954e:	24 00       	SSYNC;
ffa09550:	d0 b9       	R0 = [FP -0xc];
ffa09552:	08 4e       	R0 >>= 0x1;
ffa09554:	d0 bb       	[FP -0xc] = R0;
ffa09556:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa0955a:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa0955e:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09560:	10 97       	W[P2] = R0;
ffa09562:	24 00       	SSYNC;
ffa09564:	f1 b9       	R1 = [FP -0x4];
ffa09566:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa09568:	01 54       	R0 = R1 & R0;
ffa0956a:	18 0c       	CC = R0 == 0x3;
ffa0956c:	19 10       	IF !CC JUMP 0xffa0959e <_exception_report+0x14a>;
	...
ffa0959e:	f0 b9       	R0 = [FP -0x4];
ffa095a0:	08 64       	R0 += 0x1;		/* (  1) */
ffa095a2:	f0 bb       	[FP -0x4] = R0;
ffa095a4:	f0 b9       	R0 = [FP -0x4];
ffa095a6:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa095a8:	08 09       	CC = R0 <= R1;
ffa095aa:	ba 1b       	IF CC JUMP 0xffa0951e <_exception_report+0xca>;
ffa095ac:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa095b0:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa095b4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa095b6:	10 97       	W[P2] = R0;
ffa095b8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa095ba:	f0 bb       	[FP -0x4] = R0;
ffa095bc:	06 20       	JUMP.S 0xffa095c8 <_exception_report+0x174>;
ffa095be:	00 00       	NOP;
ffa095c0:	00 00       	NOP;
ffa095c2:	f0 b9       	R0 = [FP -0x4];
ffa095c4:	08 64       	R0 += 0x1;		/* (  1) */
ffa095c6:	f0 bb       	[FP -0x4] = R0;
ffa095c8:	f0 b9       	R0 = [FP -0x4];
ffa095ca:	21 e1 2b 01 	R1 = 0x12b (X);		/*		R1=0x12b(299) */
ffa095ce:	08 09       	CC = R0 <= R1;
ffa095d0:	f7 1b       	IF CC JUMP 0xffa095be <_exception_report+0x16a>;
ffa095d2:	4b 2f       	JUMP.S 0xffa09468 <_exception_report+0x14>;

ffa095d4 <_nmi_report>:
ffa095d4:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa095d8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa095da:	f0 bb       	[FP -0x4] = R0;
ffa095dc:	06 20       	JUMP.S 0xffa095e8 <_nmi_report+0x14>;
ffa095de:	00 00       	NOP;
ffa095e0:	00 00       	NOP;
ffa095e2:	f0 b9       	R0 = [FP -0x4];
ffa095e4:	08 64       	R0 += 0x1;		/* (  1) */
ffa095e6:	f0 bb       	[FP -0x4] = R0;
ffa095e8:	f0 b9       	R0 = [FP -0x4];
ffa095ea:	21 e1 2b 01 	R1 = 0x12b (X);		/*		R1=0x12b(299) */
ffa095ee:	08 09       	CC = R0 <= R1;
ffa095f0:	f7 1b       	IF CC JUMP 0xffa095de <_nmi_report+0xa>;
ffa095f2:	01 e8 00 00 	UNLINK;
ffa095f6:	10 00       	RTS;

ffa095f8 <_main>:
ffa095f8:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa095fc:	4a e1 e0 ff 	P2.H = 0xffe0;		/* (-32)	P2=0xffe00704(-2095356) */
ffa09600:	0a e1 04 10 	P2.L = 0x1004;		/* (4100)	P2=0xffe01004(-2093052) */
ffa09604:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09606:	10 93       	[P2] = R0;
ffa09608:	23 00       	CSYNC;
ffa0960a:	4a e1 e0 ff 	P2.H = 0xffe0;		/* (-32)	P2=0xffe01004(-2093052) */
ffa0960e:	0a e1 04 00 	P2.L = 0x4;		/* (  4)	P2=0xffe00004(-2097148) */
ffa09612:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09614:	10 93       	[P2] = R0;
ffa09616:	23 00       	CSYNC;
ffa09618:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00004(-4194300) */
ffa0961c:	0a e1 40 07 	P2.L = 0x740;		/* (1856)	P2=0xffc00740(-4192448) */
ffa09620:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa09622:	10 97       	W[P2] = R0;
ffa09624:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc0001f(-4194273) */
ffa09628:	09 e1 30 07 	P1.L = 0x730;		/* (1840)	P1=0xffc00730(-4192464) */
ffa0962c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00740(-4192448) */
ffa09630:	0a e1 40 07 	P2.L = 0x740;		/* (1856)	P2=0xffc00740(-4192448) */
ffa09634:	50 95       	R0 = W[P2] (X);
ffa09636:	c0 43       	R0 =~ R0;
ffa09638:	08 97       	W[P1] = R0;
ffa0963a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00740(-4192448) */
ffa0963e:	0a e1 00 07 	P2.L = 0x700;		/* (1792)	P2=0xffc00700(-4192512) */
ffa09642:	20 e1 87 01 	R0 = 0x187 (X);		/*		R0=0x187(391) */
ffa09646:	10 97       	W[P2] = R0;
ffa09648:	20 e1 7c 00 	R0 = 0x7c (X);		/*		R0=0x7c(124) */
ffa0964c:	00 e3 6a 06 	CALL 0xffa0a320 <_radio_init>;
ffa09650:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00700(-4192512) */
ffa09654:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa09658:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0965a:	10 97       	W[P2] = R0;
ffa0965c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa09660:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa09664:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa09668:	10 97       	W[P2] = R0;
ffa0966a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0966c:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa09670:	0a 20       	JUMP.S 0xffa09684 <_main+0x8c>;
	...
ffa0967a:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa0967e:	08 64       	R0 += 0x1;		/* (  1) */
ffa09680:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa09684:	78 e4 fe ff 	R0 = W[FP + -0x4] (Z);
ffa09688:	21 e1 e7 03 	R1 = 0x3e7 (X);		/*		R1=0x3e7(999) */
ffa0968c:	08 0a       	CC = R0 <= R1 (IU);
ffa0968e:	f2 1b       	IF CC JUMP 0xffa09672 <_main+0x7a>;
ffa09690:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa09694:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa09698:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa0969c:	10 97       	W[P2] = R0;
ffa0969e:	00 e3 f5 05 	CALL 0xffa0a288 <_radio_set_tx>;
ffa096a2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa096a6:	0a e1 28 08 	P2.L = 0x828;		/* (2088)	P2=0xffc00828(-4192216) */
ffa096aa:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa096ac:	10 97       	W[P2] = R0;
ffa096ae:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00828(-4192216) */
ffa096b2:	0a e1 2c 08 	P2.L = 0x82c;		/* (2092)	P2=0xffc0082c(-4192212) */
ffa096b6:	98 60       	R0 = 0x13 (X);		/*		R0=0x13( 19) */
ffa096b8:	10 97       	W[P2] = R0;
ffa096ba:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0082c(-4192212) */
ffa096be:	0a e1 24 08 	P2.L = 0x824;		/* (2084)	P2=0xffc00824(-4192220) */
ffa096c2:	20 e1 0f 01 	R0 = 0x10f (X);		/*		R0=0x10f(271) */
ffa096c6:	10 97       	W[P2] = R0;
ffa096c8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00824(-4192220) */
ffa096cc:	0a e1 28 09 	P2.L = 0x928;		/* (2344)	P2=0xffc00928(-4191960) */
ffa096d0:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa096d2:	10 97       	W[P2] = R0;
ffa096d4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00928(-4191960) */
ffa096d8:	0a e1 2c 09 	P2.L = 0x92c;		/* (2348)	P2=0xffc0092c(-4191956) */
ffa096dc:	98 60       	R0 = 0x13 (X);		/*		R0=0x13( 19) */
ffa096de:	10 97       	W[P2] = R0;
ffa096e0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0092c(-4191956) */
ffa096e4:	0a e1 24 09 	P2.L = 0x924;		/* (2340)	P2=0xffc00924(-4191964) */
ffa096e8:	20 e1 0f 01 	R0 = 0x10f (X);		/*		R0=0x10f(271) */
ffa096ec:	10 97       	W[P2] = R0;
ffa096ee:	ff e3 f9 f5 	CALL 0xffa082e0 <_radio_bidi_asm>;
ffa096f2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa096f4:	01 e8 00 00 	UNLINK;
ffa096f8:	10 00       	RTS;
	...

ffa096fc <_div>:
ffa096fc:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa09700:	b8 b0       	[FP + 0x8] = R0;
ffa09702:	f9 b0       	[FP + 0xc] = R1;
ffa09704:	b8 a0       	R0 = [FP + 0x8];
ffa09706:	08 4f       	R0 <<= 0x1;
ffa09708:	b8 b0       	[FP + 0x8] = R0;
ffa0970a:	b9 a0       	R1 = [FP + 0x8];
ffa0970c:	f8 a0       	R0 = [FP + 0xc];
ffa0970e:	11 30       	R2 = R1;
ffa09710:	18 30       	R3 = R0;
ffa09712:	5a 42       	DIVS (R2, R3);
ffa09714:	0b 30       	R1 = R3;
ffa09716:	02 30       	R0 = R2;
ffa09718:	b8 b0       	[FP + 0x8] = R0;
ffa0971a:	f9 b0       	[FP + 0xc] = R1;
ffa0971c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0971e:	f0 bb       	[FP -0x4] = R0;
ffa09720:	0d 20       	JUMP.S 0xffa0973a <_div+0x3e>;
ffa09722:	b9 a0       	R1 = [FP + 0x8];
ffa09724:	f8 a0       	R0 = [FP + 0xc];
ffa09726:	11 30       	R2 = R1;
ffa09728:	18 30       	R3 = R0;
ffa0972a:	1a 42       	DIVQ (R2, R3);
ffa0972c:	0b 30       	R1 = R3;
ffa0972e:	02 30       	R0 = R2;
ffa09730:	b8 b0       	[FP + 0x8] = R0;
ffa09732:	f9 b0       	[FP + 0xc] = R1;
ffa09734:	f0 b9       	R0 = [FP -0x4];
ffa09736:	08 64       	R0 += 0x1;		/* (  1) */
ffa09738:	f0 bb       	[FP -0x4] = R0;
ffa0973a:	f0 b9       	R0 = [FP -0x4];
ffa0973c:	71 60       	R1 = 0xe (X);		/*		R1=0xe( 14) */
ffa0973e:	08 09       	CC = R0 <= R1;
ffa09740:	f1 1b       	IF CC JUMP 0xffa09722 <_div+0x26>;
ffa09742:	b8 a0       	R0 = [FP + 0x8];
ffa09744:	80 42       	R0 = R0.L (X);
ffa09746:	b8 b0       	[FP + 0x8] = R0;
ffa09748:	b8 a0       	R0 = [FP + 0x8];
ffa0974a:	01 e8 00 00 	UNLINK;
ffa0974e:	10 00       	RTS;

ffa09750 <_mod>:
ffa09750:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa09754:	b8 b0       	[FP + 0x8] = R0;
ffa09756:	f9 b0       	[FP + 0xc] = R1;
ffa09758:	f9 a0       	R1 = [FP + 0xc];
ffa0975a:	b8 a0       	R0 = [FP + 0x8];
ffa0975c:	ff e3 d0 ff 	CALL 0xffa096fc <_div>;
ffa09760:	f0 bb       	[FP -0x4] = R0;
ffa09762:	f1 b9       	R1 = [FP -0x4];
ffa09764:	f8 a0       	R0 = [FP + 0xc];
ffa09766:	c1 40       	R1 *= R0;
ffa09768:	b8 a0       	R0 = [FP + 0x8];
ffa0976a:	08 52       	R0 = R0 - R1;
ffa0976c:	01 e8 00 00 	UNLINK;
ffa09770:	10 00       	RTS;
	...

ffa09774 <_memcpy_>:
ffa09774:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa09778:	b8 b0       	[FP + 0x8] = R0;
ffa0977a:	f9 b0       	[FP + 0xc] = R1;
ffa0977c:	3a b1       	[FP + 0x10] = R2;
ffa0977e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09780:	f0 bb       	[FP -0x4] = R0;
ffa09782:	0e 20       	JUMP.S 0xffa0979e <_memcpy_+0x2a>;
ffa09784:	ba ac       	P2 = [FP + 0x8];
ffa09786:	50 99       	R0 = B[P2] (X);
ffa09788:	fa ac       	P2 = [FP + 0xc];
ffa0978a:	10 9b       	B[P2] = R0;
ffa0978c:	f8 a0       	R0 = [FP + 0xc];
ffa0978e:	08 64       	R0 += 0x1;		/* (  1) */
ffa09790:	f8 b0       	[FP + 0xc] = R0;
ffa09792:	b8 a0       	R0 = [FP + 0x8];
ffa09794:	08 64       	R0 += 0x1;		/* (  1) */
ffa09796:	b8 b0       	[FP + 0x8] = R0;
ffa09798:	f0 b9       	R0 = [FP -0x4];
ffa0979a:	08 64       	R0 += 0x1;		/* (  1) */
ffa0979c:	f0 bb       	[FP -0x4] = R0;
ffa0979e:	f1 b9       	R1 = [FP -0x4];
ffa097a0:	38 a1       	R0 = [FP + 0x10];
ffa097a2:	81 08       	CC = R1 < R0;
ffa097a4:	f0 1b       	IF CC JUMP 0xffa09784 <_memcpy_+0x10>;
ffa097a6:	01 e8 00 00 	UNLINK;
ffa097aa:	10 00       	RTS;

ffa097ac <_memset_>:
ffa097ac:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa097b0:	b8 b0       	[FP + 0x8] = R0;
ffa097b2:	3a b1       	[FP + 0x10] = R2;
ffa097b4:	01 30       	R0 = R1;
ffa097b6:	b8 e6 0c 00 	B[FP + 0xc] = R0;
ffa097ba:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa097bc:	f0 bb       	[FP -0x4] = R0;
ffa097be:	0b 20       	JUMP.S 0xffa097d4 <_memset_+0x28>;
ffa097c0:	ba ac       	P2 = [FP + 0x8];
ffa097c2:	b8 e5 0c 00 	R0 = B[FP + 0xc] (X);
ffa097c6:	10 9b       	B[P2] = R0;
ffa097c8:	b8 a0       	R0 = [FP + 0x8];
ffa097ca:	08 64       	R0 += 0x1;		/* (  1) */
ffa097cc:	b8 b0       	[FP + 0x8] = R0;
ffa097ce:	f0 b9       	R0 = [FP -0x4];
ffa097d0:	08 64       	R0 += 0x1;		/* (  1) */
ffa097d2:	f0 bb       	[FP -0x4] = R0;
ffa097d4:	f1 b9       	R1 = [FP -0x4];
ffa097d6:	38 a1       	R0 = [FP + 0x10];
ffa097d8:	81 08       	CC = R1 < R0;
ffa097da:	f3 1b       	IF CC JUMP 0xffa097c0 <_memset_+0x14>;
ffa097dc:	01 e8 00 00 	UNLINK;
ffa097e0:	10 00       	RTS;
	...

ffa097e4 <_strlen_>:
ffa097e4:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa097e8:	b8 b0       	[FP + 0x8] = R0;
ffa097ea:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa097ec:	f0 bb       	[FP -0x4] = R0;
ffa097ee:	10 20       	JUMP.S 0xffa0980e <_strlen_+0x2a>;
ffa097f0:	f0 b9       	R0 = [FP -0x4];
ffa097f2:	08 30       	R1 = R0;
ffa097f4:	b8 a0       	R0 = [FP + 0x8];
ffa097f6:	41 50       	R1 = R1 + R0;
ffa097f8:	11 32       	P2 = R1;
ffa097fa:	50 99       	R0 = B[P2] (X);
ffa097fc:	00 43       	R0 = R0.B (X);
ffa097fe:	00 0c       	CC = R0 == 0x0;
ffa09800:	04 10       	IF !CC JUMP 0xffa09808 <_strlen_+0x24>;
ffa09802:	f0 b9       	R0 = [FP -0x4];
ffa09804:	e0 bb       	[FP -0x8] = R0;
ffa09806:	0b 20       	JUMP.S 0xffa0981c <_strlen_+0x38>;
ffa09808:	f0 b9       	R0 = [FP -0x4];
ffa0980a:	08 64       	R0 += 0x1;		/* (  1) */
ffa0980c:	f0 bb       	[FP -0x4] = R0;
ffa0980e:	f0 b9       	R0 = [FP -0x4];
ffa09810:	21 e1 ff 04 	R1 = 0x4ff (X);		/*		R1=0x4ff(1279) */
ffa09814:	08 09       	CC = R0 <= R1;
ffa09816:	ed 1b       	IF CC JUMP 0xffa097f0 <_strlen_+0xc>;
ffa09818:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0981a:	e0 bb       	[FP -0x8] = R0;
ffa0981c:	e0 b9       	R0 = [FP -0x8];
ffa0981e:	01 e8 00 00 	UNLINK;
ffa09822:	10 00       	RTS;

ffa09824 <_strcpy_>:
ffa09824:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa09828:	b8 b0       	[FP + 0x8] = R0;
ffa0982a:	f9 b0       	[FP + 0xc] = R1;
ffa0982c:	3a b1       	[FP + 0x10] = R2;
ffa0982e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09830:	f0 bb       	[FP -0x4] = R0;
ffa09832:	0e 20       	JUMP.S 0xffa0984e <_strcpy_+0x2a>;
ffa09834:	3a ad       	P2 = [FP + 0x10];
ffa09836:	50 99       	R0 = B[P2] (X);
ffa09838:	ba ac       	P2 = [FP + 0x8];
ffa0983a:	10 9b       	B[P2] = R0;
ffa0983c:	b8 a0       	R0 = [FP + 0x8];
ffa0983e:	08 64       	R0 += 0x1;		/* (  1) */
ffa09840:	b8 b0       	[FP + 0x8] = R0;
ffa09842:	38 a1       	R0 = [FP + 0x10];
ffa09844:	08 64       	R0 += 0x1;		/* (  1) */
ffa09846:	38 b1       	[FP + 0x10] = R0;
ffa09848:	f0 b9       	R0 = [FP -0x4];
ffa0984a:	08 64       	R0 += 0x1;		/* (  1) */
ffa0984c:	f0 bb       	[FP -0x4] = R0;
ffa0984e:	3a ad       	P2 = [FP + 0x10];
ffa09850:	50 99       	R0 = B[P2] (X);
ffa09852:	00 43       	R0 = R0.B (X);
ffa09854:	00 0c       	CC = R0 == 0x0;
ffa09856:	08 18       	IF CC JUMP 0xffa09866 <_strcpy_+0x42>;
ffa09858:	f0 b9       	R0 = [FP -0x4];
ffa0985a:	21 e1 ff 04 	R1 = 0x4ff (X);		/*		R1=0x4ff(1279) */
ffa0985e:	08 09       	CC = R0 <= R1;
ffa09860:	ea 1b       	IF CC JUMP 0xffa09834 <_strcpy_+0x10>;
ffa09862:	00 00       	NOP;
ffa09864:	00 00       	NOP;
ffa09866:	fa ac       	P2 = [FP + 0xc];
ffa09868:	11 91       	R1 = [P2];
ffa0986a:	f0 b9       	R0 = [FP -0x4];
ffa0986c:	01 50       	R0 = R1 + R0;
ffa0986e:	fa ac       	P2 = [FP + 0xc];
ffa09870:	10 93       	[P2] = R0;
ffa09872:	b8 a0       	R0 = [FP + 0x8];
ffa09874:	01 e8 00 00 	UNLINK;
ffa09878:	10 00       	RTS;
	...

ffa0987c <_strprepend>:
ffa0987c:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa09880:	b8 b0       	[FP + 0x8] = R0;
ffa09882:	f9 b0       	[FP + 0xc] = R1;
ffa09884:	3a b1       	[FP + 0x10] = R2;
ffa09886:	38 a1       	R0 = [FP + 0x10];
ffa09888:	ff e3 ae ff 	CALL 0xffa097e4 <_strlen_>;
ffa0988c:	d0 bb       	[FP -0xc] = R0;
ffa0988e:	fa ac       	P2 = [FP + 0xc];
ffa09890:	10 91       	R0 = [P2];
ffa09892:	08 30       	R1 = R0;
ffa09894:	b8 a0       	R0 = [FP + 0x8];
ffa09896:	08 52       	R0 = R0 - R1;
ffa09898:	e0 bb       	[FP -0x8] = R0;
ffa0989a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0989c:	f0 bb       	[FP -0x4] = R0;
ffa0989e:	0e 20       	JUMP.S 0xffa098ba <_strprepend+0x3e>;
ffa098a0:	3a ad       	P2 = [FP + 0x10];
ffa098a2:	50 99       	R0 = B[P2] (X);
ffa098a4:	ea b9       	P2 = [FP -0x8];
ffa098a6:	10 9b       	B[P2] = R0;
ffa098a8:	e0 b9       	R0 = [FP -0x8];
ffa098aa:	08 64       	R0 += 0x1;		/* (  1) */
ffa098ac:	e0 bb       	[FP -0x8] = R0;
ffa098ae:	38 a1       	R0 = [FP + 0x10];
ffa098b0:	08 64       	R0 += 0x1;		/* (  1) */
ffa098b2:	38 b1       	[FP + 0x10] = R0;
ffa098b4:	f0 b9       	R0 = [FP -0x4];
ffa098b6:	08 64       	R0 += 0x1;		/* (  1) */
ffa098b8:	f0 bb       	[FP -0x4] = R0;
ffa098ba:	f1 b9       	R1 = [FP -0x4];
ffa098bc:	d0 b9       	R0 = [FP -0xc];
ffa098be:	81 08       	CC = R1 < R0;
ffa098c0:	f0 1b       	IF CC JUMP 0xffa098a0 <_strprepend+0x24>;
ffa098c2:	00 00       	NOP;
ffa098c4:	00 00       	NOP;
ffa098c6:	fa ac       	P2 = [FP + 0xc];
ffa098c8:	10 91       	R0 = [P2];
ffa098ca:	08 30       	R1 = R0;
ffa098cc:	b8 a0       	R0 = [FP + 0x8];
ffa098ce:	08 52       	R0 = R0 - R1;
ffa098d0:	01 e8 00 00 	UNLINK;
ffa098d4:	10 00       	RTS;
	...

ffa098d8 <_strcmp>:
ffa098d8:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa098dc:	b8 b0       	[FP + 0x8] = R0;
ffa098de:	f9 b0       	[FP + 0xc] = R1;
ffa098e0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa098e2:	f0 bb       	[FP -0x4] = R0;
ffa098e4:	1a 20       	JUMP.S 0xffa09918 <_strcmp+0x40>;
ffa098e6:	ba ac       	P2 = [FP + 0x8];
ffa098e8:	51 99       	R1 = B[P2] (X);
ffa098ea:	fa ac       	P2 = [FP + 0xc];
ffa098ec:	50 99       	R0 = B[P2] (X);
ffa098ee:	09 43       	R1 = R1.B (X);
ffa098f0:	00 43       	R0 = R0.B (X);
ffa098f2:	01 08       	CC = R1 == R0;
ffa098f4:	18 02       	CC = !CC;
ffa098f6:	00 02       	R0 = CC;
ffa098f8:	08 30       	R1 = R0;
ffa098fa:	b8 a0       	R0 = [FP + 0x8];
ffa098fc:	08 64       	R0 += 0x1;		/* (  1) */
ffa098fe:	b8 b0       	[FP + 0x8] = R0;
ffa09900:	f8 a0       	R0 = [FP + 0xc];
ffa09902:	08 64       	R0 += 0x1;		/* (  1) */
ffa09904:	f8 b0       	[FP + 0xc] = R0;
ffa09906:	48 43       	R0 = R1.B (Z);
ffa09908:	00 0c       	CC = R0 == 0x0;
ffa0990a:	04 18       	IF CC JUMP 0xffa09912 <_strcmp+0x3a>;
ffa0990c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0990e:	e0 bb       	[FP -0x8] = R0;
ffa09910:	17 20       	JUMP.S 0xffa0993e <_strcmp+0x66>;
ffa09912:	f0 b9       	R0 = [FP -0x4];
ffa09914:	08 64       	R0 += 0x1;		/* (  1) */
ffa09916:	f0 bb       	[FP -0x4] = R0;
ffa09918:	ba ac       	P2 = [FP + 0x8];
ffa0991a:	50 99       	R0 = B[P2] (X);
ffa0991c:	00 43       	R0 = R0.B (X);
ffa0991e:	00 0c       	CC = R0 == 0x0;
ffa09920:	0d 18       	IF CC JUMP 0xffa0993a <_strcmp+0x62>;
ffa09922:	00 00       	NOP;
ffa09924:	00 00       	NOP;
ffa09926:	fa ac       	P2 = [FP + 0xc];
ffa09928:	50 99       	R0 = B[P2] (X);
ffa0992a:	00 43       	R0 = R0.B (X);
ffa0992c:	00 0c       	CC = R0 == 0x0;
ffa0992e:	06 18       	IF CC JUMP 0xffa0993a <_strcmp+0x62>;
ffa09930:	f0 b9       	R0 = [FP -0x4];
ffa09932:	21 e1 ff 04 	R1 = 0x4ff (X);		/*		R1=0x4ff(1279) */
ffa09936:	08 09       	CC = R0 <= R1;
ffa09938:	d7 1b       	IF CC JUMP 0xffa098e6 <_strcmp+0xe>;
ffa0993a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0993c:	e0 bb       	[FP -0x8] = R0;
ffa0993e:	e0 b9       	R0 = [FP -0x8];
ffa09940:	01 e8 00 00 	UNLINK;
ffa09944:	10 00       	RTS;
	...

ffa09948 <_substr>:
ffa09948:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa0994c:	b8 b0       	[FP + 0x8] = R0;
ffa0994e:	f9 b0       	[FP + 0xc] = R1;
ffa09950:	3a b1       	[FP + 0x10] = R2;
ffa09952:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09954:	e0 bb       	[FP -0x8] = R0;
ffa09956:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09958:	f0 bb       	[FP -0x4] = R0;
ffa0995a:	39 20       	JUMP.S 0xffa099cc <_substr+0x84>;
ffa0995c:	ba ac       	P2 = [FP + 0x8];
ffa0995e:	51 99       	R1 = B[P2] (X);
ffa09960:	fa ac       	P2 = [FP + 0xc];
ffa09962:	50 99       	R0 = B[P2] (X);
ffa09964:	09 43       	R1 = R1.B (X);
ffa09966:	00 43       	R0 = R0.B (X);
ffa09968:	01 08       	CC = R1 == R0;
ffa0996a:	2b 10       	IF !CC JUMP 0xffa099c0 <_substr+0x78>;
ffa0996c:	b8 a0       	R0 = [FP + 0x8];
ffa0996e:	08 64       	R0 += 0x1;		/* (  1) */
ffa09970:	c0 bb       	[FP -0x10] = R0;
ffa09972:	f8 a0       	R0 = [FP + 0xc];
ffa09974:	08 64       	R0 += 0x1;		/* (  1) */
ffa09976:	d0 bb       	[FP -0xc] = R0;
ffa09978:	e0 b9       	R0 = [FP -0x8];
ffa0997a:	08 64       	R0 += 0x1;		/* (  1) */
ffa0997c:	f0 bb       	[FP -0x4] = R0;
ffa0997e:	12 20       	JUMP.S 0xffa099a2 <_substr+0x5a>;
ffa09980:	c0 b9       	R0 = [FP -0x10];
ffa09982:	08 64       	R0 += 0x1;		/* (  1) */
ffa09984:	c0 bb       	[FP -0x10] = R0;
ffa09986:	d0 b9       	R0 = [FP -0xc];
ffa09988:	08 64       	R0 += 0x1;		/* (  1) */
ffa0998a:	d0 bb       	[FP -0xc] = R0;
ffa0998c:	f0 b9       	R0 = [FP -0x4];
ffa0998e:	08 64       	R0 += 0x1;		/* (  1) */
ffa09990:	f0 bb       	[FP -0x4] = R0;
ffa09992:	ca b9       	P2 = [FP -0x10];
ffa09994:	50 99       	R0 = B[P2] (X);
ffa09996:	00 43       	R0 = R0.B (X);
ffa09998:	00 0c       	CC = R0 == 0x0;
ffa0999a:	04 10       	IF !CC JUMP 0xffa099a2 <_substr+0x5a>;
ffa0999c:	f0 b9       	R0 = [FP -0x4];
ffa0999e:	b0 bb       	[FP -0x14] = R0;
ffa099a0:	28 20       	JUMP.S 0xffa099f0 <_substr+0xa8>;
ffa099a2:	ca b9       	P2 = [FP -0x10];
ffa099a4:	51 99       	R1 = B[P2] (X);
ffa099a6:	da b9       	P2 = [FP -0xc];
ffa099a8:	50 99       	R0 = B[P2] (X);
ffa099aa:	09 43       	R1 = R1.B (X);
ffa099ac:	00 43       	R0 = R0.B (X);
ffa099ae:	01 08       	CC = R1 == R0;
ffa099b0:	08 10       	IF !CC JUMP 0xffa099c0 <_substr+0x78>;
ffa099b2:	00 00       	NOP;
ffa099b4:	00 00       	NOP;
ffa099b6:	da b9       	P2 = [FP -0xc];
ffa099b8:	50 99       	R0 = B[P2] (X);
ffa099ba:	00 43       	R0 = R0.B (X);
ffa099bc:	00 0c       	CC = R0 == 0x0;
ffa099be:	e1 13       	IF !CC JUMP 0xffa09980 <_substr+0x38>;
ffa099c0:	f8 a0       	R0 = [FP + 0xc];
ffa099c2:	08 64       	R0 += 0x1;		/* (  1) */
ffa099c4:	f8 b0       	[FP + 0xc] = R0;
ffa099c6:	e0 b9       	R0 = [FP -0x8];
ffa099c8:	08 64       	R0 += 0x1;		/* (  1) */
ffa099ca:	e0 bb       	[FP -0x8] = R0;
ffa099cc:	ba ac       	P2 = [FP + 0x8];
ffa099ce:	50 99       	R0 = B[P2] (X);
ffa099d0:	00 43       	R0 = R0.B (X);
ffa099d2:	00 0c       	CC = R0 == 0x0;
ffa099d4:	0c 18       	IF CC JUMP 0xffa099ec <_substr+0xa4>;
ffa099d6:	00 00       	NOP;
ffa099d8:	00 00       	NOP;
ffa099da:	fa ac       	P2 = [FP + 0xc];
ffa099dc:	50 99       	R0 = B[P2] (X);
ffa099de:	00 43       	R0 = R0.B (X);
ffa099e0:	00 0c       	CC = R0 == 0x0;
ffa099e2:	05 18       	IF CC JUMP 0xffa099ec <_substr+0xa4>;
ffa099e4:	e1 b9       	R1 = [FP -0x8];
ffa099e6:	38 a1       	R0 = [FP + 0x10];
ffa099e8:	81 08       	CC = R1 < R0;
ffa099ea:	b9 1b       	IF CC JUMP 0xffa0995c <_substr+0x14>;
ffa099ec:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa099ee:	b0 bb       	[FP -0x14] = R0;
ffa099f0:	b0 b9       	R0 = [FP -0x14];
ffa099f2:	01 e8 00 00 	UNLINK;
ffa099f6:	10 00       	RTS;

ffa099f8 <_sprintf_int>:
ffa099f8:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa099fc:	b8 b0       	[FP + 0x8] = R0;
ffa099fe:	f9 b0       	[FP + 0xc] = R1;
ffa09a00:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09a02:	c0 bb       	[FP -0x10] = R0;
ffa09a04:	f8 a0       	R0 = [FP + 0xc];
ffa09a06:	00 0c       	CC = R0 == 0x0;
ffa09a08:	0b 10       	IF !CC JUMP 0xffa09a1e <_sprintf_int+0x26>;
ffa09a0a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900924 */
ffa09a0e:	0a e1 80 70 	P2.L = 0x7080;		/* (28800)	P2=0xff907080 <_printf_temp> */
ffa09a12:	52 91       	P2 = [P2];
ffa09a14:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa09a16:	10 9b       	B[P2] = R0;
ffa09a18:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09a1a:	c0 bb       	[FP -0x10] = R0;
ffa09a1c:	90 20       	JUMP.S 0xffa09b3c <_sprintf_int+0x144>;
ffa09a1e:	f8 a0       	R0 = [FP + 0xc];
ffa09a20:	00 0d       	CC = R0 <= 0x0;
ffa09a22:	3c 18       	IF CC JUMP 0xffa09a9a <_sprintf_int+0xa2>;
ffa09a24:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09a26:	c0 bb       	[FP -0x10] = R0;
ffa09a28:	31 20       	JUMP.S 0xffa09a8a <_sprintf_int+0x92>;
ffa09a2a:	f9 a0       	R1 = [FP + 0xc];
ffa09a2c:	40 e1 66 66 	R0.H = 0x6666;		/* (26214)	R0=0x66660000(1717960704) */
ffa09a30:	00 e1 67 66 	R0.L = 0x6667;		/* (26215)	R0=0x66666667(1717986919) */
ffa09a34:	80 c0 08 18 	A1 = R1.L * R0.L (FU);
ffa09a38:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa09a3c:	11 c1 08 86 	A1 += R1.H * R0.L (M), A0 = R1.H * R0.H (IS);
ffa09a40:	11 c1 01 98 	A1 += R0.H * R1.L (M, IS);
ffa09a44:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa09a48:	0b c4 00 00 	R0 = (A0 += A1);
ffa09a4c:	82 c6 f0 05 	R2 = R0 >>> 0x2;
ffa09a50:	82 c6 09 01 	R0 = R1 >>> 0x1f;
ffa09a54:	02 52       	R0 = R2 - R0;
ffa09a56:	f0 bb       	[FP -0x4] = R0;
ffa09a58:	f1 b9       	R1 = [FP -0x4];
ffa09a5a:	01 30       	R0 = R1;
ffa09a5c:	10 4f       	R0 <<= 0x2;
ffa09a5e:	08 50       	R0 = R0 + R1;
ffa09a60:	08 4f       	R0 <<= 0x1;
ffa09a62:	08 30       	R1 = R0;
ffa09a64:	f8 a0       	R0 = [FP + 0xc];
ffa09a66:	08 52       	R0 = R0 - R1;
ffa09a68:	d0 bb       	[FP -0xc] = R0;
ffa09a6a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff907080 <_printf_temp> */
ffa09a6e:	0a e1 80 70 	P2.L = 0x7080;		/* (28800)	P2=0xff907080 <_printf_temp> */
ffa09a72:	11 91       	R1 = [P2];
ffa09a74:	c0 b9       	R0 = [FP -0x10];
ffa09a76:	41 50       	R1 = R1 + R0;
ffa09a78:	11 32       	P2 = R1;
ffa09a7a:	d0 b9       	R0 = [FP -0xc];
ffa09a7c:	80 65       	R0 += 0x30;		/* ( 48) */
ffa09a7e:	10 9b       	B[P2] = R0;
ffa09a80:	c0 b9       	R0 = [FP -0x10];
ffa09a82:	08 64       	R0 += 0x1;		/* (  1) */
ffa09a84:	c0 bb       	[FP -0x10] = R0;
ffa09a86:	f0 b9       	R0 = [FP -0x4];
ffa09a88:	f8 b0       	[FP + 0xc] = R0;
ffa09a8a:	f8 a0       	R0 = [FP + 0xc];
ffa09a8c:	00 0d       	CC = R0 <= 0x0;
ffa09a8e:	57 18       	IF CC JUMP 0xffa09b3c <_sprintf_int+0x144>;
ffa09a90:	c0 b9       	R0 = [FP -0x10];
ffa09a92:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa09a94:	08 09       	CC = R0 <= R1;
ffa09a96:	ca 1b       	IF CC JUMP 0xffa09a2a <_sprintf_int+0x32>;
ffa09a98:	52 20       	JUMP.S 0xffa09b3c <_sprintf_int+0x144>;
ffa09a9a:	f8 a0       	R0 = [FP + 0xc];
ffa09a9c:	80 0c       	CC = R0 < 0x0;
ffa09a9e:	4f 10       	IF !CC JUMP 0xffa09b3c <_sprintf_int+0x144>;
ffa09aa0:	f8 a0       	R0 = [FP + 0xc];
ffa09aa2:	08 30       	R1 = R0;
ffa09aa4:	f9 4c       	BITCLR (R1, 0x1f);		/* bit 31 */
ffa09aa6:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa09aa8:	f8 4f       	R0 <<= 0x1f;
ffa09aaa:	08 52       	R0 = R0 - R1;
ffa09aac:	f8 b0       	[FP + 0xc] = R0;
ffa09aae:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09ab0:	c0 bb       	[FP -0x10] = R0;
ffa09ab2:	31 20       	JUMP.S 0xffa09b14 <_sprintf_int+0x11c>;
ffa09ab4:	f9 a0       	R1 = [FP + 0xc];
ffa09ab6:	40 e1 66 66 	R0.H = 0x6666;		/* (26214)	R0=0x66660000(1717960704) */
ffa09aba:	00 e1 67 66 	R0.L = 0x6667;		/* (26215)	R0=0x66666667(1717986919) */
ffa09abe:	80 c0 08 18 	A1 = R1.L * R0.L (FU);
ffa09ac2:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa09ac6:	11 c1 08 86 	A1 += R1.H * R0.L (M), A0 = R1.H * R0.H (IS);
ffa09aca:	11 c1 01 98 	A1 += R0.H * R1.L (M, IS);
ffa09ace:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa09ad2:	0b c4 00 00 	R0 = (A0 += A1);
ffa09ad6:	82 c6 f0 05 	R2 = R0 >>> 0x2;
ffa09ada:	82 c6 09 01 	R0 = R1 >>> 0x1f;
ffa09ade:	02 52       	R0 = R2 - R0;
ffa09ae0:	f0 bb       	[FP -0x4] = R0;
ffa09ae2:	f1 b9       	R1 = [FP -0x4];
ffa09ae4:	01 30       	R0 = R1;
ffa09ae6:	10 4f       	R0 <<= 0x2;
ffa09ae8:	08 50       	R0 = R0 + R1;
ffa09aea:	08 4f       	R0 <<= 0x1;
ffa09aec:	08 30       	R1 = R0;
ffa09aee:	f8 a0       	R0 = [FP + 0xc];
ffa09af0:	08 52       	R0 = R0 - R1;
ffa09af2:	d0 bb       	[FP -0xc] = R0;
ffa09af4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff907080 <_printf_temp> */
ffa09af8:	0a e1 80 70 	P2.L = 0x7080;		/* (28800)	P2=0xff907080 <_printf_temp> */
ffa09afc:	11 91       	R1 = [P2];
ffa09afe:	c0 b9       	R0 = [FP -0x10];
ffa09b00:	41 50       	R1 = R1 + R0;
ffa09b02:	11 32       	P2 = R1;
ffa09b04:	d0 b9       	R0 = [FP -0xc];
ffa09b06:	80 65       	R0 += 0x30;		/* ( 48) */
ffa09b08:	10 9b       	B[P2] = R0;
ffa09b0a:	c0 b9       	R0 = [FP -0x10];
ffa09b0c:	08 64       	R0 += 0x1;		/* (  1) */
ffa09b0e:	c0 bb       	[FP -0x10] = R0;
ffa09b10:	f0 b9       	R0 = [FP -0x4];
ffa09b12:	f8 b0       	[FP + 0xc] = R0;
ffa09b14:	f8 a0       	R0 = [FP + 0xc];
ffa09b16:	00 0d       	CC = R0 <= 0x0;
ffa09b18:	05 18       	IF CC JUMP 0xffa09b22 <_sprintf_int+0x12a>;
ffa09b1a:	c0 b9       	R0 = [FP -0x10];
ffa09b1c:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa09b1e:	08 09       	CC = R0 <= R1;
ffa09b20:	ca 1b       	IF CC JUMP 0xffa09ab4 <_sprintf_int+0xbc>;
ffa09b22:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff907080 <_printf_temp> */
ffa09b26:	0a e1 80 70 	P2.L = 0x7080;		/* (28800)	P2=0xff907080 <_printf_temp> */
ffa09b2a:	11 91       	R1 = [P2];
ffa09b2c:	c0 b9       	R0 = [FP -0x10];
ffa09b2e:	41 50       	R1 = R1 + R0;
ffa09b30:	11 32       	P2 = R1;
ffa09b32:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa09b34:	10 9b       	B[P2] = R0;
ffa09b36:	c0 b9       	R0 = [FP -0x10];
ffa09b38:	08 64       	R0 += 0x1;		/* (  1) */
ffa09b3a:	c0 bb       	[FP -0x10] = R0;
ffa09b3c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09b3e:	e0 bb       	[FP -0x8] = R0;
ffa09b40:	16 20       	JUMP.S 0xffa09b6c <_sprintf_int+0x174>;
ffa09b42:	e0 b9       	R0 = [FP -0x8];
ffa09b44:	08 30       	R1 = R0;
ffa09b46:	b8 a0       	R0 = [FP + 0x8];
ffa09b48:	41 50       	R1 = R1 + R0;
ffa09b4a:	09 32       	P1 = R1;
ffa09b4c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff907080 <_printf_temp> */
ffa09b50:	0a e1 80 70 	P2.L = 0x7080;		/* (28800)	P2=0xff907080 <_printf_temp> */
ffa09b54:	12 91       	R2 = [P2];
ffa09b56:	c1 b9       	R1 = [FP -0x10];
ffa09b58:	e0 b9       	R0 = [FP -0x8];
ffa09b5a:	01 52       	R0 = R1 - R0;
ffa09b5c:	02 50       	R0 = R2 + R0;
ffa09b5e:	10 32       	P2 = R0;
ffa09b60:	fa 6f       	P2 += -0x1;		/* ( -1) */
ffa09b62:	50 99       	R0 = B[P2] (X);
ffa09b64:	08 9b       	B[P1] = R0;
ffa09b66:	e0 b9       	R0 = [FP -0x8];
ffa09b68:	08 64       	R0 += 0x1;		/* (  1) */
ffa09b6a:	e0 bb       	[FP -0x8] = R0;
ffa09b6c:	e1 b9       	R1 = [FP -0x8];
ffa09b6e:	c0 b9       	R0 = [FP -0x10];
ffa09b70:	81 08       	CC = R1 < R0;
ffa09b72:	e8 1b       	IF CC JUMP 0xffa09b42 <_sprintf_int+0x14a>;
ffa09b74:	c0 b9       	R0 = [FP -0x10];
ffa09b76:	01 e8 00 00 	UNLINK;
ffa09b7a:	10 00       	RTS;

ffa09b7c <_sprintf_hex>:
ffa09b7c:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa09b80:	b8 b0       	[FP + 0x8] = R0;
ffa09b82:	f9 b0       	[FP + 0xc] = R1;
ffa09b84:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09b86:	d0 bb       	[FP -0xc] = R0;
ffa09b88:	d0 b9       	R0 = [FP -0xc];
ffa09b8a:	08 30       	R1 = R0;
ffa09b8c:	b8 a0       	R0 = [FP + 0x8];
ffa09b8e:	41 50       	R1 = R1 + R0;
ffa09b90:	11 32       	P2 = R1;
ffa09b92:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa09b94:	10 9b       	B[P2] = R0;
ffa09b96:	d0 b9       	R0 = [FP -0xc];
ffa09b98:	08 64       	R0 += 0x1;		/* (  1) */
ffa09b9a:	d0 bb       	[FP -0xc] = R0;
ffa09b9c:	d0 b9       	R0 = [FP -0xc];
ffa09b9e:	08 30       	R1 = R0;
ffa09ba0:	b8 a0       	R0 = [FP + 0x8];
ffa09ba2:	41 50       	R1 = R1 + R0;
ffa09ba4:	11 32       	P2 = R1;
ffa09ba6:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa09baa:	10 9b       	B[P2] = R0;
ffa09bac:	d0 b9       	R0 = [FP -0xc];
ffa09bae:	08 64       	R0 += 0x1;		/* (  1) */
ffa09bb0:	d0 bb       	[FP -0xc] = R0;
ffa09bb2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09bb4:	c0 bb       	[FP -0x10] = R0;
ffa09bb6:	2c 20       	JUMP.S 0xffa09c0e <_sprintf_hex+0x92>;
ffa09bb8:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa09bba:	c0 b9       	R0 = [FP -0x10];
ffa09bbc:	01 52       	R0 = R1 - R0;
ffa09bbe:	82 c6 10 82 	R1 = R0 << 0x2;
ffa09bc2:	f8 a0       	R0 = [FP + 0xc];
ffa09bc4:	08 40       	R0 >>>= R1;
ffa09bc6:	e0 bb       	[FP -0x8] = R0;
ffa09bc8:	e0 b9       	R0 = [FP -0x8];
ffa09bca:	08 30       	R1 = R0;
ffa09bcc:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa09bce:	01 54       	R0 = R1 & R0;
ffa09bd0:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa09bd4:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa09bd8:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa09bda:	08 09       	CC = R0 <= R1;
ffa09bdc:	07 18       	IF CC JUMP 0xffa09bea <_sprintf_hex+0x6e>;
ffa09bde:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa09be2:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa09be4:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa09be8:	06 20       	JUMP.S 0xffa09bf4 <_sprintf_hex+0x78>;
ffa09bea:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa09bee:	80 65       	R0 += 0x30;		/* ( 48) */
ffa09bf0:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa09bf4:	d1 b9       	R1 = [FP -0xc];
ffa09bf6:	c0 b9       	R0 = [FP -0x10];
ffa09bf8:	01 50       	R0 = R1 + R0;
ffa09bfa:	08 30       	R1 = R0;
ffa09bfc:	b8 a0       	R0 = [FP + 0x8];
ffa09bfe:	41 50       	R1 = R1 + R0;
ffa09c00:	11 32       	P2 = R1;
ffa09c02:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa09c06:	10 9b       	B[P2] = R0;
ffa09c08:	c0 b9       	R0 = [FP -0x10];
ffa09c0a:	08 64       	R0 += 0x1;		/* (  1) */
ffa09c0c:	c0 bb       	[FP -0x10] = R0;
ffa09c0e:	c0 b9       	R0 = [FP -0x10];
ffa09c10:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa09c12:	08 09       	CC = R0 <= R1;
ffa09c14:	d2 1b       	IF CC JUMP 0xffa09bb8 <_sprintf_hex+0x3c>;
ffa09c16:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa09c18:	01 e8 00 00 	UNLINK;
ffa09c1c:	10 00       	RTS;
	...

ffa09c20 <_strprintf_int>:
ffa09c20:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa09c24:	b8 b0       	[FP + 0x8] = R0;
ffa09c26:	f9 b0       	[FP + 0xc] = R1;
ffa09c28:	3a b1       	[FP + 0x10] = R2;
ffa09c2a:	39 a1       	R1 = [FP + 0x10];
ffa09c2c:	b8 a0       	R0 = [FP + 0x8];
ffa09c2e:	ff e3 e5 fe 	CALL 0xffa099f8 <_sprintf_int>;
ffa09c32:	f0 bb       	[FP -0x4] = R0;
ffa09c34:	fa ac       	P2 = [FP + 0xc];
ffa09c36:	11 91       	R1 = [P2];
ffa09c38:	f0 b9       	R0 = [FP -0x4];
ffa09c3a:	01 50       	R0 = R1 + R0;
ffa09c3c:	fa ac       	P2 = [FP + 0xc];
ffa09c3e:	10 93       	[P2] = R0;
ffa09c40:	f0 b9       	R0 = [FP -0x4];
ffa09c42:	08 30       	R1 = R0;
ffa09c44:	b8 a0       	R0 = [FP + 0x8];
ffa09c46:	08 50       	R0 = R0 + R1;
ffa09c48:	b8 b0       	[FP + 0x8] = R0;
ffa09c4a:	b8 a0       	R0 = [FP + 0x8];
ffa09c4c:	01 e8 00 00 	UNLINK;
ffa09c50:	10 00       	RTS;
	...

ffa09c54 <_strprintf_hex>:
ffa09c54:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa09c58:	b8 b0       	[FP + 0x8] = R0;
ffa09c5a:	f9 b0       	[FP + 0xc] = R1;
ffa09c5c:	3a b1       	[FP + 0x10] = R2;
ffa09c5e:	39 a1       	R1 = [FP + 0x10];
ffa09c60:	b8 a0       	R0 = [FP + 0x8];
ffa09c62:	ff e3 8d ff 	CALL 0xffa09b7c <_sprintf_hex>;
ffa09c66:	f0 bb       	[FP -0x4] = R0;
ffa09c68:	fa ac       	P2 = [FP + 0xc];
ffa09c6a:	11 91       	R1 = [P2];
ffa09c6c:	f0 b9       	R0 = [FP -0x4];
ffa09c6e:	01 50       	R0 = R1 + R0;
ffa09c70:	fa ac       	P2 = [FP + 0xc];
ffa09c72:	10 93       	[P2] = R0;
ffa09c74:	f0 b9       	R0 = [FP -0x4];
ffa09c76:	08 30       	R1 = R0;
ffa09c78:	b8 a0       	R0 = [FP + 0x8];
ffa09c7a:	08 50       	R0 = R0 + R1;
ffa09c7c:	b8 b0       	[FP + 0x8] = R0;
ffa09c7e:	b8 a0       	R0 = [FP + 0x8];
ffa09c80:	01 e8 00 00 	UNLINK;
ffa09c84:	10 00       	RTS;
	...

ffa09c88 <_atoi>:
ffa09c88:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa09c8c:	b8 b0       	[FP + 0x8] = R0;
ffa09c8e:	f9 b0       	[FP + 0xc] = R1;
ffa09c90:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09c92:	d0 bb       	[FP -0xc] = R0;
ffa09c94:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09c96:	e0 bb       	[FP -0x8] = R0;
ffa09c98:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09c9a:	f0 bb       	[FP -0x4] = R0;
ffa09c9c:	ba ac       	P2 = [FP + 0x8];
ffa09c9e:	50 99       	R0 = B[P2] (X);
ffa09ca0:	00 43       	R0 = R0.B (X);
ffa09ca2:	69 61       	R1 = 0x2d (X);		/*		R1=0x2d( 45) */
ffa09ca4:	08 08       	CC = R0 == R1;
ffa09ca6:	2c 10       	IF !CC JUMP 0xffa09cfe <_atoi+0x76>;
ffa09ca8:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa09caa:	f0 bb       	[FP -0x4] = R0;
ffa09cac:	b8 a0       	R0 = [FP + 0x8];
ffa09cae:	08 64       	R0 += 0x1;		/* (  1) */
ffa09cb0:	b8 b0       	[FP + 0x8] = R0;
ffa09cb2:	d0 b9       	R0 = [FP -0xc];
ffa09cb4:	08 64       	R0 += 0x1;		/* (  1) */
ffa09cb6:	d0 bb       	[FP -0xc] = R0;
ffa09cb8:	23 20       	JUMP.S 0xffa09cfe <_atoi+0x76>;
ffa09cba:	ba ac       	P2 = [FP + 0x8];
ffa09cbc:	50 99       	R0 = B[P2] (X);
ffa09cbe:	01 43       	R1 = R0.B (X);
ffa09cc0:	e0 b9       	R0 = [FP -0x8];
ffa09cc2:	01 50       	R0 = R1 + R0;
ffa09cc4:	80 66       	R0 += -0x30;		/* (-48) */
ffa09cc6:	e0 bb       	[FP -0x8] = R0;
ffa09cc8:	b8 a0       	R0 = [FP + 0x8];
ffa09cca:	08 64       	R0 += 0x1;		/* (  1) */
ffa09ccc:	b8 b0       	[FP + 0x8] = R0;
ffa09cce:	d0 b9       	R0 = [FP -0xc];
ffa09cd0:	08 64       	R0 += 0x1;		/* (  1) */
ffa09cd2:	d0 bb       	[FP -0xc] = R0;
ffa09cd4:	ba ac       	P2 = [FP + 0x8];
ffa09cd6:	50 99       	R0 = B[P2] (X);
ffa09cd8:	00 43       	R0 = R0.B (X);
ffa09cda:	79 61       	R1 = 0x2f (X);		/*		R1=0x2f( 47) */
ffa09cdc:	08 09       	CC = R0 <= R1;
ffa09cde:	10 18       	IF CC JUMP 0xffa09cfe <_atoi+0x76>;
ffa09ce0:	00 00       	NOP;
ffa09ce2:	00 00       	NOP;
ffa09ce4:	ba ac       	P2 = [FP + 0x8];
ffa09ce6:	50 99       	R0 = B[P2] (X);
ffa09ce8:	00 43       	R0 = R0.B (X);
ffa09cea:	c9 61       	R1 = 0x39 (X);		/*		R1=0x39( 57) */
ffa09cec:	08 09       	CC = R0 <= R1;
ffa09cee:	08 10       	IF !CC JUMP 0xffa09cfe <_atoi+0x76>;
ffa09cf0:	e0 b9       	R0 = [FP -0x8];
ffa09cf2:	08 30       	R1 = R0;
ffa09cf4:	11 4f       	R1 <<= 0x2;
ffa09cf6:	41 50       	R1 = R1 + R0;
ffa09cf8:	82 c6 09 80 	R0 = R1 << 0x1;
ffa09cfc:	e0 bb       	[FP -0x8] = R0;
ffa09cfe:	ba ac       	P2 = [FP + 0x8];
ffa09d00:	50 99       	R0 = B[P2] (X);
ffa09d02:	00 43       	R0 = R0.B (X);
ffa09d04:	79 61       	R1 = 0x2f (X);		/*		R1=0x2f( 47) */
ffa09d06:	08 09       	CC = R0 <= R1;
ffa09d08:	0d 18       	IF CC JUMP 0xffa09d22 <_atoi+0x9a>;
ffa09d0a:	00 00       	NOP;
ffa09d0c:	00 00       	NOP;
ffa09d0e:	ba ac       	P2 = [FP + 0x8];
ffa09d10:	50 99       	R0 = B[P2] (X);
ffa09d12:	00 43       	R0 = R0.B (X);
ffa09d14:	c9 61       	R1 = 0x39 (X);		/*		R1=0x39( 57) */
ffa09d16:	08 09       	CC = R0 <= R1;
ffa09d18:	05 10       	IF !CC JUMP 0xffa09d22 <_atoi+0x9a>;
ffa09d1a:	d1 b9       	R1 = [FP -0xc];
ffa09d1c:	f8 a0       	R0 = [FP + 0xc];
ffa09d1e:	81 08       	CC = R1 < R0;
ffa09d20:	cd 1b       	IF CC JUMP 0xffa09cba <_atoi+0x32>;
ffa09d22:	e1 b9       	R1 = [FP -0x8];
ffa09d24:	f0 b9       	R0 = [FP -0x4];
ffa09d26:	c8 40       	R0 *= R1;
ffa09d28:	01 e8 00 00 	UNLINK;
ffa09d2c:	10 00       	RTS;
	...

ffa09d30 <_udelay>:
ffa09d30:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa09d34:	b8 b0       	[FP + 0x8] = R0;
ffa09d36:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09d38:	e0 bb       	[FP -0x8] = R0;
ffa09d3a:	10 20       	JUMP.S 0xffa09d5a <_udelay+0x2a>;
ffa09d3c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09d3e:	f0 bb       	[FP -0x4] = R0;
ffa09d40:	05 20       	JUMP.S 0xffa09d4a <_udelay+0x1a>;
ffa09d42:	00 00       	NOP;
ffa09d44:	f0 b9       	R0 = [FP -0x4];
ffa09d46:	08 64       	R0 += 0x1;		/* (  1) */
ffa09d48:	f0 bb       	[FP -0x4] = R0;
ffa09d4a:	f0 b9       	R0 = [FP -0x4];
ffa09d4c:	21 e1 9f 00 	R1 = 0x9f (X);		/*		R1=0x9f(159) */
ffa09d50:	08 09       	CC = R0 <= R1;
ffa09d52:	f8 1b       	IF CC JUMP 0xffa09d42 <_udelay+0x12>;
ffa09d54:	e0 b9       	R0 = [FP -0x8];
ffa09d56:	08 64       	R0 += 0x1;		/* (  1) */
ffa09d58:	e0 bb       	[FP -0x8] = R0;
ffa09d5a:	e1 b9       	R1 = [FP -0x8];
ffa09d5c:	b8 a0       	R0 = [FP + 0x8];
ffa09d5e:	81 08       	CC = R1 < R0;
ffa09d60:	ee 1b       	IF CC JUMP 0xffa09d3c <_udelay+0xc>;
ffa09d62:	01 e8 00 00 	UNLINK;
ffa09d66:	10 00       	RTS;

ffa09d68 <_spi_delay>:
ffa09d68:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa09d6c:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa09d6e:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa09d72:	08 20       	JUMP.S 0xffa09d82 <_spi_delay+0x1a>;
ffa09d74:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc07080(-4165504) */
ffa09d78:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa09d7c:	50 95       	R0 = W[P2] (X);
ffa09d7e:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa09d82:	78 e4 fe ff 	R0 = W[FP + -0x4] (Z);
ffa09d86:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa09d88:	08 54       	R0 = R0 & R1;
ffa09d8a:	00 0c       	CC = R0 == 0x0;
ffa09d8c:	f4 13       	IF !CC JUMP 0xffa09d74 <_spi_delay+0xc>;
ffa09d8e:	08 20       	JUMP.S 0xffa09d9e <_spi_delay+0x36>;
ffa09d90:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa09d94:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa09d98:	50 95       	R0 = W[P2] (X);
ffa09d9a:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa09d9e:	78 e4 fe ff 	R0 = W[FP + -0x4] (Z);
ffa09da2:	00 49       	CC = BITTST (R0, 0x0);		/* bit  0 */
ffa09da4:	00 02       	R0 = CC;
ffa09da6:	00 0c       	CC = R0 == 0x0;
ffa09da8:	f4 1b       	IF CC JUMP 0xffa09d90 <_spi_delay+0x28>;
ffa09daa:	01 e8 00 00 	UNLINK;
ffa09dae:	10 00       	RTS;

ffa09db0 <_spi_write_register>:
ffa09db0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa09db4:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa09db8:	01 30       	R0 = R1;
ffa09dba:	b8 e6 0c 00 	B[FP + 0xc] = R0;
ffa09dbe:	b8 e5 08 00 	R0 = B[FP + 0x8] (X);
ffa09dc2:	28 4a       	BITSET (R0, 0x5);		/* bit  5 */
ffa09dc4:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa09dc8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa09dcc:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa09dd0:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09dd2:	10 97       	W[P2] = R0;
ffa09dd4:	24 00       	SSYNC;
ffa09dd6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa09dda:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa09dde:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa09de2:	10 97       	W[P2] = R0;
ffa09de4:	ff e3 c2 ff 	CALL 0xffa09d68 <_spi_delay>;
ffa09de8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa09dec:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa09df0:	50 95       	R0 = W[P2] (X);
ffa09df2:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa09df6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa09dfa:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa09dfe:	b8 e4 0c 00 	R0 = B[FP + 0xc] (Z);
ffa09e02:	10 97       	W[P2] = R0;
ffa09e04:	ff e3 b2 ff 	CALL 0xffa09d68 <_spi_delay>;
ffa09e08:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa09e0c:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa09e10:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09e12:	10 97       	W[P2] = R0;
ffa09e14:	24 00       	SSYNC;
ffa09e16:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa09e1a:	01 e8 00 00 	UNLINK;
ffa09e1e:	10 00       	RTS;

ffa09e20 <_spi_write_register_ver>:
ffa09e20:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa09e24:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa09e28:	01 30       	R0 = R1;
ffa09e2a:	b8 e6 0c 00 	B[FP + 0xc] = R0;
ffa09e2e:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa09e32:	b9 e4 0c 00 	R1 = B[FP + 0xc] (Z);
ffa09e36:	ff e3 bd ff 	CALL 0xffa09db0 <_spi_write_register>;
ffa09e3a:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa09e3e:	00 e3 09 00 	CALL 0xffa09e50 <_spi_read_register>;
ffa09e42:	b8 e6 ff ff 	B[FP + -0x1] = R0;
ffa09e46:	b8 e4 ff ff 	R0 = B[FP + -0x1] (Z);
ffa09e4a:	01 e8 00 00 	UNLINK;
ffa09e4e:	10 00       	RTS;

ffa09e50 <_spi_read_register>:
ffa09e50:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa09e54:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa09e58:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa09e5c:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa09e60:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09e62:	10 97       	W[P2] = R0;
ffa09e64:	24 00       	SSYNC;
ffa09e66:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa09e6a:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa09e6e:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa09e72:	10 97       	W[P2] = R0;
ffa09e74:	ff e3 7a ff 	CALL 0xffa09d68 <_spi_delay>;
ffa09e78:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa09e7c:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa09e80:	50 95       	R0 = W[P2] (X);
ffa09e82:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa09e86:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa09e8a:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa09e8e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09e90:	10 97       	W[P2] = R0;
ffa09e92:	ff e3 6b ff 	CALL 0xffa09d68 <_spi_delay>;
ffa09e96:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa09e9a:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa09e9e:	50 95       	R0 = W[P2] (X);
ffa09ea0:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa09ea4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa09ea8:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa09eac:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09eae:	10 97       	W[P2] = R0;
ffa09eb0:	24 00       	SSYNC;
ffa09eb2:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa09eb6:	01 e8 00 00 	UNLINK;
ffa09eba:	10 00       	RTS;

ffa09ebc <_spi_read_register_status>:
ffa09ebc:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa09ec0:	f9 b0       	[FP + 0xc] = R1;
ffa09ec2:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa09ec6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa09eca:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa09ece:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09ed0:	10 97       	W[P2] = R0;
ffa09ed2:	24 00       	SSYNC;
ffa09ed4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa09ed8:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa09edc:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa09ee0:	10 97       	W[P2] = R0;
ffa09ee2:	ff e3 43 ff 	CALL 0xffa09d68 <_spi_delay>;
ffa09ee6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa09eea:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa09eee:	50 95       	R0 = W[P2] (X);
ffa09ef0:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa09ef4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa09ef8:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa09efc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09efe:	10 97       	W[P2] = R0;
ffa09f00:	ff e3 34 ff 	CALL 0xffa09d68 <_spi_delay>;
ffa09f04:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa09f08:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa09f0c:	50 95       	R0 = W[P2] (X);
ffa09f0e:	fa ac       	P2 = [FP + 0xc];
ffa09f10:	10 9b       	B[P2] = R0;
ffa09f12:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa09f16:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa09f1a:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09f1c:	10 97       	W[P2] = R0;
ffa09f1e:	24 00       	SSYNC;
ffa09f20:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa09f24:	01 e8 00 00 	UNLINK;
ffa09f28:	10 00       	RTS;
	...

ffa09f2c <_spi_write_byte>:
ffa09f2c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa09f30:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa09f34:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa09f38:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa09f3c:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09f3e:	10 97       	W[P2] = R0;
ffa09f40:	24 00       	SSYNC;
ffa09f42:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa09f46:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa09f4a:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa09f4e:	10 97       	W[P2] = R0;
ffa09f50:	ff e3 0c ff 	CALL 0xffa09d68 <_spi_delay>;
ffa09f54:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa09f58:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa09f5c:	50 95       	R0 = W[P2] (X);
ffa09f5e:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa09f62:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa09f66:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa09f6a:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09f6c:	10 97       	W[P2] = R0;
ffa09f6e:	24 00       	SSYNC;
ffa09f70:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa09f74:	01 e8 00 00 	UNLINK;
ffa09f78:	10 00       	RTS;
	...

ffa09f7c <_spi_write_packet>:
ffa09f7c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa09f80:	b8 b0       	[FP + 0x8] = R0;
ffa09f82:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa09f86:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa09f8a:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09f8c:	10 97       	W[P2] = R0;
ffa09f8e:	24 00       	SSYNC;
ffa09f90:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa09f94:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa09f98:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa09f9c:	10 97       	W[P2] = R0;
ffa09f9e:	ff e3 e5 fe 	CALL 0xffa09d68 <_spi_delay>;
ffa09fa2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa09fa6:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa09faa:	20 e1 07 50 	R0 = 0x5007 (X);		/*		R0=0x5007(20487) */
ffa09fae:	10 97       	W[P2] = R0;
ffa09fb0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa09fb4:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xffc00d50(-4190896) */
ffa09fb8:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa09fba:	10 97       	W[P2] = R0;
ffa09fbc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d50(-4190896) */
ffa09fc0:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xffc00d54(-4190892) */
ffa09fc4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09fc6:	10 97       	W[P2] = R0;
ffa09fc8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d54(-4190892) */
ffa09fcc:	0a e1 44 0d 	P2.L = 0xd44;		/* (3396)	P2=0xffc00d44(-4190908) */
ffa09fd0:	b8 a0       	R0 = [FP + 0x8];
ffa09fd2:	10 93       	[P2] = R0;
ffa09fd4:	24 00       	SSYNC;
ffa09fd6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d44(-4190908) */
ffa09fda:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa09fde:	20 e1 81 00 	R0 = 0x81 (X);		/*		R0=0x81(129) */
ffa09fe2:	10 97       	W[P2] = R0;
ffa09fe4:	01 20       	JUMP.S 0xffa09fe6 <_spi_write_packet+0x6a>;
	...
ffa09fee:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa09ff2:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa09ff6:	50 95       	R0 = W[P2] (X);
ffa09ff8:	c0 42       	R0 = R0.L (Z);
ffa09ffa:	00 49       	CC = BITTST (R0, 0x0);		/* bit  0 */
ffa09ffc:	00 02       	R0 = CC;
ffa09ffe:	00 0c       	CC = R0 == 0x0;
ffa0a000:	f3 1b       	IF CC JUMP 0xffa09fe6 <_spi_write_packet+0x6a>;
ffa0a002:	00 00       	NOP;
ffa0a004:	00 00       	NOP;
ffa0a006:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a00a:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0a00e:	50 95       	R0 = W[P2] (X);
ffa0a010:	c1 42       	R1 = R0.L (Z);
ffa0a012:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa0a014:	01 54       	R0 = R1 & R0;
ffa0a016:	00 0c       	CC = R0 == 0x0;
ffa0a018:	e7 13       	IF !CC JUMP 0xffa09fe6 <_spi_write_packet+0x6a>;
ffa0a01a:	00 00       	NOP;
ffa0a01c:	00 00       	NOP;
ffa0a01e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0a022:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a026:	50 95       	R0 = W[P2] (X);
ffa0a028:	c1 42       	R1 = R0.L (Z);
ffa0a02a:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa0a02c:	01 54       	R0 = R1 & R0;
ffa0a02e:	00 0c       	CC = R0 == 0x0;
ffa0a030:	db 13       	IF !CC JUMP 0xffa09fe6 <_spi_write_packet+0x6a>;
ffa0a032:	ff e3 9b fe 	CALL 0xffa09d68 <_spi_delay>;
ffa0a036:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a03a:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a03e:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a040:	10 97       	W[P2] = R0;
ffa0a042:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a046:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a04a:	20 e1 0d 50 	R0 = 0x500d (X);		/*		R0=0x500d(20493) */
ffa0a04e:	10 97       	W[P2] = R0;
ffa0a050:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a054:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa0a058:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a05a:	10 97       	W[P2] = R0;
ffa0a05c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa0a060:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a064:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a066:	10 97       	W[P2] = R0;
ffa0a068:	24 00       	SSYNC;
ffa0a06a:	01 e8 00 00 	UNLINK;
ffa0a06e:	10 00       	RTS;

ffa0a070 <_spi_write_packet_noDMA>:
ffa0a070:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa0a074:	b8 b0       	[FP + 0x8] = R0;
ffa0a076:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a07a:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a07e:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a080:	10 97       	W[P2] = R0;
ffa0a082:	24 00       	SSYNC;
ffa0a084:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a088:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a08c:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa0a090:	10 97       	W[P2] = R0;
ffa0a092:	ff e3 6b fe 	CALL 0xffa09d68 <_spi_delay>;
ffa0a096:	b8 a0       	R0 = [FP + 0x8];
ffa0a098:	f0 bb       	[FP -0x4] = R0;
ffa0a09a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a09c:	e0 bb       	[FP -0x8] = R0;
ffa0a09e:	11 20       	JUMP.S 0xffa0a0c0 <_spi_write_packet_noDMA+0x50>;
ffa0a0a0:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00730(-4192464) */
ffa0a0a4:	09 e1 0c 05 	P1.L = 0x50c;		/* (1292)	P1=0xffc0050c(-4193012) */
ffa0a0a8:	fa b9       	P2 = [FP -0x4];
ffa0a0aa:	50 99       	R0 = B[P2] (X);
ffa0a0ac:	00 43       	R0 = R0.B (X);
ffa0a0ae:	08 97       	W[P1] = R0;
ffa0a0b0:	f0 b9       	R0 = [FP -0x4];
ffa0a0b2:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a0b4:	f0 bb       	[FP -0x4] = R0;
ffa0a0b6:	ff e3 59 fe 	CALL 0xffa09d68 <_spi_delay>;
ffa0a0ba:	e0 b9       	R0 = [FP -0x8];
ffa0a0bc:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a0be:	e0 bb       	[FP -0x8] = R0;
ffa0a0c0:	e0 b9       	R0 = [FP -0x8];
ffa0a0c2:	f9 60       	R1 = 0x1f (X);		/*		R1=0x1f( 31) */
ffa0a0c4:	08 09       	CC = R0 <= R1;
ffa0a0c6:	ed 1b       	IF CC JUMP 0xffa0a0a0 <_spi_write_packet_noDMA+0x30>;
ffa0a0c8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a0cc:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a0d0:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a0d2:	10 97       	W[P2] = R0;
ffa0a0d4:	24 00       	SSYNC;
ffa0a0d6:	01 e8 00 00 	UNLINK;
ffa0a0da:	10 00       	RTS;

ffa0a0dc <_spi_read_packet>:
ffa0a0dc:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa0a0e0:	b8 b0       	[FP + 0x8] = R0;
ffa0a0e2:	b8 a0       	R0 = [FP + 0x8];
ffa0a0e4:	f0 bb       	[FP -0x4] = R0;
ffa0a0e6:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0a0e8:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0a0ec:	ff e3 62 fe 	CALL 0xffa09db0 <_spi_write_register>;
ffa0a0f0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a0f4:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a0f8:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a0fa:	10 97       	W[P2] = R0;
ffa0a0fc:	24 00       	SSYNC;
ffa0a0fe:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a102:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a106:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa0a10a:	10 97       	W[P2] = R0;
ffa0a10c:	ff e3 2e fe 	CALL 0xffa09d68 <_spi_delay>;
ffa0a110:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a112:	b8 e6 fb ff 	B[FP + -0x5] = R0;
ffa0a116:	18 20       	JUMP.S 0xffa0a146 <_spi_read_packet+0x6a>;
ffa0a118:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a11c:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a120:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a122:	10 97       	W[P2] = R0;
ffa0a124:	ff e3 22 fe 	CALL 0xffa09d68 <_spi_delay>;
ffa0a128:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a12c:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0a130:	50 95       	R0 = W[P2] (X);
ffa0a132:	fa b9       	P2 = [FP -0x4];
ffa0a134:	10 9b       	B[P2] = R0;
ffa0a136:	f0 b9       	R0 = [FP -0x4];
ffa0a138:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a13a:	f0 bb       	[FP -0x4] = R0;
ffa0a13c:	b8 e5 fb ff 	R0 = B[FP + -0x5] (X);
ffa0a140:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a142:	b8 e6 fb ff 	B[FP + -0x5] = R0;
ffa0a146:	b8 e4 fb ff 	R0 = B[FP + -0x5] (Z);
ffa0a14a:	f9 60       	R1 = 0x1f (X);		/*		R1=0x1f( 31) */
ffa0a14c:	08 0a       	CC = R0 <= R1 (IU);
ffa0a14e:	e5 1b       	IF CC JUMP 0xffa0a118 <_spi_read_packet+0x3c>;
ffa0a150:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0a154:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a158:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a15a:	10 97       	W[P2] = R0;
ffa0a15c:	24 00       	SSYNC;
ffa0a15e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a160:	01 e8 00 00 	UNLINK;
ffa0a164:	10 00       	RTS;
	...

ffa0a168 <_spi_read_packet_nocheck>:
ffa0a168:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a16c:	b8 b0       	[FP + 0x8] = R0;
ffa0a16e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a172:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a176:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a178:	10 97       	W[P2] = R0;
ffa0a17a:	24 00       	SSYNC;
ffa0a17c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a180:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a184:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa0a188:	10 97       	W[P2] = R0;
ffa0a18a:	ff e3 ef fd 	CALL 0xffa09d68 <_spi_delay>;
ffa0a18e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a192:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a196:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a198:	10 97       	W[P2] = R0;
ffa0a19a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a19e:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xffc00d50(-4190896) */
ffa0a1a2:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa0a1a4:	10 97       	W[P2] = R0;
ffa0a1a6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d50(-4190896) */
ffa0a1aa:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xffc00d54(-4190892) */
ffa0a1ae:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a1b0:	10 97       	W[P2] = R0;
ffa0a1b2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d54(-4190892) */
ffa0a1b6:	0a e1 44 0d 	P2.L = 0xd44;		/* (3396)	P2=0xffc00d44(-4190908) */
ffa0a1ba:	b8 a0       	R0 = [FP + 0x8];
ffa0a1bc:	10 93       	[P2] = R0;
ffa0a1be:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d44(-4190908) */
ffa0a1c2:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa0a1c6:	20 e1 83 00 	R0 = 0x83 (X);		/*		R0=0x83(131) */
ffa0a1ca:	10 97       	W[P2] = R0;
ffa0a1cc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa0a1d0:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a1d4:	20 e1 06 50 	R0 = 0x5006 (X);		/*		R0=0x5006(20486) */
ffa0a1d8:	10 97       	W[P2] = R0;
	...
ffa0a1e2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a1e6:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a1ea:	50 95       	R0 = W[P2] (X);
ffa0a1ec:	c0 42       	R0 = R0.L (Z);
ffa0a1ee:	00 49       	CC = BITTST (R0, 0x0);		/* bit  0 */
ffa0a1f0:	00 02       	R0 = CC;
ffa0a1f2:	00 0c       	CC = R0 == 0x0;
ffa0a1f4:	f3 1b       	IF CC JUMP 0xffa0a1da <_spi_read_packet_nocheck+0x72>;
ffa0a1f6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a1fa:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa0a1fe:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a200:	10 97       	W[P2] = R0;
ffa0a202:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa0a206:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a20a:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a20c:	10 97       	W[P2] = R0;
ffa0a20e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a212:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a216:	20 e1 0d 50 	R0 = 0x500d (X);		/*		R0=0x500d(20493) */
ffa0a21a:	10 97       	W[P2] = R0;
ffa0a21c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a220:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a224:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a226:	10 97       	W[P2] = R0;
ffa0a228:	24 00       	SSYNC;
ffa0a22a:	01 e8 00 00 	UNLINK;
ffa0a22e:	10 00       	RTS;

ffa0a230 <_radio_set_rx>:
ffa0a230:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a234:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a238:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a23c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a23e:	10 97       	W[P2] = R0;
ffa0a240:	24 00       	SSYNC;
ffa0a242:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a244:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a246:	ff e3 b5 fd 	CALL 0xffa09db0 <_spi_write_register>;
ffa0a24a:	20 e1 e2 00 	R0 = 0xe2 (X);		/*		R0=0xe2(226) */
ffa0a24e:	ff e3 6f fe 	CALL 0xffa09f2c <_spi_write_byte>;
ffa0a252:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a254:	f9 60       	R1 = 0x1f (X);		/*		R1=0x1f( 31) */
ffa0a256:	ff e3 ad fd 	CALL 0xffa09db0 <_spi_write_register>;
ffa0a25a:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0a25c:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0a260:	ff e3 a8 fd 	CALL 0xffa09db0 <_spi_write_register>;
ffa0a264:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a268:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a26c:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a26e:	10 97       	W[P2] = R0;
ffa0a270:	24 00       	SSYNC;
ffa0a272:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a276:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a27a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a27c:	10 97       	W[P2] = R0;
ffa0a27e:	24 00       	SSYNC;
ffa0a280:	01 e8 00 00 	UNLINK;
ffa0a284:	10 00       	RTS;
	...

ffa0a288 <_radio_set_tx>:
ffa0a288:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a28c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a290:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a294:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a296:	10 97       	W[P2] = R0;
ffa0a298:	24 00       	SSYNC;
ffa0a29a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a29c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a29e:	ff e3 89 fd 	CALL 0xffa09db0 <_spi_write_register>;
ffa0a2a2:	20 e1 e1 00 	R0 = 0xe1 (X);		/*		R0=0xe1(225) */
ffa0a2a6:	ff e3 43 fe 	CALL 0xffa09f2c <_spi_write_byte>;
ffa0a2aa:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0a2ac:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0a2b0:	ff e3 80 fd 	CALL 0xffa09db0 <_spi_write_register>;
ffa0a2b4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a2b6:	f1 60       	R1 = 0x1e (X);		/*		R1=0x1e( 30) */
ffa0a2b8:	ff e3 7c fd 	CALL 0xffa09db0 <_spi_write_register>;
ffa0a2bc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a2c0:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a2c4:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a2c6:	10 97       	W[P2] = R0;
ffa0a2c8:	01 e8 00 00 	UNLINK;
ffa0a2cc:	10 00       	RTS;
	...

ffa0a2d0 <_radio_wait_irq>:
ffa0a2d0:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0a2d4:	b8 b0       	[FP + 0x8] = R0;
ffa0a2d6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a2d8:	f0 bb       	[FP -0x4] = R0;
ffa0a2da:	08 20       	JUMP.S 0xffa0a2ea <_radio_wait_irq+0x1a>;
	...
ffa0a2e4:	f0 b9       	R0 = [FP -0x4];
ffa0a2e6:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a2e8:	f0 bb       	[FP -0x4] = R0;
ffa0a2ea:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a2ee:	0a e1 00 07 	P2.L = 0x700;		/* (1792)	P2=0xffc00700(-4192512) */
ffa0a2f2:	50 95       	R0 = W[P2] (X);
ffa0a2f4:	c1 42       	R1 = R0.L (Z);
ffa0a2f6:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa0a2f8:	01 54       	R0 = R1 & R0;
ffa0a2fa:	00 0c       	CC = R0 == 0x0;
ffa0a2fc:	05 18       	IF CC JUMP 0xffa0a306 <_radio_wait_irq+0x36>;
ffa0a2fe:	f1 b9       	R1 = [FP -0x4];
ffa0a300:	b8 a0       	R0 = [FP + 0x8];
ffa0a302:	81 08       	CC = R1 < R0;
ffa0a304:	ec 1b       	IF CC JUMP 0xffa0a2dc <_radio_wait_irq+0xc>;
ffa0a306:	f1 b9       	R1 = [FP -0x4];
ffa0a308:	b8 a0       	R0 = [FP + 0x8];
ffa0a30a:	81 08       	CC = R1 < R0;
ffa0a30c:	06 10       	IF !CC JUMP 0xffa0a318 <_radio_wait_irq+0x48>;
ffa0a30e:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0a310:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0a314:	ff e3 4e fd 	CALL 0xffa09db0 <_spi_write_register>;
ffa0a318:	f0 b9       	R0 = [FP -0x4];
ffa0a31a:	01 e8 00 00 	UNLINK;
ffa0a31e:	10 00       	RTS;

ffa0a320 <_radio_init>:
ffa0a320:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a324:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a328:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00700(-4192512) */
ffa0a32c:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a330:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a332:	10 97       	W[P2] = R0;
ffa0a334:	24 00       	SSYNC;
ffa0a336:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a33a:	0a e1 14 05 	P2.L = 0x514;		/* (1300)	P2=0xffc00514(-4193004) */
ffa0a33e:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa0a340:	10 97       	W[P2] = R0;
ffa0a342:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00514(-4193004) */
ffa0a346:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a34a:	20 e1 2d 50 	R0 = 0x502d (X);		/*		R0=0x502d(20525) */
ffa0a34e:	10 97       	W[P2] = R0;
ffa0a350:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a354:	0a e1 04 05 	P2.L = 0x504;		/* (1284)	P2=0xffc00504(-4193020) */
ffa0a358:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a35a:	10 97       	W[P2] = R0;
ffa0a35c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00504(-4193020) */
ffa0a360:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a364:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a366:	10 97       	W[P2] = R0;
ffa0a368:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc0050c(-4193012) */
ffa0a36c:	09 e1 40 07 	P1.L = 0x740;		/* (1856)	P1=0xffc00740(-4192448) */
ffa0a370:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a374:	0a e1 40 07 	P2.L = 0x740;		/* (1856)	P2=0xffc00740(-4192448) */
ffa0a378:	50 95       	R0 = W[P2] (X);
ffa0a37a:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa0a37c:	08 97       	W[P1] = R0;
ffa0a37e:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00740(-4192448) */
ffa0a382:	09 e1 30 07 	P1.L = 0x730;		/* (1840)	P1=0xffc00730(-4192464) */
ffa0a386:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00740(-4192448) */
ffa0a38a:	0a e1 30 07 	P2.L = 0x730;		/* (1840)	P2=0xffc00730(-4192464) */
ffa0a38e:	51 95       	R1 = W[P2] (X);
ffa0a390:	b8 63       	R0 = -0x9 (X);		/*		R0=0xfffffff7( -9) */
ffa0a392:	01 54       	R0 = R1 & R0;
ffa0a394:	08 97       	W[P1] = R0;
ffa0a396:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00730(-4192464) */
ffa0a39a:	09 e1 30 07 	P1.L = 0x730;		/* (1840)	P1=0xffc00730(-4192464) */
ffa0a39e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00730(-4192464) */
ffa0a3a2:	0a e1 30 07 	P2.L = 0x730;		/* (1840)	P2=0xffc00730(-4192464) */
ffa0a3a6:	51 95       	R1 = W[P2] (X);
ffa0a3a8:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a3aa:	01 56       	R0 = R1 | R0;
ffa0a3ac:	08 97       	W[P1] = R0;
ffa0a3ae:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a3b2:	21 e1 7c 00 	R1 = 0x7c (X);		/*		R1=0x7c(124) */
ffa0a3b6:	08 0a       	CC = R0 <= R1 (IU);
ffa0a3b8:	05 18       	IF CC JUMP 0xffa0a3c2 <_radio_init+0xa2>;
ffa0a3ba:	20 e1 7c 00 	R0 = 0x7c (X);		/*		R0=0x7c(124) */
ffa0a3be:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a3c2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a3c4:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a3c6:	ff e3 f5 fc 	CALL 0xffa09db0 <_spi_write_register>;
ffa0a3ca:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a3cc:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a3ce:	ff e3 29 fd 	CALL 0xffa09e20 <_spi_write_register_ver>;
ffa0a3d2:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a3d4:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa0a3d6:	ff e3 25 fd 	CALL 0xffa09e20 <_spi_write_register_ver>;
ffa0a3da:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a3dc:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa0a3de:	ff e3 21 fd 	CALL 0xffa09e20 <_spi_write_register_ver>;
ffa0a3e2:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa0a3e4:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a3e6:	ff e3 1d fd 	CALL 0xffa09e20 <_spi_write_register_ver>;
ffa0a3ea:	b9 e4 08 00 	R1 = B[FP + 0x8] (Z);
ffa0a3ee:	28 60       	R0 = 0x5 (X);		/*		R0=0x5(  5) */
ffa0a3f0:	ff e3 18 fd 	CALL 0xffa09e20 <_spi_write_register_ver>;
ffa0a3f4:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa0a3f6:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa0a3f8:	ff e3 14 fd 	CALL 0xffa09e20 <_spi_write_register_ver>;
ffa0a3fc:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0a3fe:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0a402:	ff e3 0f fd 	CALL 0xffa09e20 <_spi_write_register_ver>;
ffa0a406:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa0a408:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa0a40a:	ff e3 0b fd 	CALL 0xffa09e20 <_spi_write_register_ver>;
ffa0a40e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00730(-4192464) */
ffa0a412:	0a e1 6c 0d 	P2.L = 0xd6c;		/* (3436)	P2=0xffc00d6c(-4190868) */
ffa0a416:	20 e1 00 50 	R0 = 0x5000 (X);		/*		R0=0x5000(20480) */
ffa0a41a:	10 97       	W[P2] = R0;
ffa0a41c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d6c(-4190868) */
ffa0a420:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a424:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a426:	10 97       	W[P2] = R0;
ffa0a428:	20 e1 e2 00 	R0 = 0xe2 (X);		/*		R0=0xe2(226) */
ffa0a42c:	ff e3 80 fd 	CALL 0xffa09f2c <_spi_write_byte>;
ffa0a430:	20 e1 e1 00 	R0 = 0xe1 (X);		/*		R0=0xe1(225) */
ffa0a434:	ff e3 7c fd 	CALL 0xffa09f2c <_spi_write_byte>;
ffa0a438:	40 43       	R0 = R0.B (Z);
ffa0a43a:	01 e8 00 00 	UNLINK;
ffa0a43e:	10 00       	RTS;
