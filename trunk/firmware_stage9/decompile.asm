
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
ffa0814e:	08 e1 0c 9a 	P0.L = 0x9a0c;		/* (-26100)	P0=0xffa09a0c <_main> */
ffa08152:	48 e1 a0 ff 	P0.H = 0xffa0;		/* (-96)	P0=0xffa09a0c <_main> */
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
ffa08186:	00 e3 71 0b 	CALL 0xffa09868 <_exception_report>;
ffa0818a:	12 00       	RTX;

ffa0818c <_HWHANDLER>:
ffa0818c:	c1 31       	R0 = SEQSTAT;
ffa0818e:	cc 31       	R1 = RETX;
ffa08190:	fe 2f       	JUMP.S 0xffa0818c <_HWHANDLER>;
ffa08192:	11 00       	RTI;

ffa08194 <_NHANDLER>:
ffa08194:	00 e3 2a 0c 	CALL 0xffa099e8 <_nmi_report>;
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
ffa08212:	00 e3 2b 0b 	CALL 0xffa09868 <_exception_report>;
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
ffa0824e:	00 e3 2d 04 	CALL 0xffa08aa8 <_get_asm2>;
ffa08252:	3e 61       	R6 = 0x27 (X);		/*		R6=0x27( 39) */
ffa08254:	1e 97       	W[P3] = R6;
ffa08256:	00 e3 d5 01 	CALL 0xffa08600 <_get_asm>;
ffa0825a:	26 e1 70 00 	R6 = 0x70 (X);		/*		R6=0x70(112) */
ffa0825e:	1e 97       	W[P3] = R6;
ffa08260:	00 e3 24 04 	CALL 0xffa08aa8 <_get_asm2>;
ffa08264:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa08266:	0f b5       	W[P1 + 0x8] = R7;
ffa08268:	00 e3 cc 01 	CALL 0xffa08600 <_get_asm>;
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
ffa0827e:	00 e3 c1 01 	CALL 0xffa08600 <_get_asm>;
ffa08282:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa08284:	87 b9       	R7 = [FP -0x20];
ffa08286:	3e 08       	CC = R6 == R7;
ffa08288:	06 18       	IF CC JUMP 0xffa08294 <waitirq_end>;
ffa0828a:	ff 67       	R7 += -0x1;		/* ( -1) */
ffa0828c:	87 bb       	[FP -0x20] = R7;
ffa0828e:	00 e3 0d 04 	CALL 0xffa08aa8 <_get_asm2>;
ffa08292:	f3 2f       	JUMP.S 0xffa08278 <waitirq_loop>;

ffa08294 <waitirq_end>:
ffa08294:	00 e3 b6 01 	CALL 0xffa08600 <_get_asm>;
ffa08298:	27 01       	RETS = [SP++];
ffa0829a:	10 00       	RTS;
ffa0829c:	00 00       	NOP;
	...

ffa082a0 <_clearfifos_asm>:
ffa082a0:	67 01       	[--SP] = RETS;
ffa082a2:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa082a4:	8f b4       	W[P1 + 0x4] = R7;
ffa082a6:	00 e3 01 04 	CALL 0xffa08aa8 <_get_asm2>;
ffa082aa:	26 e1 e2 00 	R6 = 0xe2 (X);		/*		R6=0xe2(226) */
ffa082ae:	1e 97       	W[P3] = R6;
ffa082b0:	00 e3 a8 01 	CALL 0xffa08600 <_get_asm>;
ffa082b4:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa082b6:	0f b5       	W[P1 + 0x8] = R7;
ffa082b8:	00 e3 f8 03 	CALL 0xffa08aa8 <_get_asm2>;
ffa082bc:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa082be:	8f b4       	W[P1 + 0x4] = R7;
ffa082c0:	00 e3 a0 01 	CALL 0xffa08600 <_get_asm>;
ffa082c4:	26 e1 e1 00 	R6 = 0xe1 (X);		/*		R6=0xe1(225) */
ffa082c8:	1e 97       	W[P3] = R6;
ffa082ca:	00 e3 ef 03 	CALL 0xffa08aa8 <_get_asm2>;
ffa082ce:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa082d0:	0f b5       	W[P1 + 0x8] = R7;
ffa082d2:	00 e3 97 01 	CALL 0xffa08600 <_get_asm>;
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
ffa082ee:	0f e1 00 6f 	FP.L = 0x6f00;		/* (28416)	FP=0x6f00 */
ffa082f2:	4f e1 90 ff 	FP.H = 0xff90;		/* (-112)	FP=0xff906f00 */
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
ffa0832e:	00 e1 00 60 	R0.L = 0x6000;		/* (24576)	R0=0x6000(24576) */
ffa08332:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff806000(-8364032) */
ffa08336:	30 bb       	[FP -0x34] = R0;
ffa08338:	00 e1 20 60 	R0.L = 0x6020;		/* (24608)	R0=0xff806020(-8364000) */
ffa0833c:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff806020(-8364000) */
ffa08340:	20 bb       	[FP -0x38] = R0;
ffa08342:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa08344:	e0 ba       	[FP -0x48] = R0;
ffa08346:	00 e1 00 61 	R0.L = 0x6100;		/* (24832)	R0=0x6100(24832) */
ffa0834a:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff806100(-8363776) */
ffa0834e:	10 bb       	[FP -0x3c] = R0;
ffa08350:	00 e1 00 62 	R0.L = 0x6200;		/* (25088)	R0=0xff806200(-8363520) */
ffa08354:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff806200(-8363520) */
ffa08358:	82 c6 f0 81 	R0 = R0 >> 0x2;
ffa0835c:	00 bb       	[FP -0x40] = R0;
ffa0835e:	00 e1 ff 0f 	R0.L = 0xfff;		/* (4095)	R0=0xff800fff(-8384513) */
ffa08362:	40 e1 ff 0f 	R0.H = 0xfff;		/* (4095)	R0=0xfff0fff(268374015) */
ffa08366:	d0 ba       	[FP -0x4c] = R0;
ffa08368:	00 e1 15 40 	R0.L = 0x4015;		/* (16405)	R0=0xfff4015(268386325) */
ffa0836c:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff804015(-8372203) */
ffa08370:	90 bb       	[FP -0x1c] = R0;
ffa08372:	00 e1 17 40 	R0.L = 0x4017;		/* (16407)	R0=0xff804017(-8372201) */
ffa08376:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff804017(-8372201) */
ffa0837a:	a0 bb       	[FP -0x18] = R0;
ffa0837c:	00 e1 55 40 	R0.L = 0x4055;		/* (16469)	R0=0xff804055(-8372139) */
ffa08380:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff804055(-8372139) */
ffa08384:	b0 bb       	[FP -0x14] = R0;
ffa08386:	00 e1 57 40 	R0.L = 0x4057;		/* (16471)	R0=0xff804057(-8372137) */
ffa0838a:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff804057(-8372137) */
ffa0838e:	c0 bb       	[FP -0x10] = R0;
ffa08390:	20 e1 93 01 	R0 = 0x193 (X);		/*		R0=0x193(403) */
ffa08394:	48 e6 18 00 	W[P1 + 0x30] = R0;
ffa08398:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa0839a:	48 e6 20 00 	W[P1 + 0x40] = R0;
ffa0839e:	27 e1 00 01 	R7 = 0x100 (X);		/*		R7=0x100(256) */
ffa083a2:	0f b5       	W[P1 + 0x8] = R7;
ffa083a4:	24 00       	SSYNC;
ffa083a6:	27 e1 80 00 	R7 = 0x80 (X);		/*		R7=0x80(128) */
ffa083aa:	8f b4       	W[P1 + 0x4] = R7;
ffa083ac:	24 00       	SSYNC;
ffa083ae:	00 e3 b9 05 	CALL 0xffa08f20 <_init6>;
ffa083b2:	0d e1 00 60 	P5.L = 0x6000;		/* (24576)	P5=0xffc06000(-4169728) */
ffa083b6:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff806000 */
ffa083ba:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa083bc:	28 92       	[P5++] = R0;
ffa083be:	28 92       	[P5++] = R0;
ffa083c0:	28 92       	[P5++] = R0;
ffa083c2:	28 92       	[P5++] = R0;
ffa083c4:	28 92       	[P5++] = R0;
ffa083c6:	28 92       	[P5++] = R0;
ffa083c8:	28 92       	[P5++] = R0;
ffa083ca:	28 92       	[P5++] = R0;
ffa083cc:	00 e3 dc 06 	CALL 0xffa09184 <_enc_create>;
ffa083d0:	0d e1 04 02 	P5.L = 0x204;		/* (516)	P5=0xff800204 */
ffa083d4:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00204(-4193788) */
ffa083d8:	40 e1 0c 00 	R0.H = 0xc;		/* ( 12)	R0=0xc0000(786432) */
ffa083dc:	00 e1 00 35 	R0.L = 0x3500;		/* (13568)	R0=0xc3500(800000) */
ffa083e0:	a8 92       	[P5--] = R0;
ffa083e2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa083e4:	28 97       	W[P5] = R0;
ffa083e6:	27 e1 80 00 	R7 = 0x80 (X);		/*		R7=0x80(128) */
ffa083ea:	0f b5       	W[P1 + 0x8] = R7;
ffa083ec:	24 00       	SSYNC;
ffa083ee:	0d e1 20 09 	P5.L = 0x920;		/* (2336)	P5=0xffc00920(-4191968) */
ffa083f2:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00920(-4191968) */
ffa083f6:	00 e1 01 04 	R0.L = 0x401;		/* (1025)	R0=0x401(1025) */
ffa083fa:	28 97       	W[P5] = R0;
ffa083fc:	0d e1 20 08 	P5.L = 0x820;		/* (2080)	P5=0xffc00820(-4192224) */
ffa08400:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00820(-4192224) */
ffa08404:	00 e1 03 06 	R0.L = 0x603;		/* (1539)	R0=0x603(1539) */
ffa08408:	28 97       	W[P5] = R0;

ffa0840a <radio_loop>:
ffa0840a:	00 e3 fb 00 	CALL 0xffa08600 <_get_asm>;
ffa0840e:	f5 b9       	R5 = [FP -0x4];
ffa08410:	25 49       	CC = BITTST (R5, 0x4);		/* bit  4 */
ffa08412:	fc 13       	IF !CC JUMP 0xffa0840a <radio_loop>;
ffa08414:	00 e3 4a 03 	CALL 0xffa08aa8 <_get_asm2>;
ffa08418:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa0841a:	f5 bb       	[FP -0x4] = R5;
ffa0841c:	ff e3 42 ff 	CALL 0xffa082a0 <_clearfifos_asm>;
ffa08420:	ff e3 14 ff 	CALL 0xffa08248 <_clearirq_asm>;
ffa08424:	85 68       	P5 = 0x10 (X);		/*		P5=0x10( 16) */
ffa08426:	a2 e0 24 50 	LSETUP(0xffa0842a <wp_top>, 0xffa0846e <wp_bot>) LC0 = P5;

ffa0842a <wp_top>:
ffa0842a:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa0842c:	8f b4       	W[P1 + 0x4] = R7;
ffa0842e:	00 e3 3d 03 	CALL 0xffa08aa8 <_get_asm2>;
ffa08432:	26 e1 a0 00 	R6 = 0xa0 (X);		/*		R6=0xa0(160) */
ffa08436:	1e 97       	W[P3] = R6;
ffa08438:	00 e3 e4 00 	CALL 0xffa08600 <_get_asm>;
ffa0843c:	05 69       	P5 = 0x20 (X);		/*		P5=0x20( 32) */
ffa0843e:	b2 e0 06 50 	LSETUP(0xffa08442 <pb_top>, 0xffa0844a <pb_bot>) LC1 = P5;

ffa08442 <pb_top>:
ffa08442:	16 98       	R6 = B[P2++] (Z);
ffa08444:	1e 97       	W[P3] = R6;
ffa08446:	00 e3 dd 00 	CALL 0xffa08600 <_get_asm>;

ffa0844a <pb_bot>:
ffa0844a:	00 00       	NOP;
ffa0844c:	7a 30       	R7 = P2;
ffa0844e:	57 4c       	BITCLR (R7, 0xa);		/* bit 10 */
ffa08450:	17 32       	P2 = R7;
ffa08452:	00 e3 2b 03 	CALL 0xffa08aa8 <_get_asm2>;
ffa08456:	1f 60       	R7 = 0x3 (X);		/*		R7=0x3(  3) */
ffa08458:	0f b5       	W[P1 + 0x8] = R7;
ffa0845a:	00 e3 d3 00 	CALL 0xffa08600 <_get_asm>;
ffa0845e:	87 60       	R7 = 0x10 (X);		/*		R7=0x10( 16) */
ffa08460:	b0 31       	R6 = LC0;
ffa08462:	37 08       	CC = R7 == R6;
ffa08464:	05 18       	IF CC JUMP 0xffa0846e <wp_bot>;
ffa08466:	ff e3 05 ff 	CALL 0xffa08270 <_waitirq_asm>;
ffa0846a:	ff e3 ef fe 	CALL 0xffa08248 <_clearirq_asm>;

ffa0846e <wp_bot>:
ffa0846e:	00 00       	NOP;
ffa08470:	ff e3 00 ff 	CALL 0xffa08270 <_waitirq_asm>;
ffa08474:	ff e3 ea fe 	CALL 0xffa08248 <_clearirq_asm>;
ffa08478:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa0847a:	8f b4       	W[P1 + 0x4] = R7;
ffa0847c:	00 e3 16 03 	CALL 0xffa08aa8 <_get_asm2>;
ffa08480:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa08482:	8f b4       	W[P1 + 0x4] = R7;
ffa08484:	00 e3 be 00 	CALL 0xffa08600 <_get_asm>;
ffa08488:	26 e1 e2 00 	R6 = 0xe2 (X);		/*		R6=0xe2(226) */
ffa0848c:	1e 97       	W[P3] = R6;
ffa0848e:	00 e3 0d 03 	CALL 0xffa08aa8 <_get_asm2>;
ffa08492:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa08494:	0f b5       	W[P1 + 0x8] = R7;
ffa08496:	00 e3 b5 00 	CALL 0xffa08600 <_get_asm>;
ffa0849a:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa0849c:	8f b4       	W[P1 + 0x4] = R7;
ffa0849e:	00 e3 05 03 	CALL 0xffa08aa8 <_get_asm2>;
ffa084a2:	06 61       	R6 = 0x20 (X);		/*		R6=0x20( 32) */
ffa084a4:	1e 97       	W[P3] = R6;
ffa084a6:	00 e3 01 03 	CALL 0xffa08aa8 <_get_asm2>;
ffa084aa:	fe 60       	R6 = 0x1f (X);		/*		R6=0x1f( 31) */
ffa084ac:	1e 97       	W[P3] = R6;
ffa084ae:	00 e3 a9 00 	CALL 0xffa08600 <_get_asm>;
ffa084b2:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa084b4:	0f b5       	W[P1 + 0x8] = R7;
ffa084b6:	00 e3 f9 02 	CALL 0xffa08aa8 <_get_asm2>;
ffa084ba:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa084bc:	0f b5       	W[P1 + 0x8] = R7;
ffa084be:	00 e3 a1 00 	CALL 0xffa08600 <_get_asm>;
ffa084c2:	ff e3 d7 fe 	CALL 0xffa08270 <_waitirq_asm>;
ffa084c6:	0f 95       	R7 = W[P1] (Z);
ffa084c8:	1f 49       	CC = BITTST (R7, 0x3);		/* bit  3 */
ffa084ca:	63 18       	IF CC JUMP 0xffa08590 <no_rxpacket>;
ffa084cc:	ff e3 be fe 	CALL 0xffa08248 <_clearirq_asm>;
ffa084d0:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa084d2:	8f b4       	W[P1 + 0x4] = R7;
ffa084d4:	00 e3 ea 02 	CALL 0xffa08aa8 <_get_asm2>;
ffa084d8:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa084da:	8f b4       	W[P1 + 0x4] = R7;
ffa084dc:	00 e3 92 00 	CALL 0xffa08600 <_get_asm>;
ffa084e0:	26 e1 61 00 	R6 = 0x61 (X);		/*		R6=0x61( 97) */
ffa084e4:	1e 97       	W[P3] = R6;
ffa084e6:	00 e3 e1 02 	CALL 0xffa08aa8 <_get_asm2>;
ffa084ea:	25 68       	P5 = 0x4 (X);		/*		P5=0x4(  4) */
ffa084ec:	a2 e0 4b 50 	LSETUP(0xffa084f0 <rp_top>, 0xffa08582 <rp_bot>) LC0 = P5;

ffa084f0 <rp_top>:
ffa084f0:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa084f2:	e7 bb       	[FP -0x8] = R7;
ffa084f4:	d7 bb       	[FP -0xc] = R7;
ffa084f6:	00 e3 d9 02 	CALL 0xffa08aa8 <_get_asm2>;
ffa084fa:	25 68       	P5 = 0x4 (X);		/*		P5=0x4(  4) */
ffa084fc:	b2 e0 0e 50 	LSETUP(0xffa08500 <a32_top>, 0xffa08518 <a32_bot>) LC1 = P5;

ffa08500 <a32_top>:
ffa08500:	1f 97       	W[P3] = R7;
ffa08502:	00 e3 7f 00 	CALL 0xffa08600 <_get_asm>;
ffa08506:	9f a5       	R7 = W[P3 + 0xc] (Z);
ffa08508:	26 e1 ff 00 	R6 = 0xff (X);		/*		R6=0xff(255) */
ffa0850c:	f7 55       	R7 = R7 & R6;
ffa0850e:	e6 b9       	R6 = [FP -0x8];
ffa08510:	82 c6 46 8c 	R6 = R6 << 0x8;
ffa08514:	be 51       	R6 = R6 + R7;
ffa08516:	e6 bb       	[FP -0x8] = R6;

ffa08518 <a32_bot>:
ffa08518:	00 00       	NOP;
ffa0851a:	00 e3 c7 02 	CALL 0xffa08aa8 <_get_asm2>;
ffa0851e:	25 68       	P5 = 0x4 (X);		/*		P5=0x4(  4) */
ffa08520:	b2 e0 0e 50 	LSETUP(0xffa08524 <v32_top>, 0xffa0853c <v32_bot>) LC1 = P5;

ffa08524 <v32_top>:
ffa08524:	1f 97       	W[P3] = R7;
ffa08526:	00 e3 c1 02 	CALL 0xffa08aa8 <_get_asm2>;
ffa0852a:	9f a5       	R7 = W[P3 + 0xc] (Z);
ffa0852c:	26 e1 ff 00 	R6 = 0xff (X);		/*		R6=0xff(255) */
ffa08530:	f7 55       	R7 = R7 & R6;
ffa08532:	d6 b9       	R6 = [FP -0xc];
ffa08534:	82 c6 46 8c 	R6 = R6 << 0x8;
ffa08538:	be 51       	R6 = R6 + R7;
ffa0853a:	d6 bb       	[FP -0xc] = R6;

ffa0853c <v32_bot>:
ffa0853c:	00 00       	NOP;
ffa0853e:	00 e3 b5 02 	CALL 0xffa08aa8 <_get_asm2>;
ffa08542:	e7 b9       	R7 = [FP -0x8];
ffa08544:	82 c6 27 8d 	R6 = R7 >> 0x1c;
ffa08548:	06 32       	P0 = R6;
ffa0854a:	0d b9       	P5 = [FP -0x40];
ffa0854c:	7e 60       	R6 = 0xf (X);		/*		R6=0xf( 15) */
ffa0854e:	82 c6 e6 8c 	R6 = R6 << 0x1c;
ffa08552:	f7 57       	R7 = R7 | R6;
ffa08554:	e7 bb       	[FP -0x8] = R7;
ffa08556:	c5 45       	P5 = (P5 + P0) << 0x2;
ffa08558:	2f 91       	R7 = [P5];
ffa0855a:	f7 ba       	[FP -0x44] = R7;
ffa0855c:	00 e3 a6 02 	CALL 0xffa08aa8 <_get_asm2>;
ffa08560:	e7 b9       	R7 = [FP -0x8];
ffa08562:	46 e1 ef ff 	R6.H = 0xffef;		/* (-17)	R6=0xffef000f(-1114097) */
ffa08566:	06 e1 03 c0 	R6.L = 0xc003;		/* (-16381)	R6=0xffefc003(-1064957) */
ffa0856a:	77 55       	R5 = R7 & R6;
ffa0856c:	46 e1 80 ff 	R6.H = 0xff80;		/* (-128)	R6=0xff80c003(-8339453) */
ffa08570:	06 e1 00 40 	R6.L = 0x4000;		/* (16384)	R6=0xff804000(-8372224) */
ffa08574:	35 08       	CC = R5 == R6;
ffa08576:	04 10       	IF !CC JUMP 0xffa0857e <invalid>;
ffa08578:	2f 32       	P5 = R7;
ffa0857a:	d6 b9       	R6 = [FP -0xc];
ffa0857c:	2e 93       	[P5] = R6;

ffa0857e <invalid>:
ffa0857e:	00 e3 95 02 	CALL 0xffa08aa8 <_get_asm2>;

ffa08582 <rp_bot>:
ffa08582:	00 00       	NOP;
ffa08584:	00 e3 3e 00 	CALL 0xffa08600 <_get_asm>;
ffa08588:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa0858a:	0f b5       	W[P1 + 0x8] = R7;
ffa0858c:	00 e3 8e 02 	CALL 0xffa08aa8 <_get_asm2>;

ffa08590 <no_rxpacket>:
ffa08590:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa08592:	8f b4       	W[P1 + 0x4] = R7;
ffa08594:	00 e3 36 00 	CALL 0xffa08600 <_get_asm>;
ffa08598:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa0859a:	8f b4       	W[P1 + 0x4] = R7;
ffa0859c:	00 e3 86 02 	CALL 0xffa08aa8 <_get_asm2>;
ffa085a0:	26 e1 e1 00 	R6 = 0xe1 (X);		/*		R6=0xe1(225) */
ffa085a4:	1e 97       	W[P3] = R6;
ffa085a6:	00 e3 2d 00 	CALL 0xffa08600 <_get_asm>;
ffa085aa:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa085ac:	0f b5       	W[P1 + 0x8] = R7;
ffa085ae:	00 e3 7d 02 	CALL 0xffa08aa8 <_get_asm2>;
ffa085b2:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa085b4:	8f b4       	W[P1 + 0x4] = R7;
ffa085b6:	00 e3 25 00 	CALL 0xffa08600 <_get_asm>;
ffa085ba:	06 61       	R6 = 0x20 (X);		/*		R6=0x20( 32) */
ffa085bc:	1e 97       	W[P3] = R6;
ffa085be:	00 e3 75 02 	CALL 0xffa08aa8 <_get_asm2>;
ffa085c2:	f6 60       	R6 = 0x1e (X);		/*		R6=0x1e( 30) */
ffa085c4:	1e 97       	W[P3] = R6;
ffa085c6:	00 e3 1d 00 	CALL 0xffa08600 <_get_asm>;
ffa085ca:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa085cc:	0f b5       	W[P1 + 0x8] = R7;
ffa085ce:	00 e3 6d 02 	CALL 0xffa08aa8 <_get_asm2>;
ffa085d2:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00004(-4194300) */
ffa085d6:	0d e1 08 02 	P5.L = 0x208;		/* (520)	P5=0xffc00208(-4193784) */
ffa085da:	2f 93       	[P5] = R7;
ffa085dc:	00 e3 12 00 	CALL 0xffa08600 <_get_asm>;
ffa085e0:	87 60       	R7 = 0x10 (X);		/*		R7=0x10( 16) */
ffa085e2:	8f b4       	W[P1 + 0x4] = R7;
ffa085e4:	00 e3 62 02 	CALL 0xffa08aa8 <_get_asm2>;
ffa085e8:	e7 b8       	R7 = [FP -0x48];
ffa085ea:	86 e1 01 00 	R6 = 0x1 (Z);		/*		R6=0x1(  1) */
ffa085ee:	f7 51       	R7 = R7 + R6;
ffa085f0:	82 c6 e7 8d 	R6 = R7 >> 0x4;
ffa085f4:	0e b5       	W[P1 + 0x8] = R6;
ffa085f6:	47 4c       	BITCLR (R7, 0x8);		/* bit  8 */
ffa085f8:	e7 ba       	[FP -0x48] = R7;
ffa085fa:	00 e3 57 02 	CALL 0xffa08aa8 <_get_asm2>;
ffa085fe:	06 2f       	JUMP.S 0xffa0840a <radio_loop>;

ffa08600 <_get_asm>:
ffa08600:	68 b9       	P0 = [FP -0x28];
ffa08602:	27 e1 00 01 	R7 = 0x100 (X);		/*		R7=0x100(256) */
ffa08606:	8f b4       	W[P1 + 0x4] = R7;
ffa08608:	27 e1 80 00 	R7 = 0x80 (X);		/*		R7=0x80(128) */
ffa0860c:	0f b5       	W[P1 + 0x8] = R7;

ffa0860e <wait_samples>:
ffa0860e:	03 a7       	R3 = W[P0 + 0x18] (Z);
ffa08610:	03 48       	CC = !BITTST (R3, 0x0);		/* bit  0 */
ffa08612:	fe 1b       	IF CC JUMP 0xffa0860e <wait_samples>;
ffa08614:	00 95       	R0 = W[P0] (Z);
ffa08616:	01 95       	R1 = W[P0] (Z);
ffa08618:	d2 b8       	R2 = [FP -0x4c];
ffa0861a:	81 4f       	R1 <<= 0x10;
ffa0861c:	08 56       	R0 = R0 | R1;
ffa0861e:	90 54       	R2 = R0 & R2;
ffa08620:	07 9c       	R7 = [I0++];
ffa08622:	8f b5       	W[P1 + 0xc] = R7;
ffa08624:	81 c6 12 84 	R2 = R2 << 0x2 (V);
ffa08628:	05 9c       	R5 = [I0++];
ffa0862a:	00 00       	NOP;
ffa0862c:	00 00       	NOP;
ffa0862e:	00 00       	NOP;
ffa08630:	00 c8 15 80 	A1 = R2.H * R5.L, A0 = R2.L * R5.L || R1 = [I1++] || R6 = [I0++];
ffa08634:	09 9c 06 9c 
ffa08638:	25 c8 0d ea 	R0.H = (A1 += R1.H * R5.H), R0.L = (A0 += R1.L * R5.H) (S2RND) || NOP || NOP;
ffa0863c:	00 00 00 00 
ffa08640:	00 c8 0e 80 	A1 = R1.H * R6.L, A0 = R1.L * R6.L || I1 += M0 || NOP;
ffa08644:	61 9e 00 00 
ffa08648:	25 c8 86 ea 	R2.H = (A1 += R0.H * R6.H), R2.L = (A0 += R0.L * R6.H) (S2RND) || R1 = [I1 ++ M0] || NOP;
ffa0864c:	89 9d 00 00 
ffa08650:	81 ce 38 4e 	R7 = R0 << 0x7 (V, S) || R2 = [I0++] || [I2++] = R2;
ffa08654:	02 9c 12 9e 
ffa08658:	00 c8 0a c0 	A1 = R1.H * R2.H, A0 = R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa0865c:	89 9d 02 9c 
ffa08660:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08664:	89 9d 02 9c 
ffa08668:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa0866c:	89 9d 02 9c 
ffa08670:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08674:	89 9d 02 9c 
ffa08678:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa0867c:	89 9d 02 9c 
ffa08680:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08684:	89 9d 02 9c 
ffa08688:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa0868c:	89 9d 02 9c 
ffa08690:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08694:	89 9d 02 9c 
ffa08698:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa0869c:	89 9d 02 9c 
ffa086a0:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa086a4:	89 9d 02 9c 
ffa086a8:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa086ac:	89 9d 02 9c 
ffa086b0:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa086b4:	89 9d 02 9c 
ffa086b8:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa086bc:	89 9d 02 9c 
ffa086c0:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa086c4:	89 9d 02 9c 
ffa086c8:	05 c8 8a e9 	R6.H = (A1 += R1.H * R2.H), R6.L = (A0 += R1.L * R2.L) || R1 = [I1++] || R5 = [I0++];
ffa086cc:	09 9c 05 9c 
ffa086d0:	00 cc 06 e0 	R0 = R0 -|- R6 (S) || I0 -= M1 || [I2++] = R0;
ffa086d4:	74 9e 10 9e 
ffa086d8:	81 ce 38 4c 	R6 = R0 << 0x7 (V, S) || I1 += M2 || [I2++] = R7;
ffa086dc:	69 9e 17 9e 
ffa086e0:	81 ce 96 4d 	R6 = R6 >>> 0xe (V) || R1 = [I1++] || R2 = [I0];
ffa086e4:	09 9c 02 9d 
ffa086e8:	00 c8 0e c0 	A1 = R1.H * R6.H, A0 = R1.L * R6.L || NOP || NOP;
ffa086ec:	00 00 00 00 
ffa086f0:	05 c8 15 e9 	R4.H = (A1 += R2.H * R5.H), R4.L = (A0 += R2.L * R5.L) || I1 -= M2 || NOP;
ffa086f4:	79 9e 00 00 
ffa086f8:	03 c8 00 18 	MNOP || R5 = [I1++] || [I0 ++ M1] = R4;
ffa086fc:	0d 9c a4 9f 
ffa08700:	00 c0 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L;
ffa08704:	83 c6 38 00 	A0 = A0 << 0x7;
ffa08708:	83 c6 38 10 	A1 = A1 << 0x7;
ffa0870c:	07 c0 c0 39 	R7.H = A1, R7.L = A0;
ffa08710:	10 cc 00 c0 	A1 = ABS A0, A0 = ABS A0 || R6 = [I0++] || NOP;
ffa08714:	06 9c 00 00 
ffa08718:	06 c9 36 f1 	R4.H = (A1 -= R6.H * R6.H), R4.L = (A0 -= R6.L * R6.L) (IS) || R6 = [I0++] || NOP;
ffa0871c:	06 9c 00 00 
ffa08720:	00 c0 2e 80 	A1 = R5.H * R6.L, A0 = R5.L * R6.L;
ffa08724:	26 c0 e6 f2 	R3.H = (A1 -= R4.H * R6.H), R3.L = (A0 -= R4.L * R6.H) (S2RND);
ffa08728:	06 cc 18 86 	R3 = ABS R3 (V) || R5 = [I0++] || R1 = [I1++];
ffa0872c:	05 9c 09 9c 
ffa08730:	03 c8 00 18 	MNOP || [I2++] = R3 || NOP;
ffa08734:	13 9e 00 00 
ffa08738:	00 c8 3d c0 	A1 = R7.H * R5.H, A0 = R7.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa0873c:	05 9c 0a 9c 
ffa08740:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || R3 = [I1++];
ffa08744:	05 9c 0b 9c 
ffa08748:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R5 = [I0++] || R4 = [I1++];
ffa0874c:	05 9c 0c 9c 
ffa08750:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || [I2++] = R7;
ffa08754:	05 9c 17 9e 
ffa08758:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || [I2++] = R1 || NOP;
ffa0875c:	11 9e 00 00 
ffa08760:	03 c8 00 18 	MNOP || R5 = [I0++] || [I2++] = R0;
ffa08764:	05 9c 10 9e 
ffa08768:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || R5 = [I0++] || [I2++] = R3;
ffa0876c:	05 9c 13 9e 
ffa08770:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || R1 = [I1++];
ffa08774:	05 9c 09 9c 
ffa08778:	01 c8 25 c8 	A1 += R4.H * R5.H, A0 += R4.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa0877c:	05 9c 0a 9c 
ffa08780:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || NOP;
ffa08784:	05 9c 00 00 
ffa08788:	25 c8 15 e8 	R0.H = (A1 += R2.H * R5.H), R0.L = (A0 += R2.L * R5.L) (S2RND) || R5 = [I0++] || NOP;
ffa0878c:	05 9c 00 00 
ffa08790:	00 cc 05 20 	R0 = R0 +|+ R5 (S) || [I2++] = R0 || NOP;
ffa08794:	10 9e 00 00 
ffa08798:	81 ce 88 0d 	R6 = R0 >>> 0xf (V) || [I2++] = R1 || NOP;
ffa0879c:	11 9e 00 00 
ffa087a0:	03 c8 00 18 	MNOP || R5 = [I0++] || R1 = [I1++];
ffa087a4:	05 9c 09 9c 
ffa087a8:	00 c8 3d c0 	A1 = R7.H * R5.H, A0 = R7.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa087ac:	05 9c 0a 9c 
ffa087b0:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || R3 = [I1++];
ffa087b4:	05 9c 0b 9c 
ffa087b8:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R5 = [I0++] || R4 = [I1++];
ffa087bc:	05 9c 0c 9c 
ffa087c0:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || [I2++] = R7;
ffa087c4:	05 9c 17 9e 
ffa087c8:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || [I2++] = R1 || NOP;
ffa087cc:	11 9e 00 00 
ffa087d0:	03 c8 00 18 	MNOP || R5 = [I0++] || [I2++] = R0;
ffa087d4:	05 9c 10 9e 
ffa087d8:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || R5 = [I0++] || [I2++] = R3;
ffa087dc:	05 9c 13 9e 
ffa087e0:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || R1 = [I1++];
ffa087e4:	05 9c 09 9c 
ffa087e8:	01 c8 25 c8 	A1 += R4.H * R5.H, A0 += R4.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa087ec:	05 9c 0a 9c 
ffa087f0:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || NOP;
ffa087f4:	05 9c 00 00 
ffa087f8:	25 c8 15 e8 	R0.H = (A1 += R2.H * R5.H), R0.L = (A0 += R2.L * R5.L) (S2RND) || R5 = [I0++] || NOP;
ffa087fc:	05 9c 00 00 
ffa08800:	00 cc 05 20 	R0 = R0 +|+ R5 (S) || R7 = [I0++] || [I2++] = R0;
ffa08804:	07 9c 10 9e 
ffa08808:	81 ce 90 41 	R0 = R0 >>> 0xe (V) || R5 = [I0++] || [I2++] = R1;
ffa0880c:	05 9c 11 9e 
ffa08810:	be 55       	R6 = R6 & R7;
ffa08812:	28 54       	R0 = R0 & R5;
ffa08814:	86 57       	R6 = R6 | R0;
ffa08816:	76 bb       	[FP -0x24] = R6;
ffa08818:	40 e4 80 00 	R0 = W[P0 + 0x100] (Z);
ffa0881c:	41 e4 80 00 	R1 = W[P0 + 0x100] (Z);
ffa08820:	d2 b8       	R2 = [FP -0x4c];
ffa08822:	81 4f       	R1 <<= 0x10;
ffa08824:	08 56       	R0 = R0 | R1;
ffa08826:	90 54       	R2 = R0 & R2;
ffa08828:	81 ce 12 84 	R2 = R2 << 0x2 (V) || R5 = [I0++] || NOP;
ffa0882c:	05 9c 00 00 
ffa08830:	00 c8 15 80 	A1 = R2.H * R5.L, A0 = R2.L * R5.L || R1 = [I1++] || R6 = [I0++];
ffa08834:	09 9c 06 9c 
ffa08838:	25 c8 0d ea 	R0.H = (A1 += R1.H * R5.H), R0.L = (A0 += R1.L * R5.H) (S2RND) || NOP || NOP;
ffa0883c:	00 00 00 00 
ffa08840:	00 c8 0e 80 	A1 = R1.H * R6.L, A0 = R1.L * R6.L || I1 += M0 || NOP;
ffa08844:	61 9e 00 00 
ffa08848:	25 c8 86 ea 	R2.H = (A1 += R0.H * R6.H), R2.L = (A0 += R0.L * R6.H) (S2RND) || R1 = [I1 ++ M0] || NOP;
ffa0884c:	89 9d 00 00 
ffa08850:	81 ce 38 4e 	R7 = R0 << 0x7 (V, S) || R2 = [I0++] || [I2++] = R2;
ffa08854:	02 9c 12 9e 
ffa08858:	00 c8 0a c0 	A1 = R1.H * R2.H, A0 = R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa0885c:	89 9d 02 9c 
ffa08860:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08864:	89 9d 02 9c 
ffa08868:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa0886c:	89 9d 02 9c 
ffa08870:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08874:	89 9d 02 9c 
ffa08878:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa0887c:	89 9d 02 9c 
ffa08880:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08884:	89 9d 02 9c 
ffa08888:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa0888c:	89 9d 02 9c 
ffa08890:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08894:	89 9d 02 9c 
ffa08898:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa0889c:	89 9d 02 9c 
ffa088a0:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa088a4:	89 9d 02 9c 
ffa088a8:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa088ac:	89 9d 02 9c 
ffa088b0:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa088b4:	89 9d 02 9c 
ffa088b8:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa088bc:	89 9d 02 9c 
ffa088c0:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa088c4:	89 9d 02 9c 
ffa088c8:	05 c8 8a e9 	R6.H = (A1 += R1.H * R2.H), R6.L = (A0 += R1.L * R2.L) || R1 = [I1++] || R5 = [I0++];
ffa088cc:	09 9c 05 9c 
ffa088d0:	00 cc 06 e0 	R0 = R0 -|- R6 (S) || I0 -= M1 || [I2++] = R0;
ffa088d4:	74 9e 10 9e 
ffa088d8:	81 ce 38 4c 	R6 = R0 << 0x7 (V, S) || I1 += M2 || [I2++] = R7;
ffa088dc:	69 9e 17 9e 
ffa088e0:	81 ce 96 4d 	R6 = R6 >>> 0xe (V) || R1 = [I1++] || R2 = [I0];
ffa088e4:	09 9c 02 9d 
ffa088e8:	00 c8 0e c0 	A1 = R1.H * R6.H, A0 = R1.L * R6.L || NOP || NOP;
ffa088ec:	00 00 00 00 
ffa088f0:	05 c8 15 e9 	R4.H = (A1 += R2.H * R5.H), R4.L = (A0 += R2.L * R5.L) || I1 -= M2 || NOP;
ffa088f4:	79 9e 00 00 
ffa088f8:	03 c8 00 18 	MNOP || R5 = [I1++] || [I0 ++ M1] = R4;
ffa088fc:	0d 9c a4 9f 
ffa08900:	00 c0 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L;
ffa08904:	83 c6 38 00 	A0 = A0 << 0x7;
ffa08908:	83 c6 38 10 	A1 = A1 << 0x7;
ffa0890c:	07 c0 c0 39 	R7.H = A1, R7.L = A0;
ffa08910:	10 cc 00 c0 	A1 = ABS A0, A0 = ABS A0 || R6 = [I0++] || NOP;
ffa08914:	06 9c 00 00 
ffa08918:	06 c9 36 f1 	R4.H = (A1 -= R6.H * R6.H), R4.L = (A0 -= R6.L * R6.L) (IS) || R6 = [I0++] || NOP;
ffa0891c:	06 9c 00 00 
ffa08920:	00 c0 2e 80 	A1 = R5.H * R6.L, A0 = R5.L * R6.L;
ffa08924:	26 c0 e6 f2 	R3.H = (A1 -= R4.H * R6.H), R3.L = (A0 -= R4.L * R6.H) (S2RND);
ffa08928:	06 cc 18 86 	R3 = ABS R3 (V) || R5 = [I0++] || R1 = [I1++];
ffa0892c:	05 9c 09 9c 
ffa08930:	03 c8 00 18 	MNOP || [I2++] = R3 || NOP;
ffa08934:	13 9e 00 00 
ffa08938:	00 c8 3d c0 	A1 = R7.H * R5.H, A0 = R7.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa0893c:	05 9c 0a 9c 
ffa08940:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || R3 = [I1++];
ffa08944:	05 9c 0b 9c 
ffa08948:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R5 = [I0++] || R4 = [I1++];
ffa0894c:	05 9c 0c 9c 
ffa08950:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || [I2++] = R7;
ffa08954:	05 9c 17 9e 
ffa08958:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || [I2++] = R1 || NOP;
ffa0895c:	11 9e 00 00 
ffa08960:	03 c8 00 18 	MNOP || R5 = [I0++] || [I2++] = R0;
ffa08964:	05 9c 10 9e 
ffa08968:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || R5 = [I0++] || [I2++] = R3;
ffa0896c:	05 9c 13 9e 
ffa08970:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || R1 = [I1++];
ffa08974:	05 9c 09 9c 
ffa08978:	01 c8 25 c8 	A1 += R4.H * R5.H, A0 += R4.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa0897c:	05 9c 0a 9c 
ffa08980:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || NOP;
ffa08984:	05 9c 00 00 
ffa08988:	25 c8 15 e8 	R0.H = (A1 += R2.H * R5.H), R0.L = (A0 += R2.L * R5.L) (S2RND) || R5 = [I0++] || NOP;
ffa0898c:	05 9c 00 00 
ffa08990:	00 cc 05 20 	R0 = R0 +|+ R5 (S) || [I2++] = R0 || NOP;
ffa08994:	10 9e 00 00 
ffa08998:	81 ce 88 0d 	R6 = R0 >>> 0xf (V) || [I2++] = R1 || NOP;
ffa0899c:	11 9e 00 00 
ffa089a0:	03 c8 00 18 	MNOP || R5 = [I0++] || R1 = [I1++];
ffa089a4:	05 9c 09 9c 
ffa089a8:	00 c8 3d c0 	A1 = R7.H * R5.H, A0 = R7.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa089ac:	05 9c 0a 9c 
ffa089b0:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || R3 = [I1++];
ffa089b4:	05 9c 0b 9c 
ffa089b8:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R5 = [I0++] || R4 = [I1++];
ffa089bc:	05 9c 0c 9c 
ffa089c0:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || [I2++] = R7;
ffa089c4:	05 9c 17 9e 
ffa089c8:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || [I2++] = R1 || NOP;
ffa089cc:	11 9e 00 00 
ffa089d0:	03 c8 00 18 	MNOP || R5 = [I0++] || [I2++] = R0;
ffa089d4:	05 9c 10 9e 
ffa089d8:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || R5 = [I0++] || [I2++] = R3;
ffa089dc:	05 9c 13 9e 
ffa089e0:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || R1 = [I1++];
ffa089e4:	05 9c 09 9c 
ffa089e8:	01 c8 25 c8 	A1 += R4.H * R5.H, A0 += R4.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa089ec:	05 9c 0a 9c 
ffa089f0:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || NOP;
ffa089f4:	05 9c 00 00 
ffa089f8:	25 c8 15 e8 	R0.H = (A1 += R2.H * R5.H), R0.L = (A0 += R2.L * R5.L) (S2RND) || R5 = [I0++] || NOP;
ffa089fc:	05 9c 00 00 
ffa08a00:	00 cc 05 20 	R0 = R0 +|+ R5 (S) || R7 = [I0++] || [I2++] = R0;
ffa08a04:	07 9c 10 9e 
ffa08a08:	81 ce 90 41 	R0 = R0 >>> 0xe (V) || R5 = [I0++] || [I2++] = R1;
ffa08a0c:	05 9c 11 9e 
ffa08a10:	be 55       	R6 = R6 & R7;
ffa08a12:	28 54       	R0 = R0 & R5;
ffa08a14:	86 57       	R6 = R6 | R0;
ffa08a16:	77 b9       	R7 = [FP -0x24];
ffa08a18:	37 56       	R0 = R7 | R6;
ffa08a1a:	06 9c       	R6 = [I0++];
ffa08a1c:	06 32       	P0 = R6;
ffa08a1e:	3d b9       	P5 = [FP -0x34];
ffa08a20:	19 b9       	P1 = [FP -0x3c];
ffa08a22:	02 c4 00 40 	R0.L = R0.L + R0.H (NS);
ffa08a26:	40 43       	R0 = R0.B (Z);
ffa08a28:	45 5b       	P5 = P5 + P0;
ffa08a2a:	29 99       	R1 = B[P5] (Z);
ffa08a2c:	41 56       	R1 = R1 | R0;
ffa08a2e:	01 32       	P0 = R1;
ffa08a30:	29 9b       	B[P5] = R1;
ffa08a32:	03 69       	P3 = 0x20 (X);		/*		P3=0x20( 32) */
ffa08a34:	5d 5b       	P5 = P5 + P3;
ffa08a36:	41 5a       	P1 = P1 + P0;
ffa08a38:	0a 99       	R2 = B[P1] (Z);
ffa08a3a:	2a 9b       	B[P5] = R2;
ffa08a3c:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa08a3e:	06 08       	CC = R6 == R0;
ffa08a40:	31 14       	IF !CC JUMP 0xffa08aa2 <end_txchan> (BP);
ffa08a42:	98 b9       	P0 = [FP -0x1c];
ffa08a44:	2f 60       	R7 = 0x5 (X);		/*		R7=0x5(  5) */
ffa08a46:	00 00       	NOP;
ffa08a48:	03 c8 00 18 	MNOP || P1 = [FP -0x18] || R0 = [I3++];
ffa08a4c:	a9 b9 18 9c 
ffa08a50:	03 c8 00 18 	MNOP || P3 = [FP -0x14] || R1 = [I3++];
ffa08a54:	bb b9 19 9c 
ffa08a58:	03 c8 00 18 	MNOP || P5 = [FP -0x10] || R4 = [I3++];
ffa08a5c:	cd b9 1c 9c 
ffa08a60:	28 34       	M1 = R0;
ffa08a62:	31 34       	M2 = R1;
ffa08a64:	00 99       	R0 = B[P0] (Z);
ffa08a66:	09 99       	R1 = B[P1] (Z);
ffa08a68:	1a 99       	R2 = B[P3] (Z);
ffa08a6a:	2b 99       	R3 = B[P5] (Z);
ffa08a6c:	20 9a       	B[P4++] = R0;
ffa08a6e:	21 9a       	B[P4++] = R1;
ffa08a70:	22 9a       	B[P4++] = R2;
ffa08a72:	23 9a       	B[P4++] = R3;
ffa08a74:	3c 08       	CC = R4 == R7;
ffa08a76:	13 14       	IF !CC JUMP 0xffa08a9c <end_txchan_qs> (BP);
ffa08a78:	1f 9c       	R7 = [I3++];
ffa08a7a:	1e 9c       	R6 = [I3++];
ffa08a7c:	2e 32       	P5 = R6;
ffa08a7e:	f5 b9       	R5 = [FP -0x4];
ffa08a80:	0d 64       	R5 += 0x1;		/* (  1) */
ffa08a82:	f5 bb       	[FP -0x4] = R5;
ffa08a84:	f5 b8       	R5 = [FP -0x44];
ffa08a86:	28 90       	R0 = [P5++];
ffa08a88:	29 90       	R1 = [P5++];
ffa08a8a:	38 56       	R0 = R0 | R7;
ffa08a8c:	69 56       	R1 = R1 | R5;
ffa08a8e:	e0 6a       	P0 = -0x24 (X);		/*		P0=0xffffffdc(-36) */
ffa08a90:	45 5b       	P5 = P5 + P0;
ffa08a92:	20 92       	[P4++] = R0;
ffa08a94:	21 92       	[P4++] = R1;
ffa08a96:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa08a98:	ac 92       	[P5--] = R4;
ffa08a9a:	ac 92       	[P5--] = R4;

ffa08a9c <end_txchan_qs>:
ffa08a9c:	7c 30       	R7 = P4;
ffa08a9e:	57 4c       	BITCLR (R7, 0xa);		/* bit 10 */
ffa08aa0:	27 32       	P4 = R7;

ffa08aa2 <end_txchan>:
ffa08aa2:	5b b9       	P3 = [FP -0x2c];
ffa08aa4:	49 b9       	P1 = [FP -0x30];
ffa08aa6:	10 00       	RTS;

ffa08aa8 <_get_asm2>:
ffa08aa8:	68 b9       	P0 = [FP -0x28];
ffa08aaa:	27 e1 00 01 	R7 = 0x100 (X);		/*		R7=0x100(256) */
ffa08aae:	8f b4       	W[P1 + 0x4] = R7;
ffa08ab0:	27 e1 80 00 	R7 = 0x80 (X);		/*		R7=0x80(128) */
ffa08ab4:	0f b5       	W[P1 + 0x8] = R7;

ffa08ab6 <wait_samples>:
ffa08ab6:	03 a7       	R3 = W[P0 + 0x18] (Z);
ffa08ab8:	03 48       	CC = !BITTST (R3, 0x0);		/* bit  0 */
ffa08aba:	fe 1b       	IF CC JUMP 0xffa08ab6 <wait_samples>;
ffa08abc:	00 95       	R0 = W[P0] (Z);
ffa08abe:	01 95       	R1 = W[P0] (Z);
ffa08ac0:	d2 b8       	R2 = [FP -0x4c];
ffa08ac2:	81 4f       	R1 <<= 0x10;
ffa08ac4:	08 56       	R0 = R0 | R1;
ffa08ac6:	90 54       	R2 = R0 & R2;
ffa08ac8:	07 9c       	R7 = [I0++];
ffa08aca:	8f b5       	W[P1 + 0xc] = R7;
ffa08acc:	81 c6 12 84 	R2 = R2 << 0x2 (V);
ffa08ad0:	05 9c       	R5 = [I0++];
ffa08ad2:	00 00       	NOP;
ffa08ad4:	00 00       	NOP;
ffa08ad6:	00 00       	NOP;
ffa08ad8:	00 c8 15 80 	A1 = R2.H * R5.L, A0 = R2.L * R5.L || R1 = [I1++] || R6 = [I0++];
ffa08adc:	09 9c 06 9c 
ffa08ae0:	25 c8 0d ea 	R0.H = (A1 += R1.H * R5.H), R0.L = (A0 += R1.L * R5.H) (S2RND) || NOP || NOP;
ffa08ae4:	00 00 00 00 
ffa08ae8:	00 c8 0e 80 	A1 = R1.H * R6.L, A0 = R1.L * R6.L || I1 += M0 || NOP;
ffa08aec:	61 9e 00 00 
ffa08af0:	25 c8 86 ea 	R2.H = (A1 += R0.H * R6.H), R2.L = (A0 += R0.L * R6.H) (S2RND) || R1 = [I1 ++ M0] || NOP;
ffa08af4:	89 9d 00 00 
ffa08af8:	81 ce 38 4e 	R7 = R0 << 0x7 (V, S) || R2 = [I0++] || [I2++] = R2;
ffa08afc:	02 9c 12 9e 
ffa08b00:	00 c8 0a c0 	A1 = R1.H * R2.H, A0 = R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08b04:	89 9d 02 9c 
ffa08b08:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08b0c:	89 9d 02 9c 
ffa08b10:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08b14:	89 9d 02 9c 
ffa08b18:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08b1c:	89 9d 02 9c 
ffa08b20:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08b24:	89 9d 02 9c 
ffa08b28:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08b2c:	89 9d 02 9c 
ffa08b30:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08b34:	89 9d 02 9c 
ffa08b38:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08b3c:	89 9d 02 9c 
ffa08b40:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08b44:	89 9d 02 9c 
ffa08b48:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08b4c:	89 9d 02 9c 
ffa08b50:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08b54:	89 9d 02 9c 
ffa08b58:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08b5c:	89 9d 02 9c 
ffa08b60:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08b64:	89 9d 02 9c 
ffa08b68:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08b6c:	89 9d 02 9c 
ffa08b70:	05 c8 8a e9 	R6.H = (A1 += R1.H * R2.H), R6.L = (A0 += R1.L * R2.L) || R1 = [I1++] || R5 = [I0++];
ffa08b74:	09 9c 05 9c 
ffa08b78:	00 cc 06 e0 	R0 = R0 -|- R6 (S) || I0 -= M1 || [I2++] = R0;
ffa08b7c:	74 9e 10 9e 
ffa08b80:	81 ce 38 4c 	R6 = R0 << 0x7 (V, S) || I1 += M2 || [I2++] = R7;
ffa08b84:	69 9e 17 9e 
ffa08b88:	81 ce 96 4d 	R6 = R6 >>> 0xe (V) || R1 = [I1++] || R2 = [I0];
ffa08b8c:	09 9c 02 9d 
ffa08b90:	00 c8 0e c0 	A1 = R1.H * R6.H, A0 = R1.L * R6.L || NOP || NOP;
ffa08b94:	00 00 00 00 
ffa08b98:	05 c8 15 e9 	R4.H = (A1 += R2.H * R5.H), R4.L = (A0 += R2.L * R5.L) || I1 -= M2 || NOP;
ffa08b9c:	79 9e 00 00 
ffa08ba0:	03 c8 00 18 	MNOP || R5 = [I1++] || [I0 ++ M1] = R4;
ffa08ba4:	0d 9c a4 9f 
ffa08ba8:	00 c0 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L;
ffa08bac:	83 c6 38 00 	A0 = A0 << 0x7;
ffa08bb0:	83 c6 38 10 	A1 = A1 << 0x7;
ffa08bb4:	07 c0 c0 39 	R7.H = A1, R7.L = A0;
ffa08bb8:	03 c8 00 18 	MNOP || I0 += M3 || R3 = [I2++];
ffa08bbc:	6c 9e 13 9c 
ffa08bc0:	03 c8 00 18 	MNOP || R5 = [I0++] || R1 = [I1++];
ffa08bc4:	05 9c 09 9c 
ffa08bc8:	00 c8 3d c0 	A1 = R7.H * R5.H, A0 = R7.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa08bcc:	05 9c 0a 9c 
ffa08bd0:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || R3 = [I1++];
ffa08bd4:	05 9c 0b 9c 
ffa08bd8:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R5 = [I0++] || R4 = [I1++];
ffa08bdc:	05 9c 0c 9c 
ffa08be0:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || [I2++] = R7;
ffa08be4:	05 9c 17 9e 
ffa08be8:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || [I2++] = R1 || NOP;
ffa08bec:	11 9e 00 00 
ffa08bf0:	03 c8 00 18 	MNOP || R5 = [I0++] || [I2++] = R0;
ffa08bf4:	05 9c 10 9e 
ffa08bf8:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || R5 = [I0++] || [I2++] = R3;
ffa08bfc:	05 9c 13 9e 
ffa08c00:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || R1 = [I1++];
ffa08c04:	05 9c 09 9c 
ffa08c08:	01 c8 25 c8 	A1 += R4.H * R5.H, A0 += R4.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa08c0c:	05 9c 0a 9c 
ffa08c10:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || NOP;
ffa08c14:	05 9c 00 00 
ffa08c18:	25 c8 15 e8 	R0.H = (A1 += R2.H * R5.H), R0.L = (A0 += R2.L * R5.L) (S2RND) || R5 = [I0++] || NOP;
ffa08c1c:	05 9c 00 00 
ffa08c20:	00 cc 05 20 	R0 = R0 +|+ R5 (S) || [I2++] = R0 || NOP;
ffa08c24:	10 9e 00 00 
ffa08c28:	81 ce 88 0d 	R6 = R0 >>> 0xf (V) || [I2++] = R1 || NOP;
ffa08c2c:	11 9e 00 00 
ffa08c30:	03 c8 00 18 	MNOP || R5 = [I0++] || R1 = [I1++];
ffa08c34:	05 9c 09 9c 
ffa08c38:	00 c8 3d c0 	A1 = R7.H * R5.H, A0 = R7.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa08c3c:	05 9c 0a 9c 
ffa08c40:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || R3 = [I1++];
ffa08c44:	05 9c 0b 9c 
ffa08c48:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R5 = [I0++] || R4 = [I1++];
ffa08c4c:	05 9c 0c 9c 
ffa08c50:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || [I2++] = R7;
ffa08c54:	05 9c 17 9e 
ffa08c58:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || [I2++] = R1 || NOP;
ffa08c5c:	11 9e 00 00 
ffa08c60:	03 c8 00 18 	MNOP || R5 = [I0++] || [I2++] = R0;
ffa08c64:	05 9c 10 9e 
ffa08c68:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || R5 = [I0++] || [I2++] = R3;
ffa08c6c:	05 9c 13 9e 
ffa08c70:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || R1 = [I1++];
ffa08c74:	05 9c 09 9c 
ffa08c78:	01 c8 25 c8 	A1 += R4.H * R5.H, A0 += R4.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa08c7c:	05 9c 0a 9c 
ffa08c80:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || NOP;
ffa08c84:	05 9c 00 00 
ffa08c88:	25 c8 15 e8 	R0.H = (A1 += R2.H * R5.H), R0.L = (A0 += R2.L * R5.L) (S2RND) || R5 = [I0++] || NOP;
ffa08c8c:	05 9c 00 00 
ffa08c90:	00 cc 05 20 	R0 = R0 +|+ R5 (S) || R7 = [I0++] || [I2++] = R0;
ffa08c94:	07 9c 10 9e 
ffa08c98:	81 ce 90 41 	R0 = R0 >>> 0xe (V) || R5 = [I0++] || [I2++] = R1;
ffa08c9c:	05 9c 11 9e 
ffa08ca0:	be 55       	R6 = R6 & R7;
ffa08ca2:	28 54       	R0 = R0 & R5;
ffa08ca4:	86 57       	R6 = R6 | R0;
ffa08ca6:	76 bb       	[FP -0x24] = R6;
ffa08ca8:	40 e4 80 00 	R0 = W[P0 + 0x100] (Z);
ffa08cac:	41 e4 80 00 	R1 = W[P0 + 0x100] (Z);
ffa08cb0:	d2 b8       	R2 = [FP -0x4c];
ffa08cb2:	81 4f       	R1 <<= 0x10;
ffa08cb4:	08 56       	R0 = R0 | R1;
ffa08cb6:	90 54       	R2 = R0 & R2;
ffa08cb8:	81 ce 12 84 	R2 = R2 << 0x2 (V) || R5 = [I0++] || NOP;
ffa08cbc:	05 9c 00 00 
ffa08cc0:	00 c8 15 80 	A1 = R2.H * R5.L, A0 = R2.L * R5.L || R1 = [I1++] || R6 = [I0++];
ffa08cc4:	09 9c 06 9c 
ffa08cc8:	25 c8 0d ea 	R0.H = (A1 += R1.H * R5.H), R0.L = (A0 += R1.L * R5.H) (S2RND) || NOP || NOP;
ffa08ccc:	00 00 00 00 
ffa08cd0:	00 c8 0e 80 	A1 = R1.H * R6.L, A0 = R1.L * R6.L || I1 += M0 || NOP;
ffa08cd4:	61 9e 00 00 
ffa08cd8:	25 c8 86 ea 	R2.H = (A1 += R0.H * R6.H), R2.L = (A0 += R0.L * R6.H) (S2RND) || R1 = [I1 ++ M0] || NOP;
ffa08cdc:	89 9d 00 00 
ffa08ce0:	81 ce 38 4e 	R7 = R0 << 0x7 (V, S) || R2 = [I0++] || [I2++] = R2;
ffa08ce4:	02 9c 12 9e 
ffa08ce8:	00 c8 0a c0 	A1 = R1.H * R2.H, A0 = R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08cec:	89 9d 02 9c 
ffa08cf0:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08cf4:	89 9d 02 9c 
ffa08cf8:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08cfc:	89 9d 02 9c 
ffa08d00:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08d04:	89 9d 02 9c 
ffa08d08:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08d0c:	89 9d 02 9c 
ffa08d10:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08d14:	89 9d 02 9c 
ffa08d18:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08d1c:	89 9d 02 9c 
ffa08d20:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08d24:	89 9d 02 9c 
ffa08d28:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08d2c:	89 9d 02 9c 
ffa08d30:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08d34:	89 9d 02 9c 
ffa08d38:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08d3c:	89 9d 02 9c 
ffa08d40:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08d44:	89 9d 02 9c 
ffa08d48:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08d4c:	89 9d 02 9c 
ffa08d50:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08d54:	89 9d 02 9c 
ffa08d58:	05 c8 8a e9 	R6.H = (A1 += R1.H * R2.H), R6.L = (A0 += R1.L * R2.L) || R1 = [I1++] || R5 = [I0++];
ffa08d5c:	09 9c 05 9c 
ffa08d60:	00 cc 06 e0 	R0 = R0 -|- R6 (S) || I0 -= M1 || [I2++] = R0;
ffa08d64:	74 9e 10 9e 
ffa08d68:	81 ce 38 4c 	R6 = R0 << 0x7 (V, S) || I1 += M2 || [I2++] = R7;
ffa08d6c:	69 9e 17 9e 
ffa08d70:	81 ce 96 4d 	R6 = R6 >>> 0xe (V) || R1 = [I1++] || R2 = [I0];
ffa08d74:	09 9c 02 9d 
ffa08d78:	00 c8 0e c0 	A1 = R1.H * R6.H, A0 = R1.L * R6.L || NOP || NOP;
ffa08d7c:	00 00 00 00 
ffa08d80:	05 c8 15 e9 	R4.H = (A1 += R2.H * R5.H), R4.L = (A0 += R2.L * R5.L) || I1 -= M2 || NOP;
ffa08d84:	79 9e 00 00 
ffa08d88:	03 c8 00 18 	MNOP || R5 = [I1++] || [I0 ++ M1] = R4;
ffa08d8c:	0d 9c a4 9f 
ffa08d90:	00 c0 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L;
ffa08d94:	83 c6 38 00 	A0 = A0 << 0x7;
ffa08d98:	83 c6 38 10 	A1 = A1 << 0x7;
ffa08d9c:	07 c0 c0 39 	R7.H = A1, R7.L = A0;
ffa08da0:	03 c8 00 18 	MNOP || I0 += M3 || R3 = [I2++];
ffa08da4:	6c 9e 13 9c 
ffa08da8:	03 c8 00 18 	MNOP || R5 = [I0++] || R1 = [I1++];
ffa08dac:	05 9c 09 9c 
ffa08db0:	00 c8 3d c0 	A1 = R7.H * R5.H, A0 = R7.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa08db4:	05 9c 0a 9c 
ffa08db8:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || R3 = [I1++];
ffa08dbc:	05 9c 0b 9c 
ffa08dc0:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R5 = [I0++] || R4 = [I1++];
ffa08dc4:	05 9c 0c 9c 
ffa08dc8:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || [I2++] = R7;
ffa08dcc:	05 9c 17 9e 
ffa08dd0:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || [I2++] = R1 || NOP;
ffa08dd4:	11 9e 00 00 
ffa08dd8:	03 c8 00 18 	MNOP || R5 = [I0++] || [I2++] = R0;
ffa08ddc:	05 9c 10 9e 
ffa08de0:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || R5 = [I0++] || [I2++] = R3;
ffa08de4:	05 9c 13 9e 
ffa08de8:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || R1 = [I1++];
ffa08dec:	05 9c 09 9c 
ffa08df0:	01 c8 25 c8 	A1 += R4.H * R5.H, A0 += R4.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa08df4:	05 9c 0a 9c 
ffa08df8:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || NOP;
ffa08dfc:	05 9c 00 00 
ffa08e00:	25 c8 15 e8 	R0.H = (A1 += R2.H * R5.H), R0.L = (A0 += R2.L * R5.L) (S2RND) || R5 = [I0++] || NOP;
ffa08e04:	05 9c 00 00 
ffa08e08:	00 cc 05 20 	R0 = R0 +|+ R5 (S) || [I2++] = R0 || NOP;
ffa08e0c:	10 9e 00 00 
ffa08e10:	81 ce 88 0d 	R6 = R0 >>> 0xf (V) || [I2++] = R1 || NOP;
ffa08e14:	11 9e 00 00 
ffa08e18:	03 c8 00 18 	MNOP || R5 = [I0++] || R1 = [I1++];
ffa08e1c:	05 9c 09 9c 
ffa08e20:	00 c8 3d c0 	A1 = R7.H * R5.H, A0 = R7.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa08e24:	05 9c 0a 9c 
ffa08e28:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || R3 = [I1++];
ffa08e2c:	05 9c 0b 9c 
ffa08e30:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R5 = [I0++] || R4 = [I1++];
ffa08e34:	05 9c 0c 9c 
ffa08e38:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || [I2++] = R7;
ffa08e3c:	05 9c 17 9e 
ffa08e40:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || [I2++] = R1 || NOP;
ffa08e44:	11 9e 00 00 
ffa08e48:	03 c8 00 18 	MNOP || R5 = [I0++] || [I2++] = R0;
ffa08e4c:	05 9c 10 9e 
ffa08e50:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || R5 = [I0++] || [I2++] = R3;
ffa08e54:	05 9c 13 9e 
ffa08e58:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || R1 = [I1++];
ffa08e5c:	05 9c 09 9c 
ffa08e60:	01 c8 25 c8 	A1 += R4.H * R5.H, A0 += R4.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa08e64:	05 9c 0a 9c 
ffa08e68:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || NOP;
ffa08e6c:	05 9c 00 00 
ffa08e70:	25 c8 15 e8 	R0.H = (A1 += R2.H * R5.H), R0.L = (A0 += R2.L * R5.L) (S2RND) || R5 = [I0++] || NOP;
ffa08e74:	05 9c 00 00 
ffa08e78:	00 cc 05 20 	R0 = R0 +|+ R5 (S) || R7 = [I0++] || [I2++] = R0;
ffa08e7c:	07 9c 10 9e 
ffa08e80:	81 ce 90 41 	R0 = R0 >>> 0xe (V) || R5 = [I0++] || [I2++] = R1;
ffa08e84:	05 9c 11 9e 
ffa08e88:	be 55       	R6 = R6 & R7;
ffa08e8a:	28 54       	R0 = R0 & R5;
ffa08e8c:	86 57       	R6 = R6 | R0;
ffa08e8e:	77 b9       	R7 = [FP -0x24];
ffa08e90:	37 56       	R0 = R7 | R6;
ffa08e92:	06 9c       	R6 = [I0++];
ffa08e94:	06 32       	P0 = R6;
ffa08e96:	3d b9       	P5 = [FP -0x34];
ffa08e98:	19 b9       	P1 = [FP -0x3c];
ffa08e9a:	02 c4 00 40 	R0.L = R0.L + R0.H (NS);
ffa08e9e:	40 43       	R0 = R0.B (Z);
ffa08ea0:	45 5b       	P5 = P5 + P0;
ffa08ea2:	29 99       	R1 = B[P5] (Z);
ffa08ea4:	41 56       	R1 = R1 | R0;
ffa08ea6:	01 32       	P0 = R1;
ffa08ea8:	29 9b       	B[P5] = R1;
ffa08eaa:	03 69       	P3 = 0x20 (X);		/*		P3=0x20( 32) */
ffa08eac:	5d 5b       	P5 = P5 + P3;
ffa08eae:	41 5a       	P1 = P1 + P0;
ffa08eb0:	0a 99       	R2 = B[P1] (Z);
ffa08eb2:	2a 9b       	B[P5] = R2;
ffa08eb4:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa08eb6:	06 08       	CC = R6 == R0;
ffa08eb8:	31 14       	IF !CC JUMP 0xffa08f1a <end_txchan> (BP);
ffa08eba:	98 b9       	P0 = [FP -0x1c];
ffa08ebc:	2f 60       	R7 = 0x5 (X);		/*		R7=0x5(  5) */
ffa08ebe:	00 00       	NOP;
ffa08ec0:	03 c8 00 18 	MNOP || P1 = [FP -0x18] || R0 = [I3++];
ffa08ec4:	a9 b9 18 9c 
ffa08ec8:	03 c8 00 18 	MNOP || P3 = [FP -0x14] || R1 = [I3++];
ffa08ecc:	bb b9 19 9c 
ffa08ed0:	03 c8 00 18 	MNOP || P5 = [FP -0x10] || R4 = [I3++];
ffa08ed4:	cd b9 1c 9c 
ffa08ed8:	28 34       	M1 = R0;
ffa08eda:	31 34       	M2 = R1;
ffa08edc:	00 99       	R0 = B[P0] (Z);
ffa08ede:	09 99       	R1 = B[P1] (Z);
ffa08ee0:	1a 99       	R2 = B[P3] (Z);
ffa08ee2:	2b 99       	R3 = B[P5] (Z);
ffa08ee4:	20 9a       	B[P4++] = R0;
ffa08ee6:	21 9a       	B[P4++] = R1;
ffa08ee8:	22 9a       	B[P4++] = R2;
ffa08eea:	23 9a       	B[P4++] = R3;
ffa08eec:	3c 08       	CC = R4 == R7;
ffa08eee:	13 14       	IF !CC JUMP 0xffa08f14 <end_txchan_qs> (BP);
ffa08ef0:	1f 9c       	R7 = [I3++];
ffa08ef2:	1e 9c       	R6 = [I3++];
ffa08ef4:	2e 32       	P5 = R6;
ffa08ef6:	f5 b9       	R5 = [FP -0x4];
ffa08ef8:	0d 64       	R5 += 0x1;		/* (  1) */
ffa08efa:	f5 bb       	[FP -0x4] = R5;
ffa08efc:	f5 b8       	R5 = [FP -0x44];
ffa08efe:	28 90       	R0 = [P5++];
ffa08f00:	29 90       	R1 = [P5++];
ffa08f02:	38 56       	R0 = R0 | R7;
ffa08f04:	69 56       	R1 = R1 | R5;
ffa08f06:	e0 6a       	P0 = -0x24 (X);		/*		P0=0xffffffdc(-36) */
ffa08f08:	45 5b       	P5 = P5 + P0;
ffa08f0a:	20 92       	[P4++] = R0;
ffa08f0c:	21 92       	[P4++] = R1;
ffa08f0e:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa08f10:	ac 92       	[P5--] = R4;
ffa08f12:	ac 92       	[P5--] = R4;

ffa08f14 <end_txchan_qs>:
ffa08f14:	7c 30       	R7 = P4;
ffa08f16:	57 4c       	BITCLR (R7, 0xa);		/* bit 10 */
ffa08f18:	27 32       	P4 = R7;

ffa08f1a <end_txchan>:
ffa08f1a:	5b b9       	P3 = [FP -0x2c];
ffa08f1c:	49 b9       	P1 = [FP -0x30];
ffa08f1e:	10 00       	RTS;

ffa08f20 <_init6>:
ffa08f20:	10 e1 00 40 	I0.L = 0x4000;		/* (16384)	I0=0x4000(16384) */
ffa08f24:	50 e1 90 ff 	I0.H = 0xff90;		/* (-112)	I0=0xff904000(-7323648) */
ffa08f28:	80 36       	B0 = I0;
ffa08f2a:	1c e1 00 2d 	L0.L = 0x2d00;		/* (11520)	L0=0x2d00(11520) */
ffa08f2e:	5c e1 00 00 	L0.H = 0x0;		/* (  0)	L0=0x2d00(11520) */
ffa08f32:	14 e1 00 01 	M0.L = 0x100;		/* (256)	M0=0x100(256) */
ffa08f36:	54 e1 00 00 	M0.H = 0x0;		/* (  0)	M0=0x100(256) */
ffa08f3a:	05 69       	P5 = 0x20 (X);		/*		P5=0x20( 32) */
ffa08f3c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa08f3e:	a2 e0 a6 50 	LSETUP(0xffa08f42 <lt_top>, 0xffa0908a <lt_bot>) LC0 = P5;

ffa08f42 <lt_top>:
ffa08f42:	20 e1 00 01 	R0 = 0x100 (X);		/*		R0=0x100(256) */
ffa08f46:	00 9e       	[I0++] = R0;
ffa08f48:	15 68       	P5 = 0x2 (X);		/*		P5=0x2(  2) */
ffa08f4a:	b2 e0 8e 50 	LSETUP(0xffa08f4e <lt2_top>, 0xffa09066 <lt2_bot>) LC1 = P5;

ffa08f4e <lt2_top>:
ffa08f4e:	00 e1 00 7d 	R0.L = 0x7d00;		/* (32000)	R0=0x7d00(32000) */
ffa08f52:	40 e1 00 c0 	R0.H = 0xc000;		/* (-16384)	R0=0xc0007d00(-1073709824) */
ffa08f56:	00 9e       	[I0++] = R0;
ffa08f58:	00 e1 00 40 	R0.L = 0x4000;		/* (16384)	R0=0xc0004000(-1073725440) */
ffa08f5c:	40 e1 84 03 	R0.H = 0x384;		/* (900)	R0=0x3844000(58998784) */
ffa08f60:	00 9e       	[I0++] = R0;
ffa08f62:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa08f64:	00 9e       	[I0++] = R0;
ffa08f66:	00 9e       	[I0++] = R0;
ffa08f68:	00 9e       	[I0++] = R0;
ffa08f6a:	00 9e       	[I0++] = R0;
ffa08f6c:	00 9e       	[I0++] = R0;
ffa08f6e:	00 9e       	[I0++] = R0;
ffa08f70:	00 9e       	[I0++] = R0;
ffa08f72:	00 9e       	[I0++] = R0;
ffa08f74:	00 9e       	[I0++] = R0;
ffa08f76:	00 9e       	[I0++] = R0;
ffa08f78:	00 9e       	[I0++] = R0;
ffa08f7a:	00 9e       	[I0++] = R0;
ffa08f7c:	00 9e       	[I0++] = R0;
ffa08f7e:	00 9e       	[I0++] = R0;
ffa08f80:	00 9e       	[I0++] = R0;
ffa08f82:	00 e1 ff 7f 	R0.L = 0x7fff;		/* (32767)	R0=0x7fff(32767) */
ffa08f86:	20 9e       	W[I0++] = R0.L;
ffa08f88:	20 9e       	W[I0++] = R0.L;
ffa08f8a:	00 e1 bb 26 	R0.L = 0x26bb;		/* (9915)	R0=0x26bb(9915) */
ffa08f8e:	40 e1 bb 26 	R0.H = 0x26bb;		/* (9915)	R0=0x26bb26bb(649799355) */
ffa08f92:	00 9e       	[I0++] = R0;
ffa08f94:	00 e1 00 40 	R0.L = 0x4000;		/* (16384)	R0=0x26bb4000(649805824) */
ffa08f98:	40 e1 01 00 	R0.H = 0x1;		/* (  1)	R0=0x14000(81920) */
ffa08f9c:	00 9e       	[I0++] = R0;
ffa08f9e:	20 e1 d4 1e 	R0 = 0x1ed4 (X);		/*		R0=0x1ed4(7892) */
ffa08fa2:	20 9e       	W[I0++] = R0.L;
ffa08fa4:	20 9e       	W[I0++] = R0.L;
ffa08fa6:	20 e1 a9 3d 	R0 = 0x3da9 (X);		/*		R0=0x3da9(15785) */
ffa08faa:	20 9e       	W[I0++] = R0.L;
ffa08fac:	20 9e       	W[I0++] = R0.L;
ffa08fae:	20 e1 d4 1e 	R0 = 0x1ed4 (X);		/*		R0=0x1ed4(7892) */
ffa08fb2:	20 9e       	W[I0++] = R0.L;
ffa08fb4:	20 9e       	W[I0++] = R0.L;
ffa08fb6:	20 e1 ad 14 	R0 = 0x14ad (X);		/*		R0=0x14ad(5293) */
ffa08fba:	20 9e       	W[I0++] = R0.L;
ffa08fbc:	20 9e       	W[I0++] = R0.L;
ffa08fbe:	20 e1 c9 e2 	R0 = -0x1d37 (X);		/*		R0=0xffffe2c9(-7479) */
ffa08fc2:	20 9e       	W[I0++] = R0.L;
ffa08fc4:	20 9e       	W[I0++] = R0.L;
ffa08fc6:	20 e1 ee 3b 	R0 = 0x3bee (X);		/*		R0=0x3bee(15342) */
ffa08fca:	20 9e       	W[I0++] = R0.L;
ffa08fcc:	20 9e       	W[I0++] = R0.L;
ffa08fce:	20 e1 21 88 	R0 = -0x77df (X);		/*		R0=0xffff8821(-30687) */
ffa08fd2:	20 9e       	W[I0++] = R0.L;
ffa08fd4:	20 9e       	W[I0++] = R0.L;
ffa08fd6:	20 e1 ee 3b 	R0 = 0x3bee (X);		/*		R0=0x3bee(15342) */
ffa08fda:	20 9e       	W[I0++] = R0.L;
ffa08fdc:	20 9e       	W[I0++] = R0.L;
ffa08fde:	20 e1 a5 7a 	R0 = 0x7aa5 (X);		/*		R0=0x7aa5(31397) */
ffa08fe2:	20 9e       	W[I0++] = R0.L;
ffa08fe4:	20 9e       	W[I0++] = R0.L;
ffa08fe6:	20 e1 bc c4 	R0 = -0x3b44 (X);		/*		R0=0xffffc4bc(-15172) */
ffa08fea:	20 9e       	W[I0++] = R0.L;
ffa08fec:	20 9e       	W[I0++] = R0.L;
ffa08fee:	20 e1 10 27 	R0 = 0x2710 (X);		/*		R0=0x2710(10000) */
ffa08ff2:	20 9e       	W[I0++] = R0.L;
ffa08ff4:	20 9e       	W[I0++] = R0.L;
ffa08ff6:	20 e1 d4 1e 	R0 = 0x1ed4 (X);		/*		R0=0x1ed4(7892) */
ffa08ffa:	20 9e       	W[I0++] = R0.L;
ffa08ffc:	20 9e       	W[I0++] = R0.L;
ffa08ffe:	20 e1 a6 3d 	R0 = 0x3da6 (X);		/*		R0=0x3da6(15782) */
ffa09002:	20 9e       	W[I0++] = R0.L;
ffa09004:	20 9e       	W[I0++] = R0.L;
ffa09006:	20 e1 d4 1e 	R0 = 0x1ed4 (X);		/*		R0=0x1ed4(7892) */
ffa0900a:	20 9e       	W[I0++] = R0.L;
ffa0900c:	20 9e       	W[I0++] = R0.L;
ffa0900e:	20 e1 f0 0e 	R0 = 0xef0 (X);		/*		R0=0xef0(3824) */
ffa09012:	20 9e       	W[I0++] = R0.L;
ffa09014:	20 9e       	W[I0++] = R0.L;
ffa09016:	20 e1 aa fc 	R0 = -0x356 (X);		/*		R0=0xfffffcaa(-854) */
ffa0901a:	20 9e       	W[I0++] = R0.L;
ffa0901c:	20 9e       	W[I0++] = R0.L;
ffa0901e:	20 e1 ee 3b 	R0 = 0x3bee (X);		/*		R0=0x3bee(15342) */
ffa09022:	20 9e       	W[I0++] = R0.L;
ffa09024:	20 9e       	W[I0++] = R0.L;
ffa09026:	20 e1 27 88 	R0 = -0x77d9 (X);		/*		R0=0xffff8827(-30681) */
ffa0902a:	20 9e       	W[I0++] = R0.L;
ffa0902c:	20 9e       	W[I0++] = R0.L;
ffa0902e:	20 e1 ee 3b 	R0 = 0x3bee (X);		/*		R0=0x3bee(15342) */
ffa09032:	20 9e       	W[I0++] = R0.L;
ffa09034:	20 9e       	W[I0++] = R0.L;
ffa09036:	20 e1 8c 74 	R0 = 0x748c (X);		/*		R0=0x748c(29836) */
ffa0903a:	20 9e       	W[I0++] = R0.L;
ffa0903c:	20 9e       	W[I0++] = R0.L;
ffa0903e:	20 e1 dd ca 	R0 = -0x3523 (X);		/*		R0=0xffffcadd(-13603) */
ffa09042:	20 9e       	W[I0++] = R0.L;
ffa09044:	20 9e       	W[I0++] = R0.L;
ffa09046:	20 e1 10 27 	R0 = 0x2710 (X);		/*		R0=0x2710(10000) */
ffa0904a:	20 9e       	W[I0++] = R0.L;
ffa0904c:	20 9e       	W[I0++] = R0.L;
ffa0904e:	00 e1 01 00 	R0.L = 0x1;		/* (  1)	R0=0x1(  1) */
ffa09052:	20 9e       	W[I0++] = R0.L;
ffa09054:	00 e1 10 00 	R0.L = 0x10;		/* ( 16)	R0=0x10( 16) */
ffa09058:	20 9e       	W[I0++] = R0.L;
ffa0905a:	00 e1 02 00 	R0.L = 0x2;		/* (  2)	R0=0x2(  2) */
ffa0905e:	20 9e       	W[I0++] = R0.L;
ffa09060:	00 e1 20 00 	R0.L = 0x20;		/* ( 32)	R0=0x20( 32) */
ffa09064:	20 9e       	W[I0++] = R0.L;

ffa09066 <lt2_bot>:
ffa09066:	37 e1 08 00 	M3 = 0x8 (X);		/*		M3=0x8(  8) */
ffa0906a:	7c 9e       	I0 -= M3;
ffa0906c:	00 e1 04 00 	R0.L = 0x4;		/* (  4)	R0=0x4(  4) */
ffa09070:	20 9e       	W[I0++] = R0.L;
ffa09072:	00 e1 40 00 	R0.L = 0x40;		/* ( 64)	R0=0x40( 64) */
ffa09076:	20 9e       	W[I0++] = R0.L;
ffa09078:	00 e1 08 00 	R0.L = 0x8;		/* (  8)	R0=0x8(  8) */
ffa0907c:	20 9e       	W[I0++] = R0.L;
ffa0907e:	00 e1 80 00 	R0.L = 0x80;		/* (128)	R0=0x80(128) */
ffa09082:	20 9e       	W[I0++] = R0.L;
ffa09084:	01 9e       	[I0++] = R1;
ffa09086:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09088:	41 50       	R1 = R1 + R0;

ffa0908a <lt_bot>:
ffa0908a:	08 e1 c8 68 	P0.L = 0x68c8;		/* (26824)	P0=0xffff68c8(-38712) */
ffa0908e:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff9068c8 */
ffa09092:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa09096:	00 93       	[P0] = R0;
ffa09098:	11 e1 00 40 	I1.L = 0x4000;		/* (16384)	I1=0x4000(16384) */
ffa0909c:	51 e1 80 ff 	I1.H = 0xff80;		/* (-128)	I1=0xff804000(-8372224) */
ffa090a0:	1d e1 00 10 	L1.L = 0x1000;		/* (4096)	L1=0x1000(4096) */
ffa090a4:	5d e1 00 00 	L1.H = 0x0;		/* (  0)	L1=0x1000(4096) */
ffa090a8:	91 34       	I2 = I1;
ffa090aa:	89 36       	B1 = I1;
ffa090ac:	92 36       	B2 = I2;
ffa090ae:	f5 36       	L2 = L1;
ffa090b0:	35 e1 40 00 	M1 = 0x40 (X);		/*		M1=0x40( 64) */
ffa090b4:	b4 34       	M2 = M0;
ffa090b6:	08 e1 00 40 	P0.L = 0x4000;		/* (16384)	P0=0xff904000 */
ffa090ba:	48 e1 80 ff 	P0.H = 0xff80;		/* (-128)	P0=0xff804000 */
ffa090be:	0d e1 00 04 	P5.L = 0x400;		/* (1024)	P5=0x400 */
ffa090c2:	4d e1 00 00 	P5.H = 0x0;		/* (  0)	P5=0x400 */
ffa090c6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa090c8:	a2 e0 04 50 	LSETUP(0xffa090cc <lt3_top>, 0xffa090d0 <lt3_bot>) LC0 = P5;

ffa090cc <lt3_top>:
ffa090cc:	00 00       	NOP;
ffa090ce:	00 92       	[P0++] = R0;

ffa090d0 <lt3_bot>:
ffa090d0:	00 00       	NOP;
ffa090d2:	13 e1 00 50 	I3.L = 0x5000;		/* (20480)	I3=0x5000(20480) */
ffa090d6:	53 e1 80 ff 	I3.H = 0xff80;		/* (-128)	I3=0xff805000(-8368128) */
ffa090da:	1f e1 00 0f 	L3.L = 0xf00;		/* (3840)	L3=0xf00(3840) */
ffa090de:	5f e1 00 00 	L3.H = 0x0;		/* (  0)	L3=0xf00(3840) */
ffa090e2:	9b 36       	B3 = I3;
ffa090e4:	37 e1 08 00 	M3 = 0x8 (X);		/*		M3=0x8(  8) */
ffa090e8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa090ea:	8c 30       	R1 = M0;
ffa090ec:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa090ee:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa090f0:	85 69       	P5 = 0x30 (X);		/*		P5=0x30( 48) */
ffa090f2:	a2 e0 46 50 	LSETUP(0xffa090f6 <lt4_top>, 0xffa0917e <lt4_bot>) LC0 = P5;

ffa090f6 <lt4_top>:
ffa090f6:	00 00       	NOP;
ffa090f8:	35 68       	P5 = 0x6 (X);		/*		P5=0x6(  6) */
ffa090fa:	b2 e0 18 50 	LSETUP(0xffa090fe <lt5_top>, 0xffa0912a <lt5_bot>) LC1 = P5;

ffa090fe <lt5_top>:
ffa090fe:	84 60       	R4 = 0x10 (X);		/*		R4=0x10( 16) */
ffa09100:	c4 52       	R3 = R4 - R0;
ffa09102:	24 60       	R4 = 0x4 (X);		/*		R4=0x4(  4) */
ffa09104:	e3 40       	R3 *= R4;
ffa09106:	1b 9e       	[I3++] = R3;
ffa09108:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa0910a:	e0 50       	R3 = R0 + R4;
ffa0910c:	cb 40       	R3 *= R1;
ffa0910e:	1b 9e       	[I3++] = R3;
ffa09110:	1f 9e       	[I3++] = R7;
ffa09112:	20 50       	R0 = R0 + R4;
ffa09114:	e7 51       	R7 = R7 + R4;
ffa09116:	7c 60       	R4 = 0xf (X);		/*		R4=0xf( 15) */
ffa09118:	20 08       	CC = R0 == R4;
ffa0911a:	02 10       	IF !CC JUMP 0xffa0911e <no_rollover>;
ffa0911c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */

ffa0911e <no_rollover>:
ffa0911e:	00 00       	NOP;
ffa09120:	34 60       	R4 = 0x6 (X);		/*		R4=0x6(  6) */
ffa09122:	27 08       	CC = R7 == R4;
ffa09124:	02 10       	IF !CC JUMP 0xffa09128 <no_rollover2>;
ffa09126:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */

ffa09128 <no_rollover2>:
	...

ffa0912a <lt5_bot>:
ffa0912a:	00 00       	NOP;
ffa0912c:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa0912e:	82 c6 e2 86 	R3 = R2 << 0x1c;
ffa09132:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa09134:	82 c6 fc 88 	R4 = R4 << 0x1f;
ffa09138:	e3 54       	R3 = R3 & R4;
ffa0913a:	5d 57       	R5 = R5 | R3;
ffa0913c:	82 c6 aa 86 	R3 = R2 << 0x15;
ffa09140:	82 c6 c4 89 	R4 = R4 >> 0x8;
ffa09144:	e3 54       	R3 = R3 & R4;
ffa09146:	5d 57       	R5 = R5 | R3;
ffa09148:	82 c6 72 86 	R3 = R2 << 0xe;
ffa0914c:	82 c6 c4 89 	R4 = R4 >> 0x8;
ffa09150:	e3 54       	R3 = R3 & R4;
ffa09152:	5d 57       	R5 = R5 | R3;
ffa09154:	82 c6 3a 86 	R3 = R2 << 0x7;
ffa09158:	82 c6 c4 89 	R4 = R4 >> 0x8;
ffa0915c:	e3 54       	R3 = R3 & R4;
ffa0915e:	5d 57       	R5 = R5 | R3;
ffa09160:	1d 9e       	[I3++] = R5;
ffa09162:	03 e1 20 60 	R3.L = 0x6020;		/* (24608)	R3=0x6020(24608) */
ffa09166:	43 e1 80 ff 	R3.H = 0xff80;		/* (-128)	R3=0xff806020(-8364000) */
ffa0916a:	1c 60       	R4 = 0x3 (X);		/*		R4=0x3(  3) */
ffa0916c:	62 55       	R5 = R2 & R4;
ffa0916e:	82 c6 1d 8a 	R5 = R5 << 0x3;
ffa09172:	5d 51       	R5 = R5 + R3;
ffa09174:	1d 9e       	[I3++] = R5;
ffa09176:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa09178:	a2 50       	R2 = R2 + R4;
ffa0917a:	7c 60       	R4 = 0xf (X);		/*		R4=0xf( 15) */
ffa0917c:	a2 54       	R2 = R2 & R4;

ffa0917e <lt4_bot>:
ffa0917e:	00 00       	NOP;
ffa09180:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09182:	10 00       	RTS;

ffa09184 <_enc_create>:
ffa09184:	0d e1 00 61 	P5.L = 0x6100;		/* (24832)	P5=0x6100 */
ffa09188:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff806100 */
ffa0918c:	50 61       	R0 = 0x2a (X);		/*		R0=0x2a( 42) */
ffa0918e:	28 9a       	B[P5++] = R0;
ffa09190:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa09192:	28 9a       	B[P5++] = R0;
ffa09194:	60 61       	R0 = 0x2c (X);		/*		R0=0x2c( 44) */
ffa09196:	28 9a       	B[P5++] = R0;
ffa09198:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa0919a:	28 9a       	B[P5++] = R0;
ffa0919c:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa0919e:	28 9a       	B[P5++] = R0;
ffa091a0:	70 61       	R0 = 0x2e (X);		/*		R0=0x2e( 46) */
ffa091a2:	28 9a       	B[P5++] = R0;
ffa091a4:	78 61       	R0 = 0x2f (X);		/*		R0=0x2f( 47) */
ffa091a6:	28 9a       	B[P5++] = R0;
ffa091a8:	70 61       	R0 = 0x2e (X);		/*		R0=0x2e( 46) */
ffa091aa:	28 9a       	B[P5++] = R0;
ffa091ac:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa091ae:	28 9a       	B[P5++] = R0;
ffa091b0:	88 61       	R0 = 0x31 (X);		/*		R0=0x31( 49) */
ffa091b2:	28 9a       	B[P5++] = R0;
ffa091b4:	90 61       	R0 = 0x32 (X);		/*		R0=0x32( 50) */
ffa091b6:	28 9a       	B[P5++] = R0;
ffa091b8:	88 61       	R0 = 0x31 (X);		/*		R0=0x31( 49) */
ffa091ba:	28 9a       	B[P5++] = R0;
ffa091bc:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa091be:	28 9a       	B[P5++] = R0;
ffa091c0:	70 61       	R0 = 0x2e (X);		/*		R0=0x2e( 46) */
ffa091c2:	28 9a       	B[P5++] = R0;
ffa091c4:	78 61       	R0 = 0x2f (X);		/*		R0=0x2f( 47) */
ffa091c6:	28 9a       	B[P5++] = R0;
ffa091c8:	70 61       	R0 = 0x2e (X);		/*		R0=0x2e( 46) */
ffa091ca:	28 9a       	B[P5++] = R0;
ffa091cc:	98 61       	R0 = 0x33 (X);		/*		R0=0x33( 51) */
ffa091ce:	28 9a       	B[P5++] = R0;
ffa091d0:	a0 61       	R0 = 0x34 (X);		/*		R0=0x34( 52) */
ffa091d2:	28 9a       	B[P5++] = R0;
ffa091d4:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa091d6:	28 9a       	B[P5++] = R0;
ffa091d8:	b0 61       	R0 = 0x36 (X);		/*		R0=0x36( 54) */
ffa091da:	28 9a       	B[P5++] = R0;
ffa091dc:	b8 61       	R0 = 0x37 (X);		/*		R0=0x37( 55) */
ffa091de:	28 9a       	B[P5++] = R0;
ffa091e0:	c0 61       	R0 = 0x38 (X);		/*		R0=0x38( 56) */
ffa091e2:	28 9a       	B[P5++] = R0;
ffa091e4:	c8 61       	R0 = 0x39 (X);		/*		R0=0x39( 57) */
ffa091e6:	28 9a       	B[P5++] = R0;
ffa091e8:	c0 61       	R0 = 0x38 (X);		/*		R0=0x38( 56) */
ffa091ea:	28 9a       	B[P5++] = R0;
ffa091ec:	d0 61       	R0 = 0x3a (X);		/*		R0=0x3a( 58) */
ffa091ee:	28 9a       	B[P5++] = R0;
ffa091f0:	d8 61       	R0 = 0x3b (X);		/*		R0=0x3b( 59) */
ffa091f2:	28 9a       	B[P5++] = R0;
ffa091f4:	e0 61       	R0 = 0x3c (X);		/*		R0=0x3c( 60) */
ffa091f6:	28 9a       	B[P5++] = R0;
ffa091f8:	d8 61       	R0 = 0x3b (X);		/*		R0=0x3b( 59) */
ffa091fa:	28 9a       	B[P5++] = R0;
ffa091fc:	b8 61       	R0 = 0x37 (X);		/*		R0=0x37( 55) */
ffa091fe:	28 9a       	B[P5++] = R0;
ffa09200:	c0 61       	R0 = 0x38 (X);		/*		R0=0x38( 56) */
ffa09202:	28 9a       	B[P5++] = R0;
ffa09204:	e8 61       	R0 = 0x3d (X);		/*		R0=0x3d( 61) */
ffa09206:	28 9a       	B[P5++] = R0;
ffa09208:	f0 61       	R0 = 0x3e (X);		/*		R0=0x3e( 62) */
ffa0920a:	28 9a       	B[P5++] = R0;
ffa0920c:	f8 61       	R0 = 0x3f (X);		/*		R0=0x3f( 63) */
ffa0920e:	28 9a       	B[P5++] = R0;
ffa09210:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa09214:	28 9a       	B[P5++] = R0;
ffa09216:	20 e1 41 00 	R0 = 0x41 (X);		/*		R0=0x41( 65) */
ffa0921a:	28 9a       	B[P5++] = R0;
ffa0921c:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa09220:	28 9a       	B[P5++] = R0;
ffa09222:	20 e1 42 00 	R0 = 0x42 (X);		/*		R0=0x42( 66) */
ffa09226:	28 9a       	B[P5++] = R0;
ffa09228:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa0922c:	28 9a       	B[P5++] = R0;
ffa0922e:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa09232:	28 9a       	B[P5++] = R0;
ffa09234:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa09238:	28 9a       	B[P5++] = R0;
ffa0923a:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa0923e:	28 9a       	B[P5++] = R0;
ffa09240:	20 e1 46 00 	R0 = 0x46 (X);		/*		R0=0x46( 70) */
ffa09244:	28 9a       	B[P5++] = R0;
ffa09246:	20 e1 47 00 	R0 = 0x47 (X);		/*		R0=0x47( 71) */
ffa0924a:	28 9a       	B[P5++] = R0;
ffa0924c:	20 e1 48 00 	R0 = 0x48 (X);		/*		R0=0x48( 72) */
ffa09250:	28 9a       	B[P5++] = R0;
ffa09252:	20 e1 42 00 	R0 = 0x42 (X);		/*		R0=0x42( 66) */
ffa09256:	28 9a       	B[P5++] = R0;
ffa09258:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa0925c:	28 9a       	B[P5++] = R0;
ffa0925e:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa09262:	28 9a       	B[P5++] = R0;
ffa09264:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa09268:	28 9a       	B[P5++] = R0;
ffa0926a:	98 61       	R0 = 0x33 (X);		/*		R0=0x33( 51) */
ffa0926c:	28 9a       	B[P5++] = R0;
ffa0926e:	a0 61       	R0 = 0x34 (X);		/*		R0=0x34( 52) */
ffa09270:	28 9a       	B[P5++] = R0;
ffa09272:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa09274:	28 9a       	B[P5++] = R0;
ffa09276:	a0 61       	R0 = 0x34 (X);		/*		R0=0x34( 52) */
ffa09278:	28 9a       	B[P5++] = R0;
ffa0927a:	20 e1 49 00 	R0 = 0x49 (X);		/*		R0=0x49( 73) */
ffa0927e:	28 9a       	B[P5++] = R0;
ffa09280:	20 e1 4a 00 	R0 = 0x4a (X);		/*		R0=0x4a( 74) */
ffa09284:	28 9a       	B[P5++] = R0;
ffa09286:	20 e1 4b 00 	R0 = 0x4b (X);		/*		R0=0x4b( 75) */
ffa0928a:	28 9a       	B[P5++] = R0;
ffa0928c:	c0 61       	R0 = 0x38 (X);		/*		R0=0x38( 56) */
ffa0928e:	28 9a       	B[P5++] = R0;
ffa09290:	d0 61       	R0 = 0x3a (X);		/*		R0=0x3a( 58) */
ffa09292:	28 9a       	B[P5++] = R0;
ffa09294:	d8 61       	R0 = 0x3b (X);		/*		R0=0x3b( 59) */
ffa09296:	28 9a       	B[P5++] = R0;
ffa09298:	e0 61       	R0 = 0x3c (X);		/*		R0=0x3c( 60) */
ffa0929a:	28 9a       	B[P5++] = R0;
ffa0929c:	d8 61       	R0 = 0x3b (X);		/*		R0=0x3b( 59) */
ffa0929e:	28 9a       	B[P5++] = R0;
ffa092a0:	b8 61       	R0 = 0x37 (X);		/*		R0=0x37( 55) */
ffa092a2:	28 9a       	B[P5++] = R0;
ffa092a4:	c0 61       	R0 = 0x38 (X);		/*		R0=0x38( 56) */
ffa092a6:	28 9a       	B[P5++] = R0;
ffa092a8:	c8 61       	R0 = 0x39 (X);		/*		R0=0x39( 57) */
ffa092aa:	28 9a       	B[P5++] = R0;
ffa092ac:	20 e1 4c 00 	R0 = 0x4c (X);		/*		R0=0x4c( 76) */
ffa092b0:	28 9a       	B[P5++] = R0;
ffa092b2:	20 e1 4d 00 	R0 = 0x4d (X);		/*		R0=0x4d( 77) */
ffa092b6:	28 9a       	B[P5++] = R0;
ffa092b8:	20 e1 4e 00 	R0 = 0x4e (X);		/*		R0=0x4e( 78) */
ffa092bc:	28 9a       	B[P5++] = R0;
ffa092be:	20 e1 4f 00 	R0 = 0x4f (X);		/*		R0=0x4f( 79) */
ffa092c2:	28 9a       	B[P5++] = R0;
ffa092c4:	20 e1 4e 00 	R0 = 0x4e (X);		/*		R0=0x4e( 78) */
ffa092c8:	28 9a       	B[P5++] = R0;
ffa092ca:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa092ce:	28 9a       	B[P5++] = R0;
ffa092d0:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa092d4:	28 9a       	B[P5++] = R0;
ffa092d6:	20 e1 52 00 	R0 = 0x52 (X);		/*		R0=0x52( 82) */
ffa092da:	28 9a       	B[P5++] = R0;
ffa092dc:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa092e0:	28 9a       	B[P5++] = R0;
ffa092e2:	20 e1 53 00 	R0 = 0x53 (X);		/*		R0=0x53( 83) */
ffa092e6:	28 9a       	B[P5++] = R0;
ffa092e8:	20 e1 54 00 	R0 = 0x54 (X);		/*		R0=0x54( 84) */
ffa092ec:	28 9a       	B[P5++] = R0;
ffa092ee:	20 e1 55 00 	R0 = 0x55 (X);		/*		R0=0x55( 85) */
ffa092f2:	28 9a       	B[P5++] = R0;
ffa092f4:	20 e1 56 00 	R0 = 0x56 (X);		/*		R0=0x56( 86) */
ffa092f8:	28 9a       	B[P5++] = R0;
ffa092fa:	20 e1 57 00 	R0 = 0x57 (X);		/*		R0=0x57( 87) */
ffa092fe:	28 9a       	B[P5++] = R0;
ffa09300:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa09304:	28 9a       	B[P5++] = R0;
ffa09306:	20 e1 52 00 	R0 = 0x52 (X);		/*		R0=0x52( 82) */
ffa0930a:	28 9a       	B[P5++] = R0;
ffa0930c:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa09310:	28 9a       	B[P5++] = R0;
ffa09312:	20 e1 58 00 	R0 = 0x58 (X);		/*		R0=0x58( 88) */
ffa09316:	28 9a       	B[P5++] = R0;
ffa09318:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa0931c:	28 9a       	B[P5++] = R0;
ffa0931e:	20 e1 5a 00 	R0 = 0x5a (X);		/*		R0=0x5a( 90) */
ffa09322:	28 9a       	B[P5++] = R0;
ffa09324:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa09328:	28 9a       	B[P5++] = R0;
ffa0932a:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa0932e:	28 9a       	B[P5++] = R0;
ffa09330:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa09334:	28 9a       	B[P5++] = R0;
ffa09336:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa0933a:	28 9a       	B[P5++] = R0;
ffa0933c:	20 e1 5e 00 	R0 = 0x5e (X);		/*		R0=0x5e( 94) */
ffa09340:	28 9a       	B[P5++] = R0;
ffa09342:	20 e1 5f 00 	R0 = 0x5f (X);		/*		R0=0x5f( 95) */
ffa09346:	28 9a       	B[P5++] = R0;
ffa09348:	20 e1 60 00 	R0 = 0x60 (X);		/*		R0=0x60( 96) */
ffa0934c:	28 9a       	B[P5++] = R0;
ffa0934e:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa09352:	28 9a       	B[P5++] = R0;
ffa09354:	20 e1 60 00 	R0 = 0x60 (X);		/*		R0=0x60( 96) */
ffa09358:	28 9a       	B[P5++] = R0;
ffa0935a:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa0935e:	28 9a       	B[P5++] = R0;
ffa09360:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa09364:	28 9a       	B[P5++] = R0;
ffa09366:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa0936a:	28 9a       	B[P5++] = R0;
ffa0936c:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa09370:	28 9a       	B[P5++] = R0;
ffa09372:	20 e1 62 00 	R0 = 0x62 (X);		/*		R0=0x62( 98) */
ffa09376:	28 9a       	B[P5++] = R0;
ffa09378:	20 e1 63 00 	R0 = 0x63 (X);		/*		R0=0x63( 99) */
ffa0937c:	28 9a       	B[P5++] = R0;
ffa0937e:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa09382:	28 9a       	B[P5++] = R0;
ffa09384:	20 e1 63 00 	R0 = 0x63 (X);		/*		R0=0x63( 99) */
ffa09388:	28 9a       	B[P5++] = R0;
ffa0938a:	20 e1 65 00 	R0 = 0x65 (X);		/*		R0=0x65(101) */
ffa0938e:	28 9a       	B[P5++] = R0;
ffa09390:	20 e1 66 00 	R0 = 0x66 (X);		/*		R0=0x66(102) */
ffa09394:	28 9a       	B[P5++] = R0;
ffa09396:	20 e1 67 00 	R0 = 0x67 (X);		/*		R0=0x67(103) */
ffa0939a:	28 9a       	B[P5++] = R0;
ffa0939c:	20 e1 66 00 	R0 = 0x66 (X);		/*		R0=0x66(102) */
ffa093a0:	28 9a       	B[P5++] = R0;
ffa093a2:	20 e1 68 00 	R0 = 0x68 (X);		/*		R0=0x68(104) */
ffa093a6:	28 9a       	B[P5++] = R0;
ffa093a8:	20 e1 69 00 	R0 = 0x69 (X);		/*		R0=0x69(105) */
ffa093ac:	28 9a       	B[P5++] = R0;
ffa093ae:	20 e1 6a 00 	R0 = 0x6a (X);		/*		R0=0x6a(106) */
ffa093b2:	28 9a       	B[P5++] = R0;
ffa093b4:	20 e1 6b 00 	R0 = 0x6b (X);		/*		R0=0x6b(107) */
ffa093b8:	28 9a       	B[P5++] = R0;
ffa093ba:	20 e1 6c 00 	R0 = 0x6c (X);		/*		R0=0x6c(108) */
ffa093be:	28 9a       	B[P5++] = R0;
ffa093c0:	20 e1 6d 00 	R0 = 0x6d (X);		/*		R0=0x6d(109) */
ffa093c4:	28 9a       	B[P5++] = R0;
ffa093c6:	20 e1 67 00 	R0 = 0x67 (X);		/*		R0=0x67(103) */
ffa093ca:	28 9a       	B[P5++] = R0;
ffa093cc:	20 e1 66 00 	R0 = 0x66 (X);		/*		R0=0x66(102) */
ffa093d0:	28 9a       	B[P5++] = R0;
ffa093d2:	20 e1 58 00 	R0 = 0x58 (X);		/*		R0=0x58( 88) */
ffa093d6:	28 9a       	B[P5++] = R0;
ffa093d8:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa093dc:	28 9a       	B[P5++] = R0;
ffa093de:	20 e1 5a 00 	R0 = 0x5a (X);		/*		R0=0x5a( 90) */
ffa093e2:	28 9a       	B[P5++] = R0;
ffa093e4:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa093e8:	28 9a       	B[P5++] = R0;
ffa093ea:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa093ee:	28 9a       	B[P5++] = R0;
ffa093f0:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa093f4:	28 9a       	B[P5++] = R0;
ffa093f6:	20 e1 6e 00 	R0 = 0x6e (X);		/*		R0=0x6e(110) */
ffa093fa:	28 9a       	B[P5++] = R0;
ffa093fc:	20 e1 6f 00 	R0 = 0x6f (X);		/*		R0=0x6f(111) */
ffa09400:	28 9a       	B[P5++] = R0;
ffa09402:	20 e1 70 00 	R0 = 0x70 (X);		/*		R0=0x70(112) */
ffa09406:	28 9a       	B[P5++] = R0;
ffa09408:	20 e1 60 00 	R0 = 0x60 (X);		/*		R0=0x60( 96) */
ffa0940c:	28 9a       	B[P5++] = R0;
ffa0940e:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa09412:	28 9a       	B[P5++] = R0;
ffa09414:	20 e1 60 00 	R0 = 0x60 (X);		/*		R0=0x60( 96) */
ffa09418:	28 9a       	B[P5++] = R0;
ffa0941a:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa0941e:	28 9a       	B[P5++] = R0;
ffa09420:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa09424:	28 9a       	B[P5++] = R0;
ffa09426:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa0942a:	28 9a       	B[P5++] = R0;
ffa0942c:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa09430:	28 9a       	B[P5++] = R0;
ffa09432:	20 e1 71 00 	R0 = 0x71 (X);		/*		R0=0x71(113) */
ffa09436:	28 9a       	B[P5++] = R0;
ffa09438:	20 e1 72 00 	R0 = 0x72 (X);		/*		R0=0x72(114) */
ffa0943c:	28 9a       	B[P5++] = R0;
ffa0943e:	20 e1 73 00 	R0 = 0x73 (X);		/*		R0=0x73(115) */
ffa09442:	28 9a       	B[P5++] = R0;
ffa09444:	20 e1 74 00 	R0 = 0x74 (X);		/*		R0=0x74(116) */
ffa09448:	28 9a       	B[P5++] = R0;
ffa0944a:	20 e1 75 00 	R0 = 0x75 (X);		/*		R0=0x75(117) */
ffa0944e:	28 9a       	B[P5++] = R0;
ffa09450:	20 e1 76 00 	R0 = 0x76 (X);		/*		R0=0x76(118) */
ffa09454:	28 9a       	B[P5++] = R0;
ffa09456:	20 e1 77 00 	R0 = 0x77 (X);		/*		R0=0x77(119) */
ffa0945a:	28 9a       	B[P5++] = R0;
ffa0945c:	20 e1 76 00 	R0 = 0x76 (X);		/*		R0=0x76(118) */
ffa09460:	28 9a       	B[P5++] = R0;
ffa09462:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa09466:	28 9a       	B[P5++] = R0;
ffa09468:	20 e1 79 00 	R0 = 0x79 (X);		/*		R0=0x79(121) */
ffa0946c:	28 9a       	B[P5++] = R0;
ffa0946e:	20 e1 7a 00 	R0 = 0x7a (X);		/*		R0=0x7a(122) */
ffa09472:	28 9a       	B[P5++] = R0;
ffa09474:	20 e1 79 00 	R0 = 0x79 (X);		/*		R0=0x79(121) */
ffa09478:	28 9a       	B[P5++] = R0;
ffa0947a:	20 e1 7b 00 	R0 = 0x7b (X);		/*		R0=0x7b(123) */
ffa0947e:	28 9a       	B[P5++] = R0;
ffa09480:	20 e1 7c 00 	R0 = 0x7c (X);		/*		R0=0x7c(124) */
ffa09484:	28 9a       	B[P5++] = R0;
ffa09486:	20 e1 7d 00 	R0 = 0x7d (X);		/*		R0=0x7d(125) */
ffa0948a:	28 9a       	B[P5++] = R0;
ffa0948c:	20 e1 76 00 	R0 = 0x76 (X);		/*		R0=0x76(118) */
ffa09490:	28 9a       	B[P5++] = R0;
ffa09492:	20 e1 7e 00 	R0 = 0x7e (X);		/*		R0=0x7e(126) */
ffa09496:	28 9a       	B[P5++] = R0;
ffa09498:	20 e1 7f 00 	R0 = 0x7f (X);		/*		R0=0x7f(127) */
ffa0949c:	28 9a       	B[P5++] = R0;
ffa0949e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa094a0:	28 9a       	B[P5++] = R0;
ffa094a2:	20 e1 7f 00 	R0 = 0x7f (X);		/*		R0=0x7f(127) */
ffa094a6:	28 9a       	B[P5++] = R0;
ffa094a8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa094aa:	28 9a       	B[P5++] = R0;
ffa094ac:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa094ae:	28 9a       	B[P5++] = R0;
ffa094b0:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa094b2:	28 9a       	B[P5++] = R0;
ffa094b4:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa094b6:	28 9a       	B[P5++] = R0;
ffa094b8:	28 60       	R0 = 0x5 (X);		/*		R0=0x5(  5) */
ffa094ba:	28 9a       	B[P5++] = R0;
ffa094bc:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa094be:	28 9a       	B[P5++] = R0;
ffa094c0:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa094c2:	28 9a       	B[P5++] = R0;
ffa094c4:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa094c6:	28 9a       	B[P5++] = R0;
ffa094c8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa094ca:	28 9a       	B[P5++] = R0;
ffa094cc:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa094ce:	28 9a       	B[P5++] = R0;
ffa094d0:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa094d2:	28 9a       	B[P5++] = R0;
ffa094d4:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa094d6:	28 9a       	B[P5++] = R0;
ffa094d8:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa094da:	28 9a       	B[P5++] = R0;
ffa094dc:	48 60       	R0 = 0x9 (X);		/*		R0=0x9(  9) */
ffa094de:	28 9a       	B[P5++] = R0;
ffa094e0:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa094e2:	28 9a       	B[P5++] = R0;
ffa094e4:	58 60       	R0 = 0xb (X);		/*		R0=0xb( 11) */
ffa094e6:	28 9a       	B[P5++] = R0;
ffa094e8:	60 60       	R0 = 0xc (X);		/*		R0=0xc( 12) */
ffa094ea:	28 9a       	B[P5++] = R0;
ffa094ec:	68 60       	R0 = 0xd (X);		/*		R0=0xd( 13) */
ffa094ee:	28 9a       	B[P5++] = R0;
ffa094f0:	70 60       	R0 = 0xe (X);		/*		R0=0xe( 14) */
ffa094f2:	28 9a       	B[P5++] = R0;
ffa094f4:	68 60       	R0 = 0xd (X);		/*		R0=0xd( 13) */
ffa094f6:	28 9a       	B[P5++] = R0;
ffa094f8:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa094fa:	28 9a       	B[P5++] = R0;
ffa094fc:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa094fe:	28 9a       	B[P5++] = R0;
ffa09500:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa09502:	28 9a       	B[P5++] = R0;
ffa09504:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa09506:	28 9a       	B[P5++] = R0;
ffa09508:	60 60       	R0 = 0xc (X);		/*		R0=0xc( 12) */
ffa0950a:	28 9a       	B[P5++] = R0;
ffa0950c:	90 60       	R0 = 0x12 (X);		/*		R0=0x12( 18) */
ffa0950e:	28 9a       	B[P5++] = R0;
ffa09510:	98 60       	R0 = 0x13 (X);		/*		R0=0x13( 19) */
ffa09512:	28 9a       	B[P5++] = R0;
ffa09514:	a0 60       	R0 = 0x14 (X);		/*		R0=0x14( 20) */
ffa09516:	28 9a       	B[P5++] = R0;
ffa09518:	20 e1 7e 00 	R0 = 0x7e (X);		/*		R0=0x7e(126) */
ffa0951c:	28 9a       	B[P5++] = R0;
ffa0951e:	20 e1 7f 00 	R0 = 0x7f (X);		/*		R0=0x7f(127) */
ffa09522:	28 9a       	B[P5++] = R0;
ffa09524:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09526:	28 9a       	B[P5++] = R0;
ffa09528:	20 e1 7f 00 	R0 = 0x7f (X);		/*		R0=0x7f(127) */
ffa0952c:	28 9a       	B[P5++] = R0;
ffa0952e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09530:	28 9a       	B[P5++] = R0;
ffa09532:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09534:	28 9a       	B[P5++] = R0;
ffa09536:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa09538:	28 9a       	B[P5++] = R0;
ffa0953a:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0953c:	28 9a       	B[P5++] = R0;
ffa0953e:	a8 60       	R0 = 0x15 (X);		/*		R0=0x15( 21) */
ffa09540:	28 9a       	B[P5++] = R0;
ffa09542:	b0 60       	R0 = 0x16 (X);		/*		R0=0x16( 22) */
ffa09544:	28 9a       	B[P5++] = R0;
ffa09546:	b8 60       	R0 = 0x17 (X);		/*		R0=0x17( 23) */
ffa09548:	28 9a       	B[P5++] = R0;
ffa0954a:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa0954c:	28 9a       	B[P5++] = R0;
ffa0954e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09550:	28 9a       	B[P5++] = R0;
ffa09552:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09554:	28 9a       	B[P5++] = R0;
ffa09556:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa09558:	28 9a       	B[P5++] = R0;
ffa0955a:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0955c:	28 9a       	B[P5++] = R0;
ffa0955e:	20 e1 4d 00 	R0 = 0x4d (X);		/*		R0=0x4d( 77) */
ffa09562:	28 9a       	B[P5++] = R0;
ffa09564:	20 e1 4e 00 	R0 = 0x4e (X);		/*		R0=0x4e( 78) */
ffa09568:	28 9a       	B[P5++] = R0;
ffa0956a:	20 e1 4f 00 	R0 = 0x4f (X);		/*		R0=0x4f( 79) */
ffa0956e:	28 9a       	B[P5++] = R0;
ffa09570:	c0 60       	R0 = 0x18 (X);		/*		R0=0x18( 24) */
ffa09572:	28 9a       	B[P5++] = R0;
ffa09574:	c8 60       	R0 = 0x19 (X);		/*		R0=0x19( 25) */
ffa09576:	28 9a       	B[P5++] = R0;
ffa09578:	d0 60       	R0 = 0x1a (X);		/*		R0=0x1a( 26) */
ffa0957a:	28 9a       	B[P5++] = R0;
ffa0957c:	20 e1 52 00 	R0 = 0x52 (X);		/*		R0=0x52( 82) */
ffa09580:	28 9a       	B[P5++] = R0;
ffa09582:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa09586:	28 9a       	B[P5++] = R0;
ffa09588:	20 e1 53 00 	R0 = 0x53 (X);		/*		R0=0x53( 83) */
ffa0958c:	28 9a       	B[P5++] = R0;
ffa0958e:	20 e1 54 00 	R0 = 0x54 (X);		/*		R0=0x54( 84) */
ffa09592:	28 9a       	B[P5++] = R0;
ffa09594:	20 e1 55 00 	R0 = 0x55 (X);		/*		R0=0x55( 85) */
ffa09598:	28 9a       	B[P5++] = R0;
ffa0959a:	20 e1 54 00 	R0 = 0x54 (X);		/*		R0=0x54( 84) */
ffa0959e:	28 9a       	B[P5++] = R0;
ffa095a0:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa095a4:	28 9a       	B[P5++] = R0;
ffa095a6:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa095aa:	28 9a       	B[P5++] = R0;
ffa095ac:	d8 60       	R0 = 0x1b (X);		/*		R0=0x1b( 27) */
ffa095ae:	28 9a       	B[P5++] = R0;
ffa095b0:	e0 60       	R0 = 0x1c (X);		/*		R0=0x1c( 28) */
ffa095b2:	28 9a       	B[P5++] = R0;
ffa095b4:	e8 60       	R0 = 0x1d (X);		/*		R0=0x1d( 29) */
ffa095b6:	28 9a       	B[P5++] = R0;
ffa095b8:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa095bc:	28 9a       	B[P5++] = R0;
ffa095be:	20 e1 5a 00 	R0 = 0x5a (X);		/*		R0=0x5a( 90) */
ffa095c2:	28 9a       	B[P5++] = R0;
ffa095c4:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa095c8:	28 9a       	B[P5++] = R0;
ffa095ca:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa095ce:	28 9a       	B[P5++] = R0;
ffa095d0:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa095d4:	28 9a       	B[P5++] = R0;
ffa095d6:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa095da:	28 9a       	B[P5++] = R0;
ffa095dc:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa095e0:	28 9a       	B[P5++] = R0;
ffa095e2:	20 e1 5f 00 	R0 = 0x5f (X);		/*		R0=0x5f( 95) */
ffa095e6:	28 9a       	B[P5++] = R0;
ffa095e8:	f0 60       	R0 = 0x1e (X);		/*		R0=0x1e( 30) */
ffa095ea:	28 9a       	B[P5++] = R0;
ffa095ec:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa095ee:	28 9a       	B[P5++] = R0;
ffa095f0:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa095f2:	28 9a       	B[P5++] = R0;
ffa095f4:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa095f8:	28 9a       	B[P5++] = R0;
ffa095fa:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa095fe:	28 9a       	B[P5++] = R0;
ffa09600:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa09604:	28 9a       	B[P5++] = R0;
ffa09606:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa0960a:	28 9a       	B[P5++] = R0;
ffa0960c:	20 e1 62 00 	R0 = 0x62 (X);		/*		R0=0x62( 98) */
ffa09610:	28 9a       	B[P5++] = R0;
ffa09612:	20 e1 63 00 	R0 = 0x63 (X);		/*		R0=0x63( 99) */
ffa09616:	28 9a       	B[P5++] = R0;
ffa09618:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa0961c:	28 9a       	B[P5++] = R0;
ffa0961e:	20 e1 63 00 	R0 = 0x63 (X);		/*		R0=0x63( 99) */
ffa09622:	28 9a       	B[P5++] = R0;
ffa09624:	08 61       	R0 = 0x21 (X);		/*		R0=0x21( 33) */
ffa09626:	28 9a       	B[P5++] = R0;
ffa09628:	10 61       	R0 = 0x22 (X);		/*		R0=0x22( 34) */
ffa0962a:	28 9a       	B[P5++] = R0;
ffa0962c:	18 61       	R0 = 0x23 (X);		/*		R0=0x23( 35) */
ffa0962e:	28 9a       	B[P5++] = R0;
ffa09630:	20 e1 66 00 	R0 = 0x66 (X);		/*		R0=0x66(102) */
ffa09634:	28 9a       	B[P5++] = R0;
ffa09636:	20 e1 68 00 	R0 = 0x68 (X);		/*		R0=0x68(104) */
ffa0963a:	28 9a       	B[P5++] = R0;
ffa0963c:	20 e1 69 00 	R0 = 0x69 (X);		/*		R0=0x69(105) */
ffa09640:	28 9a       	B[P5++] = R0;
ffa09642:	20 e1 6a 00 	R0 = 0x6a (X);		/*		R0=0x6a(106) */
ffa09646:	28 9a       	B[P5++] = R0;
ffa09648:	20 e1 69 00 	R0 = 0x69 (X);		/*		R0=0x69(105) */
ffa0964c:	28 9a       	B[P5++] = R0;
ffa0964e:	20 e1 65 00 	R0 = 0x65 (X);		/*		R0=0x65(101) */
ffa09652:	28 9a       	B[P5++] = R0;
ffa09654:	20 e1 66 00 	R0 = 0x66 (X);		/*		R0=0x66(102) */
ffa09658:	28 9a       	B[P5++] = R0;
ffa0965a:	20 e1 67 00 	R0 = 0x67 (X);		/*		R0=0x67(103) */
ffa0965e:	28 9a       	B[P5++] = R0;
ffa09660:	20 61       	R0 = 0x24 (X);		/*		R0=0x24( 36) */
ffa09662:	28 9a       	B[P5++] = R0;
ffa09664:	28 61       	R0 = 0x25 (X);		/*		R0=0x25( 37) */
ffa09666:	28 9a       	B[P5++] = R0;
ffa09668:	30 61       	R0 = 0x26 (X);		/*		R0=0x26( 38) */
ffa0966a:	28 9a       	B[P5++] = R0;
ffa0966c:	20 e1 5a 00 	R0 = 0x5a (X);		/*		R0=0x5a( 90) */
ffa09670:	28 9a       	B[P5++] = R0;
ffa09672:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa09676:	28 9a       	B[P5++] = R0;
ffa09678:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa0967c:	28 9a       	B[P5++] = R0;
ffa0967e:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa09682:	28 9a       	B[P5++] = R0;
ffa09684:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa09688:	28 9a       	B[P5++] = R0;
ffa0968a:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa0968e:	28 9a       	B[P5++] = R0;
ffa09690:	20 e1 5f 00 	R0 = 0x5f (X);		/*		R0=0x5f( 95) */
ffa09694:	28 9a       	B[P5++] = R0;
ffa09696:	20 e1 60 00 	R0 = 0x60 (X);		/*		R0=0x60( 96) */
ffa0969a:	28 9a       	B[P5++] = R0;
ffa0969c:	38 61       	R0 = 0x27 (X);		/*		R0=0x27( 39) */
ffa0969e:	28 9a       	B[P5++] = R0;
ffa096a0:	40 61       	R0 = 0x28 (X);		/*		R0=0x28( 40) */
ffa096a2:	28 9a       	B[P5++] = R0;
ffa096a4:	48 61       	R0 = 0x29 (X);		/*		R0=0x29( 41) */
ffa096a6:	28 9a       	B[P5++] = R0;
ffa096a8:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa096ac:	28 9a       	B[P5++] = R0;
ffa096ae:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa096b2:	28 9a       	B[P5++] = R0;
ffa096b4:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa096b8:	28 9a       	B[P5++] = R0;
ffa096ba:	0d e1 00 62 	P5.L = 0x6200;		/* (25088)	P5=0xff806200 */
ffa096be:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff806200 */
ffa096c2:	00 e1 00 00 	R0.L = 0x0;		/* (  0)	R0=0x0(  0) */
ffa096c6:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x0(  0) */
ffa096ca:	28 92       	[P5++] = R0;
ffa096cc:	00 e1 80 00 	R0.L = 0x80;		/* (128)	R0=0x80(128) */
ffa096d0:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x80(128) */
ffa096d4:	28 92       	[P5++] = R0;
ffa096d6:	00 e1 00 80 	R0.L = 0x8000;		/* (-32768)	R0=0x8000(32768) */
ffa096da:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x8000(32768) */
ffa096de:	28 92       	[P5++] = R0;
ffa096e0:	00 e1 80 80 	R0.L = 0x8080;		/* (-32640)	R0=0x8080(32896) */
ffa096e4:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x8080(32896) */
ffa096e8:	28 92       	[P5++] = R0;
ffa096ea:	00 e1 00 00 	R0.L = 0x0;		/* (  0)	R0=0x0(  0) */
ffa096ee:	40 e1 80 00 	R0.H = 0x80;		/* (128)	R0=0x800000(8388608) */
ffa096f2:	28 92       	[P5++] = R0;
ffa096f4:	00 e1 80 00 	R0.L = 0x80;		/* (128)	R0=0x800080(8388736) */
ffa096f8:	40 e1 80 00 	R0.H = 0x80;		/* (128)	R0=0x800080(8388736) */
ffa096fc:	28 92       	[P5++] = R0;
ffa096fe:	00 e1 00 80 	R0.L = 0x8000;		/* (-32768)	R0=0x808000(8421376) */
ffa09702:	40 e1 80 00 	R0.H = 0x80;		/* (128)	R0=0x808000(8421376) */
ffa09706:	28 92       	[P5++] = R0;
ffa09708:	00 e1 80 80 	R0.L = 0x8080;		/* (-32640)	R0=0x808080(8421504) */
ffa0970c:	40 e1 80 00 	R0.H = 0x80;		/* (128)	R0=0x808080(8421504) */
ffa09710:	28 92       	[P5++] = R0;
ffa09712:	00 e1 00 00 	R0.L = 0x0;		/* (  0)	R0=0x800000(8388608) */
ffa09716:	40 e1 00 80 	R0.H = 0x8000;		/* (-32768)	R0=0x80000000(-2147483648) */
ffa0971a:	28 92       	[P5++] = R0;
ffa0971c:	00 e1 80 00 	R0.L = 0x80;		/* (128)	R0=0x80000080(-2147483520) */
ffa09720:	40 e1 00 80 	R0.H = 0x8000;		/* (-32768)	R0=0x80000080(-2147483520) */
ffa09724:	28 92       	[P5++] = R0;
ffa09726:	00 e1 00 80 	R0.L = 0x8000;		/* (-32768)	R0=0x80008000(-2147450880) */
ffa0972a:	40 e1 00 80 	R0.H = 0x8000;		/* (-32768)	R0=0x80008000(-2147450880) */
ffa0972e:	28 92       	[P5++] = R0;
ffa09730:	00 e1 80 80 	R0.L = 0x8080;		/* (-32640)	R0=0x80008080(-2147450752) */
ffa09734:	40 e1 00 80 	R0.H = 0x8000;		/* (-32768)	R0=0x80008080(-2147450752) */
ffa09738:	28 92       	[P5++] = R0;
ffa0973a:	00 e1 00 00 	R0.L = 0x0;		/* (  0)	R0=0x80000000(-2147483648) */
ffa0973e:	40 e1 80 80 	R0.H = 0x8080;		/* (-32640)	R0=0x80800000(-2139095040) */
ffa09742:	28 92       	[P5++] = R0;
ffa09744:	00 e1 80 00 	R0.L = 0x80;		/* (128)	R0=0x80800080(-2139094912) */
ffa09748:	40 e1 80 80 	R0.H = 0x8080;		/* (-32640)	R0=0x80800080(-2139094912) */
ffa0974c:	28 92       	[P5++] = R0;
ffa0974e:	00 e1 00 80 	R0.L = 0x8000;		/* (-32768)	R0=0x80808000(-2139062272) */
ffa09752:	40 e1 80 80 	R0.H = 0x8080;		/* (-32640)	R0=0x80808000(-2139062272) */
ffa09756:	28 92       	[P5++] = R0;
ffa09758:	00 e1 80 80 	R0.L = 0x8080;		/* (-32640)	R0=0x80808080(-2139062144) */
ffa0975c:	40 e1 80 80 	R0.H = 0x8080;		/* (-32640)	R0=0x80808080(-2139062144) */
ffa09760:	28 92       	[P5++] = R0;
ffa09762:	10 00       	RTS;

ffa09764 <___divsi3>:
ffa09764:	c8 58       	R3 = R0 ^ R1;
ffa09766:	07 c4 00 80 	R0 = ABS R0;
ffa0976a:	18 03       	CC = V;
ffa0976c:	82 c6 fb c7 	R3 = ROT R3 BY -0x1;
ffa09770:	07 c4 08 82 	R1 = ABS R1;
ffa09774:	88 08       	CC = R0 < R1;
ffa09776:	76 18       	IF CC JUMP 0xffa09862 <___divsi3+0xfe>;
ffa09778:	82 c6 89 85 	R2 = R1 >> 0xf;
ffa0977c:	0a 02       	CC = R2;
ffa0977e:	1e 18       	IF CC JUMP 0xffa097ba <___divsi3+0x56>;
ffa09780:	82 c6 81 84 	R2 = R1 << 0x10;
ffa09784:	02 09       	CC = R2 <= R0;
ffa09786:	1a 18       	IF CC JUMP 0xffa097ba <___divsi3+0x56>;
ffa09788:	48 42       	DIVS (R0, R1);
ffa0978a:	08 42       	DIVQ (R0, R1);
ffa0978c:	08 42       	DIVQ (R0, R1);
ffa0978e:	08 42       	DIVQ (R0, R1);
ffa09790:	08 42       	DIVQ (R0, R1);
ffa09792:	08 42       	DIVQ (R0, R1);
ffa09794:	08 42       	DIVQ (R0, R1);
ffa09796:	08 42       	DIVQ (R0, R1);
ffa09798:	08 42       	DIVQ (R0, R1);
ffa0979a:	08 42       	DIVQ (R0, R1);
ffa0979c:	08 42       	DIVQ (R0, R1);
ffa0979e:	08 42       	DIVQ (R0, R1);
ffa097a0:	08 42       	DIVQ (R0, R1);
ffa097a2:	08 42       	DIVQ (R0, R1);
ffa097a4:	08 42       	DIVQ (R0, R1);
ffa097a6:	08 42       	DIVQ (R0, R1);
ffa097a8:	08 42       	DIVQ (R0, R1);
ffa097aa:	c0 42       	R0 = R0.L (Z);
ffa097ac:	82 c6 0b 83 	R1 = R3 >> 0x1f;
ffa097b0:	08 50       	R0 = R0 + R1;
ffa097b2:	81 43       	R1 = -R0;
ffa097b4:	f3 49       	CC = BITTST (R3, 0x1e);		/* bit 30 */
ffa097b6:	01 07       	IF CC R0 = R1;
ffa097b8:	10 00       	RTS;
ffa097ba:	01 0c       	CC = R1 == 0x0;
ffa097bc:	34 18       	IF CC JUMP 0xffa09824 <___divsi3+0xc0>;
ffa097be:	00 0c       	CC = R0 == 0x0;
ffa097c0:	3f 18       	IF CC JUMP 0xffa0983e <___divsi3+0xda>;
ffa097c2:	08 08       	CC = R0 == R1;
ffa097c4:	30 18       	IF CC JUMP 0xffa09824 <___divsi3+0xc0>;
ffa097c6:	09 0c       	CC = R1 == 0x1;
ffa097c8:	2e 18       	IF CC JUMP 0xffa09824 <___divsi3+0xc0>;
ffa097ca:	06 c6 01 c4 	R2.L = ONES R1;
ffa097ce:	d2 42       	R2 = R2.L (Z);
ffa097d0:	0a 0c       	CC = R2 == 0x1;
ffa097d2:	37 18       	IF CC JUMP 0xffa09840 <___divsi3+0xdc>;
ffa097d4:	f9 68       	P1 = 0x1f (X);		/*		P1=0x1f( 31) */
ffa097d6:	68 05       	[--SP] = (R7:5);
ffa097d8:	8a 43       	R2 = -R1;
ffa097da:	42 01       	[--SP] = R2;
ffa097dc:	82 c6 08 84 	R2 = R0 << 0x1;
ffa097e0:	88 59       	R6 = R0 ^ R1;
ffa097e2:	82 c6 0e 8b 	R5 = R6 >> 0x1f;
ffa097e6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa097e8:	aa 56       	R2 = R2 | R5;
ffa097ea:	88 59       	R6 = R0 ^ R1;
ffa097ec:	a2 e0 12 10 	LSETUP(0xffa097f0 <___divsi3+0x8c>, 0xffa09810 <___divsi3+0xac>) LC0 = P1;
ffa097f0:	82 c6 0a 8f 	R7 = R2 >> 0x1f;
ffa097f4:	82 c6 0a 84 	R2 = R2 << 0x1;
ffa097f8:	82 ce 08 80 	R0 = R0 << 0x1 || R5 = [SP] || NOP;
ffa097fc:	35 91 00 00 
ffa09800:	38 56       	R0 = R0 | R7;
ffa09802:	86 0c       	CC = R6 < 0x0;
ffa09804:	29 07       	IF CC R5 = R1;
ffa09806:	28 50       	R0 = R0 + R5;
ffa09808:	88 59       	R6 = R0 ^ R1;
ffa0980a:	82 c6 0e 8b 	R5 = R6 >> 0x1f;
ffa0980e:	05 4b       	BITTGL (R5, 0x0);		/* bit  0 */
ffa09810:	aa 50       	R2 = R2 + R5;
ffa09812:	82 c6 0b 83 	R1 = R3 >> 0x1f;
ffa09816:	8a 50       	R2 = R2 + R1;
ffa09818:	f3 49       	CC = BITTST (R3, 0x1e);		/* bit 30 */
ffa0981a:	90 43       	R0 = -R2;
ffa0981c:	02 06       	IF !CC R0 = R2;
ffa0981e:	26 6c       	SP += 0x4;		/* (  4) */
ffa09820:	28 05       	(R7:5) = [SP++];
ffa09822:	10 00       	RTS;
ffa09824:	01 0c       	CC = R1 == 0x0;
ffa09826:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa09828:	0a 4e       	R2 >>= 0x1;
ffa0982a:	06 18       	IF CC JUMP 0xffa09836 <___divsi3+0xd2>;
ffa0982c:	08 08       	CC = R0 == R1;
ffa0982e:	82 e1 01 00 	R2 = 0x1 (Z);		/*		R2=0x1(  1) */
ffa09832:	02 18       	IF CC JUMP 0xffa09836 <___divsi3+0xd2>;
ffa09834:	10 30       	R2 = R0;
ffa09836:	02 30       	R0 = R2;
ffa09838:	92 43       	R2 = -R2;
ffa0983a:	f3 49       	CC = BITTST (R3, 0x1e);		/* bit 30 */
ffa0983c:	02 07       	IF CC R0 = R2;
ffa0983e:	10 00       	RTS;
ffa09840:	82 c6 08 85 	R2 = R0 >> 0x1f;
ffa09844:	81 0c       	CC = R1 < 0x0;
ffa09846:	f8 1b       	IF CC JUMP 0xffa09836 <___divsi3+0xd2>;
ffa09848:	05 c6 01 02 	R1.L = SIGNBITS R1;
ffa0984c:	c9 42       	R1 = R1.L (Z);
ffa0984e:	11 67       	R1 += -0x1e;		/* (-30) */
ffa09850:	02 c6 08 80 	R0 = SHIFT R0 BY R1.L;
ffa09854:	82 c6 0b 83 	R1 = R3 >> 0x1f;
ffa09858:	08 50       	R0 = R0 + R1;
ffa0985a:	82 43       	R2 = -R0;
ffa0985c:	f3 49       	CC = BITTST (R3, 0x1e);		/* bit 30 */
ffa0985e:	02 07       	IF CC R0 = R2;
ffa09860:	10 00       	RTS;
ffa09862:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09864:	10 00       	RTS;
	...

ffa09868 <_exception_report>:
ffa09868:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0986c:	b8 b0       	[FP + 0x8] = R0;
ffa0986e:	f9 b0       	[FP + 0xc] = R1;
ffa09870:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc07000(-4165632) */
ffa09874:	0a e1 00 07 	P2.L = 0x700;		/* (1792)	P2=0xffc00700(-4192512) */
ffa09878:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0987a:	10 97       	W[P2] = R0;
ffa0987c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00700(-4192512) */
ffa09880:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa09884:	20 e1 00 01 	R0 = 0x100 (X);		/*		R0=0x100(256) */
ffa09888:	10 97       	W[P2] = R0;
ffa0988a:	24 00       	SSYNC;
ffa0988c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa09890:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa09894:	20 e1 00 01 	R0 = 0x100 (X);		/*		R0=0x100(256) */
ffa09898:	10 97       	W[P2] = R0;
ffa0989a:	24 00       	SSYNC;
ffa0989c:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa0989e:	d0 bb       	[FP -0xc] = R0;
ffa098a0:	b8 a0       	R0 = [FP + 0x8];
ffa098a2:	e0 bb       	[FP -0x8] = R0;
ffa098a4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa098a6:	f0 bb       	[FP -0x4] = R0;
ffa098a8:	27 20       	JUMP.S 0xffa098f6 <_exception_report+0x8e>;
ffa098aa:	d0 b9       	R0 = [FP -0xc];
ffa098ac:	e1 b9       	R1 = [FP -0x8];
ffa098ae:	08 54       	R0 = R0 & R1;
ffa098b0:	00 0c       	CC = R0 == 0x0;
ffa098b2:	08 18       	IF CC JUMP 0xffa098c2 <_exception_report+0x5a>;
ffa098b4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa098b8:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa098bc:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa098be:	10 97       	W[P2] = R0;
ffa098c0:	07 20       	JUMP.S 0xffa098ce <_exception_report+0x66>;
ffa098c2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa098c6:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa098ca:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa098cc:	10 97       	W[P2] = R0;
ffa098ce:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa098d2:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa098d6:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa098d8:	10 97       	W[P2] = R0;
ffa098da:	24 00       	SSYNC;
ffa098dc:	d0 b9       	R0 = [FP -0xc];
ffa098de:	08 4e       	R0 >>= 0x1;
ffa098e0:	d0 bb       	[FP -0xc] = R0;
ffa098e2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa098e6:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa098ea:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa098ec:	10 97       	W[P2] = R0;
ffa098ee:	24 00       	SSYNC;
ffa098f0:	f0 b9       	R0 = [FP -0x4];
ffa098f2:	08 64       	R0 += 0x1;		/* (  1) */
ffa098f4:	f0 bb       	[FP -0x4] = R0;
ffa098f6:	f0 b9       	R0 = [FP -0x4];
ffa098f8:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa098fa:	08 09       	CC = R0 <= R1;
ffa098fc:	d7 1b       	IF CC JUMP 0xffa098aa <_exception_report+0x42>;
ffa098fe:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa09902:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa09906:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09908:	10 97       	W[P2] = R0;
ffa0990a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0990c:	f0 bb       	[FP -0x4] = R0;
ffa0990e:	06 20       	JUMP.S 0xffa0991a <_exception_report+0xb2>;
ffa09910:	00 00       	NOP;
ffa09912:	00 00       	NOP;
ffa09914:	f0 b9       	R0 = [FP -0x4];
ffa09916:	08 64       	R0 += 0x1;		/* (  1) */
ffa09918:	f0 bb       	[FP -0x4] = R0;
ffa0991a:	f0 b9       	R0 = [FP -0x4];
ffa0991c:	e9 60       	R1 = 0x1d (X);		/*		R1=0x1d( 29) */
ffa0991e:	08 09       	CC = R0 <= R1;
ffa09920:	f8 1b       	IF CC JUMP 0xffa09910 <_exception_report+0xa8>;
ffa09922:	80 e1 00 80 	R0 = 0x8000 (Z);		/*		R0=0x8000(32768) */
ffa09926:	d0 bb       	[FP -0xc] = R0;
ffa09928:	f8 a0       	R0 = [FP + 0xc];
ffa0992a:	e0 bb       	[FP -0x8] = R0;
ffa0992c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0992e:	f0 bb       	[FP -0x4] = R0;
ffa09930:	44 20       	JUMP.S 0xffa099b8 <_exception_report+0x150>;
ffa09932:	d0 b9       	R0 = [FP -0xc];
ffa09934:	e1 b9       	R1 = [FP -0x8];
ffa09936:	08 54       	R0 = R0 & R1;
ffa09938:	00 0c       	CC = R0 == 0x0;
ffa0993a:	08 18       	IF CC JUMP 0xffa0994a <_exception_report+0xe2>;
ffa0993c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa09940:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa09944:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09946:	10 97       	W[P2] = R0;
ffa09948:	07 20       	JUMP.S 0xffa09956 <_exception_report+0xee>;
ffa0994a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0994e:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa09952:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09954:	10 97       	W[P2] = R0;
ffa09956:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0995a:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa0995e:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09960:	10 97       	W[P2] = R0;
ffa09962:	24 00       	SSYNC;
ffa09964:	d0 b9       	R0 = [FP -0xc];
ffa09966:	08 4e       	R0 >>= 0x1;
ffa09968:	d0 bb       	[FP -0xc] = R0;
ffa0996a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa0996e:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa09972:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09974:	10 97       	W[P2] = R0;
ffa09976:	24 00       	SSYNC;
ffa09978:	f1 b9       	R1 = [FP -0x4];
ffa0997a:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0997c:	01 54       	R0 = R1 & R0;
ffa0997e:	18 0c       	CC = R0 == 0x3;
ffa09980:	19 10       	IF !CC JUMP 0xffa099b2 <_exception_report+0x14a>;
	...
ffa099b2:	f0 b9       	R0 = [FP -0x4];
ffa099b4:	08 64       	R0 += 0x1;		/* (  1) */
ffa099b6:	f0 bb       	[FP -0x4] = R0;
ffa099b8:	f0 b9       	R0 = [FP -0x4];
ffa099ba:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa099bc:	08 09       	CC = R0 <= R1;
ffa099be:	ba 1b       	IF CC JUMP 0xffa09932 <_exception_report+0xca>;
ffa099c0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa099c4:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa099c8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa099ca:	10 97       	W[P2] = R0;
ffa099cc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa099ce:	f0 bb       	[FP -0x4] = R0;
ffa099d0:	06 20       	JUMP.S 0xffa099dc <_exception_report+0x174>;
ffa099d2:	00 00       	NOP;
ffa099d4:	00 00       	NOP;
ffa099d6:	f0 b9       	R0 = [FP -0x4];
ffa099d8:	08 64       	R0 += 0x1;		/* (  1) */
ffa099da:	f0 bb       	[FP -0x4] = R0;
ffa099dc:	f0 b9       	R0 = [FP -0x4];
ffa099de:	21 e1 2b 01 	R1 = 0x12b (X);		/*		R1=0x12b(299) */
ffa099e2:	08 09       	CC = R0 <= R1;
ffa099e4:	f7 1b       	IF CC JUMP 0xffa099d2 <_exception_report+0x16a>;
ffa099e6:	4b 2f       	JUMP.S 0xffa0987c <_exception_report+0x14>;

ffa099e8 <_nmi_report>:
ffa099e8:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa099ec:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa099ee:	f0 bb       	[FP -0x4] = R0;
ffa099f0:	06 20       	JUMP.S 0xffa099fc <_nmi_report+0x14>;
ffa099f2:	00 00       	NOP;
ffa099f4:	00 00       	NOP;
ffa099f6:	f0 b9       	R0 = [FP -0x4];
ffa099f8:	08 64       	R0 += 0x1;		/* (  1) */
ffa099fa:	f0 bb       	[FP -0x4] = R0;
ffa099fc:	f0 b9       	R0 = [FP -0x4];
ffa099fe:	21 e1 2b 01 	R1 = 0x12b (X);		/*		R1=0x12b(299) */
ffa09a02:	08 09       	CC = R0 <= R1;
ffa09a04:	f7 1b       	IF CC JUMP 0xffa099f2 <_nmi_report+0xa>;
ffa09a06:	01 e8 00 00 	UNLINK;
ffa09a0a:	10 00       	RTS;

ffa09a0c <_main>:
ffa09a0c:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa09a10:	4a e1 e0 ff 	P2.H = 0xffe0;		/* (-32)	P2=0xffe00704(-2095356) */
ffa09a14:	0a e1 04 10 	P2.L = 0x1004;		/* (4100)	P2=0xffe01004(-2093052) */
ffa09a18:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09a1a:	10 93       	[P2] = R0;
ffa09a1c:	23 00       	CSYNC;
ffa09a1e:	4a e1 e0 ff 	P2.H = 0xffe0;		/* (-32)	P2=0xffe01004(-2093052) */
ffa09a22:	0a e1 04 00 	P2.L = 0x4;		/* (  4)	P2=0xffe00004(-2097148) */
ffa09a26:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09a28:	10 93       	[P2] = R0;
ffa09a2a:	23 00       	CSYNC;
ffa09a2c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00004(-4194300) */
ffa09a30:	0a e1 40 07 	P2.L = 0x740;		/* (1856)	P2=0xffc00740(-4192448) */
ffa09a34:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa09a36:	10 97       	W[P2] = R0;
ffa09a38:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc0001f(-4194273) */
ffa09a3c:	09 e1 30 07 	P1.L = 0x730;		/* (1840)	P1=0xffc00730(-4192464) */
ffa09a40:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00740(-4192448) */
ffa09a44:	0a e1 40 07 	P2.L = 0x740;		/* (1856)	P2=0xffc00740(-4192448) */
ffa09a48:	50 95       	R0 = W[P2] (X);
ffa09a4a:	c0 43       	R0 =~ R0;
ffa09a4c:	08 97       	W[P1] = R0;
ffa09a4e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00740(-4192448) */
ffa09a52:	0a e1 00 07 	P2.L = 0x700;		/* (1792)	P2=0xffc00700(-4192512) */
ffa09a56:	20 e1 87 01 	R0 = 0x187 (X);		/*		R0=0x187(391) */
ffa09a5a:	10 97       	W[P2] = R0;
ffa09a5c:	20 e1 7c 00 	R0 = 0x7c (X);		/*		R0=0x7c(124) */
ffa09a60:	00 e3 6a 06 	CALL 0xffa0a734 <_radio_init>;
ffa09a64:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00700(-4192512) */
ffa09a68:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa09a6c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09a6e:	10 97       	W[P2] = R0;
ffa09a70:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa09a74:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa09a78:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa09a7c:	10 97       	W[P2] = R0;
ffa09a7e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09a80:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa09a84:	0a 20       	JUMP.S 0xffa09a98 <_main+0x8c>;
	...
ffa09a8e:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa09a92:	08 64       	R0 += 0x1;		/* (  1) */
ffa09a94:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa09a98:	78 e4 fe ff 	R0 = W[FP + -0x4] (Z);
ffa09a9c:	21 e1 e7 03 	R1 = 0x3e7 (X);		/*		R1=0x3e7(999) */
ffa09aa0:	08 0a       	CC = R0 <= R1 (IU);
ffa09aa2:	f2 1b       	IF CC JUMP 0xffa09a86 <_main+0x7a>;
ffa09aa4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa09aa8:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa09aac:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa09ab0:	10 97       	W[P2] = R0;
ffa09ab2:	00 e3 f5 05 	CALL 0xffa0a69c <_radio_set_tx>;
ffa09ab6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa09aba:	0a e1 28 08 	P2.L = 0x828;		/* (2088)	P2=0xffc00828(-4192216) */
ffa09abe:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09ac0:	10 97       	W[P2] = R0;
ffa09ac2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00828(-4192216) */
ffa09ac6:	0a e1 2c 08 	P2.L = 0x82c;		/* (2092)	P2=0xffc0082c(-4192212) */
ffa09aca:	98 60       	R0 = 0x13 (X);		/*		R0=0x13( 19) */
ffa09acc:	10 97       	W[P2] = R0;
ffa09ace:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0082c(-4192212) */
ffa09ad2:	0a e1 24 08 	P2.L = 0x824;		/* (2084)	P2=0xffc00824(-4192220) */
ffa09ad6:	20 e1 0f 01 	R0 = 0x10f (X);		/*		R0=0x10f(271) */
ffa09ada:	10 97       	W[P2] = R0;
ffa09adc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00824(-4192220) */
ffa09ae0:	0a e1 28 09 	P2.L = 0x928;		/* (2344)	P2=0xffc00928(-4191960) */
ffa09ae4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09ae6:	10 97       	W[P2] = R0;
ffa09ae8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00928(-4191960) */
ffa09aec:	0a e1 2c 09 	P2.L = 0x92c;		/* (2348)	P2=0xffc0092c(-4191956) */
ffa09af0:	98 60       	R0 = 0x13 (X);		/*		R0=0x13( 19) */
ffa09af2:	10 97       	W[P2] = R0;
ffa09af4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0092c(-4191956) */
ffa09af8:	0a e1 24 09 	P2.L = 0x924;		/* (2340)	P2=0xffc00924(-4191964) */
ffa09afc:	20 e1 0f 01 	R0 = 0x10f (X);		/*		R0=0x10f(271) */
ffa09b00:	10 97       	W[P2] = R0;
ffa09b02:	ff e3 ef f3 	CALL 0xffa082e0 <_radio_bidi_asm>;
ffa09b06:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09b08:	01 e8 00 00 	UNLINK;
ffa09b0c:	10 00       	RTS;
	...

ffa09b10 <_div>:
ffa09b10:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa09b14:	b8 b0       	[FP + 0x8] = R0;
ffa09b16:	f9 b0       	[FP + 0xc] = R1;
ffa09b18:	b8 a0       	R0 = [FP + 0x8];
ffa09b1a:	08 4f       	R0 <<= 0x1;
ffa09b1c:	b8 b0       	[FP + 0x8] = R0;
ffa09b1e:	b9 a0       	R1 = [FP + 0x8];
ffa09b20:	f8 a0       	R0 = [FP + 0xc];
ffa09b22:	11 30       	R2 = R1;
ffa09b24:	18 30       	R3 = R0;
ffa09b26:	5a 42       	DIVS (R2, R3);
ffa09b28:	0b 30       	R1 = R3;
ffa09b2a:	02 30       	R0 = R2;
ffa09b2c:	b8 b0       	[FP + 0x8] = R0;
ffa09b2e:	f9 b0       	[FP + 0xc] = R1;
ffa09b30:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09b32:	f0 bb       	[FP -0x4] = R0;
ffa09b34:	0d 20       	JUMP.S 0xffa09b4e <_div+0x3e>;
ffa09b36:	b9 a0       	R1 = [FP + 0x8];
ffa09b38:	f8 a0       	R0 = [FP + 0xc];
ffa09b3a:	11 30       	R2 = R1;
ffa09b3c:	18 30       	R3 = R0;
ffa09b3e:	1a 42       	DIVQ (R2, R3);
ffa09b40:	0b 30       	R1 = R3;
ffa09b42:	02 30       	R0 = R2;
ffa09b44:	b8 b0       	[FP + 0x8] = R0;
ffa09b46:	f9 b0       	[FP + 0xc] = R1;
ffa09b48:	f0 b9       	R0 = [FP -0x4];
ffa09b4a:	08 64       	R0 += 0x1;		/* (  1) */
ffa09b4c:	f0 bb       	[FP -0x4] = R0;
ffa09b4e:	f0 b9       	R0 = [FP -0x4];
ffa09b50:	71 60       	R1 = 0xe (X);		/*		R1=0xe( 14) */
ffa09b52:	08 09       	CC = R0 <= R1;
ffa09b54:	f1 1b       	IF CC JUMP 0xffa09b36 <_div+0x26>;
ffa09b56:	b8 a0       	R0 = [FP + 0x8];
ffa09b58:	80 42       	R0 = R0.L (X);
ffa09b5a:	b8 b0       	[FP + 0x8] = R0;
ffa09b5c:	b8 a0       	R0 = [FP + 0x8];
ffa09b5e:	01 e8 00 00 	UNLINK;
ffa09b62:	10 00       	RTS;

ffa09b64 <_mod>:
ffa09b64:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa09b68:	b8 b0       	[FP + 0x8] = R0;
ffa09b6a:	f9 b0       	[FP + 0xc] = R1;
ffa09b6c:	f9 a0       	R1 = [FP + 0xc];
ffa09b6e:	b8 a0       	R0 = [FP + 0x8];
ffa09b70:	ff e3 d0 ff 	CALL 0xffa09b10 <_div>;
ffa09b74:	f0 bb       	[FP -0x4] = R0;
ffa09b76:	f1 b9       	R1 = [FP -0x4];
ffa09b78:	f8 a0       	R0 = [FP + 0xc];
ffa09b7a:	c1 40       	R1 *= R0;
ffa09b7c:	b8 a0       	R0 = [FP + 0x8];
ffa09b7e:	08 52       	R0 = R0 - R1;
ffa09b80:	01 e8 00 00 	UNLINK;
ffa09b84:	10 00       	RTS;
	...

ffa09b88 <_memcpy_>:
ffa09b88:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa09b8c:	b8 b0       	[FP + 0x8] = R0;
ffa09b8e:	f9 b0       	[FP + 0xc] = R1;
ffa09b90:	3a b1       	[FP + 0x10] = R2;
ffa09b92:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09b94:	f0 bb       	[FP -0x4] = R0;
ffa09b96:	0e 20       	JUMP.S 0xffa09bb2 <_memcpy_+0x2a>;
ffa09b98:	ba ac       	P2 = [FP + 0x8];
ffa09b9a:	50 99       	R0 = B[P2] (X);
ffa09b9c:	fa ac       	P2 = [FP + 0xc];
ffa09b9e:	10 9b       	B[P2] = R0;
ffa09ba0:	f8 a0       	R0 = [FP + 0xc];
ffa09ba2:	08 64       	R0 += 0x1;		/* (  1) */
ffa09ba4:	f8 b0       	[FP + 0xc] = R0;
ffa09ba6:	b8 a0       	R0 = [FP + 0x8];
ffa09ba8:	08 64       	R0 += 0x1;		/* (  1) */
ffa09baa:	b8 b0       	[FP + 0x8] = R0;
ffa09bac:	f0 b9       	R0 = [FP -0x4];
ffa09bae:	08 64       	R0 += 0x1;		/* (  1) */
ffa09bb0:	f0 bb       	[FP -0x4] = R0;
ffa09bb2:	f1 b9       	R1 = [FP -0x4];
ffa09bb4:	38 a1       	R0 = [FP + 0x10];
ffa09bb6:	81 08       	CC = R1 < R0;
ffa09bb8:	f0 1b       	IF CC JUMP 0xffa09b98 <_memcpy_+0x10>;
ffa09bba:	01 e8 00 00 	UNLINK;
ffa09bbe:	10 00       	RTS;

ffa09bc0 <_memset_>:
ffa09bc0:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa09bc4:	b8 b0       	[FP + 0x8] = R0;
ffa09bc6:	3a b1       	[FP + 0x10] = R2;
ffa09bc8:	01 30       	R0 = R1;
ffa09bca:	b8 e6 0c 00 	B[FP + 0xc] = R0;
ffa09bce:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09bd0:	f0 bb       	[FP -0x4] = R0;
ffa09bd2:	0b 20       	JUMP.S 0xffa09be8 <_memset_+0x28>;
ffa09bd4:	ba ac       	P2 = [FP + 0x8];
ffa09bd6:	b8 e5 0c 00 	R0 = B[FP + 0xc] (X);
ffa09bda:	10 9b       	B[P2] = R0;
ffa09bdc:	b8 a0       	R0 = [FP + 0x8];
ffa09bde:	08 64       	R0 += 0x1;		/* (  1) */
ffa09be0:	b8 b0       	[FP + 0x8] = R0;
ffa09be2:	f0 b9       	R0 = [FP -0x4];
ffa09be4:	08 64       	R0 += 0x1;		/* (  1) */
ffa09be6:	f0 bb       	[FP -0x4] = R0;
ffa09be8:	f1 b9       	R1 = [FP -0x4];
ffa09bea:	38 a1       	R0 = [FP + 0x10];
ffa09bec:	81 08       	CC = R1 < R0;
ffa09bee:	f3 1b       	IF CC JUMP 0xffa09bd4 <_memset_+0x14>;
ffa09bf0:	01 e8 00 00 	UNLINK;
ffa09bf4:	10 00       	RTS;
	...

ffa09bf8 <_strlen_>:
ffa09bf8:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa09bfc:	b8 b0       	[FP + 0x8] = R0;
ffa09bfe:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09c00:	f0 bb       	[FP -0x4] = R0;
ffa09c02:	10 20       	JUMP.S 0xffa09c22 <_strlen_+0x2a>;
ffa09c04:	f0 b9       	R0 = [FP -0x4];
ffa09c06:	08 30       	R1 = R0;
ffa09c08:	b8 a0       	R0 = [FP + 0x8];
ffa09c0a:	41 50       	R1 = R1 + R0;
ffa09c0c:	11 32       	P2 = R1;
ffa09c0e:	50 99       	R0 = B[P2] (X);
ffa09c10:	00 43       	R0 = R0.B (X);
ffa09c12:	00 0c       	CC = R0 == 0x0;
ffa09c14:	04 10       	IF !CC JUMP 0xffa09c1c <_strlen_+0x24>;
ffa09c16:	f0 b9       	R0 = [FP -0x4];
ffa09c18:	e0 bb       	[FP -0x8] = R0;
ffa09c1a:	0b 20       	JUMP.S 0xffa09c30 <_strlen_+0x38>;
ffa09c1c:	f0 b9       	R0 = [FP -0x4];
ffa09c1e:	08 64       	R0 += 0x1;		/* (  1) */
ffa09c20:	f0 bb       	[FP -0x4] = R0;
ffa09c22:	f0 b9       	R0 = [FP -0x4];
ffa09c24:	21 e1 ff 04 	R1 = 0x4ff (X);		/*		R1=0x4ff(1279) */
ffa09c28:	08 09       	CC = R0 <= R1;
ffa09c2a:	ed 1b       	IF CC JUMP 0xffa09c04 <_strlen_+0xc>;
ffa09c2c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09c2e:	e0 bb       	[FP -0x8] = R0;
ffa09c30:	e0 b9       	R0 = [FP -0x8];
ffa09c32:	01 e8 00 00 	UNLINK;
ffa09c36:	10 00       	RTS;

ffa09c38 <_strcpy_>:
ffa09c38:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa09c3c:	b8 b0       	[FP + 0x8] = R0;
ffa09c3e:	f9 b0       	[FP + 0xc] = R1;
ffa09c40:	3a b1       	[FP + 0x10] = R2;
ffa09c42:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09c44:	f0 bb       	[FP -0x4] = R0;
ffa09c46:	0e 20       	JUMP.S 0xffa09c62 <_strcpy_+0x2a>;
ffa09c48:	3a ad       	P2 = [FP + 0x10];
ffa09c4a:	50 99       	R0 = B[P2] (X);
ffa09c4c:	ba ac       	P2 = [FP + 0x8];
ffa09c4e:	10 9b       	B[P2] = R0;
ffa09c50:	b8 a0       	R0 = [FP + 0x8];
ffa09c52:	08 64       	R0 += 0x1;		/* (  1) */
ffa09c54:	b8 b0       	[FP + 0x8] = R0;
ffa09c56:	38 a1       	R0 = [FP + 0x10];
ffa09c58:	08 64       	R0 += 0x1;		/* (  1) */
ffa09c5a:	38 b1       	[FP + 0x10] = R0;
ffa09c5c:	f0 b9       	R0 = [FP -0x4];
ffa09c5e:	08 64       	R0 += 0x1;		/* (  1) */
ffa09c60:	f0 bb       	[FP -0x4] = R0;
ffa09c62:	3a ad       	P2 = [FP + 0x10];
ffa09c64:	50 99       	R0 = B[P2] (X);
ffa09c66:	00 43       	R0 = R0.B (X);
ffa09c68:	00 0c       	CC = R0 == 0x0;
ffa09c6a:	08 18       	IF CC JUMP 0xffa09c7a <_strcpy_+0x42>;
ffa09c6c:	f0 b9       	R0 = [FP -0x4];
ffa09c6e:	21 e1 ff 04 	R1 = 0x4ff (X);		/*		R1=0x4ff(1279) */
ffa09c72:	08 09       	CC = R0 <= R1;
ffa09c74:	ea 1b       	IF CC JUMP 0xffa09c48 <_strcpy_+0x10>;
ffa09c76:	00 00       	NOP;
ffa09c78:	00 00       	NOP;
ffa09c7a:	fa ac       	P2 = [FP + 0xc];
ffa09c7c:	11 91       	R1 = [P2];
ffa09c7e:	f0 b9       	R0 = [FP -0x4];
ffa09c80:	01 50       	R0 = R1 + R0;
ffa09c82:	fa ac       	P2 = [FP + 0xc];
ffa09c84:	10 93       	[P2] = R0;
ffa09c86:	b8 a0       	R0 = [FP + 0x8];
ffa09c88:	01 e8 00 00 	UNLINK;
ffa09c8c:	10 00       	RTS;
	...

ffa09c90 <_strprepend>:
ffa09c90:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa09c94:	b8 b0       	[FP + 0x8] = R0;
ffa09c96:	f9 b0       	[FP + 0xc] = R1;
ffa09c98:	3a b1       	[FP + 0x10] = R2;
ffa09c9a:	38 a1       	R0 = [FP + 0x10];
ffa09c9c:	ff e3 ae ff 	CALL 0xffa09bf8 <_strlen_>;
ffa09ca0:	d0 bb       	[FP -0xc] = R0;
ffa09ca2:	fa ac       	P2 = [FP + 0xc];
ffa09ca4:	10 91       	R0 = [P2];
ffa09ca6:	08 30       	R1 = R0;
ffa09ca8:	b8 a0       	R0 = [FP + 0x8];
ffa09caa:	08 52       	R0 = R0 - R1;
ffa09cac:	e0 bb       	[FP -0x8] = R0;
ffa09cae:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09cb0:	f0 bb       	[FP -0x4] = R0;
ffa09cb2:	0e 20       	JUMP.S 0xffa09cce <_strprepend+0x3e>;
ffa09cb4:	3a ad       	P2 = [FP + 0x10];
ffa09cb6:	50 99       	R0 = B[P2] (X);
ffa09cb8:	ea b9       	P2 = [FP -0x8];
ffa09cba:	10 9b       	B[P2] = R0;
ffa09cbc:	e0 b9       	R0 = [FP -0x8];
ffa09cbe:	08 64       	R0 += 0x1;		/* (  1) */
ffa09cc0:	e0 bb       	[FP -0x8] = R0;
ffa09cc2:	38 a1       	R0 = [FP + 0x10];
ffa09cc4:	08 64       	R0 += 0x1;		/* (  1) */
ffa09cc6:	38 b1       	[FP + 0x10] = R0;
ffa09cc8:	f0 b9       	R0 = [FP -0x4];
ffa09cca:	08 64       	R0 += 0x1;		/* (  1) */
ffa09ccc:	f0 bb       	[FP -0x4] = R0;
ffa09cce:	f1 b9       	R1 = [FP -0x4];
ffa09cd0:	d0 b9       	R0 = [FP -0xc];
ffa09cd2:	81 08       	CC = R1 < R0;
ffa09cd4:	f0 1b       	IF CC JUMP 0xffa09cb4 <_strprepend+0x24>;
ffa09cd6:	00 00       	NOP;
ffa09cd8:	00 00       	NOP;
ffa09cda:	fa ac       	P2 = [FP + 0xc];
ffa09cdc:	10 91       	R0 = [P2];
ffa09cde:	08 30       	R1 = R0;
ffa09ce0:	b8 a0       	R0 = [FP + 0x8];
ffa09ce2:	08 52       	R0 = R0 - R1;
ffa09ce4:	01 e8 00 00 	UNLINK;
ffa09ce8:	10 00       	RTS;
	...

ffa09cec <_strcmp>:
ffa09cec:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa09cf0:	b8 b0       	[FP + 0x8] = R0;
ffa09cf2:	f9 b0       	[FP + 0xc] = R1;
ffa09cf4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09cf6:	f0 bb       	[FP -0x4] = R0;
ffa09cf8:	1a 20       	JUMP.S 0xffa09d2c <_strcmp+0x40>;
ffa09cfa:	ba ac       	P2 = [FP + 0x8];
ffa09cfc:	51 99       	R1 = B[P2] (X);
ffa09cfe:	fa ac       	P2 = [FP + 0xc];
ffa09d00:	50 99       	R0 = B[P2] (X);
ffa09d02:	09 43       	R1 = R1.B (X);
ffa09d04:	00 43       	R0 = R0.B (X);
ffa09d06:	01 08       	CC = R1 == R0;
ffa09d08:	18 02       	CC = !CC;
ffa09d0a:	00 02       	R0 = CC;
ffa09d0c:	08 30       	R1 = R0;
ffa09d0e:	b8 a0       	R0 = [FP + 0x8];
ffa09d10:	08 64       	R0 += 0x1;		/* (  1) */
ffa09d12:	b8 b0       	[FP + 0x8] = R0;
ffa09d14:	f8 a0       	R0 = [FP + 0xc];
ffa09d16:	08 64       	R0 += 0x1;		/* (  1) */
ffa09d18:	f8 b0       	[FP + 0xc] = R0;
ffa09d1a:	48 43       	R0 = R1.B (Z);
ffa09d1c:	00 0c       	CC = R0 == 0x0;
ffa09d1e:	04 18       	IF CC JUMP 0xffa09d26 <_strcmp+0x3a>;
ffa09d20:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09d22:	e0 bb       	[FP -0x8] = R0;
ffa09d24:	17 20       	JUMP.S 0xffa09d52 <_strcmp+0x66>;
ffa09d26:	f0 b9       	R0 = [FP -0x4];
ffa09d28:	08 64       	R0 += 0x1;		/* (  1) */
ffa09d2a:	f0 bb       	[FP -0x4] = R0;
ffa09d2c:	ba ac       	P2 = [FP + 0x8];
ffa09d2e:	50 99       	R0 = B[P2] (X);
ffa09d30:	00 43       	R0 = R0.B (X);
ffa09d32:	00 0c       	CC = R0 == 0x0;
ffa09d34:	0d 18       	IF CC JUMP 0xffa09d4e <_strcmp+0x62>;
ffa09d36:	00 00       	NOP;
ffa09d38:	00 00       	NOP;
ffa09d3a:	fa ac       	P2 = [FP + 0xc];
ffa09d3c:	50 99       	R0 = B[P2] (X);
ffa09d3e:	00 43       	R0 = R0.B (X);
ffa09d40:	00 0c       	CC = R0 == 0x0;
ffa09d42:	06 18       	IF CC JUMP 0xffa09d4e <_strcmp+0x62>;
ffa09d44:	f0 b9       	R0 = [FP -0x4];
ffa09d46:	21 e1 ff 04 	R1 = 0x4ff (X);		/*		R1=0x4ff(1279) */
ffa09d4a:	08 09       	CC = R0 <= R1;
ffa09d4c:	d7 1b       	IF CC JUMP 0xffa09cfa <_strcmp+0xe>;
ffa09d4e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09d50:	e0 bb       	[FP -0x8] = R0;
ffa09d52:	e0 b9       	R0 = [FP -0x8];
ffa09d54:	01 e8 00 00 	UNLINK;
ffa09d58:	10 00       	RTS;
	...

ffa09d5c <_substr>:
ffa09d5c:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa09d60:	b8 b0       	[FP + 0x8] = R0;
ffa09d62:	f9 b0       	[FP + 0xc] = R1;
ffa09d64:	3a b1       	[FP + 0x10] = R2;
ffa09d66:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09d68:	e0 bb       	[FP -0x8] = R0;
ffa09d6a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09d6c:	f0 bb       	[FP -0x4] = R0;
ffa09d6e:	39 20       	JUMP.S 0xffa09de0 <_substr+0x84>;
ffa09d70:	ba ac       	P2 = [FP + 0x8];
ffa09d72:	51 99       	R1 = B[P2] (X);
ffa09d74:	fa ac       	P2 = [FP + 0xc];
ffa09d76:	50 99       	R0 = B[P2] (X);
ffa09d78:	09 43       	R1 = R1.B (X);
ffa09d7a:	00 43       	R0 = R0.B (X);
ffa09d7c:	01 08       	CC = R1 == R0;
ffa09d7e:	2b 10       	IF !CC JUMP 0xffa09dd4 <_substr+0x78>;
ffa09d80:	b8 a0       	R0 = [FP + 0x8];
ffa09d82:	08 64       	R0 += 0x1;		/* (  1) */
ffa09d84:	c0 bb       	[FP -0x10] = R0;
ffa09d86:	f8 a0       	R0 = [FP + 0xc];
ffa09d88:	08 64       	R0 += 0x1;		/* (  1) */
ffa09d8a:	d0 bb       	[FP -0xc] = R0;
ffa09d8c:	e0 b9       	R0 = [FP -0x8];
ffa09d8e:	08 64       	R0 += 0x1;		/* (  1) */
ffa09d90:	f0 bb       	[FP -0x4] = R0;
ffa09d92:	12 20       	JUMP.S 0xffa09db6 <_substr+0x5a>;
ffa09d94:	c0 b9       	R0 = [FP -0x10];
ffa09d96:	08 64       	R0 += 0x1;		/* (  1) */
ffa09d98:	c0 bb       	[FP -0x10] = R0;
ffa09d9a:	d0 b9       	R0 = [FP -0xc];
ffa09d9c:	08 64       	R0 += 0x1;		/* (  1) */
ffa09d9e:	d0 bb       	[FP -0xc] = R0;
ffa09da0:	f0 b9       	R0 = [FP -0x4];
ffa09da2:	08 64       	R0 += 0x1;		/* (  1) */
ffa09da4:	f0 bb       	[FP -0x4] = R0;
ffa09da6:	ca b9       	P2 = [FP -0x10];
ffa09da8:	50 99       	R0 = B[P2] (X);
ffa09daa:	00 43       	R0 = R0.B (X);
ffa09dac:	00 0c       	CC = R0 == 0x0;
ffa09dae:	04 10       	IF !CC JUMP 0xffa09db6 <_substr+0x5a>;
ffa09db0:	f0 b9       	R0 = [FP -0x4];
ffa09db2:	b0 bb       	[FP -0x14] = R0;
ffa09db4:	28 20       	JUMP.S 0xffa09e04 <_substr+0xa8>;
ffa09db6:	ca b9       	P2 = [FP -0x10];
ffa09db8:	51 99       	R1 = B[P2] (X);
ffa09dba:	da b9       	P2 = [FP -0xc];
ffa09dbc:	50 99       	R0 = B[P2] (X);
ffa09dbe:	09 43       	R1 = R1.B (X);
ffa09dc0:	00 43       	R0 = R0.B (X);
ffa09dc2:	01 08       	CC = R1 == R0;
ffa09dc4:	08 10       	IF !CC JUMP 0xffa09dd4 <_substr+0x78>;
ffa09dc6:	00 00       	NOP;
ffa09dc8:	00 00       	NOP;
ffa09dca:	da b9       	P2 = [FP -0xc];
ffa09dcc:	50 99       	R0 = B[P2] (X);
ffa09dce:	00 43       	R0 = R0.B (X);
ffa09dd0:	00 0c       	CC = R0 == 0x0;
ffa09dd2:	e1 13       	IF !CC JUMP 0xffa09d94 <_substr+0x38>;
ffa09dd4:	f8 a0       	R0 = [FP + 0xc];
ffa09dd6:	08 64       	R0 += 0x1;		/* (  1) */
ffa09dd8:	f8 b0       	[FP + 0xc] = R0;
ffa09dda:	e0 b9       	R0 = [FP -0x8];
ffa09ddc:	08 64       	R0 += 0x1;		/* (  1) */
ffa09dde:	e0 bb       	[FP -0x8] = R0;
ffa09de0:	ba ac       	P2 = [FP + 0x8];
ffa09de2:	50 99       	R0 = B[P2] (X);
ffa09de4:	00 43       	R0 = R0.B (X);
ffa09de6:	00 0c       	CC = R0 == 0x0;
ffa09de8:	0c 18       	IF CC JUMP 0xffa09e00 <_substr+0xa4>;
ffa09dea:	00 00       	NOP;
ffa09dec:	00 00       	NOP;
ffa09dee:	fa ac       	P2 = [FP + 0xc];
ffa09df0:	50 99       	R0 = B[P2] (X);
ffa09df2:	00 43       	R0 = R0.B (X);
ffa09df4:	00 0c       	CC = R0 == 0x0;
ffa09df6:	05 18       	IF CC JUMP 0xffa09e00 <_substr+0xa4>;
ffa09df8:	e1 b9       	R1 = [FP -0x8];
ffa09dfa:	38 a1       	R0 = [FP + 0x10];
ffa09dfc:	81 08       	CC = R1 < R0;
ffa09dfe:	b9 1b       	IF CC JUMP 0xffa09d70 <_substr+0x14>;
ffa09e00:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09e02:	b0 bb       	[FP -0x14] = R0;
ffa09e04:	b0 b9       	R0 = [FP -0x14];
ffa09e06:	01 e8 00 00 	UNLINK;
ffa09e0a:	10 00       	RTS;

ffa09e0c <_sprintf_int>:
ffa09e0c:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa09e10:	b8 b0       	[FP + 0x8] = R0;
ffa09e12:	f9 b0       	[FP + 0xc] = R1;
ffa09e14:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09e16:	c0 bb       	[FP -0x10] = R0;
ffa09e18:	f8 a0       	R0 = [FP + 0xc];
ffa09e1a:	00 0c       	CC = R0 == 0x0;
ffa09e1c:	0b 10       	IF !CC JUMP 0xffa09e32 <_sprintf_int+0x26>;
ffa09e1e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900924 */
ffa09e22:	0a e1 80 70 	P2.L = 0x7080;		/* (28800)	P2=0xff907080 <_printf_temp> */
ffa09e26:	52 91       	P2 = [P2];
ffa09e28:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa09e2a:	10 9b       	B[P2] = R0;
ffa09e2c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09e2e:	c0 bb       	[FP -0x10] = R0;
ffa09e30:	90 20       	JUMP.S 0xffa09f50 <_sprintf_int+0x144>;
ffa09e32:	f8 a0       	R0 = [FP + 0xc];
ffa09e34:	00 0d       	CC = R0 <= 0x0;
ffa09e36:	3c 18       	IF CC JUMP 0xffa09eae <_sprintf_int+0xa2>;
ffa09e38:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09e3a:	c0 bb       	[FP -0x10] = R0;
ffa09e3c:	31 20       	JUMP.S 0xffa09e9e <_sprintf_int+0x92>;
ffa09e3e:	f9 a0       	R1 = [FP + 0xc];
ffa09e40:	40 e1 66 66 	R0.H = 0x6666;		/* (26214)	R0=0x66660000(1717960704) */
ffa09e44:	00 e1 67 66 	R0.L = 0x6667;		/* (26215)	R0=0x66666667(1717986919) */
ffa09e48:	80 c0 08 18 	A1 = R1.L * R0.L (FU);
ffa09e4c:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa09e50:	11 c1 08 86 	A1 += R1.H * R0.L (M), A0 = R1.H * R0.H (IS);
ffa09e54:	11 c1 01 98 	A1 += R0.H * R1.L (M, IS);
ffa09e58:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa09e5c:	0b c4 00 00 	R0 = (A0 += A1);
ffa09e60:	82 c6 f0 05 	R2 = R0 >>> 0x2;
ffa09e64:	82 c6 09 01 	R0 = R1 >>> 0x1f;
ffa09e68:	02 52       	R0 = R2 - R0;
ffa09e6a:	f0 bb       	[FP -0x4] = R0;
ffa09e6c:	f1 b9       	R1 = [FP -0x4];
ffa09e6e:	01 30       	R0 = R1;
ffa09e70:	10 4f       	R0 <<= 0x2;
ffa09e72:	08 50       	R0 = R0 + R1;
ffa09e74:	08 4f       	R0 <<= 0x1;
ffa09e76:	08 30       	R1 = R0;
ffa09e78:	f8 a0       	R0 = [FP + 0xc];
ffa09e7a:	08 52       	R0 = R0 - R1;
ffa09e7c:	d0 bb       	[FP -0xc] = R0;
ffa09e7e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff907080 <_printf_temp> */
ffa09e82:	0a e1 80 70 	P2.L = 0x7080;		/* (28800)	P2=0xff907080 <_printf_temp> */
ffa09e86:	11 91       	R1 = [P2];
ffa09e88:	c0 b9       	R0 = [FP -0x10];
ffa09e8a:	41 50       	R1 = R1 + R0;
ffa09e8c:	11 32       	P2 = R1;
ffa09e8e:	d0 b9       	R0 = [FP -0xc];
ffa09e90:	80 65       	R0 += 0x30;		/* ( 48) */
ffa09e92:	10 9b       	B[P2] = R0;
ffa09e94:	c0 b9       	R0 = [FP -0x10];
ffa09e96:	08 64       	R0 += 0x1;		/* (  1) */
ffa09e98:	c0 bb       	[FP -0x10] = R0;
ffa09e9a:	f0 b9       	R0 = [FP -0x4];
ffa09e9c:	f8 b0       	[FP + 0xc] = R0;
ffa09e9e:	f8 a0       	R0 = [FP + 0xc];
ffa09ea0:	00 0d       	CC = R0 <= 0x0;
ffa09ea2:	57 18       	IF CC JUMP 0xffa09f50 <_sprintf_int+0x144>;
ffa09ea4:	c0 b9       	R0 = [FP -0x10];
ffa09ea6:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa09ea8:	08 09       	CC = R0 <= R1;
ffa09eaa:	ca 1b       	IF CC JUMP 0xffa09e3e <_sprintf_int+0x32>;
ffa09eac:	52 20       	JUMP.S 0xffa09f50 <_sprintf_int+0x144>;
ffa09eae:	f8 a0       	R0 = [FP + 0xc];
ffa09eb0:	80 0c       	CC = R0 < 0x0;
ffa09eb2:	4f 10       	IF !CC JUMP 0xffa09f50 <_sprintf_int+0x144>;
ffa09eb4:	f8 a0       	R0 = [FP + 0xc];
ffa09eb6:	08 30       	R1 = R0;
ffa09eb8:	f9 4c       	BITCLR (R1, 0x1f);		/* bit 31 */
ffa09eba:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa09ebc:	f8 4f       	R0 <<= 0x1f;
ffa09ebe:	08 52       	R0 = R0 - R1;
ffa09ec0:	f8 b0       	[FP + 0xc] = R0;
ffa09ec2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09ec4:	c0 bb       	[FP -0x10] = R0;
ffa09ec6:	31 20       	JUMP.S 0xffa09f28 <_sprintf_int+0x11c>;
ffa09ec8:	f9 a0       	R1 = [FP + 0xc];
ffa09eca:	40 e1 66 66 	R0.H = 0x6666;		/* (26214)	R0=0x66660000(1717960704) */
ffa09ece:	00 e1 67 66 	R0.L = 0x6667;		/* (26215)	R0=0x66666667(1717986919) */
ffa09ed2:	80 c0 08 18 	A1 = R1.L * R0.L (FU);
ffa09ed6:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa09eda:	11 c1 08 86 	A1 += R1.H * R0.L (M), A0 = R1.H * R0.H (IS);
ffa09ede:	11 c1 01 98 	A1 += R0.H * R1.L (M, IS);
ffa09ee2:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa09ee6:	0b c4 00 00 	R0 = (A0 += A1);
ffa09eea:	82 c6 f0 05 	R2 = R0 >>> 0x2;
ffa09eee:	82 c6 09 01 	R0 = R1 >>> 0x1f;
ffa09ef2:	02 52       	R0 = R2 - R0;
ffa09ef4:	f0 bb       	[FP -0x4] = R0;
ffa09ef6:	f1 b9       	R1 = [FP -0x4];
ffa09ef8:	01 30       	R0 = R1;
ffa09efa:	10 4f       	R0 <<= 0x2;
ffa09efc:	08 50       	R0 = R0 + R1;
ffa09efe:	08 4f       	R0 <<= 0x1;
ffa09f00:	08 30       	R1 = R0;
ffa09f02:	f8 a0       	R0 = [FP + 0xc];
ffa09f04:	08 52       	R0 = R0 - R1;
ffa09f06:	d0 bb       	[FP -0xc] = R0;
ffa09f08:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff907080 <_printf_temp> */
ffa09f0c:	0a e1 80 70 	P2.L = 0x7080;		/* (28800)	P2=0xff907080 <_printf_temp> */
ffa09f10:	11 91       	R1 = [P2];
ffa09f12:	c0 b9       	R0 = [FP -0x10];
ffa09f14:	41 50       	R1 = R1 + R0;
ffa09f16:	11 32       	P2 = R1;
ffa09f18:	d0 b9       	R0 = [FP -0xc];
ffa09f1a:	80 65       	R0 += 0x30;		/* ( 48) */
ffa09f1c:	10 9b       	B[P2] = R0;
ffa09f1e:	c0 b9       	R0 = [FP -0x10];
ffa09f20:	08 64       	R0 += 0x1;		/* (  1) */
ffa09f22:	c0 bb       	[FP -0x10] = R0;
ffa09f24:	f0 b9       	R0 = [FP -0x4];
ffa09f26:	f8 b0       	[FP + 0xc] = R0;
ffa09f28:	f8 a0       	R0 = [FP + 0xc];
ffa09f2a:	00 0d       	CC = R0 <= 0x0;
ffa09f2c:	05 18       	IF CC JUMP 0xffa09f36 <_sprintf_int+0x12a>;
ffa09f2e:	c0 b9       	R0 = [FP -0x10];
ffa09f30:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa09f32:	08 09       	CC = R0 <= R1;
ffa09f34:	ca 1b       	IF CC JUMP 0xffa09ec8 <_sprintf_int+0xbc>;
ffa09f36:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff907080 <_printf_temp> */
ffa09f3a:	0a e1 80 70 	P2.L = 0x7080;		/* (28800)	P2=0xff907080 <_printf_temp> */
ffa09f3e:	11 91       	R1 = [P2];
ffa09f40:	c0 b9       	R0 = [FP -0x10];
ffa09f42:	41 50       	R1 = R1 + R0;
ffa09f44:	11 32       	P2 = R1;
ffa09f46:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa09f48:	10 9b       	B[P2] = R0;
ffa09f4a:	c0 b9       	R0 = [FP -0x10];
ffa09f4c:	08 64       	R0 += 0x1;		/* (  1) */
ffa09f4e:	c0 bb       	[FP -0x10] = R0;
ffa09f50:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09f52:	e0 bb       	[FP -0x8] = R0;
ffa09f54:	16 20       	JUMP.S 0xffa09f80 <_sprintf_int+0x174>;
ffa09f56:	e0 b9       	R0 = [FP -0x8];
ffa09f58:	08 30       	R1 = R0;
ffa09f5a:	b8 a0       	R0 = [FP + 0x8];
ffa09f5c:	41 50       	R1 = R1 + R0;
ffa09f5e:	09 32       	P1 = R1;
ffa09f60:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff907080 <_printf_temp> */
ffa09f64:	0a e1 80 70 	P2.L = 0x7080;		/* (28800)	P2=0xff907080 <_printf_temp> */
ffa09f68:	12 91       	R2 = [P2];
ffa09f6a:	c1 b9       	R1 = [FP -0x10];
ffa09f6c:	e0 b9       	R0 = [FP -0x8];
ffa09f6e:	01 52       	R0 = R1 - R0;
ffa09f70:	02 50       	R0 = R2 + R0;
ffa09f72:	10 32       	P2 = R0;
ffa09f74:	fa 6f       	P2 += -0x1;		/* ( -1) */
ffa09f76:	50 99       	R0 = B[P2] (X);
ffa09f78:	08 9b       	B[P1] = R0;
ffa09f7a:	e0 b9       	R0 = [FP -0x8];
ffa09f7c:	08 64       	R0 += 0x1;		/* (  1) */
ffa09f7e:	e0 bb       	[FP -0x8] = R0;
ffa09f80:	e1 b9       	R1 = [FP -0x8];
ffa09f82:	c0 b9       	R0 = [FP -0x10];
ffa09f84:	81 08       	CC = R1 < R0;
ffa09f86:	e8 1b       	IF CC JUMP 0xffa09f56 <_sprintf_int+0x14a>;
ffa09f88:	c0 b9       	R0 = [FP -0x10];
ffa09f8a:	01 e8 00 00 	UNLINK;
ffa09f8e:	10 00       	RTS;

ffa09f90 <_sprintf_hex>:
ffa09f90:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa09f94:	b8 b0       	[FP + 0x8] = R0;
ffa09f96:	f9 b0       	[FP + 0xc] = R1;
ffa09f98:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09f9a:	d0 bb       	[FP -0xc] = R0;
ffa09f9c:	d0 b9       	R0 = [FP -0xc];
ffa09f9e:	08 30       	R1 = R0;
ffa09fa0:	b8 a0       	R0 = [FP + 0x8];
ffa09fa2:	41 50       	R1 = R1 + R0;
ffa09fa4:	11 32       	P2 = R1;
ffa09fa6:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa09fa8:	10 9b       	B[P2] = R0;
ffa09faa:	d0 b9       	R0 = [FP -0xc];
ffa09fac:	08 64       	R0 += 0x1;		/* (  1) */
ffa09fae:	d0 bb       	[FP -0xc] = R0;
ffa09fb0:	d0 b9       	R0 = [FP -0xc];
ffa09fb2:	08 30       	R1 = R0;
ffa09fb4:	b8 a0       	R0 = [FP + 0x8];
ffa09fb6:	41 50       	R1 = R1 + R0;
ffa09fb8:	11 32       	P2 = R1;
ffa09fba:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa09fbe:	10 9b       	B[P2] = R0;
ffa09fc0:	d0 b9       	R0 = [FP -0xc];
ffa09fc2:	08 64       	R0 += 0x1;		/* (  1) */
ffa09fc4:	d0 bb       	[FP -0xc] = R0;
ffa09fc6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09fc8:	c0 bb       	[FP -0x10] = R0;
ffa09fca:	2c 20       	JUMP.S 0xffa0a022 <_sprintf_hex+0x92>;
ffa09fcc:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa09fce:	c0 b9       	R0 = [FP -0x10];
ffa09fd0:	01 52       	R0 = R1 - R0;
ffa09fd2:	82 c6 10 82 	R1 = R0 << 0x2;
ffa09fd6:	f8 a0       	R0 = [FP + 0xc];
ffa09fd8:	08 40       	R0 >>>= R1;
ffa09fda:	e0 bb       	[FP -0x8] = R0;
ffa09fdc:	e0 b9       	R0 = [FP -0x8];
ffa09fde:	08 30       	R1 = R0;
ffa09fe0:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa09fe2:	01 54       	R0 = R1 & R0;
ffa09fe4:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa09fe8:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa09fec:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa09fee:	08 09       	CC = R0 <= R1;
ffa09ff0:	07 18       	IF CC JUMP 0xffa09ffe <_sprintf_hex+0x6e>;
ffa09ff2:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa09ff6:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa09ff8:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa09ffc:	06 20       	JUMP.S 0xffa0a008 <_sprintf_hex+0x78>;
ffa09ffe:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa0a002:	80 65       	R0 += 0x30;		/* ( 48) */
ffa0a004:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa0a008:	d1 b9       	R1 = [FP -0xc];
ffa0a00a:	c0 b9       	R0 = [FP -0x10];
ffa0a00c:	01 50       	R0 = R1 + R0;
ffa0a00e:	08 30       	R1 = R0;
ffa0a010:	b8 a0       	R0 = [FP + 0x8];
ffa0a012:	41 50       	R1 = R1 + R0;
ffa0a014:	11 32       	P2 = R1;
ffa0a016:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa0a01a:	10 9b       	B[P2] = R0;
ffa0a01c:	c0 b9       	R0 = [FP -0x10];
ffa0a01e:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a020:	c0 bb       	[FP -0x10] = R0;
ffa0a022:	c0 b9       	R0 = [FP -0x10];
ffa0a024:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa0a026:	08 09       	CC = R0 <= R1;
ffa0a028:	d2 1b       	IF CC JUMP 0xffa09fcc <_sprintf_hex+0x3c>;
ffa0a02a:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa0a02c:	01 e8 00 00 	UNLINK;
ffa0a030:	10 00       	RTS;
	...

ffa0a034 <_strprintf_int>:
ffa0a034:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0a038:	b8 b0       	[FP + 0x8] = R0;
ffa0a03a:	f9 b0       	[FP + 0xc] = R1;
ffa0a03c:	3a b1       	[FP + 0x10] = R2;
ffa0a03e:	39 a1       	R1 = [FP + 0x10];
ffa0a040:	b8 a0       	R0 = [FP + 0x8];
ffa0a042:	ff e3 e5 fe 	CALL 0xffa09e0c <_sprintf_int>;
ffa0a046:	f0 bb       	[FP -0x4] = R0;
ffa0a048:	fa ac       	P2 = [FP + 0xc];
ffa0a04a:	11 91       	R1 = [P2];
ffa0a04c:	f0 b9       	R0 = [FP -0x4];
ffa0a04e:	01 50       	R0 = R1 + R0;
ffa0a050:	fa ac       	P2 = [FP + 0xc];
ffa0a052:	10 93       	[P2] = R0;
ffa0a054:	f0 b9       	R0 = [FP -0x4];
ffa0a056:	08 30       	R1 = R0;
ffa0a058:	b8 a0       	R0 = [FP + 0x8];
ffa0a05a:	08 50       	R0 = R0 + R1;
ffa0a05c:	b8 b0       	[FP + 0x8] = R0;
ffa0a05e:	b8 a0       	R0 = [FP + 0x8];
ffa0a060:	01 e8 00 00 	UNLINK;
ffa0a064:	10 00       	RTS;
	...

ffa0a068 <_strprintf_hex>:
ffa0a068:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0a06c:	b8 b0       	[FP + 0x8] = R0;
ffa0a06e:	f9 b0       	[FP + 0xc] = R1;
ffa0a070:	3a b1       	[FP + 0x10] = R2;
ffa0a072:	39 a1       	R1 = [FP + 0x10];
ffa0a074:	b8 a0       	R0 = [FP + 0x8];
ffa0a076:	ff e3 8d ff 	CALL 0xffa09f90 <_sprintf_hex>;
ffa0a07a:	f0 bb       	[FP -0x4] = R0;
ffa0a07c:	fa ac       	P2 = [FP + 0xc];
ffa0a07e:	11 91       	R1 = [P2];
ffa0a080:	f0 b9       	R0 = [FP -0x4];
ffa0a082:	01 50       	R0 = R1 + R0;
ffa0a084:	fa ac       	P2 = [FP + 0xc];
ffa0a086:	10 93       	[P2] = R0;
ffa0a088:	f0 b9       	R0 = [FP -0x4];
ffa0a08a:	08 30       	R1 = R0;
ffa0a08c:	b8 a0       	R0 = [FP + 0x8];
ffa0a08e:	08 50       	R0 = R0 + R1;
ffa0a090:	b8 b0       	[FP + 0x8] = R0;
ffa0a092:	b8 a0       	R0 = [FP + 0x8];
ffa0a094:	01 e8 00 00 	UNLINK;
ffa0a098:	10 00       	RTS;
	...

ffa0a09c <_atoi>:
ffa0a09c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a0a0:	b8 b0       	[FP + 0x8] = R0;
ffa0a0a2:	f9 b0       	[FP + 0xc] = R1;
ffa0a0a4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a0a6:	d0 bb       	[FP -0xc] = R0;
ffa0a0a8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a0aa:	e0 bb       	[FP -0x8] = R0;
ffa0a0ac:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a0ae:	f0 bb       	[FP -0x4] = R0;
ffa0a0b0:	ba ac       	P2 = [FP + 0x8];
ffa0a0b2:	50 99       	R0 = B[P2] (X);
ffa0a0b4:	00 43       	R0 = R0.B (X);
ffa0a0b6:	69 61       	R1 = 0x2d (X);		/*		R1=0x2d( 45) */
ffa0a0b8:	08 08       	CC = R0 == R1;
ffa0a0ba:	2c 10       	IF !CC JUMP 0xffa0a112 <_atoi+0x76>;
ffa0a0bc:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0a0be:	f0 bb       	[FP -0x4] = R0;
ffa0a0c0:	b8 a0       	R0 = [FP + 0x8];
ffa0a0c2:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a0c4:	b8 b0       	[FP + 0x8] = R0;
ffa0a0c6:	d0 b9       	R0 = [FP -0xc];
ffa0a0c8:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a0ca:	d0 bb       	[FP -0xc] = R0;
ffa0a0cc:	23 20       	JUMP.S 0xffa0a112 <_atoi+0x76>;
ffa0a0ce:	ba ac       	P2 = [FP + 0x8];
ffa0a0d0:	50 99       	R0 = B[P2] (X);
ffa0a0d2:	01 43       	R1 = R0.B (X);
ffa0a0d4:	e0 b9       	R0 = [FP -0x8];
ffa0a0d6:	01 50       	R0 = R1 + R0;
ffa0a0d8:	80 66       	R0 += -0x30;		/* (-48) */
ffa0a0da:	e0 bb       	[FP -0x8] = R0;
ffa0a0dc:	b8 a0       	R0 = [FP + 0x8];
ffa0a0de:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a0e0:	b8 b0       	[FP + 0x8] = R0;
ffa0a0e2:	d0 b9       	R0 = [FP -0xc];
ffa0a0e4:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a0e6:	d0 bb       	[FP -0xc] = R0;
ffa0a0e8:	ba ac       	P2 = [FP + 0x8];
ffa0a0ea:	50 99       	R0 = B[P2] (X);
ffa0a0ec:	00 43       	R0 = R0.B (X);
ffa0a0ee:	79 61       	R1 = 0x2f (X);		/*		R1=0x2f( 47) */
ffa0a0f0:	08 09       	CC = R0 <= R1;
ffa0a0f2:	10 18       	IF CC JUMP 0xffa0a112 <_atoi+0x76>;
ffa0a0f4:	00 00       	NOP;
ffa0a0f6:	00 00       	NOP;
ffa0a0f8:	ba ac       	P2 = [FP + 0x8];
ffa0a0fa:	50 99       	R0 = B[P2] (X);
ffa0a0fc:	00 43       	R0 = R0.B (X);
ffa0a0fe:	c9 61       	R1 = 0x39 (X);		/*		R1=0x39( 57) */
ffa0a100:	08 09       	CC = R0 <= R1;
ffa0a102:	08 10       	IF !CC JUMP 0xffa0a112 <_atoi+0x76>;
ffa0a104:	e0 b9       	R0 = [FP -0x8];
ffa0a106:	08 30       	R1 = R0;
ffa0a108:	11 4f       	R1 <<= 0x2;
ffa0a10a:	41 50       	R1 = R1 + R0;
ffa0a10c:	82 c6 09 80 	R0 = R1 << 0x1;
ffa0a110:	e0 bb       	[FP -0x8] = R0;
ffa0a112:	ba ac       	P2 = [FP + 0x8];
ffa0a114:	50 99       	R0 = B[P2] (X);
ffa0a116:	00 43       	R0 = R0.B (X);
ffa0a118:	79 61       	R1 = 0x2f (X);		/*		R1=0x2f( 47) */
ffa0a11a:	08 09       	CC = R0 <= R1;
ffa0a11c:	0d 18       	IF CC JUMP 0xffa0a136 <_atoi+0x9a>;
ffa0a11e:	00 00       	NOP;
ffa0a120:	00 00       	NOP;
ffa0a122:	ba ac       	P2 = [FP + 0x8];
ffa0a124:	50 99       	R0 = B[P2] (X);
ffa0a126:	00 43       	R0 = R0.B (X);
ffa0a128:	c9 61       	R1 = 0x39 (X);		/*		R1=0x39( 57) */
ffa0a12a:	08 09       	CC = R0 <= R1;
ffa0a12c:	05 10       	IF !CC JUMP 0xffa0a136 <_atoi+0x9a>;
ffa0a12e:	d1 b9       	R1 = [FP -0xc];
ffa0a130:	f8 a0       	R0 = [FP + 0xc];
ffa0a132:	81 08       	CC = R1 < R0;
ffa0a134:	cd 1b       	IF CC JUMP 0xffa0a0ce <_atoi+0x32>;
ffa0a136:	e1 b9       	R1 = [FP -0x8];
ffa0a138:	f0 b9       	R0 = [FP -0x4];
ffa0a13a:	c8 40       	R0 *= R1;
ffa0a13c:	01 e8 00 00 	UNLINK;
ffa0a140:	10 00       	RTS;
	...

ffa0a144 <_udelay>:
ffa0a144:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa0a148:	b8 b0       	[FP + 0x8] = R0;
ffa0a14a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a14c:	e0 bb       	[FP -0x8] = R0;
ffa0a14e:	10 20       	JUMP.S 0xffa0a16e <_udelay+0x2a>;
ffa0a150:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a152:	f0 bb       	[FP -0x4] = R0;
ffa0a154:	05 20       	JUMP.S 0xffa0a15e <_udelay+0x1a>;
ffa0a156:	00 00       	NOP;
ffa0a158:	f0 b9       	R0 = [FP -0x4];
ffa0a15a:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a15c:	f0 bb       	[FP -0x4] = R0;
ffa0a15e:	f0 b9       	R0 = [FP -0x4];
ffa0a160:	21 e1 9f 00 	R1 = 0x9f (X);		/*		R1=0x9f(159) */
ffa0a164:	08 09       	CC = R0 <= R1;
ffa0a166:	f8 1b       	IF CC JUMP 0xffa0a156 <_udelay+0x12>;
ffa0a168:	e0 b9       	R0 = [FP -0x8];
ffa0a16a:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a16c:	e0 bb       	[FP -0x8] = R0;
ffa0a16e:	e1 b9       	R1 = [FP -0x8];
ffa0a170:	b8 a0       	R0 = [FP + 0x8];
ffa0a172:	81 08       	CC = R1 < R0;
ffa0a174:	ee 1b       	IF CC JUMP 0xffa0a150 <_udelay+0xc>;
ffa0a176:	01 e8 00 00 	UNLINK;
ffa0a17a:	10 00       	RTS;

ffa0a17c <_spi_delay>:
ffa0a17c:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa0a180:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa0a182:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa0a186:	08 20       	JUMP.S 0xffa0a196 <_spi_delay+0x1a>;
ffa0a188:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc07080(-4165504) */
ffa0a18c:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0a190:	50 95       	R0 = W[P2] (X);
ffa0a192:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa0a196:	78 e4 fe ff 	R0 = W[FP + -0x4] (Z);
ffa0a19a:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa0a19c:	08 54       	R0 = R0 & R1;
ffa0a19e:	00 0c       	CC = R0 == 0x0;
ffa0a1a0:	f4 13       	IF !CC JUMP 0xffa0a188 <_spi_delay+0xc>;
ffa0a1a2:	08 20       	JUMP.S 0xffa0a1b2 <_spi_delay+0x36>;
ffa0a1a4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0a1a8:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0a1ac:	50 95       	R0 = W[P2] (X);
ffa0a1ae:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa0a1b2:	78 e4 fe ff 	R0 = W[FP + -0x4] (Z);
ffa0a1b6:	00 49       	CC = BITTST (R0, 0x0);		/* bit  0 */
ffa0a1b8:	00 02       	R0 = CC;
ffa0a1ba:	00 0c       	CC = R0 == 0x0;
ffa0a1bc:	f4 1b       	IF CC JUMP 0xffa0a1a4 <_spi_delay+0x28>;
ffa0a1be:	01 e8 00 00 	UNLINK;
ffa0a1c2:	10 00       	RTS;

ffa0a1c4 <_spi_write_register>:
ffa0a1c4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a1c8:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a1cc:	01 30       	R0 = R1;
ffa0a1ce:	b8 e6 0c 00 	B[FP + 0xc] = R0;
ffa0a1d2:	b8 e5 08 00 	R0 = B[FP + 0x8] (X);
ffa0a1d6:	28 4a       	BITSET (R0, 0x5);		/* bit  5 */
ffa0a1d8:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a1dc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0a1e0:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a1e4:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a1e6:	10 97       	W[P2] = R0;
ffa0a1e8:	24 00       	SSYNC;
ffa0a1ea:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a1ee:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a1f2:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a1f6:	10 97       	W[P2] = R0;
ffa0a1f8:	ff e3 c2 ff 	CALL 0xffa0a17c <_spi_delay>;
ffa0a1fc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a200:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0a204:	50 95       	R0 = W[P2] (X);
ffa0a206:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a20a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0a20e:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a212:	b8 e4 0c 00 	R0 = B[FP + 0xc] (Z);
ffa0a216:	10 97       	W[P2] = R0;
ffa0a218:	ff e3 b2 ff 	CALL 0xffa0a17c <_spi_delay>;
ffa0a21c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a220:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a224:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a226:	10 97       	W[P2] = R0;
ffa0a228:	24 00       	SSYNC;
ffa0a22a:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a22e:	01 e8 00 00 	UNLINK;
ffa0a232:	10 00       	RTS;

ffa0a234 <_spi_write_register_ver>:
ffa0a234:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0a238:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a23c:	01 30       	R0 = R1;
ffa0a23e:	b8 e6 0c 00 	B[FP + 0xc] = R0;
ffa0a242:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a246:	b9 e4 0c 00 	R1 = B[FP + 0xc] (Z);
ffa0a24a:	ff e3 bd ff 	CALL 0xffa0a1c4 <_spi_write_register>;
ffa0a24e:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a252:	00 e3 09 00 	CALL 0xffa0a264 <_spi_read_register>;
ffa0a256:	b8 e6 ff ff 	B[FP + -0x1] = R0;
ffa0a25a:	b8 e4 ff ff 	R0 = B[FP + -0x1] (Z);
ffa0a25e:	01 e8 00 00 	UNLINK;
ffa0a262:	10 00       	RTS;

ffa0a264 <_spi_read_register>:
ffa0a264:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a268:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a26c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a270:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a274:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a276:	10 97       	W[P2] = R0;
ffa0a278:	24 00       	SSYNC;
ffa0a27a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a27e:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a282:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a286:	10 97       	W[P2] = R0;
ffa0a288:	ff e3 7a ff 	CALL 0xffa0a17c <_spi_delay>;
ffa0a28c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a290:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0a294:	50 95       	R0 = W[P2] (X);
ffa0a296:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a29a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0a29e:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a2a2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a2a4:	10 97       	W[P2] = R0;
ffa0a2a6:	ff e3 6b ff 	CALL 0xffa0a17c <_spi_delay>;
ffa0a2aa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a2ae:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0a2b2:	50 95       	R0 = W[P2] (X);
ffa0a2b4:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a2b8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0a2bc:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a2c0:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a2c2:	10 97       	W[P2] = R0;
ffa0a2c4:	24 00       	SSYNC;
ffa0a2c6:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a2ca:	01 e8 00 00 	UNLINK;
ffa0a2ce:	10 00       	RTS;

ffa0a2d0 <_spi_read_register_status>:
ffa0a2d0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a2d4:	f9 b0       	[FP + 0xc] = R1;
ffa0a2d6:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a2da:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a2de:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a2e2:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a2e4:	10 97       	W[P2] = R0;
ffa0a2e6:	24 00       	SSYNC;
ffa0a2e8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a2ec:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a2f0:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a2f4:	10 97       	W[P2] = R0;
ffa0a2f6:	ff e3 43 ff 	CALL 0xffa0a17c <_spi_delay>;
ffa0a2fa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a2fe:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0a302:	50 95       	R0 = W[P2] (X);
ffa0a304:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a308:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0a30c:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a310:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a312:	10 97       	W[P2] = R0;
ffa0a314:	ff e3 34 ff 	CALL 0xffa0a17c <_spi_delay>;
ffa0a318:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a31c:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0a320:	50 95       	R0 = W[P2] (X);
ffa0a322:	fa ac       	P2 = [FP + 0xc];
ffa0a324:	10 9b       	B[P2] = R0;
ffa0a326:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0a32a:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a32e:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a330:	10 97       	W[P2] = R0;
ffa0a332:	24 00       	SSYNC;
ffa0a334:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a338:	01 e8 00 00 	UNLINK;
ffa0a33c:	10 00       	RTS;
	...

ffa0a340 <_spi_write_byte>:
ffa0a340:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a344:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a348:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a34c:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a350:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a352:	10 97       	W[P2] = R0;
ffa0a354:	24 00       	SSYNC;
ffa0a356:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a35a:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a35e:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a362:	10 97       	W[P2] = R0;
ffa0a364:	ff e3 0c ff 	CALL 0xffa0a17c <_spi_delay>;
ffa0a368:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a36c:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0a370:	50 95       	R0 = W[P2] (X);
ffa0a372:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a376:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0a37a:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a37e:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a380:	10 97       	W[P2] = R0;
ffa0a382:	24 00       	SSYNC;
ffa0a384:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a388:	01 e8 00 00 	UNLINK;
ffa0a38c:	10 00       	RTS;
	...

ffa0a390 <_spi_write_packet>:
ffa0a390:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a394:	b8 b0       	[FP + 0x8] = R0;
ffa0a396:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a39a:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a39e:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a3a0:	10 97       	W[P2] = R0;
ffa0a3a2:	24 00       	SSYNC;
ffa0a3a4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a3a8:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a3ac:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa0a3b0:	10 97       	W[P2] = R0;
ffa0a3b2:	ff e3 e5 fe 	CALL 0xffa0a17c <_spi_delay>;
ffa0a3b6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a3ba:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a3be:	20 e1 07 50 	R0 = 0x5007 (X);		/*		R0=0x5007(20487) */
ffa0a3c2:	10 97       	W[P2] = R0;
ffa0a3c4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a3c8:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xffc00d50(-4190896) */
ffa0a3cc:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa0a3ce:	10 97       	W[P2] = R0;
ffa0a3d0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d50(-4190896) */
ffa0a3d4:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xffc00d54(-4190892) */
ffa0a3d8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a3da:	10 97       	W[P2] = R0;
ffa0a3dc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d54(-4190892) */
ffa0a3e0:	0a e1 44 0d 	P2.L = 0xd44;		/* (3396)	P2=0xffc00d44(-4190908) */
ffa0a3e4:	b8 a0       	R0 = [FP + 0x8];
ffa0a3e6:	10 93       	[P2] = R0;
ffa0a3e8:	24 00       	SSYNC;
ffa0a3ea:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d44(-4190908) */
ffa0a3ee:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa0a3f2:	20 e1 81 00 	R0 = 0x81 (X);		/*		R0=0x81(129) */
ffa0a3f6:	10 97       	W[P2] = R0;
ffa0a3f8:	01 20       	JUMP.S 0xffa0a3fa <_spi_write_packet+0x6a>;
	...
ffa0a402:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa0a406:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a40a:	50 95       	R0 = W[P2] (X);
ffa0a40c:	c0 42       	R0 = R0.L (Z);
ffa0a40e:	00 49       	CC = BITTST (R0, 0x0);		/* bit  0 */
ffa0a410:	00 02       	R0 = CC;
ffa0a412:	00 0c       	CC = R0 == 0x0;
ffa0a414:	f3 1b       	IF CC JUMP 0xffa0a3fa <_spi_write_packet+0x6a>;
ffa0a416:	00 00       	NOP;
ffa0a418:	00 00       	NOP;
ffa0a41a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a41e:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0a422:	50 95       	R0 = W[P2] (X);
ffa0a424:	c1 42       	R1 = R0.L (Z);
ffa0a426:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa0a428:	01 54       	R0 = R1 & R0;
ffa0a42a:	00 0c       	CC = R0 == 0x0;
ffa0a42c:	e7 13       	IF !CC JUMP 0xffa0a3fa <_spi_write_packet+0x6a>;
ffa0a42e:	00 00       	NOP;
ffa0a430:	00 00       	NOP;
ffa0a432:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0a436:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a43a:	50 95       	R0 = W[P2] (X);
ffa0a43c:	c1 42       	R1 = R0.L (Z);
ffa0a43e:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa0a440:	01 54       	R0 = R1 & R0;
ffa0a442:	00 0c       	CC = R0 == 0x0;
ffa0a444:	db 13       	IF !CC JUMP 0xffa0a3fa <_spi_write_packet+0x6a>;
ffa0a446:	ff e3 9b fe 	CALL 0xffa0a17c <_spi_delay>;
ffa0a44a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a44e:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a452:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a454:	10 97       	W[P2] = R0;
ffa0a456:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a45a:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a45e:	20 e1 0d 50 	R0 = 0x500d (X);		/*		R0=0x500d(20493) */
ffa0a462:	10 97       	W[P2] = R0;
ffa0a464:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a468:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa0a46c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a46e:	10 97       	W[P2] = R0;
ffa0a470:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa0a474:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a478:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a47a:	10 97       	W[P2] = R0;
ffa0a47c:	24 00       	SSYNC;
ffa0a47e:	01 e8 00 00 	UNLINK;
ffa0a482:	10 00       	RTS;

ffa0a484 <_spi_write_packet_noDMA>:
ffa0a484:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa0a488:	b8 b0       	[FP + 0x8] = R0;
ffa0a48a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a48e:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a492:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a494:	10 97       	W[P2] = R0;
ffa0a496:	24 00       	SSYNC;
ffa0a498:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a49c:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a4a0:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa0a4a4:	10 97       	W[P2] = R0;
ffa0a4a6:	ff e3 6b fe 	CALL 0xffa0a17c <_spi_delay>;
ffa0a4aa:	b8 a0       	R0 = [FP + 0x8];
ffa0a4ac:	f0 bb       	[FP -0x4] = R0;
ffa0a4ae:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a4b0:	e0 bb       	[FP -0x8] = R0;
ffa0a4b2:	11 20       	JUMP.S 0xffa0a4d4 <_spi_write_packet_noDMA+0x50>;
ffa0a4b4:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00730(-4192464) */
ffa0a4b8:	09 e1 0c 05 	P1.L = 0x50c;		/* (1292)	P1=0xffc0050c(-4193012) */
ffa0a4bc:	fa b9       	P2 = [FP -0x4];
ffa0a4be:	50 99       	R0 = B[P2] (X);
ffa0a4c0:	00 43       	R0 = R0.B (X);
ffa0a4c2:	08 97       	W[P1] = R0;
ffa0a4c4:	f0 b9       	R0 = [FP -0x4];
ffa0a4c6:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a4c8:	f0 bb       	[FP -0x4] = R0;
ffa0a4ca:	ff e3 59 fe 	CALL 0xffa0a17c <_spi_delay>;
ffa0a4ce:	e0 b9       	R0 = [FP -0x8];
ffa0a4d0:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a4d2:	e0 bb       	[FP -0x8] = R0;
ffa0a4d4:	e0 b9       	R0 = [FP -0x8];
ffa0a4d6:	f9 60       	R1 = 0x1f (X);		/*		R1=0x1f( 31) */
ffa0a4d8:	08 09       	CC = R0 <= R1;
ffa0a4da:	ed 1b       	IF CC JUMP 0xffa0a4b4 <_spi_write_packet_noDMA+0x30>;
ffa0a4dc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a4e0:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a4e4:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a4e6:	10 97       	W[P2] = R0;
ffa0a4e8:	24 00       	SSYNC;
ffa0a4ea:	01 e8 00 00 	UNLINK;
ffa0a4ee:	10 00       	RTS;

ffa0a4f0 <_spi_read_packet>:
ffa0a4f0:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa0a4f4:	b8 b0       	[FP + 0x8] = R0;
ffa0a4f6:	b8 a0       	R0 = [FP + 0x8];
ffa0a4f8:	f0 bb       	[FP -0x4] = R0;
ffa0a4fa:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0a4fc:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0a500:	ff e3 62 fe 	CALL 0xffa0a1c4 <_spi_write_register>;
ffa0a504:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a508:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a50c:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a50e:	10 97       	W[P2] = R0;
ffa0a510:	24 00       	SSYNC;
ffa0a512:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a516:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a51a:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa0a51e:	10 97       	W[P2] = R0;
ffa0a520:	ff e3 2e fe 	CALL 0xffa0a17c <_spi_delay>;
ffa0a524:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a526:	b8 e6 fb ff 	B[FP + -0x5] = R0;
ffa0a52a:	18 20       	JUMP.S 0xffa0a55a <_spi_read_packet+0x6a>;
ffa0a52c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a530:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a534:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a536:	10 97       	W[P2] = R0;
ffa0a538:	ff e3 22 fe 	CALL 0xffa0a17c <_spi_delay>;
ffa0a53c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a540:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0a544:	50 95       	R0 = W[P2] (X);
ffa0a546:	fa b9       	P2 = [FP -0x4];
ffa0a548:	10 9b       	B[P2] = R0;
ffa0a54a:	f0 b9       	R0 = [FP -0x4];
ffa0a54c:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a54e:	f0 bb       	[FP -0x4] = R0;
ffa0a550:	b8 e5 fb ff 	R0 = B[FP + -0x5] (X);
ffa0a554:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a556:	b8 e6 fb ff 	B[FP + -0x5] = R0;
ffa0a55a:	b8 e4 fb ff 	R0 = B[FP + -0x5] (Z);
ffa0a55e:	f9 60       	R1 = 0x1f (X);		/*		R1=0x1f( 31) */
ffa0a560:	08 0a       	CC = R0 <= R1 (IU);
ffa0a562:	e5 1b       	IF CC JUMP 0xffa0a52c <_spi_read_packet+0x3c>;
ffa0a564:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0a568:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a56c:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a56e:	10 97       	W[P2] = R0;
ffa0a570:	24 00       	SSYNC;
ffa0a572:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a574:	01 e8 00 00 	UNLINK;
ffa0a578:	10 00       	RTS;
	...

ffa0a57c <_spi_read_packet_nocheck>:
ffa0a57c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a580:	b8 b0       	[FP + 0x8] = R0;
ffa0a582:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a586:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a58a:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a58c:	10 97       	W[P2] = R0;
ffa0a58e:	24 00       	SSYNC;
ffa0a590:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a594:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a598:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa0a59c:	10 97       	W[P2] = R0;
ffa0a59e:	ff e3 ef fd 	CALL 0xffa0a17c <_spi_delay>;
ffa0a5a2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a5a6:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a5aa:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a5ac:	10 97       	W[P2] = R0;
ffa0a5ae:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a5b2:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xffc00d50(-4190896) */
ffa0a5b6:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa0a5b8:	10 97       	W[P2] = R0;
ffa0a5ba:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d50(-4190896) */
ffa0a5be:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xffc00d54(-4190892) */
ffa0a5c2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a5c4:	10 97       	W[P2] = R0;
ffa0a5c6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d54(-4190892) */
ffa0a5ca:	0a e1 44 0d 	P2.L = 0xd44;		/* (3396)	P2=0xffc00d44(-4190908) */
ffa0a5ce:	b8 a0       	R0 = [FP + 0x8];
ffa0a5d0:	10 93       	[P2] = R0;
ffa0a5d2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d44(-4190908) */
ffa0a5d6:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa0a5da:	20 e1 83 00 	R0 = 0x83 (X);		/*		R0=0x83(131) */
ffa0a5de:	10 97       	W[P2] = R0;
ffa0a5e0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa0a5e4:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a5e8:	20 e1 06 50 	R0 = 0x5006 (X);		/*		R0=0x5006(20486) */
ffa0a5ec:	10 97       	W[P2] = R0;
	...
ffa0a5f6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a5fa:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a5fe:	50 95       	R0 = W[P2] (X);
ffa0a600:	c0 42       	R0 = R0.L (Z);
ffa0a602:	00 49       	CC = BITTST (R0, 0x0);		/* bit  0 */
ffa0a604:	00 02       	R0 = CC;
ffa0a606:	00 0c       	CC = R0 == 0x0;
ffa0a608:	f3 1b       	IF CC JUMP 0xffa0a5ee <_spi_read_packet_nocheck+0x72>;
ffa0a60a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a60e:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa0a612:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a614:	10 97       	W[P2] = R0;
ffa0a616:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa0a61a:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a61e:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a620:	10 97       	W[P2] = R0;
ffa0a622:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a626:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a62a:	20 e1 0d 50 	R0 = 0x500d (X);		/*		R0=0x500d(20493) */
ffa0a62e:	10 97       	W[P2] = R0;
ffa0a630:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a634:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a638:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a63a:	10 97       	W[P2] = R0;
ffa0a63c:	24 00       	SSYNC;
ffa0a63e:	01 e8 00 00 	UNLINK;
ffa0a642:	10 00       	RTS;

ffa0a644 <_radio_set_rx>:
ffa0a644:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a648:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a64c:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a650:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a652:	10 97       	W[P2] = R0;
ffa0a654:	24 00       	SSYNC;
ffa0a656:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a658:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a65a:	ff e3 b5 fd 	CALL 0xffa0a1c4 <_spi_write_register>;
ffa0a65e:	20 e1 e2 00 	R0 = 0xe2 (X);		/*		R0=0xe2(226) */
ffa0a662:	ff e3 6f fe 	CALL 0xffa0a340 <_spi_write_byte>;
ffa0a666:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a668:	f9 60       	R1 = 0x1f (X);		/*		R1=0x1f( 31) */
ffa0a66a:	ff e3 ad fd 	CALL 0xffa0a1c4 <_spi_write_register>;
ffa0a66e:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0a670:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0a674:	ff e3 a8 fd 	CALL 0xffa0a1c4 <_spi_write_register>;
ffa0a678:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a67c:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a680:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a682:	10 97       	W[P2] = R0;
ffa0a684:	24 00       	SSYNC;
ffa0a686:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a68a:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a68e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a690:	10 97       	W[P2] = R0;
ffa0a692:	24 00       	SSYNC;
ffa0a694:	01 e8 00 00 	UNLINK;
ffa0a698:	10 00       	RTS;
	...

ffa0a69c <_radio_set_tx>:
ffa0a69c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a6a0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a6a4:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a6a8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a6aa:	10 97       	W[P2] = R0;
ffa0a6ac:	24 00       	SSYNC;
ffa0a6ae:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a6b0:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a6b2:	ff e3 89 fd 	CALL 0xffa0a1c4 <_spi_write_register>;
ffa0a6b6:	20 e1 e1 00 	R0 = 0xe1 (X);		/*		R0=0xe1(225) */
ffa0a6ba:	ff e3 43 fe 	CALL 0xffa0a340 <_spi_write_byte>;
ffa0a6be:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0a6c0:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0a6c4:	ff e3 80 fd 	CALL 0xffa0a1c4 <_spi_write_register>;
ffa0a6c8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a6ca:	f1 60       	R1 = 0x1e (X);		/*		R1=0x1e( 30) */
ffa0a6cc:	ff e3 7c fd 	CALL 0xffa0a1c4 <_spi_write_register>;
ffa0a6d0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a6d4:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a6d8:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a6da:	10 97       	W[P2] = R0;
ffa0a6dc:	01 e8 00 00 	UNLINK;
ffa0a6e0:	10 00       	RTS;
	...

ffa0a6e4 <_radio_wait_irq>:
ffa0a6e4:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0a6e8:	b8 b0       	[FP + 0x8] = R0;
ffa0a6ea:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a6ec:	f0 bb       	[FP -0x4] = R0;
ffa0a6ee:	08 20       	JUMP.S 0xffa0a6fe <_radio_wait_irq+0x1a>;
	...
ffa0a6f8:	f0 b9       	R0 = [FP -0x4];
ffa0a6fa:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a6fc:	f0 bb       	[FP -0x4] = R0;
ffa0a6fe:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a702:	0a e1 00 07 	P2.L = 0x700;		/* (1792)	P2=0xffc00700(-4192512) */
ffa0a706:	50 95       	R0 = W[P2] (X);
ffa0a708:	c1 42       	R1 = R0.L (Z);
ffa0a70a:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa0a70c:	01 54       	R0 = R1 & R0;
ffa0a70e:	00 0c       	CC = R0 == 0x0;
ffa0a710:	05 18       	IF CC JUMP 0xffa0a71a <_radio_wait_irq+0x36>;
ffa0a712:	f1 b9       	R1 = [FP -0x4];
ffa0a714:	b8 a0       	R0 = [FP + 0x8];
ffa0a716:	81 08       	CC = R1 < R0;
ffa0a718:	ec 1b       	IF CC JUMP 0xffa0a6f0 <_radio_wait_irq+0xc>;
ffa0a71a:	f1 b9       	R1 = [FP -0x4];
ffa0a71c:	b8 a0       	R0 = [FP + 0x8];
ffa0a71e:	81 08       	CC = R1 < R0;
ffa0a720:	06 10       	IF !CC JUMP 0xffa0a72c <_radio_wait_irq+0x48>;
ffa0a722:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0a724:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0a728:	ff e3 4e fd 	CALL 0xffa0a1c4 <_spi_write_register>;
ffa0a72c:	f0 b9       	R0 = [FP -0x4];
ffa0a72e:	01 e8 00 00 	UNLINK;
ffa0a732:	10 00       	RTS;

ffa0a734 <_radio_init>:
ffa0a734:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a738:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a73c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00700(-4192512) */
ffa0a740:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a744:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a746:	10 97       	W[P2] = R0;
ffa0a748:	24 00       	SSYNC;
ffa0a74a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a74e:	0a e1 14 05 	P2.L = 0x514;		/* (1300)	P2=0xffc00514(-4193004) */
ffa0a752:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa0a754:	10 97       	W[P2] = R0;
ffa0a756:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00514(-4193004) */
ffa0a75a:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a75e:	20 e1 2d 50 	R0 = 0x502d (X);		/*		R0=0x502d(20525) */
ffa0a762:	10 97       	W[P2] = R0;
ffa0a764:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a768:	0a e1 04 05 	P2.L = 0x504;		/* (1284)	P2=0xffc00504(-4193020) */
ffa0a76c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a76e:	10 97       	W[P2] = R0;
ffa0a770:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00504(-4193020) */
ffa0a774:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a778:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a77a:	10 97       	W[P2] = R0;
ffa0a77c:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc0050c(-4193012) */
ffa0a780:	09 e1 40 07 	P1.L = 0x740;		/* (1856)	P1=0xffc00740(-4192448) */
ffa0a784:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a788:	0a e1 40 07 	P2.L = 0x740;		/* (1856)	P2=0xffc00740(-4192448) */
ffa0a78c:	50 95       	R0 = W[P2] (X);
ffa0a78e:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa0a790:	08 97       	W[P1] = R0;
ffa0a792:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00740(-4192448) */
ffa0a796:	09 e1 30 07 	P1.L = 0x730;		/* (1840)	P1=0xffc00730(-4192464) */
ffa0a79a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00740(-4192448) */
ffa0a79e:	0a e1 30 07 	P2.L = 0x730;		/* (1840)	P2=0xffc00730(-4192464) */
ffa0a7a2:	51 95       	R1 = W[P2] (X);
ffa0a7a4:	b8 63       	R0 = -0x9 (X);		/*		R0=0xfffffff7( -9) */
ffa0a7a6:	01 54       	R0 = R1 & R0;
ffa0a7a8:	08 97       	W[P1] = R0;
ffa0a7aa:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00730(-4192464) */
ffa0a7ae:	09 e1 30 07 	P1.L = 0x730;		/* (1840)	P1=0xffc00730(-4192464) */
ffa0a7b2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00730(-4192464) */
ffa0a7b6:	0a e1 30 07 	P2.L = 0x730;		/* (1840)	P2=0xffc00730(-4192464) */
ffa0a7ba:	51 95       	R1 = W[P2] (X);
ffa0a7bc:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a7be:	01 56       	R0 = R1 | R0;
ffa0a7c0:	08 97       	W[P1] = R0;
ffa0a7c2:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a7c6:	21 e1 7c 00 	R1 = 0x7c (X);		/*		R1=0x7c(124) */
ffa0a7ca:	08 0a       	CC = R0 <= R1 (IU);
ffa0a7cc:	05 18       	IF CC JUMP 0xffa0a7d6 <_radio_init+0xa2>;
ffa0a7ce:	20 e1 7c 00 	R0 = 0x7c (X);		/*		R0=0x7c(124) */
ffa0a7d2:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a7d6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a7d8:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a7da:	ff e3 f5 fc 	CALL 0xffa0a1c4 <_spi_write_register>;
ffa0a7de:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a7e0:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a7e2:	ff e3 29 fd 	CALL 0xffa0a234 <_spi_write_register_ver>;
ffa0a7e6:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a7e8:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa0a7ea:	ff e3 25 fd 	CALL 0xffa0a234 <_spi_write_register_ver>;
ffa0a7ee:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a7f0:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa0a7f2:	ff e3 21 fd 	CALL 0xffa0a234 <_spi_write_register_ver>;
ffa0a7f6:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa0a7f8:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a7fa:	ff e3 1d fd 	CALL 0xffa0a234 <_spi_write_register_ver>;
ffa0a7fe:	b9 e4 08 00 	R1 = B[FP + 0x8] (Z);
ffa0a802:	28 60       	R0 = 0x5 (X);		/*		R0=0x5(  5) */
ffa0a804:	ff e3 18 fd 	CALL 0xffa0a234 <_spi_write_register_ver>;
ffa0a808:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa0a80a:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa0a80c:	ff e3 14 fd 	CALL 0xffa0a234 <_spi_write_register_ver>;
ffa0a810:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0a812:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0a816:	ff e3 0f fd 	CALL 0xffa0a234 <_spi_write_register_ver>;
ffa0a81a:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa0a81c:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa0a81e:	ff e3 0b fd 	CALL 0xffa0a234 <_spi_write_register_ver>;
ffa0a822:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00730(-4192464) */
ffa0a826:	0a e1 6c 0d 	P2.L = 0xd6c;		/* (3436)	P2=0xffc00d6c(-4190868) */
ffa0a82a:	20 e1 00 50 	R0 = 0x5000 (X);		/*		R0=0x5000(20480) */
ffa0a82e:	10 97       	W[P2] = R0;
ffa0a830:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d6c(-4190868) */
ffa0a834:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a838:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a83a:	10 97       	W[P2] = R0;
ffa0a83c:	20 e1 e2 00 	R0 = 0xe2 (X);		/*		R0=0xe2(226) */
ffa0a840:	ff e3 80 fd 	CALL 0xffa0a340 <_spi_write_byte>;
ffa0a844:	20 e1 e1 00 	R0 = 0xe1 (X);		/*		R0=0xe1(225) */
ffa0a848:	ff e3 7c fd 	CALL 0xffa0a340 <_spi_write_byte>;
ffa0a84c:	40 43       	R0 = R0.B (Z);
ffa0a84e:	01 e8 00 00 	UNLINK;
ffa0a852:	10 00       	RTS;
