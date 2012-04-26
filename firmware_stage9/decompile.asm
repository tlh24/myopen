
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
ffa0814e:	08 e1 40 9a 	P0.L = 0x9a40;		/* (-26048)	P0=0xffa09a40 <_main> */
ffa08152:	48 e1 a0 ff 	P0.H = 0xffa0;		/* (-96)	P0=0xffa09a40 <_main> */
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
ffa08186:	00 e3 8b 0b 	CALL 0xffa0989c <_exception_report>;
ffa0818a:	12 00       	RTX;

ffa0818c <_HWHANDLER>:
ffa0818c:	c1 31       	R0 = SEQSTAT;
ffa0818e:	cc 31       	R1 = RETX;
ffa08190:	fe 2f       	JUMP.S 0xffa0818c <_HWHANDLER>;
ffa08192:	11 00       	RTI;

ffa08194 <_NHANDLER>:
ffa08194:	00 e3 44 0c 	CALL 0xffa09a1c <_nmi_report>;
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
ffa08212:	00 e3 45 0b 	CALL 0xffa0989c <_exception_report>;
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
ffa0824e:	00 e3 35 04 	CALL 0xffa08ab8 <_get_asm2>;
ffa08252:	3e 61       	R6 = 0x27 (X);		/*		R6=0x27( 39) */
ffa08254:	1e 97       	W[P3] = R6;
ffa08256:	00 e3 d5 01 	CALL 0xffa08600 <_get_asm>;
ffa0825a:	26 e1 70 00 	R6 = 0x70 (X);		/*		R6=0x70(112) */
ffa0825e:	1e 97       	W[P3] = R6;
ffa08260:	00 e3 2c 04 	CALL 0xffa08ab8 <_get_asm2>;
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
ffa0828e:	00 e3 15 04 	CALL 0xffa08ab8 <_get_asm2>;
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
ffa082a6:	00 e3 09 04 	CALL 0xffa08ab8 <_get_asm2>;
ffa082aa:	26 e1 e2 00 	R6 = 0xe2 (X);		/*		R6=0xe2(226) */
ffa082ae:	1e 97       	W[P3] = R6;
ffa082b0:	00 e3 a8 01 	CALL 0xffa08600 <_get_asm>;
ffa082b4:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa082b6:	0f b5       	W[P1 + 0x8] = R7;
ffa082b8:	00 e3 00 04 	CALL 0xffa08ab8 <_get_asm2>;
ffa082bc:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa082be:	8f b4       	W[P1 + 0x4] = R7;
ffa082c0:	00 e3 a0 01 	CALL 0xffa08600 <_get_asm>;
ffa082c4:	26 e1 e1 00 	R6 = 0xe1 (X);		/*		R6=0xe1(225) */
ffa082c8:	1e 97       	W[P3] = R6;
ffa082ca:	00 e3 f7 03 	CALL 0xffa08ab8 <_get_asm2>;
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
ffa0832e:	00 e1 00 61 	R0.L = 0x6100;		/* (24832)	R0=0x6100(24832) */
ffa08332:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff806100(-8363776) */
ffa08336:	30 bb       	[FP -0x34] = R0;
ffa08338:	00 e1 20 61 	R0.L = 0x6120;		/* (24864)	R0=0xff806120(-8363744) */
ffa0833c:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff806120(-8363744) */
ffa08340:	20 bb       	[FP -0x38] = R0;
ffa08342:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa08344:	e0 ba       	[FP -0x48] = R0;
ffa08346:	00 e1 00 62 	R0.L = 0x6200;		/* (25088)	R0=0x6200(25088) */
ffa0834a:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff806200(-8363520) */
ffa0834e:	10 bb       	[FP -0x3c] = R0;
ffa08350:	00 e1 00 63 	R0.L = 0x6300;		/* (25344)	R0=0xff806300(-8363264) */
ffa08354:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff806300(-8363264) */
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
ffa083ae:	00 e3 c9 05 	CALL 0xffa08f40 <_init6>;
ffa083b2:	0d e1 00 61 	P5.L = 0x6100;		/* (24832)	P5=0xffc06100(-4169472) */
ffa083b6:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff806100 */
ffa083ba:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa083bc:	28 92       	[P5++] = R0;
ffa083be:	28 92       	[P5++] = R0;
ffa083c0:	28 92       	[P5++] = R0;
ffa083c2:	28 92       	[P5++] = R0;
ffa083c4:	28 92       	[P5++] = R0;
ffa083c6:	28 92       	[P5++] = R0;
ffa083c8:	28 92       	[P5++] = R0;
ffa083ca:	28 92       	[P5++] = R0;
ffa083cc:	00 e3 f6 06 	CALL 0xffa091b8 <_enc_create>;
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
ffa08414:	00 e3 52 03 	CALL 0xffa08ab8 <_get_asm2>;
ffa08418:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa0841a:	f5 bb       	[FP -0x4] = R5;
ffa0841c:	ff e3 42 ff 	CALL 0xffa082a0 <_clearfifos_asm>;
ffa08420:	ff e3 14 ff 	CALL 0xffa08248 <_clearirq_asm>;
ffa08424:	85 68       	P5 = 0x10 (X);		/*		P5=0x10( 16) */
ffa08426:	a2 e0 24 50 	LSETUP(0xffa0842a <wp_top>, 0xffa0846e <wp_bot>) LC0 = P5;

ffa0842a <wp_top>:
ffa0842a:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa0842c:	8f b4       	W[P1 + 0x4] = R7;
ffa0842e:	00 e3 45 03 	CALL 0xffa08ab8 <_get_asm2>;
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
ffa08452:	00 e3 33 03 	CALL 0xffa08ab8 <_get_asm2>;
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
ffa0847c:	00 e3 1e 03 	CALL 0xffa08ab8 <_get_asm2>;
ffa08480:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa08482:	8f b4       	W[P1 + 0x4] = R7;
ffa08484:	00 e3 be 00 	CALL 0xffa08600 <_get_asm>;
ffa08488:	26 e1 e2 00 	R6 = 0xe2 (X);		/*		R6=0xe2(226) */
ffa0848c:	1e 97       	W[P3] = R6;
ffa0848e:	00 e3 15 03 	CALL 0xffa08ab8 <_get_asm2>;
ffa08492:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa08494:	0f b5       	W[P1 + 0x8] = R7;
ffa08496:	00 e3 b5 00 	CALL 0xffa08600 <_get_asm>;
ffa0849a:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa0849c:	8f b4       	W[P1 + 0x4] = R7;
ffa0849e:	00 e3 0d 03 	CALL 0xffa08ab8 <_get_asm2>;
ffa084a2:	06 61       	R6 = 0x20 (X);		/*		R6=0x20( 32) */
ffa084a4:	1e 97       	W[P3] = R6;
ffa084a6:	00 e3 09 03 	CALL 0xffa08ab8 <_get_asm2>;
ffa084aa:	fe 60       	R6 = 0x1f (X);		/*		R6=0x1f( 31) */
ffa084ac:	1e 97       	W[P3] = R6;
ffa084ae:	00 e3 a9 00 	CALL 0xffa08600 <_get_asm>;
ffa084b2:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa084b4:	0f b5       	W[P1 + 0x8] = R7;
ffa084b6:	00 e3 01 03 	CALL 0xffa08ab8 <_get_asm2>;
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
ffa084d4:	00 e3 f2 02 	CALL 0xffa08ab8 <_get_asm2>;
ffa084d8:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa084da:	8f b4       	W[P1 + 0x4] = R7;
ffa084dc:	00 e3 92 00 	CALL 0xffa08600 <_get_asm>;
ffa084e0:	26 e1 61 00 	R6 = 0x61 (X);		/*		R6=0x61( 97) */
ffa084e4:	1e 97       	W[P3] = R6;
ffa084e6:	00 e3 e9 02 	CALL 0xffa08ab8 <_get_asm2>;
ffa084ea:	25 68       	P5 = 0x4 (X);		/*		P5=0x4(  4) */
ffa084ec:	a2 e0 4b 50 	LSETUP(0xffa084f0 <rp_top>, 0xffa08582 <rp_bot>) LC0 = P5;

ffa084f0 <rp_top>:
ffa084f0:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa084f2:	e7 bb       	[FP -0x8] = R7;
ffa084f4:	d7 bb       	[FP -0xc] = R7;
ffa084f6:	00 e3 e1 02 	CALL 0xffa08ab8 <_get_asm2>;
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
ffa0851a:	00 e3 cf 02 	CALL 0xffa08ab8 <_get_asm2>;
ffa0851e:	25 68       	P5 = 0x4 (X);		/*		P5=0x4(  4) */
ffa08520:	b2 e0 0e 50 	LSETUP(0xffa08524 <v32_top>, 0xffa0853c <v32_bot>) LC1 = P5;

ffa08524 <v32_top>:
ffa08524:	1f 97       	W[P3] = R7;
ffa08526:	00 e3 c9 02 	CALL 0xffa08ab8 <_get_asm2>;
ffa0852a:	9f a5       	R7 = W[P3 + 0xc] (Z);
ffa0852c:	26 e1 ff 00 	R6 = 0xff (X);		/*		R6=0xff(255) */
ffa08530:	f7 55       	R7 = R7 & R6;
ffa08532:	d6 b9       	R6 = [FP -0xc];
ffa08534:	82 c6 46 8c 	R6 = R6 << 0x8;
ffa08538:	be 51       	R6 = R6 + R7;
ffa0853a:	d6 bb       	[FP -0xc] = R6;

ffa0853c <v32_bot>:
ffa0853c:	00 00       	NOP;
ffa0853e:	00 e3 bd 02 	CALL 0xffa08ab8 <_get_asm2>;
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
ffa0855c:	00 e3 ae 02 	CALL 0xffa08ab8 <_get_asm2>;
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
ffa0857e:	00 e3 9d 02 	CALL 0xffa08ab8 <_get_asm2>;

ffa08582 <rp_bot>:
ffa08582:	00 00       	NOP;
ffa08584:	00 e3 3e 00 	CALL 0xffa08600 <_get_asm>;
ffa08588:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa0858a:	0f b5       	W[P1 + 0x8] = R7;
ffa0858c:	00 e3 96 02 	CALL 0xffa08ab8 <_get_asm2>;

ffa08590 <no_rxpacket>:
ffa08590:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa08592:	8f b4       	W[P1 + 0x4] = R7;
ffa08594:	00 e3 36 00 	CALL 0xffa08600 <_get_asm>;
ffa08598:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa0859a:	8f b4       	W[P1 + 0x4] = R7;
ffa0859c:	00 e3 8e 02 	CALL 0xffa08ab8 <_get_asm2>;
ffa085a0:	26 e1 e1 00 	R6 = 0xe1 (X);		/*		R6=0xe1(225) */
ffa085a4:	1e 97       	W[P3] = R6;
ffa085a6:	00 e3 2d 00 	CALL 0xffa08600 <_get_asm>;
ffa085aa:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa085ac:	0f b5       	W[P1 + 0x8] = R7;
ffa085ae:	00 e3 85 02 	CALL 0xffa08ab8 <_get_asm2>;
ffa085b2:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa085b4:	8f b4       	W[P1 + 0x4] = R7;
ffa085b6:	00 e3 25 00 	CALL 0xffa08600 <_get_asm>;
ffa085ba:	06 61       	R6 = 0x20 (X);		/*		R6=0x20( 32) */
ffa085bc:	1e 97       	W[P3] = R6;
ffa085be:	00 e3 7d 02 	CALL 0xffa08ab8 <_get_asm2>;
ffa085c2:	f6 60       	R6 = 0x1e (X);		/*		R6=0x1e( 30) */
ffa085c4:	1e 97       	W[P3] = R6;
ffa085c6:	00 e3 1d 00 	CALL 0xffa08600 <_get_asm>;
ffa085ca:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa085cc:	0f b5       	W[P1 + 0x8] = R7;
ffa085ce:	00 e3 75 02 	CALL 0xffa08ab8 <_get_asm2>;
ffa085d2:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00004(-4194300) */
ffa085d6:	0d e1 08 02 	P5.L = 0x208;		/* (520)	P5=0xffc00208(-4193784) */
ffa085da:	2f 93       	[P5] = R7;
ffa085dc:	00 e3 12 00 	CALL 0xffa08600 <_get_asm>;
ffa085e0:	87 60       	R7 = 0x10 (X);		/*		R7=0x10( 16) */
ffa085e2:	8f b4       	W[P1 + 0x4] = R7;
ffa085e4:	00 e3 6a 02 	CALL 0xffa08ab8 <_get_asm2>;
ffa085e8:	e7 b8       	R7 = [FP -0x48];
ffa085ea:	86 e1 01 00 	R6 = 0x1 (Z);		/*		R6=0x1(  1) */
ffa085ee:	f7 51       	R7 = R7 + R6;
ffa085f0:	82 c6 e7 8d 	R6 = R7 >> 0x4;
ffa085f4:	0e b5       	W[P1 + 0x8] = R6;
ffa085f6:	47 4c       	BITCLR (R7, 0x8);		/* bit  8 */
ffa085f8:	e7 ba       	[FP -0x48] = R7;
ffa085fa:	00 e3 5f 02 	CALL 0xffa08ab8 <_get_asm2>;
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
ffa0861e:	d0 55       	R7 = R0 & R2;
ffa08620:	05 9c       	R5 = [I0++];
ffa08622:	8d b5       	W[P1 + 0xc] = R5;
ffa08624:	00 00       	NOP;
ffa08626:	00 00       	NOP;
ffa08628:	03 c8 00 18 	MNOP || R5 = [I0++] || R1 = [I1++];
ffa0862c:	05 9c 09 9c 
ffa08630:	00 c8 3d c0 	A1 = R7.H * R5.H, A0 = R7.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa08634:	05 9c 0a 9c 
ffa08638:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || R4 = [I1++];
ffa0863c:	05 9c 0c 9c 
ffa08640:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R5 = [I0++] || R3 = [I1 ++ M0];
ffa08644:	05 9c 8b 9d 
ffa08648:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || [I2++] = R7;
ffa0864c:	05 9c 17 9e 
ffa08650:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || [I2++] = R1 || R2 = [I0++];
ffa08654:	11 9e 02 9c 
ffa08658:	81 ce 38 4e 	R7 = R0 << 0x7 (V, S) || R1 = [I1 ++ M0] || [I2++] = R3;
ffa0865c:	89 9d 13 9e 
ffa08660:	00 c8 0a c0 	A1 = R1.H * R2.H, A0 = R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
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
ffa086c8:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa086cc:	89 9d 02 9c 
ffa086d0:	05 c8 8a e9 	R6.H = (A1 += R1.H * R2.H), R6.L = (A0 += R1.L * R2.L) || R1 = [I1++] || R5 = [I0++];
ffa086d4:	09 9c 05 9c 
ffa086d8:	00 cc 06 e0 	R0 = R0 -|- R6 (S) || I0 -= M1 || [I2++] = R0;
ffa086dc:	74 9e 10 9e 
ffa086e0:	81 ce 38 4c 	R6 = R0 << 0x7 (V, S) || I1 += M2 || [I2++] = R7;
ffa086e4:	69 9e 17 9e 
ffa086e8:	81 ce 96 4d 	R6 = R6 >>> 0xe (V) || R1 = [I1++] || R2 = [I0];
ffa086ec:	09 9c 02 9d 
ffa086f0:	00 c8 0e c0 	A1 = R1.H * R6.H, A0 = R1.L * R6.L || NOP || NOP;
ffa086f4:	00 00 00 00 
ffa086f8:	05 c8 15 e9 	R4.H = (A1 += R2.H * R5.H), R4.L = (A0 += R2.L * R5.L) || I1 -= M2 || NOP;
ffa086fc:	79 9e 00 00 
ffa08700:	03 c8 00 18 	MNOP || R5 = [I1++] || [I0 ++ M1] = R4;
ffa08704:	0d 9c a4 9f 
ffa08708:	00 c0 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L;
ffa0870c:	83 c6 38 00 	A0 = A0 << 0x7;
ffa08710:	83 c6 38 10 	A1 = A1 << 0x7;
ffa08714:	07 c0 c0 39 	R7.H = A1, R7.L = A0;
ffa08718:	10 cc 00 c0 	A1 = ABS A0, A0 = ABS A0 || R6 = [I0++] || NOP;
ffa0871c:	06 9c 00 00 
ffa08720:	06 c9 36 f1 	R4.H = (A1 -= R6.H * R6.H), R4.L = (A0 -= R6.L * R6.L) (IS) || R6 = [I0++] || NOP;
ffa08724:	06 9c 00 00 
ffa08728:	00 c0 2e 80 	A1 = R5.H * R6.L, A0 = R5.L * R6.L;
ffa0872c:	26 c0 e6 f2 	R3.H = (A1 -= R4.H * R6.H), R3.L = (A0 -= R4.L * R6.H) (S2RND);
ffa08730:	06 cc 18 86 	R3 = ABS R3 (V) || R5 = [I0++] || R1 = [I1++];
ffa08734:	05 9c 09 9c 
ffa08738:	03 c8 00 18 	MNOP || [I2++] = R3 || NOP;
ffa0873c:	13 9e 00 00 
ffa08740:	00 c8 3d c0 	A1 = R7.H * R5.H, A0 = R7.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa08744:	05 9c 0a 9c 
ffa08748:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || R3 = [I1++];
ffa0874c:	05 9c 0b 9c 
ffa08750:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R5 = [I0++] || R4 = [I1++];
ffa08754:	05 9c 0c 9c 
ffa08758:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || [I2++] = R7;
ffa0875c:	05 9c 17 9e 
ffa08760:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || [I2++] = R1 || NOP;
ffa08764:	11 9e 00 00 
ffa08768:	03 c8 00 18 	MNOP || R5 = [I0++] || [I2++] = R0;
ffa0876c:	05 9c 10 9e 
ffa08770:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || R5 = [I0++] || [I2++] = R3;
ffa08774:	05 9c 13 9e 
ffa08778:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || R1 = [I1++];
ffa0877c:	05 9c 09 9c 
ffa08780:	01 c8 25 c8 	A1 += R4.H * R5.H, A0 += R4.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa08784:	05 9c 0a 9c 
ffa08788:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || NOP;
ffa0878c:	05 9c 00 00 
ffa08790:	25 c8 15 e8 	R0.H = (A1 += R2.H * R5.H), R0.L = (A0 += R2.L * R5.L) (S2RND) || R5 = [I0++] || NOP;
ffa08794:	05 9c 00 00 
ffa08798:	00 cc 05 20 	R0 = R0 +|+ R5 (S) || [I2++] = R0 || NOP;
ffa0879c:	10 9e 00 00 
ffa087a0:	81 ce 90 0d 	R6 = R0 >>> 0xe (V) || [I2++] = R1 || NOP;
ffa087a4:	11 9e 00 00 
ffa087a8:	03 c8 00 18 	MNOP || R5 = [I0++] || R1 = [I1++];
ffa087ac:	05 9c 09 9c 
ffa087b0:	00 c8 3d c0 	A1 = R7.H * R5.H, A0 = R7.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa087b4:	05 9c 0a 9c 
ffa087b8:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || R3 = [I1++];
ffa087bc:	05 9c 0b 9c 
ffa087c0:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R5 = [I0++] || R4 = [I1++];
ffa087c4:	05 9c 0c 9c 
ffa087c8:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || [I2++] = R7;
ffa087cc:	05 9c 17 9e 
ffa087d0:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || [I2++] = R1 || NOP;
ffa087d4:	11 9e 00 00 
ffa087d8:	03 c8 00 18 	MNOP || R5 = [I0++] || [I2++] = R0;
ffa087dc:	05 9c 10 9e 
ffa087e0:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || R5 = [I0++] || [I2++] = R3;
ffa087e4:	05 9c 13 9e 
ffa087e8:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || R1 = [I1++];
ffa087ec:	05 9c 09 9c 
ffa087f0:	01 c8 25 c8 	A1 += R4.H * R5.H, A0 += R4.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa087f4:	05 9c 0a 9c 
ffa087f8:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || NOP;
ffa087fc:	05 9c 00 00 
ffa08800:	25 c8 15 e8 	R0.H = (A1 += R2.H * R5.H), R0.L = (A0 += R2.L * R5.L) (S2RND) || R5 = [I0++] || NOP;
ffa08804:	05 9c 00 00 
ffa08808:	00 cc 05 20 	R0 = R0 +|+ R5 (S) || R7 = [I0++] || [I2++] = R0;
ffa0880c:	07 9c 10 9e 
ffa08810:	81 ce 90 41 	R0 = R0 >>> 0xe (V) || R5 = [I0++] || [I2++] = R1;
ffa08814:	05 9c 11 9e 
ffa08818:	be 55       	R6 = R6 & R7;
ffa0881a:	28 54       	R0 = R0 & R5;
ffa0881c:	86 57       	R6 = R6 | R0;
ffa0881e:	76 bb       	[FP -0x24] = R6;
ffa08820:	40 e4 80 00 	R0 = W[P0 + 0x100] (Z);
ffa08824:	41 e4 80 00 	R1 = W[P0 + 0x100] (Z);
ffa08828:	d2 b8       	R2 = [FP -0x4c];
ffa0882a:	81 4f       	R1 <<= 0x10;
ffa0882c:	08 56       	R0 = R0 | R1;
ffa0882e:	90 54       	R2 = R0 & R2;
ffa08830:	03 c8 00 18 	MNOP || R5 = [I0++] || R1 = [I1++];
ffa08834:	05 9c 09 9c 
ffa08838:	00 c8 3d c0 	A1 = R7.H * R5.H, A0 = R7.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa0883c:	05 9c 0a 9c 
ffa08840:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || R4 = [I1++];
ffa08844:	05 9c 0c 9c 
ffa08848:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R5 = [I0++] || R3 = [I1 ++ M0];
ffa0884c:	05 9c 8b 9d 
ffa08850:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || [I2++] = R7;
ffa08854:	05 9c 17 9e 
ffa08858:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || [I2++] = R1 || R2 = [I0++];
ffa0885c:	11 9e 02 9c 
ffa08860:	81 ce 38 4e 	R7 = R0 << 0x7 (V, S) || R1 = [I1 ++ M0] || [I2++] = R3;
ffa08864:	89 9d 13 9e 
ffa08868:	00 c8 0a c0 	A1 = R1.H * R2.H, A0 = R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
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
ffa088c8:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa088cc:	89 9d 02 9c 
ffa088d0:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa088d4:	89 9d 02 9c 
ffa088d8:	05 c8 8a e9 	R6.H = (A1 += R1.H * R2.H), R6.L = (A0 += R1.L * R2.L) || R1 = [I1++] || R5 = [I0++];
ffa088dc:	09 9c 05 9c 
ffa088e0:	00 cc 06 e0 	R0 = R0 -|- R6 (S) || I0 -= M1 || [I2++] = R0;
ffa088e4:	74 9e 10 9e 
ffa088e8:	81 ce 38 4c 	R6 = R0 << 0x7 (V, S) || I1 += M2 || [I2++] = R7;
ffa088ec:	69 9e 17 9e 
ffa088f0:	81 ce 96 4d 	R6 = R6 >>> 0xe (V) || R1 = [I1++] || R2 = [I0];
ffa088f4:	09 9c 02 9d 
ffa088f8:	00 c8 0e c0 	A1 = R1.H * R6.H, A0 = R1.L * R6.L || NOP || NOP;
ffa088fc:	00 00 00 00 
ffa08900:	05 c8 15 e9 	R4.H = (A1 += R2.H * R5.H), R4.L = (A0 += R2.L * R5.L) || I1 -= M2 || NOP;
ffa08904:	79 9e 00 00 
ffa08908:	03 c8 00 18 	MNOP || R5 = [I1++] || [I0 ++ M1] = R4;
ffa0890c:	0d 9c a4 9f 
ffa08910:	00 c0 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L;
ffa08914:	83 c6 38 00 	A0 = A0 << 0x7;
ffa08918:	83 c6 38 10 	A1 = A1 << 0x7;
ffa0891c:	07 c0 c0 39 	R7.H = A1, R7.L = A0;
ffa08920:	10 cc 00 c0 	A1 = ABS A0, A0 = ABS A0 || R6 = [I0++] || NOP;
ffa08924:	06 9c 00 00 
ffa08928:	06 c9 36 f1 	R4.H = (A1 -= R6.H * R6.H), R4.L = (A0 -= R6.L * R6.L) (IS) || R6 = [I0++] || NOP;
ffa0892c:	06 9c 00 00 
ffa08930:	00 c0 2e 80 	A1 = R5.H * R6.L, A0 = R5.L * R6.L;
ffa08934:	26 c0 e6 f2 	R3.H = (A1 -= R4.H * R6.H), R3.L = (A0 -= R4.L * R6.H) (S2RND);
ffa08938:	06 cc 18 86 	R3 = ABS R3 (V) || R5 = [I0++] || R1 = [I1++];
ffa0893c:	05 9c 09 9c 
ffa08940:	03 c8 00 18 	MNOP || [I2++] = R3 || NOP;
ffa08944:	13 9e 00 00 
ffa08948:	00 c8 3d c0 	A1 = R7.H * R5.H, A0 = R7.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa0894c:	05 9c 0a 9c 
ffa08950:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || R3 = [I1++];
ffa08954:	05 9c 0b 9c 
ffa08958:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R5 = [I0++] || R4 = [I1++];
ffa0895c:	05 9c 0c 9c 
ffa08960:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || [I2++] = R7;
ffa08964:	05 9c 17 9e 
ffa08968:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || [I2++] = R1 || NOP;
ffa0896c:	11 9e 00 00 
ffa08970:	03 c8 00 18 	MNOP || R5 = [I0++] || [I2++] = R0;
ffa08974:	05 9c 10 9e 
ffa08978:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || R5 = [I0++] || [I2++] = R3;
ffa0897c:	05 9c 13 9e 
ffa08980:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || R1 = [I1++];
ffa08984:	05 9c 09 9c 
ffa08988:	01 c8 25 c8 	A1 += R4.H * R5.H, A0 += R4.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa0898c:	05 9c 0a 9c 
ffa08990:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || NOP;
ffa08994:	05 9c 00 00 
ffa08998:	25 c8 15 e8 	R0.H = (A1 += R2.H * R5.H), R0.L = (A0 += R2.L * R5.L) (S2RND) || R5 = [I0++] || NOP;
ffa0899c:	05 9c 00 00 
ffa089a0:	00 cc 05 20 	R0 = R0 +|+ R5 (S) || [I2++] = R0 || NOP;
ffa089a4:	10 9e 00 00 
ffa089a8:	81 ce 88 0d 	R6 = R0 >>> 0xf (V) || [I2++] = R1 || NOP;
ffa089ac:	11 9e 00 00 
ffa089b0:	03 c8 00 18 	MNOP || R5 = [I0++] || R1 = [I1++];
ffa089b4:	05 9c 09 9c 
ffa089b8:	00 c8 3d c0 	A1 = R7.H * R5.H, A0 = R7.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa089bc:	05 9c 0a 9c 
ffa089c0:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || R3 = [I1++];
ffa089c4:	05 9c 0b 9c 
ffa089c8:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R5 = [I0++] || R4 = [I1++];
ffa089cc:	05 9c 0c 9c 
ffa089d0:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || [I2++] = R7;
ffa089d4:	05 9c 17 9e 
ffa089d8:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || [I2++] = R1 || NOP;
ffa089dc:	11 9e 00 00 
ffa089e0:	03 c8 00 18 	MNOP || R5 = [I0++] || [I2++] = R0;
ffa089e4:	05 9c 10 9e 
ffa089e8:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || R5 = [I0++] || [I2++] = R3;
ffa089ec:	05 9c 13 9e 
ffa089f0:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || R1 = [I1++];
ffa089f4:	05 9c 09 9c 
ffa089f8:	01 c8 25 c8 	A1 += R4.H * R5.H, A0 += R4.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa089fc:	05 9c 0a 9c 
ffa08a00:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || NOP;
ffa08a04:	05 9c 00 00 
ffa08a08:	25 c8 15 e8 	R0.H = (A1 += R2.H * R5.H), R0.L = (A0 += R2.L * R5.L) (S2RND) || R5 = [I0++] || NOP;
ffa08a0c:	05 9c 00 00 
ffa08a10:	00 cc 05 20 	R0 = R0 +|+ R5 (S) || R7 = [I0++] || [I2++] = R0;
ffa08a14:	07 9c 10 9e 
ffa08a18:	81 ce 90 41 	R0 = R0 >>> 0xe (V) || R5 = [I0++] || [I2++] = R1;
ffa08a1c:	05 9c 11 9e 
ffa08a20:	be 55       	R6 = R6 & R7;
ffa08a22:	28 54       	R0 = R0 & R5;
ffa08a24:	86 57       	R6 = R6 | R0;
ffa08a26:	77 b9       	R7 = [FP -0x24];
ffa08a28:	37 56       	R0 = R7 | R6;
ffa08a2a:	06 9c       	R6 = [I0++];
ffa08a2c:	06 32       	P0 = R6;
ffa08a2e:	3d b9       	P5 = [FP -0x34];
ffa08a30:	19 b9       	P1 = [FP -0x3c];
ffa08a32:	02 c4 00 40 	R0.L = R0.L + R0.H (NS);
ffa08a36:	40 43       	R0 = R0.B (Z);
ffa08a38:	45 5b       	P5 = P5 + P0;
ffa08a3a:	29 99       	R1 = B[P5] (Z);
ffa08a3c:	41 56       	R1 = R1 | R0;
ffa08a3e:	01 32       	P0 = R1;
ffa08a40:	29 9b       	B[P5] = R1;
ffa08a42:	03 69       	P3 = 0x20 (X);		/*		P3=0x20( 32) */
ffa08a44:	5d 5b       	P5 = P5 + P3;
ffa08a46:	41 5a       	P1 = P1 + P0;
ffa08a48:	0a 99       	R2 = B[P1] (Z);
ffa08a4a:	2a 9b       	B[P5] = R2;
ffa08a4c:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa08a4e:	06 08       	CC = R6 == R0;
ffa08a50:	31 14       	IF !CC JUMP 0xffa08ab2 <end_txchan> (BP);
ffa08a52:	98 b9       	P0 = [FP -0x1c];
ffa08a54:	2f 60       	R7 = 0x5 (X);		/*		R7=0x5(  5) */
ffa08a56:	00 00       	NOP;
ffa08a58:	03 c8 00 18 	MNOP || P1 = [FP -0x18] || R0 = [I3++];
ffa08a5c:	a9 b9 18 9c 
ffa08a60:	03 c8 00 18 	MNOP || P3 = [FP -0x14] || R1 = [I3++];
ffa08a64:	bb b9 19 9c 
ffa08a68:	03 c8 00 18 	MNOP || P5 = [FP -0x10] || R4 = [I3++];
ffa08a6c:	cd b9 1c 9c 
ffa08a70:	28 34       	M1 = R0;
ffa08a72:	31 34       	M2 = R1;
ffa08a74:	00 99       	R0 = B[P0] (Z);
ffa08a76:	09 99       	R1 = B[P1] (Z);
ffa08a78:	1a 99       	R2 = B[P3] (Z);
ffa08a7a:	2b 99       	R3 = B[P5] (Z);
ffa08a7c:	20 9a       	B[P4++] = R0;
ffa08a7e:	21 9a       	B[P4++] = R1;
ffa08a80:	22 9a       	B[P4++] = R2;
ffa08a82:	23 9a       	B[P4++] = R3;
ffa08a84:	3c 08       	CC = R4 == R7;
ffa08a86:	13 14       	IF !CC JUMP 0xffa08aac <end_txchan_qs> (BP);
ffa08a88:	1f 9c       	R7 = [I3++];
ffa08a8a:	1e 9c       	R6 = [I3++];
ffa08a8c:	2e 32       	P5 = R6;
ffa08a8e:	f5 b9       	R5 = [FP -0x4];
ffa08a90:	0d 64       	R5 += 0x1;		/* (  1) */
ffa08a92:	f5 bb       	[FP -0x4] = R5;
ffa08a94:	f5 b8       	R5 = [FP -0x44];
ffa08a96:	28 90       	R0 = [P5++];
ffa08a98:	29 90       	R1 = [P5++];
ffa08a9a:	38 56       	R0 = R0 | R7;
ffa08a9c:	69 56       	R1 = R1 | R5;
ffa08a9e:	e0 6a       	P0 = -0x24 (X);		/*		P0=0xffffffdc(-36) */
ffa08aa0:	45 5b       	P5 = P5 + P0;
ffa08aa2:	20 92       	[P4++] = R0;
ffa08aa4:	21 92       	[P4++] = R1;
ffa08aa6:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa08aa8:	ac 92       	[P5--] = R4;
ffa08aaa:	ac 92       	[P5--] = R4;

ffa08aac <end_txchan_qs>:
ffa08aac:	7c 30       	R7 = P4;
ffa08aae:	57 4c       	BITCLR (R7, 0xa);		/* bit 10 */
ffa08ab0:	27 32       	P4 = R7;

ffa08ab2 <end_txchan>:
ffa08ab2:	5b b9       	P3 = [FP -0x2c];
ffa08ab4:	49 b9       	P1 = [FP -0x30];
ffa08ab6:	10 00       	RTS;

ffa08ab8 <_get_asm2>:
ffa08ab8:	68 b9       	P0 = [FP -0x28];
ffa08aba:	27 e1 00 01 	R7 = 0x100 (X);		/*		R7=0x100(256) */
ffa08abe:	8f b4       	W[P1 + 0x4] = R7;
ffa08ac0:	27 e1 80 00 	R7 = 0x80 (X);		/*		R7=0x80(128) */
ffa08ac4:	0f b5       	W[P1 + 0x8] = R7;

ffa08ac6 <wait_samples>:
ffa08ac6:	03 a7       	R3 = W[P0 + 0x18] (Z);
ffa08ac8:	03 48       	CC = !BITTST (R3, 0x0);		/* bit  0 */
ffa08aca:	fe 1b       	IF CC JUMP 0xffa08ac6 <wait_samples>;
ffa08acc:	00 95       	R0 = W[P0] (Z);
ffa08ace:	01 95       	R1 = W[P0] (Z);
ffa08ad0:	d2 b8       	R2 = [FP -0x4c];
ffa08ad2:	81 4f       	R1 <<= 0x10;
ffa08ad4:	08 56       	R0 = R0 | R1;
ffa08ad6:	d0 55       	R7 = R0 & R2;
ffa08ad8:	05 9c       	R5 = [I0++];
ffa08ada:	8d b5       	W[P1 + 0xc] = R5;
ffa08adc:	00 00       	NOP;
ffa08ade:	00 00       	NOP;
ffa08ae0:	03 c8 00 18 	MNOP || R5 = [I0++] || R1 = [I1++];
ffa08ae4:	05 9c 09 9c 
ffa08ae8:	00 c8 3d c0 	A1 = R7.H * R5.H, A0 = R7.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa08aec:	05 9c 0a 9c 
ffa08af0:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || R4 = [I1++];
ffa08af4:	05 9c 0c 9c 
ffa08af8:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R5 = [I0++] || R3 = [I1 ++ M0];
ffa08afc:	05 9c 8b 9d 
ffa08b00:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || [I2++] = R7;
ffa08b04:	05 9c 17 9e 
ffa08b08:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || [I2++] = R1 || R2 = [I0++];
ffa08b0c:	11 9e 02 9c 
ffa08b10:	81 ce 38 4e 	R7 = R0 << 0x7 (V, S) || R1 = [I1 ++ M0] || [I2++] = R3;
ffa08b14:	89 9d 13 9e 
ffa08b18:	00 c8 0a c0 	A1 = R1.H * R2.H, A0 = R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
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
ffa08b70:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08b74:	89 9d 02 9c 
ffa08b78:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08b7c:	89 9d 02 9c 
ffa08b80:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08b84:	89 9d 02 9c 
ffa08b88:	05 c8 8a e9 	R6.H = (A1 += R1.H * R2.H), R6.L = (A0 += R1.L * R2.L) || R1 = [I1++] || R5 = [I0++];
ffa08b8c:	09 9c 05 9c 
ffa08b90:	00 cc 06 e0 	R0 = R0 -|- R6 (S) || I0 -= M1 || [I2++] = R0;
ffa08b94:	74 9e 10 9e 
ffa08b98:	81 ce 38 4c 	R6 = R0 << 0x7 (V, S) || I1 += M2 || [I2++] = R7;
ffa08b9c:	69 9e 17 9e 
ffa08ba0:	81 ce 96 4d 	R6 = R6 >>> 0xe (V) || R1 = [I1++] || R2 = [I0];
ffa08ba4:	09 9c 02 9d 
ffa08ba8:	00 c8 0e c0 	A1 = R1.H * R6.H, A0 = R1.L * R6.L || NOP || NOP;
ffa08bac:	00 00 00 00 
ffa08bb0:	05 c8 15 e9 	R4.H = (A1 += R2.H * R5.H), R4.L = (A0 += R2.L * R5.L) || I1 -= M2 || NOP;
ffa08bb4:	79 9e 00 00 
ffa08bb8:	03 c8 00 18 	MNOP || R5 = [I1++] || [I0 ++ M1] = R4;
ffa08bbc:	0d 9c a4 9f 
ffa08bc0:	00 c0 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L;
ffa08bc4:	83 c6 38 00 	A0 = A0 << 0x7;
ffa08bc8:	83 c6 38 10 	A1 = A1 << 0x7;
ffa08bcc:	07 c0 c0 39 	R7.H = A1, R7.L = A0;
ffa08bd0:	03 c8 00 18 	MNOP || I0 += M3 || R3 = [I2++];
ffa08bd4:	6c 9e 13 9c 
ffa08bd8:	03 c8 00 18 	MNOP || R5 = [I0++] || R1 = [I1++];
ffa08bdc:	05 9c 09 9c 
ffa08be0:	00 c8 3d c0 	A1 = R7.H * R5.H, A0 = R7.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa08be4:	05 9c 0a 9c 
ffa08be8:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || R3 = [I1++];
ffa08bec:	05 9c 0b 9c 
ffa08bf0:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R5 = [I0++] || R4 = [I1++];
ffa08bf4:	05 9c 0c 9c 
ffa08bf8:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || [I2++] = R7;
ffa08bfc:	05 9c 17 9e 
ffa08c00:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || [I2++] = R1 || NOP;
ffa08c04:	11 9e 00 00 
ffa08c08:	03 c8 00 18 	MNOP || R5 = [I0++] || [I2++] = R0;
ffa08c0c:	05 9c 10 9e 
ffa08c10:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || R5 = [I0++] || [I2++] = R3;
ffa08c14:	05 9c 13 9e 
ffa08c18:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || R1 = [I1++];
ffa08c1c:	05 9c 09 9c 
ffa08c20:	01 c8 25 c8 	A1 += R4.H * R5.H, A0 += R4.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa08c24:	05 9c 0a 9c 
ffa08c28:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || NOP;
ffa08c2c:	05 9c 00 00 
ffa08c30:	25 c8 15 e8 	R0.H = (A1 += R2.H * R5.H), R0.L = (A0 += R2.L * R5.L) (S2RND) || R5 = [I0++] || NOP;
ffa08c34:	05 9c 00 00 
ffa08c38:	00 cc 05 20 	R0 = R0 +|+ R5 (S) || [I2++] = R0 || NOP;
ffa08c3c:	10 9e 00 00 
ffa08c40:	81 ce 90 0d 	R6 = R0 >>> 0xe (V) || [I2++] = R1 || NOP;
ffa08c44:	11 9e 00 00 
ffa08c48:	03 c8 00 18 	MNOP || R5 = [I0++] || R1 = [I1++];
ffa08c4c:	05 9c 09 9c 
ffa08c50:	00 c8 3d c0 	A1 = R7.H * R5.H, A0 = R7.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa08c54:	05 9c 0a 9c 
ffa08c58:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || R3 = [I1++];
ffa08c5c:	05 9c 0b 9c 
ffa08c60:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R5 = [I0++] || R4 = [I1++];
ffa08c64:	05 9c 0c 9c 
ffa08c68:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || [I2++] = R7;
ffa08c6c:	05 9c 17 9e 
ffa08c70:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || [I2++] = R1 || NOP;
ffa08c74:	11 9e 00 00 
ffa08c78:	03 c8 00 18 	MNOP || R5 = [I0++] || [I2++] = R0;
ffa08c7c:	05 9c 10 9e 
ffa08c80:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || R5 = [I0++] || [I2++] = R3;
ffa08c84:	05 9c 13 9e 
ffa08c88:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || R1 = [I1++];
ffa08c8c:	05 9c 09 9c 
ffa08c90:	01 c8 25 c8 	A1 += R4.H * R5.H, A0 += R4.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa08c94:	05 9c 0a 9c 
ffa08c98:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || NOP;
ffa08c9c:	05 9c 00 00 
ffa08ca0:	25 c8 15 e8 	R0.H = (A1 += R2.H * R5.H), R0.L = (A0 += R2.L * R5.L) (S2RND) || R5 = [I0++] || NOP;
ffa08ca4:	05 9c 00 00 
ffa08ca8:	00 cc 05 20 	R0 = R0 +|+ R5 (S) || R7 = [I0++] || [I2++] = R0;
ffa08cac:	07 9c 10 9e 
ffa08cb0:	81 ce 90 41 	R0 = R0 >>> 0xe (V) || R5 = [I0++] || [I2++] = R1;
ffa08cb4:	05 9c 11 9e 
ffa08cb8:	be 55       	R6 = R6 & R7;
ffa08cba:	28 54       	R0 = R0 & R5;
ffa08cbc:	86 57       	R6 = R6 | R0;
ffa08cbe:	76 bb       	[FP -0x24] = R6;
ffa08cc0:	40 e4 80 00 	R0 = W[P0 + 0x100] (Z);
ffa08cc4:	41 e4 80 00 	R1 = W[P0 + 0x100] (Z);
ffa08cc8:	d2 b8       	R2 = [FP -0x4c];
ffa08cca:	81 4f       	R1 <<= 0x10;
ffa08ccc:	08 56       	R0 = R0 | R1;
ffa08cce:	90 54       	R2 = R0 & R2;
ffa08cd0:	03 c8 00 18 	MNOP || R5 = [I0++] || R1 = [I1++];
ffa08cd4:	05 9c 09 9c 
ffa08cd8:	00 c8 3d c0 	A1 = R7.H * R5.H, A0 = R7.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa08cdc:	05 9c 0a 9c 
ffa08ce0:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || R4 = [I1++];
ffa08ce4:	05 9c 0c 9c 
ffa08ce8:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R5 = [I0++] || R3 = [I1 ++ M0];
ffa08cec:	05 9c 8b 9d 
ffa08cf0:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || [I2++] = R7;
ffa08cf4:	05 9c 17 9e 
ffa08cf8:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || [I2++] = R1 || R2 = [I0++];
ffa08cfc:	11 9e 02 9c 
ffa08d00:	81 ce 38 4e 	R7 = R0 << 0x7 (V, S) || R1 = [I1 ++ M0] || [I2++] = R3;
ffa08d04:	89 9d 13 9e 
ffa08d08:	00 c8 0a c0 	A1 = R1.H * R2.H, A0 = R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
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
ffa08d58:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08d5c:	89 9d 02 9c 
ffa08d60:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08d64:	89 9d 02 9c 
ffa08d68:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08d6c:	89 9d 02 9c 
ffa08d70:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08d74:	89 9d 02 9c 
ffa08d78:	05 c8 8a e9 	R6.H = (A1 += R1.H * R2.H), R6.L = (A0 += R1.L * R2.L) || R1 = [I1++] || R5 = [I0++];
ffa08d7c:	09 9c 05 9c 
ffa08d80:	00 cc 06 e0 	R0 = R0 -|- R6 (S) || I0 -= M1 || [I2++] = R0;
ffa08d84:	74 9e 10 9e 
ffa08d88:	81 ce 38 4c 	R6 = R0 << 0x7 (V, S) || I1 += M2 || [I2++] = R7;
ffa08d8c:	69 9e 17 9e 
ffa08d90:	81 ce 96 4d 	R6 = R6 >>> 0xe (V) || R1 = [I1++] || R2 = [I0];
ffa08d94:	09 9c 02 9d 
ffa08d98:	00 c8 0e c0 	A1 = R1.H * R6.H, A0 = R1.L * R6.L || NOP || NOP;
ffa08d9c:	00 00 00 00 
ffa08da0:	05 c8 15 e9 	R4.H = (A1 += R2.H * R5.H), R4.L = (A0 += R2.L * R5.L) || I1 -= M2 || NOP;
ffa08da4:	79 9e 00 00 
ffa08da8:	03 c8 00 18 	MNOP || R5 = [I1++] || [I0 ++ M1] = R4;
ffa08dac:	0d 9c a4 9f 
ffa08db0:	00 c0 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L;
ffa08db4:	83 c6 38 00 	A0 = A0 << 0x7;
ffa08db8:	83 c6 38 10 	A1 = A1 << 0x7;
ffa08dbc:	07 c0 c0 39 	R7.H = A1, R7.L = A0;
ffa08dc0:	03 c8 00 18 	MNOP || I0 += M3 || R3 = [I2++];
ffa08dc4:	6c 9e 13 9c 
ffa08dc8:	03 c8 00 18 	MNOP || R5 = [I0++] || R1 = [I1++];
ffa08dcc:	05 9c 09 9c 
ffa08dd0:	00 c8 3d c0 	A1 = R7.H * R5.H, A0 = R7.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa08dd4:	05 9c 0a 9c 
ffa08dd8:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || R3 = [I1++];
ffa08ddc:	05 9c 0b 9c 
ffa08de0:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R5 = [I0++] || R4 = [I1++];
ffa08de4:	05 9c 0c 9c 
ffa08de8:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || [I2++] = R7;
ffa08dec:	05 9c 17 9e 
ffa08df0:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || [I2++] = R1 || NOP;
ffa08df4:	11 9e 00 00 
ffa08df8:	03 c8 00 18 	MNOP || R5 = [I0++] || [I2++] = R0;
ffa08dfc:	05 9c 10 9e 
ffa08e00:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || R5 = [I0++] || [I2++] = R3;
ffa08e04:	05 9c 13 9e 
ffa08e08:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || R1 = [I1++];
ffa08e0c:	05 9c 09 9c 
ffa08e10:	01 c8 25 c8 	A1 += R4.H * R5.H, A0 += R4.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa08e14:	05 9c 0a 9c 
ffa08e18:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || NOP;
ffa08e1c:	05 9c 00 00 
ffa08e20:	25 c8 15 e8 	R0.H = (A1 += R2.H * R5.H), R0.L = (A0 += R2.L * R5.L) (S2RND) || R5 = [I0++] || NOP;
ffa08e24:	05 9c 00 00 
ffa08e28:	00 cc 05 20 	R0 = R0 +|+ R5 (S) || [I2++] = R0 || NOP;
ffa08e2c:	10 9e 00 00 
ffa08e30:	81 ce 88 0d 	R6 = R0 >>> 0xf (V) || [I2++] = R1 || NOP;
ffa08e34:	11 9e 00 00 
ffa08e38:	03 c8 00 18 	MNOP || R5 = [I0++] || R1 = [I1++];
ffa08e3c:	05 9c 09 9c 
ffa08e40:	00 c8 3d c0 	A1 = R7.H * R5.H, A0 = R7.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa08e44:	05 9c 0a 9c 
ffa08e48:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || R3 = [I1++];
ffa08e4c:	05 9c 0b 9c 
ffa08e50:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R5 = [I0++] || R4 = [I1++];
ffa08e54:	05 9c 0c 9c 
ffa08e58:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || [I2++] = R7;
ffa08e5c:	05 9c 17 9e 
ffa08e60:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || [I2++] = R1 || NOP;
ffa08e64:	11 9e 00 00 
ffa08e68:	03 c8 00 18 	MNOP || R5 = [I0++] || [I2++] = R0;
ffa08e6c:	05 9c 10 9e 
ffa08e70:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || R5 = [I0++] || [I2++] = R3;
ffa08e74:	05 9c 13 9e 
ffa08e78:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || R1 = [I1++];
ffa08e7c:	05 9c 09 9c 
ffa08e80:	01 c8 25 c8 	A1 += R4.H * R5.H, A0 += R4.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa08e84:	05 9c 0a 9c 
ffa08e88:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || NOP;
ffa08e8c:	05 9c 00 00 
ffa08e90:	25 c8 15 e8 	R0.H = (A1 += R2.H * R5.H), R0.L = (A0 += R2.L * R5.L) (S2RND) || R5 = [I0++] || NOP;
ffa08e94:	05 9c 00 00 
ffa08e98:	00 cc 05 20 	R0 = R0 +|+ R5 (S) || R7 = [I0++] || [I2++] = R0;
ffa08e9c:	07 9c 10 9e 
ffa08ea0:	81 ce 90 41 	R0 = R0 >>> 0xe (V) || R5 = [I0++] || [I2++] = R1;
ffa08ea4:	05 9c 11 9e 
ffa08ea8:	be 55       	R6 = R6 & R7;
ffa08eaa:	28 54       	R0 = R0 & R5;
ffa08eac:	86 57       	R6 = R6 | R0;
ffa08eae:	77 b9       	R7 = [FP -0x24];
ffa08eb0:	37 56       	R0 = R7 | R6;
ffa08eb2:	06 9c       	R6 = [I0++];
ffa08eb4:	06 32       	P0 = R6;
ffa08eb6:	3d b9       	P5 = [FP -0x34];
ffa08eb8:	19 b9       	P1 = [FP -0x3c];
ffa08eba:	02 c4 00 40 	R0.L = R0.L + R0.H (NS);
ffa08ebe:	40 43       	R0 = R0.B (Z);
ffa08ec0:	45 5b       	P5 = P5 + P0;
ffa08ec2:	29 99       	R1 = B[P5] (Z);
ffa08ec4:	41 56       	R1 = R1 | R0;
ffa08ec6:	01 32       	P0 = R1;
ffa08ec8:	29 9b       	B[P5] = R1;
ffa08eca:	03 69       	P3 = 0x20 (X);		/*		P3=0x20( 32) */
ffa08ecc:	5d 5b       	P5 = P5 + P3;
ffa08ece:	41 5a       	P1 = P1 + P0;
ffa08ed0:	0a 99       	R2 = B[P1] (Z);
ffa08ed2:	2a 9b       	B[P5] = R2;
ffa08ed4:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa08ed6:	06 08       	CC = R6 == R0;
ffa08ed8:	31 14       	IF !CC JUMP 0xffa08f3a <end_txchan> (BP);
ffa08eda:	98 b9       	P0 = [FP -0x1c];
ffa08edc:	2f 60       	R7 = 0x5 (X);		/*		R7=0x5(  5) */
ffa08ede:	00 00       	NOP;
ffa08ee0:	03 c8 00 18 	MNOP || P1 = [FP -0x18] || R0 = [I3++];
ffa08ee4:	a9 b9 18 9c 
ffa08ee8:	03 c8 00 18 	MNOP || P3 = [FP -0x14] || R1 = [I3++];
ffa08eec:	bb b9 19 9c 
ffa08ef0:	03 c8 00 18 	MNOP || P5 = [FP -0x10] || R4 = [I3++];
ffa08ef4:	cd b9 1c 9c 
ffa08ef8:	28 34       	M1 = R0;
ffa08efa:	31 34       	M2 = R1;
ffa08efc:	00 99       	R0 = B[P0] (Z);
ffa08efe:	09 99       	R1 = B[P1] (Z);
ffa08f00:	1a 99       	R2 = B[P3] (Z);
ffa08f02:	2b 99       	R3 = B[P5] (Z);
ffa08f04:	20 9a       	B[P4++] = R0;
ffa08f06:	21 9a       	B[P4++] = R1;
ffa08f08:	22 9a       	B[P4++] = R2;
ffa08f0a:	23 9a       	B[P4++] = R3;
ffa08f0c:	3c 08       	CC = R4 == R7;
ffa08f0e:	13 14       	IF !CC JUMP 0xffa08f34 <end_txchan_qs> (BP);
ffa08f10:	1f 9c       	R7 = [I3++];
ffa08f12:	1e 9c       	R6 = [I3++];
ffa08f14:	2e 32       	P5 = R6;
ffa08f16:	f5 b9       	R5 = [FP -0x4];
ffa08f18:	0d 64       	R5 += 0x1;		/* (  1) */
ffa08f1a:	f5 bb       	[FP -0x4] = R5;
ffa08f1c:	f5 b8       	R5 = [FP -0x44];
ffa08f1e:	28 90       	R0 = [P5++];
ffa08f20:	29 90       	R1 = [P5++];
ffa08f22:	38 56       	R0 = R0 | R7;
ffa08f24:	69 56       	R1 = R1 | R5;
ffa08f26:	e0 6a       	P0 = -0x24 (X);		/*		P0=0xffffffdc(-36) */
ffa08f28:	45 5b       	P5 = P5 + P0;
ffa08f2a:	20 92       	[P4++] = R0;
ffa08f2c:	21 92       	[P4++] = R1;
ffa08f2e:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa08f30:	ac 92       	[P5--] = R4;
ffa08f32:	ac 92       	[P5--] = R4;

ffa08f34 <end_txchan_qs>:
ffa08f34:	7c 30       	R7 = P4;
ffa08f36:	57 4c       	BITCLR (R7, 0xa);		/* bit 10 */
ffa08f38:	27 32       	P4 = R7;

ffa08f3a <end_txchan>:
ffa08f3a:	5b b9       	P3 = [FP -0x2c];
ffa08f3c:	49 b9       	P1 = [FP -0x30];
ffa08f3e:	10 00       	RTS;

ffa08f40 <_init6>:
ffa08f40:	10 e1 00 40 	I0.L = 0x4000;		/* (16384)	I0=0x4000(16384) */
ffa08f44:	50 e1 90 ff 	I0.H = 0xff90;		/* (-112)	I0=0xff904000(-7323648) */
ffa08f48:	80 36       	B0 = I0;
ffa08f4a:	1c e1 00 30 	L0.L = 0x3000;		/* (12288)	L0=0x3000(12288) */
ffa08f4e:	5c e1 00 00 	L0.H = 0x0;		/* (  0)	L0=0x3000(12288) */
ffa08f52:	14 e1 20 01 	M0.L = 0x120;		/* (288)	M0=0x120(288) */
ffa08f56:	54 e1 00 00 	M0.H = 0x0;		/* (  0)	M0=0x120(288) */
ffa08f5a:	05 69       	P5 = 0x20 (X);		/*		P5=0x20( 32) */
ffa08f5c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa08f5e:	a2 e0 b0 50 	LSETUP(0xffa08f62 <lt_top>, 0xffa090be <lt_bot>) LC0 = P5;

ffa08f62 <lt_top>:
ffa08f62:	20 e1 00 01 	R0 = 0x100 (X);		/*		R0=0x100(256) */
ffa08f66:	00 9e       	[I0++] = R0;
ffa08f68:	15 68       	P5 = 0x2 (X);		/*		P5=0x2(  2) */
ffa08f6a:	b2 e0 98 50 	LSETUP(0xffa08f6e <lt2_top>, 0xffa0909a <lt2_bot>) LC1 = P5;

ffa08f6e <lt2_top>:
ffa08f6e:	00 e1 00 40 	R0.L = 0x4000;		/* (16384)	R0=0x4000(16384) */
ffa08f72:	20 9e       	W[I0++] = R0.L;
ffa08f74:	20 9e       	W[I0++] = R0.L;
ffa08f76:	00 e1 00 00 	R0.L = 0x0;		/* (  0)	R0=0x0(  0) */
ffa08f7a:	20 9e       	W[I0++] = R0.L;
ffa08f7c:	20 9e       	W[I0++] = R0.L;
ffa08f7e:	00 e1 00 c0 	R0.L = 0xc000;		/* (-16384)	R0=0xc000(49152) */
ffa08f82:	20 9e       	W[I0++] = R0.L;
ffa08f84:	20 9e       	W[I0++] = R0.L;
ffa08f86:	00 e1 07 5d 	R0.L = 0x5d07;		/* (23815)	R0=0x5d07(23815) */
ffa08f8a:	20 9e       	W[I0++] = R0.L;
ffa08f8c:	20 9e       	W[I0++] = R0.L;
ffa08f8e:	00 e1 2b dd 	R0.L = 0xdd2b;		/* (-8917)	R0=0xdd2b(56619) */
ffa08f92:	20 9e       	W[I0++] = R0.L;
ffa08f94:	20 9e       	W[I0++] = R0.L;
ffa08f96:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa08f98:	00 9e       	[I0++] = R0;
ffa08f9a:	00 9e       	[I0++] = R0;
ffa08f9c:	00 9e       	[I0++] = R0;
ffa08f9e:	00 9e       	[I0++] = R0;
ffa08fa0:	00 9e       	[I0++] = R0;
ffa08fa2:	00 9e       	[I0++] = R0;
ffa08fa4:	00 9e       	[I0++] = R0;
ffa08fa6:	00 9e       	[I0++] = R0;
ffa08fa8:	00 9e       	[I0++] = R0;
ffa08faa:	00 9e       	[I0++] = R0;
ffa08fac:	00 9e       	[I0++] = R0;
ffa08fae:	00 9e       	[I0++] = R0;
ffa08fb0:	00 9e       	[I0++] = R0;
ffa08fb2:	00 9e       	[I0++] = R0;
ffa08fb4:	00 9e       	[I0++] = R0;
ffa08fb6:	00 e1 ff 7f 	R0.L = 0x7fff;		/* (32767)	R0=0x7fff(32767) */
ffa08fba:	20 9e       	W[I0++] = R0.L;
ffa08fbc:	20 9e       	W[I0++] = R0.L;
ffa08fbe:	00 e1 bb 26 	R0.L = 0x26bb;		/* (9915)	R0=0x26bb(9915) */
ffa08fc2:	40 e1 bb 26 	R0.H = 0x26bb;		/* (9915)	R0=0x26bb26bb(649799355) */
ffa08fc6:	00 9e       	[I0++] = R0;
ffa08fc8:	00 e1 00 40 	R0.L = 0x4000;		/* (16384)	R0=0x26bb4000(649805824) */
ffa08fcc:	40 e1 01 00 	R0.H = 0x1;		/* (  1)	R0=0x14000(81920) */
ffa08fd0:	00 9e       	[I0++] = R0;
ffa08fd2:	20 e1 d4 1e 	R0 = 0x1ed4 (X);		/*		R0=0x1ed4(7892) */
ffa08fd6:	20 9e       	W[I0++] = R0.L;
ffa08fd8:	20 9e       	W[I0++] = R0.L;
ffa08fda:	20 e1 a9 3d 	R0 = 0x3da9 (X);		/*		R0=0x3da9(15785) */
ffa08fde:	20 9e       	W[I0++] = R0.L;
ffa08fe0:	20 9e       	W[I0++] = R0.L;
ffa08fe2:	20 e1 d4 1e 	R0 = 0x1ed4 (X);		/*		R0=0x1ed4(7892) */
ffa08fe6:	20 9e       	W[I0++] = R0.L;
ffa08fe8:	20 9e       	W[I0++] = R0.L;
ffa08fea:	20 e1 ad 14 	R0 = 0x14ad (X);		/*		R0=0x14ad(5293) */
ffa08fee:	20 9e       	W[I0++] = R0.L;
ffa08ff0:	20 9e       	W[I0++] = R0.L;
ffa08ff2:	20 e1 c9 e2 	R0 = -0x1d37 (X);		/*		R0=0xffffe2c9(-7479) */
ffa08ff6:	20 9e       	W[I0++] = R0.L;
ffa08ff8:	20 9e       	W[I0++] = R0.L;
ffa08ffa:	20 e1 ee 3b 	R0 = 0x3bee (X);		/*		R0=0x3bee(15342) */
ffa08ffe:	20 9e       	W[I0++] = R0.L;
ffa09000:	20 9e       	W[I0++] = R0.L;
ffa09002:	20 e1 21 88 	R0 = -0x77df (X);		/*		R0=0xffff8821(-30687) */
ffa09006:	20 9e       	W[I0++] = R0.L;
ffa09008:	20 9e       	W[I0++] = R0.L;
ffa0900a:	20 e1 ee 3b 	R0 = 0x3bee (X);		/*		R0=0x3bee(15342) */
ffa0900e:	20 9e       	W[I0++] = R0.L;
ffa09010:	20 9e       	W[I0++] = R0.L;
ffa09012:	20 e1 a5 7a 	R0 = 0x7aa5 (X);		/*		R0=0x7aa5(31397) */
ffa09016:	20 9e       	W[I0++] = R0.L;
ffa09018:	20 9e       	W[I0++] = R0.L;
ffa0901a:	20 e1 bc c4 	R0 = -0x3b44 (X);		/*		R0=0xffffc4bc(-15172) */
ffa0901e:	20 9e       	W[I0++] = R0.L;
ffa09020:	20 9e       	W[I0++] = R0.L;
ffa09022:	20 e1 10 27 	R0 = 0x2710 (X);		/*		R0=0x2710(10000) */
ffa09026:	20 9e       	W[I0++] = R0.L;
ffa09028:	20 9e       	W[I0++] = R0.L;
ffa0902a:	20 e1 d4 1e 	R0 = 0x1ed4 (X);		/*		R0=0x1ed4(7892) */
ffa0902e:	20 9e       	W[I0++] = R0.L;
ffa09030:	20 9e       	W[I0++] = R0.L;
ffa09032:	20 e1 a6 3d 	R0 = 0x3da6 (X);		/*		R0=0x3da6(15782) */
ffa09036:	20 9e       	W[I0++] = R0.L;
ffa09038:	20 9e       	W[I0++] = R0.L;
ffa0903a:	20 e1 d4 1e 	R0 = 0x1ed4 (X);		/*		R0=0x1ed4(7892) */
ffa0903e:	20 9e       	W[I0++] = R0.L;
ffa09040:	20 9e       	W[I0++] = R0.L;
ffa09042:	20 e1 f0 0e 	R0 = 0xef0 (X);		/*		R0=0xef0(3824) */
ffa09046:	20 9e       	W[I0++] = R0.L;
ffa09048:	20 9e       	W[I0++] = R0.L;
ffa0904a:	20 e1 aa fc 	R0 = -0x356 (X);		/*		R0=0xfffffcaa(-854) */
ffa0904e:	20 9e       	W[I0++] = R0.L;
ffa09050:	20 9e       	W[I0++] = R0.L;
ffa09052:	20 e1 ee 3b 	R0 = 0x3bee (X);		/*		R0=0x3bee(15342) */
ffa09056:	20 9e       	W[I0++] = R0.L;
ffa09058:	20 9e       	W[I0++] = R0.L;
ffa0905a:	20 e1 27 88 	R0 = -0x77d9 (X);		/*		R0=0xffff8827(-30681) */
ffa0905e:	20 9e       	W[I0++] = R0.L;
ffa09060:	20 9e       	W[I0++] = R0.L;
ffa09062:	20 e1 ee 3b 	R0 = 0x3bee (X);		/*		R0=0x3bee(15342) */
ffa09066:	20 9e       	W[I0++] = R0.L;
ffa09068:	20 9e       	W[I0++] = R0.L;
ffa0906a:	20 e1 8c 74 	R0 = 0x748c (X);		/*		R0=0x748c(29836) */
ffa0906e:	20 9e       	W[I0++] = R0.L;
ffa09070:	20 9e       	W[I0++] = R0.L;
ffa09072:	20 e1 dd ca 	R0 = -0x3523 (X);		/*		R0=0xffffcadd(-13603) */
ffa09076:	20 9e       	W[I0++] = R0.L;
ffa09078:	20 9e       	W[I0++] = R0.L;
ffa0907a:	20 e1 10 27 	R0 = 0x2710 (X);		/*		R0=0x2710(10000) */
ffa0907e:	20 9e       	W[I0++] = R0.L;
ffa09080:	20 9e       	W[I0++] = R0.L;
ffa09082:	00 e1 01 00 	R0.L = 0x1;		/* (  1)	R0=0x1(  1) */
ffa09086:	20 9e       	W[I0++] = R0.L;
ffa09088:	00 e1 10 00 	R0.L = 0x10;		/* ( 16)	R0=0x10( 16) */
ffa0908c:	20 9e       	W[I0++] = R0.L;
ffa0908e:	00 e1 02 00 	R0.L = 0x2;		/* (  2)	R0=0x2(  2) */
ffa09092:	20 9e       	W[I0++] = R0.L;
ffa09094:	00 e1 20 00 	R0.L = 0x20;		/* ( 32)	R0=0x20( 32) */
ffa09098:	20 9e       	W[I0++] = R0.L;

ffa0909a <lt2_bot>:
ffa0909a:	37 e1 08 00 	M3 = 0x8 (X);		/*		M3=0x8(  8) */
ffa0909e:	7c 9e       	I0 -= M3;
ffa090a0:	00 e1 04 00 	R0.L = 0x4;		/* (  4)	R0=0x4(  4) */
ffa090a4:	20 9e       	W[I0++] = R0.L;
ffa090a6:	00 e1 40 00 	R0.L = 0x40;		/* ( 64)	R0=0x40( 64) */
ffa090aa:	20 9e       	W[I0++] = R0.L;
ffa090ac:	00 e1 08 00 	R0.L = 0x8;		/* (  8)	R0=0x8(  8) */
ffa090b0:	20 9e       	W[I0++] = R0.L;
ffa090b2:	00 e1 80 00 	R0.L = 0x80;		/* (128)	R0=0x80(128) */
ffa090b6:	20 9e       	W[I0++] = R0.L;
ffa090b8:	01 9e       	[I0++] = R1;
ffa090ba:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa090bc:	41 50       	R1 = R1 + R0;

ffa090be <lt_bot>:
ffa090be:	08 e1 80 6b 	P0.L = 0x6b80;		/* (27520)	P0=0xffff6b80(-38016) */
ffa090c2:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff906b80 */
ffa090c6:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa090ca:	00 93       	[P0] = R0;
ffa090cc:	11 e1 00 40 	I1.L = 0x4000;		/* (16384)	I1=0x4000(16384) */
ffa090d0:	51 e1 80 ff 	I1.H = 0xff80;		/* (-128)	I1=0xff804000(-8372224) */
ffa090d4:	1d e1 00 12 	L1.L = 0x1200;		/* (4608)	L1=0x1200(4608) */
ffa090d8:	5d e1 00 00 	L1.H = 0x0;		/* (  0)	L1=0x1200(4608) */
ffa090dc:	91 34       	I2 = I1;
ffa090de:	89 36       	B1 = I1;
ffa090e0:	92 36       	B2 = I2;
ffa090e2:	f5 36       	L2 = L1;
ffa090e4:	35 e1 40 00 	M1 = 0x40 (X);		/*		M1=0x40( 64) */
ffa090e8:	b4 34       	M2 = M0;
ffa090ea:	08 e1 00 40 	P0.L = 0x4000;		/* (16384)	P0=0xff904000 */
ffa090ee:	48 e1 80 ff 	P0.H = 0xff80;		/* (-128)	P0=0xff804000 */
ffa090f2:	0d e1 80 04 	P5.L = 0x480;		/* (1152)	P5=0x480 */
ffa090f6:	4d e1 00 00 	P5.H = 0x0;		/* (  0)	P5=0x480 */
ffa090fa:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa090fc:	a2 e0 04 50 	LSETUP(0xffa09100 <lt3_top>, 0xffa09104 <lt3_bot>) LC0 = P5;

ffa09100 <lt3_top>:
ffa09100:	00 00       	NOP;
ffa09102:	00 92       	[P0++] = R0;

ffa09104 <lt3_bot>:
ffa09104:	00 00       	NOP;
ffa09106:	13 e1 00 52 	I3.L = 0x5200;		/* (20992)	I3=0x5200(20992) */
ffa0910a:	53 e1 80 ff 	I3.H = 0xff80;		/* (-128)	I3=0xff805200(-8367616) */
ffa0910e:	1f e1 00 0f 	L3.L = 0xf00;		/* (3840)	L3=0xf00(3840) */
ffa09112:	5f e1 00 00 	L3.H = 0x0;		/* (  0)	L3=0xf00(3840) */
ffa09116:	9b 36       	B3 = I3;
ffa09118:	37 e1 08 00 	M3 = 0x8 (X);		/*		M3=0x8(  8) */
ffa0911c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0911e:	8c 30       	R1 = M0;
ffa09120:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa09122:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa09124:	85 69       	P5 = 0x30 (X);		/*		P5=0x30( 48) */
ffa09126:	a2 e0 46 50 	LSETUP(0xffa0912a <lt4_top>, 0xffa091b2 <lt4_bot>) LC0 = P5;

ffa0912a <lt4_top>:
ffa0912a:	00 00       	NOP;
ffa0912c:	35 68       	P5 = 0x6 (X);		/*		P5=0x6(  6) */
ffa0912e:	b2 e0 18 50 	LSETUP(0xffa09132 <lt5_top>, 0xffa0915e <lt5_bot>) LC1 = P5;

ffa09132 <lt5_top>:
ffa09132:	84 60       	R4 = 0x10 (X);		/*		R4=0x10( 16) */
ffa09134:	c4 52       	R3 = R4 - R0;
ffa09136:	24 60       	R4 = 0x4 (X);		/*		R4=0x4(  4) */
ffa09138:	e3 40       	R3 *= R4;
ffa0913a:	1b 9e       	[I3++] = R3;
ffa0913c:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa0913e:	e0 50       	R3 = R0 + R4;
ffa09140:	cb 40       	R3 *= R1;
ffa09142:	1b 9e       	[I3++] = R3;
ffa09144:	1f 9e       	[I3++] = R7;
ffa09146:	20 50       	R0 = R0 + R4;
ffa09148:	e7 51       	R7 = R7 + R4;
ffa0914a:	7c 60       	R4 = 0xf (X);		/*		R4=0xf( 15) */
ffa0914c:	20 08       	CC = R0 == R4;
ffa0914e:	02 10       	IF !CC JUMP 0xffa09152 <no_rollover>;
ffa09150:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */

ffa09152 <no_rollover>:
ffa09152:	00 00       	NOP;
ffa09154:	34 60       	R4 = 0x6 (X);		/*		R4=0x6(  6) */
ffa09156:	27 08       	CC = R7 == R4;
ffa09158:	02 10       	IF !CC JUMP 0xffa0915c <no_rollover2>;
ffa0915a:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */

ffa0915c <no_rollover2>:
	...

ffa0915e <lt5_bot>:
ffa0915e:	00 00       	NOP;
ffa09160:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa09162:	82 c6 e2 86 	R3 = R2 << 0x1c;
ffa09166:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa09168:	82 c6 fc 88 	R4 = R4 << 0x1f;
ffa0916c:	e3 54       	R3 = R3 & R4;
ffa0916e:	5d 57       	R5 = R5 | R3;
ffa09170:	82 c6 aa 86 	R3 = R2 << 0x15;
ffa09174:	82 c6 c4 89 	R4 = R4 >> 0x8;
ffa09178:	e3 54       	R3 = R3 & R4;
ffa0917a:	5d 57       	R5 = R5 | R3;
ffa0917c:	82 c6 72 86 	R3 = R2 << 0xe;
ffa09180:	82 c6 c4 89 	R4 = R4 >> 0x8;
ffa09184:	e3 54       	R3 = R3 & R4;
ffa09186:	5d 57       	R5 = R5 | R3;
ffa09188:	82 c6 3a 86 	R3 = R2 << 0x7;
ffa0918c:	82 c6 c4 89 	R4 = R4 >> 0x8;
ffa09190:	e3 54       	R3 = R3 & R4;
ffa09192:	5d 57       	R5 = R5 | R3;
ffa09194:	1d 9e       	[I3++] = R5;
ffa09196:	03 e1 20 61 	R3.L = 0x6120;		/* (24864)	R3=0x6120(24864) */
ffa0919a:	43 e1 80 ff 	R3.H = 0xff80;		/* (-128)	R3=0xff806120(-8363744) */
ffa0919e:	1c 60       	R4 = 0x3 (X);		/*		R4=0x3(  3) */
ffa091a0:	62 55       	R5 = R2 & R4;
ffa091a2:	82 c6 1d 8a 	R5 = R5 << 0x3;
ffa091a6:	5d 51       	R5 = R5 + R3;
ffa091a8:	1d 9e       	[I3++] = R5;
ffa091aa:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa091ac:	a2 50       	R2 = R2 + R4;
ffa091ae:	7c 60       	R4 = 0xf (X);		/*		R4=0xf( 15) */
ffa091b0:	a2 54       	R2 = R2 & R4;

ffa091b2 <lt4_bot>:
ffa091b2:	00 00       	NOP;
ffa091b4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa091b6:	10 00       	RTS;

ffa091b8 <_enc_create>:
ffa091b8:	0d e1 00 62 	P5.L = 0x6200;		/* (25088)	P5=0x6200 */
ffa091bc:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff806200 */
ffa091c0:	50 61       	R0 = 0x2a (X);		/*		R0=0x2a( 42) */
ffa091c2:	28 9a       	B[P5++] = R0;
ffa091c4:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa091c6:	28 9a       	B[P5++] = R0;
ffa091c8:	60 61       	R0 = 0x2c (X);		/*		R0=0x2c( 44) */
ffa091ca:	28 9a       	B[P5++] = R0;
ffa091cc:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa091ce:	28 9a       	B[P5++] = R0;
ffa091d0:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa091d2:	28 9a       	B[P5++] = R0;
ffa091d4:	70 61       	R0 = 0x2e (X);		/*		R0=0x2e( 46) */
ffa091d6:	28 9a       	B[P5++] = R0;
ffa091d8:	78 61       	R0 = 0x2f (X);		/*		R0=0x2f( 47) */
ffa091da:	28 9a       	B[P5++] = R0;
ffa091dc:	70 61       	R0 = 0x2e (X);		/*		R0=0x2e( 46) */
ffa091de:	28 9a       	B[P5++] = R0;
ffa091e0:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa091e2:	28 9a       	B[P5++] = R0;
ffa091e4:	88 61       	R0 = 0x31 (X);		/*		R0=0x31( 49) */
ffa091e6:	28 9a       	B[P5++] = R0;
ffa091e8:	90 61       	R0 = 0x32 (X);		/*		R0=0x32( 50) */
ffa091ea:	28 9a       	B[P5++] = R0;
ffa091ec:	88 61       	R0 = 0x31 (X);		/*		R0=0x31( 49) */
ffa091ee:	28 9a       	B[P5++] = R0;
ffa091f0:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa091f2:	28 9a       	B[P5++] = R0;
ffa091f4:	70 61       	R0 = 0x2e (X);		/*		R0=0x2e( 46) */
ffa091f6:	28 9a       	B[P5++] = R0;
ffa091f8:	78 61       	R0 = 0x2f (X);		/*		R0=0x2f( 47) */
ffa091fa:	28 9a       	B[P5++] = R0;
ffa091fc:	70 61       	R0 = 0x2e (X);		/*		R0=0x2e( 46) */
ffa091fe:	28 9a       	B[P5++] = R0;
ffa09200:	98 61       	R0 = 0x33 (X);		/*		R0=0x33( 51) */
ffa09202:	28 9a       	B[P5++] = R0;
ffa09204:	a0 61       	R0 = 0x34 (X);		/*		R0=0x34( 52) */
ffa09206:	28 9a       	B[P5++] = R0;
ffa09208:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa0920a:	28 9a       	B[P5++] = R0;
ffa0920c:	b0 61       	R0 = 0x36 (X);		/*		R0=0x36( 54) */
ffa0920e:	28 9a       	B[P5++] = R0;
ffa09210:	b8 61       	R0 = 0x37 (X);		/*		R0=0x37( 55) */
ffa09212:	28 9a       	B[P5++] = R0;
ffa09214:	c0 61       	R0 = 0x38 (X);		/*		R0=0x38( 56) */
ffa09216:	28 9a       	B[P5++] = R0;
ffa09218:	c8 61       	R0 = 0x39 (X);		/*		R0=0x39( 57) */
ffa0921a:	28 9a       	B[P5++] = R0;
ffa0921c:	c0 61       	R0 = 0x38 (X);		/*		R0=0x38( 56) */
ffa0921e:	28 9a       	B[P5++] = R0;
ffa09220:	d0 61       	R0 = 0x3a (X);		/*		R0=0x3a( 58) */
ffa09222:	28 9a       	B[P5++] = R0;
ffa09224:	d8 61       	R0 = 0x3b (X);		/*		R0=0x3b( 59) */
ffa09226:	28 9a       	B[P5++] = R0;
ffa09228:	e0 61       	R0 = 0x3c (X);		/*		R0=0x3c( 60) */
ffa0922a:	28 9a       	B[P5++] = R0;
ffa0922c:	d8 61       	R0 = 0x3b (X);		/*		R0=0x3b( 59) */
ffa0922e:	28 9a       	B[P5++] = R0;
ffa09230:	b8 61       	R0 = 0x37 (X);		/*		R0=0x37( 55) */
ffa09232:	28 9a       	B[P5++] = R0;
ffa09234:	c0 61       	R0 = 0x38 (X);		/*		R0=0x38( 56) */
ffa09236:	28 9a       	B[P5++] = R0;
ffa09238:	e8 61       	R0 = 0x3d (X);		/*		R0=0x3d( 61) */
ffa0923a:	28 9a       	B[P5++] = R0;
ffa0923c:	f0 61       	R0 = 0x3e (X);		/*		R0=0x3e( 62) */
ffa0923e:	28 9a       	B[P5++] = R0;
ffa09240:	f8 61       	R0 = 0x3f (X);		/*		R0=0x3f( 63) */
ffa09242:	28 9a       	B[P5++] = R0;
ffa09244:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa09248:	28 9a       	B[P5++] = R0;
ffa0924a:	20 e1 41 00 	R0 = 0x41 (X);		/*		R0=0x41( 65) */
ffa0924e:	28 9a       	B[P5++] = R0;
ffa09250:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa09254:	28 9a       	B[P5++] = R0;
ffa09256:	20 e1 42 00 	R0 = 0x42 (X);		/*		R0=0x42( 66) */
ffa0925a:	28 9a       	B[P5++] = R0;
ffa0925c:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa09260:	28 9a       	B[P5++] = R0;
ffa09262:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa09266:	28 9a       	B[P5++] = R0;
ffa09268:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa0926c:	28 9a       	B[P5++] = R0;
ffa0926e:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa09272:	28 9a       	B[P5++] = R0;
ffa09274:	20 e1 46 00 	R0 = 0x46 (X);		/*		R0=0x46( 70) */
ffa09278:	28 9a       	B[P5++] = R0;
ffa0927a:	20 e1 47 00 	R0 = 0x47 (X);		/*		R0=0x47( 71) */
ffa0927e:	28 9a       	B[P5++] = R0;
ffa09280:	20 e1 48 00 	R0 = 0x48 (X);		/*		R0=0x48( 72) */
ffa09284:	28 9a       	B[P5++] = R0;
ffa09286:	20 e1 42 00 	R0 = 0x42 (X);		/*		R0=0x42( 66) */
ffa0928a:	28 9a       	B[P5++] = R0;
ffa0928c:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa09290:	28 9a       	B[P5++] = R0;
ffa09292:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa09296:	28 9a       	B[P5++] = R0;
ffa09298:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa0929c:	28 9a       	B[P5++] = R0;
ffa0929e:	98 61       	R0 = 0x33 (X);		/*		R0=0x33( 51) */
ffa092a0:	28 9a       	B[P5++] = R0;
ffa092a2:	a0 61       	R0 = 0x34 (X);		/*		R0=0x34( 52) */
ffa092a4:	28 9a       	B[P5++] = R0;
ffa092a6:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa092a8:	28 9a       	B[P5++] = R0;
ffa092aa:	a0 61       	R0 = 0x34 (X);		/*		R0=0x34( 52) */
ffa092ac:	28 9a       	B[P5++] = R0;
ffa092ae:	20 e1 49 00 	R0 = 0x49 (X);		/*		R0=0x49( 73) */
ffa092b2:	28 9a       	B[P5++] = R0;
ffa092b4:	20 e1 4a 00 	R0 = 0x4a (X);		/*		R0=0x4a( 74) */
ffa092b8:	28 9a       	B[P5++] = R0;
ffa092ba:	20 e1 4b 00 	R0 = 0x4b (X);		/*		R0=0x4b( 75) */
ffa092be:	28 9a       	B[P5++] = R0;
ffa092c0:	c0 61       	R0 = 0x38 (X);		/*		R0=0x38( 56) */
ffa092c2:	28 9a       	B[P5++] = R0;
ffa092c4:	d0 61       	R0 = 0x3a (X);		/*		R0=0x3a( 58) */
ffa092c6:	28 9a       	B[P5++] = R0;
ffa092c8:	d8 61       	R0 = 0x3b (X);		/*		R0=0x3b( 59) */
ffa092ca:	28 9a       	B[P5++] = R0;
ffa092cc:	e0 61       	R0 = 0x3c (X);		/*		R0=0x3c( 60) */
ffa092ce:	28 9a       	B[P5++] = R0;
ffa092d0:	d8 61       	R0 = 0x3b (X);		/*		R0=0x3b( 59) */
ffa092d2:	28 9a       	B[P5++] = R0;
ffa092d4:	b8 61       	R0 = 0x37 (X);		/*		R0=0x37( 55) */
ffa092d6:	28 9a       	B[P5++] = R0;
ffa092d8:	c0 61       	R0 = 0x38 (X);		/*		R0=0x38( 56) */
ffa092da:	28 9a       	B[P5++] = R0;
ffa092dc:	c8 61       	R0 = 0x39 (X);		/*		R0=0x39( 57) */
ffa092de:	28 9a       	B[P5++] = R0;
ffa092e0:	20 e1 4c 00 	R0 = 0x4c (X);		/*		R0=0x4c( 76) */
ffa092e4:	28 9a       	B[P5++] = R0;
ffa092e6:	20 e1 4d 00 	R0 = 0x4d (X);		/*		R0=0x4d( 77) */
ffa092ea:	28 9a       	B[P5++] = R0;
ffa092ec:	20 e1 4e 00 	R0 = 0x4e (X);		/*		R0=0x4e( 78) */
ffa092f0:	28 9a       	B[P5++] = R0;
ffa092f2:	20 e1 4f 00 	R0 = 0x4f (X);		/*		R0=0x4f( 79) */
ffa092f6:	28 9a       	B[P5++] = R0;
ffa092f8:	20 e1 4e 00 	R0 = 0x4e (X);		/*		R0=0x4e( 78) */
ffa092fc:	28 9a       	B[P5++] = R0;
ffa092fe:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa09302:	28 9a       	B[P5++] = R0;
ffa09304:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa09308:	28 9a       	B[P5++] = R0;
ffa0930a:	20 e1 52 00 	R0 = 0x52 (X);		/*		R0=0x52( 82) */
ffa0930e:	28 9a       	B[P5++] = R0;
ffa09310:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa09314:	28 9a       	B[P5++] = R0;
ffa09316:	20 e1 53 00 	R0 = 0x53 (X);		/*		R0=0x53( 83) */
ffa0931a:	28 9a       	B[P5++] = R0;
ffa0931c:	20 e1 54 00 	R0 = 0x54 (X);		/*		R0=0x54( 84) */
ffa09320:	28 9a       	B[P5++] = R0;
ffa09322:	20 e1 55 00 	R0 = 0x55 (X);		/*		R0=0x55( 85) */
ffa09326:	28 9a       	B[P5++] = R0;
ffa09328:	20 e1 56 00 	R0 = 0x56 (X);		/*		R0=0x56( 86) */
ffa0932c:	28 9a       	B[P5++] = R0;
ffa0932e:	20 e1 57 00 	R0 = 0x57 (X);		/*		R0=0x57( 87) */
ffa09332:	28 9a       	B[P5++] = R0;
ffa09334:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa09338:	28 9a       	B[P5++] = R0;
ffa0933a:	20 e1 52 00 	R0 = 0x52 (X);		/*		R0=0x52( 82) */
ffa0933e:	28 9a       	B[P5++] = R0;
ffa09340:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa09344:	28 9a       	B[P5++] = R0;
ffa09346:	20 e1 58 00 	R0 = 0x58 (X);		/*		R0=0x58( 88) */
ffa0934a:	28 9a       	B[P5++] = R0;
ffa0934c:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa09350:	28 9a       	B[P5++] = R0;
ffa09352:	20 e1 5a 00 	R0 = 0x5a (X);		/*		R0=0x5a( 90) */
ffa09356:	28 9a       	B[P5++] = R0;
ffa09358:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa0935c:	28 9a       	B[P5++] = R0;
ffa0935e:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa09362:	28 9a       	B[P5++] = R0;
ffa09364:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa09368:	28 9a       	B[P5++] = R0;
ffa0936a:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa0936e:	28 9a       	B[P5++] = R0;
ffa09370:	20 e1 5e 00 	R0 = 0x5e (X);		/*		R0=0x5e( 94) */
ffa09374:	28 9a       	B[P5++] = R0;
ffa09376:	20 e1 5f 00 	R0 = 0x5f (X);		/*		R0=0x5f( 95) */
ffa0937a:	28 9a       	B[P5++] = R0;
ffa0937c:	20 e1 60 00 	R0 = 0x60 (X);		/*		R0=0x60( 96) */
ffa09380:	28 9a       	B[P5++] = R0;
ffa09382:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa09386:	28 9a       	B[P5++] = R0;
ffa09388:	20 e1 60 00 	R0 = 0x60 (X);		/*		R0=0x60( 96) */
ffa0938c:	28 9a       	B[P5++] = R0;
ffa0938e:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa09392:	28 9a       	B[P5++] = R0;
ffa09394:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa09398:	28 9a       	B[P5++] = R0;
ffa0939a:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa0939e:	28 9a       	B[P5++] = R0;
ffa093a0:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa093a4:	28 9a       	B[P5++] = R0;
ffa093a6:	20 e1 62 00 	R0 = 0x62 (X);		/*		R0=0x62( 98) */
ffa093aa:	28 9a       	B[P5++] = R0;
ffa093ac:	20 e1 63 00 	R0 = 0x63 (X);		/*		R0=0x63( 99) */
ffa093b0:	28 9a       	B[P5++] = R0;
ffa093b2:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa093b6:	28 9a       	B[P5++] = R0;
ffa093b8:	20 e1 63 00 	R0 = 0x63 (X);		/*		R0=0x63( 99) */
ffa093bc:	28 9a       	B[P5++] = R0;
ffa093be:	20 e1 65 00 	R0 = 0x65 (X);		/*		R0=0x65(101) */
ffa093c2:	28 9a       	B[P5++] = R0;
ffa093c4:	20 e1 66 00 	R0 = 0x66 (X);		/*		R0=0x66(102) */
ffa093c8:	28 9a       	B[P5++] = R0;
ffa093ca:	20 e1 67 00 	R0 = 0x67 (X);		/*		R0=0x67(103) */
ffa093ce:	28 9a       	B[P5++] = R0;
ffa093d0:	20 e1 66 00 	R0 = 0x66 (X);		/*		R0=0x66(102) */
ffa093d4:	28 9a       	B[P5++] = R0;
ffa093d6:	20 e1 68 00 	R0 = 0x68 (X);		/*		R0=0x68(104) */
ffa093da:	28 9a       	B[P5++] = R0;
ffa093dc:	20 e1 69 00 	R0 = 0x69 (X);		/*		R0=0x69(105) */
ffa093e0:	28 9a       	B[P5++] = R0;
ffa093e2:	20 e1 6a 00 	R0 = 0x6a (X);		/*		R0=0x6a(106) */
ffa093e6:	28 9a       	B[P5++] = R0;
ffa093e8:	20 e1 6b 00 	R0 = 0x6b (X);		/*		R0=0x6b(107) */
ffa093ec:	28 9a       	B[P5++] = R0;
ffa093ee:	20 e1 6c 00 	R0 = 0x6c (X);		/*		R0=0x6c(108) */
ffa093f2:	28 9a       	B[P5++] = R0;
ffa093f4:	20 e1 6d 00 	R0 = 0x6d (X);		/*		R0=0x6d(109) */
ffa093f8:	28 9a       	B[P5++] = R0;
ffa093fa:	20 e1 67 00 	R0 = 0x67 (X);		/*		R0=0x67(103) */
ffa093fe:	28 9a       	B[P5++] = R0;
ffa09400:	20 e1 66 00 	R0 = 0x66 (X);		/*		R0=0x66(102) */
ffa09404:	28 9a       	B[P5++] = R0;
ffa09406:	20 e1 58 00 	R0 = 0x58 (X);		/*		R0=0x58( 88) */
ffa0940a:	28 9a       	B[P5++] = R0;
ffa0940c:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa09410:	28 9a       	B[P5++] = R0;
ffa09412:	20 e1 5a 00 	R0 = 0x5a (X);		/*		R0=0x5a( 90) */
ffa09416:	28 9a       	B[P5++] = R0;
ffa09418:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa0941c:	28 9a       	B[P5++] = R0;
ffa0941e:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa09422:	28 9a       	B[P5++] = R0;
ffa09424:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa09428:	28 9a       	B[P5++] = R0;
ffa0942a:	20 e1 6e 00 	R0 = 0x6e (X);		/*		R0=0x6e(110) */
ffa0942e:	28 9a       	B[P5++] = R0;
ffa09430:	20 e1 6f 00 	R0 = 0x6f (X);		/*		R0=0x6f(111) */
ffa09434:	28 9a       	B[P5++] = R0;
ffa09436:	20 e1 70 00 	R0 = 0x70 (X);		/*		R0=0x70(112) */
ffa0943a:	28 9a       	B[P5++] = R0;
ffa0943c:	20 e1 60 00 	R0 = 0x60 (X);		/*		R0=0x60( 96) */
ffa09440:	28 9a       	B[P5++] = R0;
ffa09442:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa09446:	28 9a       	B[P5++] = R0;
ffa09448:	20 e1 60 00 	R0 = 0x60 (X);		/*		R0=0x60( 96) */
ffa0944c:	28 9a       	B[P5++] = R0;
ffa0944e:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa09452:	28 9a       	B[P5++] = R0;
ffa09454:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa09458:	28 9a       	B[P5++] = R0;
ffa0945a:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa0945e:	28 9a       	B[P5++] = R0;
ffa09460:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa09464:	28 9a       	B[P5++] = R0;
ffa09466:	20 e1 71 00 	R0 = 0x71 (X);		/*		R0=0x71(113) */
ffa0946a:	28 9a       	B[P5++] = R0;
ffa0946c:	20 e1 72 00 	R0 = 0x72 (X);		/*		R0=0x72(114) */
ffa09470:	28 9a       	B[P5++] = R0;
ffa09472:	20 e1 73 00 	R0 = 0x73 (X);		/*		R0=0x73(115) */
ffa09476:	28 9a       	B[P5++] = R0;
ffa09478:	20 e1 74 00 	R0 = 0x74 (X);		/*		R0=0x74(116) */
ffa0947c:	28 9a       	B[P5++] = R0;
ffa0947e:	20 e1 75 00 	R0 = 0x75 (X);		/*		R0=0x75(117) */
ffa09482:	28 9a       	B[P5++] = R0;
ffa09484:	20 e1 76 00 	R0 = 0x76 (X);		/*		R0=0x76(118) */
ffa09488:	28 9a       	B[P5++] = R0;
ffa0948a:	20 e1 77 00 	R0 = 0x77 (X);		/*		R0=0x77(119) */
ffa0948e:	28 9a       	B[P5++] = R0;
ffa09490:	20 e1 76 00 	R0 = 0x76 (X);		/*		R0=0x76(118) */
ffa09494:	28 9a       	B[P5++] = R0;
ffa09496:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa0949a:	28 9a       	B[P5++] = R0;
ffa0949c:	20 e1 79 00 	R0 = 0x79 (X);		/*		R0=0x79(121) */
ffa094a0:	28 9a       	B[P5++] = R0;
ffa094a2:	20 e1 7a 00 	R0 = 0x7a (X);		/*		R0=0x7a(122) */
ffa094a6:	28 9a       	B[P5++] = R0;
ffa094a8:	20 e1 79 00 	R0 = 0x79 (X);		/*		R0=0x79(121) */
ffa094ac:	28 9a       	B[P5++] = R0;
ffa094ae:	20 e1 7b 00 	R0 = 0x7b (X);		/*		R0=0x7b(123) */
ffa094b2:	28 9a       	B[P5++] = R0;
ffa094b4:	20 e1 7c 00 	R0 = 0x7c (X);		/*		R0=0x7c(124) */
ffa094b8:	28 9a       	B[P5++] = R0;
ffa094ba:	20 e1 7d 00 	R0 = 0x7d (X);		/*		R0=0x7d(125) */
ffa094be:	28 9a       	B[P5++] = R0;
ffa094c0:	20 e1 76 00 	R0 = 0x76 (X);		/*		R0=0x76(118) */
ffa094c4:	28 9a       	B[P5++] = R0;
ffa094c6:	20 e1 7e 00 	R0 = 0x7e (X);		/*		R0=0x7e(126) */
ffa094ca:	28 9a       	B[P5++] = R0;
ffa094cc:	20 e1 7f 00 	R0 = 0x7f (X);		/*		R0=0x7f(127) */
ffa094d0:	28 9a       	B[P5++] = R0;
ffa094d2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa094d4:	28 9a       	B[P5++] = R0;
ffa094d6:	20 e1 7f 00 	R0 = 0x7f (X);		/*		R0=0x7f(127) */
ffa094da:	28 9a       	B[P5++] = R0;
ffa094dc:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa094de:	28 9a       	B[P5++] = R0;
ffa094e0:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa094e2:	28 9a       	B[P5++] = R0;
ffa094e4:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa094e6:	28 9a       	B[P5++] = R0;
ffa094e8:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa094ea:	28 9a       	B[P5++] = R0;
ffa094ec:	28 60       	R0 = 0x5 (X);		/*		R0=0x5(  5) */
ffa094ee:	28 9a       	B[P5++] = R0;
ffa094f0:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa094f2:	28 9a       	B[P5++] = R0;
ffa094f4:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa094f6:	28 9a       	B[P5++] = R0;
ffa094f8:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa094fa:	28 9a       	B[P5++] = R0;
ffa094fc:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa094fe:	28 9a       	B[P5++] = R0;
ffa09500:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09502:	28 9a       	B[P5++] = R0;
ffa09504:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa09506:	28 9a       	B[P5++] = R0;
ffa09508:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0950a:	28 9a       	B[P5++] = R0;
ffa0950c:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa0950e:	28 9a       	B[P5++] = R0;
ffa09510:	48 60       	R0 = 0x9 (X);		/*		R0=0x9(  9) */
ffa09512:	28 9a       	B[P5++] = R0;
ffa09514:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa09516:	28 9a       	B[P5++] = R0;
ffa09518:	58 60       	R0 = 0xb (X);		/*		R0=0xb( 11) */
ffa0951a:	28 9a       	B[P5++] = R0;
ffa0951c:	60 60       	R0 = 0xc (X);		/*		R0=0xc( 12) */
ffa0951e:	28 9a       	B[P5++] = R0;
ffa09520:	68 60       	R0 = 0xd (X);		/*		R0=0xd( 13) */
ffa09522:	28 9a       	B[P5++] = R0;
ffa09524:	70 60       	R0 = 0xe (X);		/*		R0=0xe( 14) */
ffa09526:	28 9a       	B[P5++] = R0;
ffa09528:	68 60       	R0 = 0xd (X);		/*		R0=0xd( 13) */
ffa0952a:	28 9a       	B[P5++] = R0;
ffa0952c:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa0952e:	28 9a       	B[P5++] = R0;
ffa09530:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa09532:	28 9a       	B[P5++] = R0;
ffa09534:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa09536:	28 9a       	B[P5++] = R0;
ffa09538:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa0953a:	28 9a       	B[P5++] = R0;
ffa0953c:	60 60       	R0 = 0xc (X);		/*		R0=0xc( 12) */
ffa0953e:	28 9a       	B[P5++] = R0;
ffa09540:	90 60       	R0 = 0x12 (X);		/*		R0=0x12( 18) */
ffa09542:	28 9a       	B[P5++] = R0;
ffa09544:	98 60       	R0 = 0x13 (X);		/*		R0=0x13( 19) */
ffa09546:	28 9a       	B[P5++] = R0;
ffa09548:	a0 60       	R0 = 0x14 (X);		/*		R0=0x14( 20) */
ffa0954a:	28 9a       	B[P5++] = R0;
ffa0954c:	20 e1 7e 00 	R0 = 0x7e (X);		/*		R0=0x7e(126) */
ffa09550:	28 9a       	B[P5++] = R0;
ffa09552:	20 e1 7f 00 	R0 = 0x7f (X);		/*		R0=0x7f(127) */
ffa09556:	28 9a       	B[P5++] = R0;
ffa09558:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0955a:	28 9a       	B[P5++] = R0;
ffa0955c:	20 e1 7f 00 	R0 = 0x7f (X);		/*		R0=0x7f(127) */
ffa09560:	28 9a       	B[P5++] = R0;
ffa09562:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09564:	28 9a       	B[P5++] = R0;
ffa09566:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09568:	28 9a       	B[P5++] = R0;
ffa0956a:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0956c:	28 9a       	B[P5++] = R0;
ffa0956e:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09570:	28 9a       	B[P5++] = R0;
ffa09572:	a8 60       	R0 = 0x15 (X);		/*		R0=0x15( 21) */
ffa09574:	28 9a       	B[P5++] = R0;
ffa09576:	b0 60       	R0 = 0x16 (X);		/*		R0=0x16( 22) */
ffa09578:	28 9a       	B[P5++] = R0;
ffa0957a:	b8 60       	R0 = 0x17 (X);		/*		R0=0x17( 23) */
ffa0957c:	28 9a       	B[P5++] = R0;
ffa0957e:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa09580:	28 9a       	B[P5++] = R0;
ffa09582:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09584:	28 9a       	B[P5++] = R0;
ffa09586:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09588:	28 9a       	B[P5++] = R0;
ffa0958a:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0958c:	28 9a       	B[P5++] = R0;
ffa0958e:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09590:	28 9a       	B[P5++] = R0;
ffa09592:	20 e1 4d 00 	R0 = 0x4d (X);		/*		R0=0x4d( 77) */
ffa09596:	28 9a       	B[P5++] = R0;
ffa09598:	20 e1 4e 00 	R0 = 0x4e (X);		/*		R0=0x4e( 78) */
ffa0959c:	28 9a       	B[P5++] = R0;
ffa0959e:	20 e1 4f 00 	R0 = 0x4f (X);		/*		R0=0x4f( 79) */
ffa095a2:	28 9a       	B[P5++] = R0;
ffa095a4:	c0 60       	R0 = 0x18 (X);		/*		R0=0x18( 24) */
ffa095a6:	28 9a       	B[P5++] = R0;
ffa095a8:	c8 60       	R0 = 0x19 (X);		/*		R0=0x19( 25) */
ffa095aa:	28 9a       	B[P5++] = R0;
ffa095ac:	d0 60       	R0 = 0x1a (X);		/*		R0=0x1a( 26) */
ffa095ae:	28 9a       	B[P5++] = R0;
ffa095b0:	20 e1 52 00 	R0 = 0x52 (X);		/*		R0=0x52( 82) */
ffa095b4:	28 9a       	B[P5++] = R0;
ffa095b6:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa095ba:	28 9a       	B[P5++] = R0;
ffa095bc:	20 e1 53 00 	R0 = 0x53 (X);		/*		R0=0x53( 83) */
ffa095c0:	28 9a       	B[P5++] = R0;
ffa095c2:	20 e1 54 00 	R0 = 0x54 (X);		/*		R0=0x54( 84) */
ffa095c6:	28 9a       	B[P5++] = R0;
ffa095c8:	20 e1 55 00 	R0 = 0x55 (X);		/*		R0=0x55( 85) */
ffa095cc:	28 9a       	B[P5++] = R0;
ffa095ce:	20 e1 54 00 	R0 = 0x54 (X);		/*		R0=0x54( 84) */
ffa095d2:	28 9a       	B[P5++] = R0;
ffa095d4:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa095d8:	28 9a       	B[P5++] = R0;
ffa095da:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa095de:	28 9a       	B[P5++] = R0;
ffa095e0:	d8 60       	R0 = 0x1b (X);		/*		R0=0x1b( 27) */
ffa095e2:	28 9a       	B[P5++] = R0;
ffa095e4:	e0 60       	R0 = 0x1c (X);		/*		R0=0x1c( 28) */
ffa095e6:	28 9a       	B[P5++] = R0;
ffa095e8:	e8 60       	R0 = 0x1d (X);		/*		R0=0x1d( 29) */
ffa095ea:	28 9a       	B[P5++] = R0;
ffa095ec:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa095f0:	28 9a       	B[P5++] = R0;
ffa095f2:	20 e1 5a 00 	R0 = 0x5a (X);		/*		R0=0x5a( 90) */
ffa095f6:	28 9a       	B[P5++] = R0;
ffa095f8:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa095fc:	28 9a       	B[P5++] = R0;
ffa095fe:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa09602:	28 9a       	B[P5++] = R0;
ffa09604:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa09608:	28 9a       	B[P5++] = R0;
ffa0960a:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa0960e:	28 9a       	B[P5++] = R0;
ffa09610:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa09614:	28 9a       	B[P5++] = R0;
ffa09616:	20 e1 5f 00 	R0 = 0x5f (X);		/*		R0=0x5f( 95) */
ffa0961a:	28 9a       	B[P5++] = R0;
ffa0961c:	f0 60       	R0 = 0x1e (X);		/*		R0=0x1e( 30) */
ffa0961e:	28 9a       	B[P5++] = R0;
ffa09620:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa09622:	28 9a       	B[P5++] = R0;
ffa09624:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa09626:	28 9a       	B[P5++] = R0;
ffa09628:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa0962c:	28 9a       	B[P5++] = R0;
ffa0962e:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa09632:	28 9a       	B[P5++] = R0;
ffa09634:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa09638:	28 9a       	B[P5++] = R0;
ffa0963a:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa0963e:	28 9a       	B[P5++] = R0;
ffa09640:	20 e1 62 00 	R0 = 0x62 (X);		/*		R0=0x62( 98) */
ffa09644:	28 9a       	B[P5++] = R0;
ffa09646:	20 e1 63 00 	R0 = 0x63 (X);		/*		R0=0x63( 99) */
ffa0964a:	28 9a       	B[P5++] = R0;
ffa0964c:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa09650:	28 9a       	B[P5++] = R0;
ffa09652:	20 e1 63 00 	R0 = 0x63 (X);		/*		R0=0x63( 99) */
ffa09656:	28 9a       	B[P5++] = R0;
ffa09658:	08 61       	R0 = 0x21 (X);		/*		R0=0x21( 33) */
ffa0965a:	28 9a       	B[P5++] = R0;
ffa0965c:	10 61       	R0 = 0x22 (X);		/*		R0=0x22( 34) */
ffa0965e:	28 9a       	B[P5++] = R0;
ffa09660:	18 61       	R0 = 0x23 (X);		/*		R0=0x23( 35) */
ffa09662:	28 9a       	B[P5++] = R0;
ffa09664:	20 e1 66 00 	R0 = 0x66 (X);		/*		R0=0x66(102) */
ffa09668:	28 9a       	B[P5++] = R0;
ffa0966a:	20 e1 68 00 	R0 = 0x68 (X);		/*		R0=0x68(104) */
ffa0966e:	28 9a       	B[P5++] = R0;
ffa09670:	20 e1 69 00 	R0 = 0x69 (X);		/*		R0=0x69(105) */
ffa09674:	28 9a       	B[P5++] = R0;
ffa09676:	20 e1 6a 00 	R0 = 0x6a (X);		/*		R0=0x6a(106) */
ffa0967a:	28 9a       	B[P5++] = R0;
ffa0967c:	20 e1 69 00 	R0 = 0x69 (X);		/*		R0=0x69(105) */
ffa09680:	28 9a       	B[P5++] = R0;
ffa09682:	20 e1 65 00 	R0 = 0x65 (X);		/*		R0=0x65(101) */
ffa09686:	28 9a       	B[P5++] = R0;
ffa09688:	20 e1 66 00 	R0 = 0x66 (X);		/*		R0=0x66(102) */
ffa0968c:	28 9a       	B[P5++] = R0;
ffa0968e:	20 e1 67 00 	R0 = 0x67 (X);		/*		R0=0x67(103) */
ffa09692:	28 9a       	B[P5++] = R0;
ffa09694:	20 61       	R0 = 0x24 (X);		/*		R0=0x24( 36) */
ffa09696:	28 9a       	B[P5++] = R0;
ffa09698:	28 61       	R0 = 0x25 (X);		/*		R0=0x25( 37) */
ffa0969a:	28 9a       	B[P5++] = R0;
ffa0969c:	30 61       	R0 = 0x26 (X);		/*		R0=0x26( 38) */
ffa0969e:	28 9a       	B[P5++] = R0;
ffa096a0:	20 e1 5a 00 	R0 = 0x5a (X);		/*		R0=0x5a( 90) */
ffa096a4:	28 9a       	B[P5++] = R0;
ffa096a6:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa096aa:	28 9a       	B[P5++] = R0;
ffa096ac:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa096b0:	28 9a       	B[P5++] = R0;
ffa096b2:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa096b6:	28 9a       	B[P5++] = R0;
ffa096b8:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa096bc:	28 9a       	B[P5++] = R0;
ffa096be:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa096c2:	28 9a       	B[P5++] = R0;
ffa096c4:	20 e1 5f 00 	R0 = 0x5f (X);		/*		R0=0x5f( 95) */
ffa096c8:	28 9a       	B[P5++] = R0;
ffa096ca:	20 e1 60 00 	R0 = 0x60 (X);		/*		R0=0x60( 96) */
ffa096ce:	28 9a       	B[P5++] = R0;
ffa096d0:	38 61       	R0 = 0x27 (X);		/*		R0=0x27( 39) */
ffa096d2:	28 9a       	B[P5++] = R0;
ffa096d4:	40 61       	R0 = 0x28 (X);		/*		R0=0x28( 40) */
ffa096d6:	28 9a       	B[P5++] = R0;
ffa096d8:	48 61       	R0 = 0x29 (X);		/*		R0=0x29( 41) */
ffa096da:	28 9a       	B[P5++] = R0;
ffa096dc:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa096e0:	28 9a       	B[P5++] = R0;
ffa096e2:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa096e6:	28 9a       	B[P5++] = R0;
ffa096e8:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa096ec:	28 9a       	B[P5++] = R0;
ffa096ee:	0d e1 00 63 	P5.L = 0x6300;		/* (25344)	P5=0xff806300 */
ffa096f2:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff806300 */
ffa096f6:	00 e1 00 00 	R0.L = 0x0;		/* (  0)	R0=0x0(  0) */
ffa096fa:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x0(  0) */
ffa096fe:	28 92       	[P5++] = R0;
ffa09700:	00 e1 80 00 	R0.L = 0x80;		/* (128)	R0=0x80(128) */
ffa09704:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x80(128) */
ffa09708:	28 92       	[P5++] = R0;
ffa0970a:	00 e1 00 80 	R0.L = 0x8000;		/* (-32768)	R0=0x8000(32768) */
ffa0970e:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x8000(32768) */
ffa09712:	28 92       	[P5++] = R0;
ffa09714:	00 e1 80 80 	R0.L = 0x8080;		/* (-32640)	R0=0x8080(32896) */
ffa09718:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x8080(32896) */
ffa0971c:	28 92       	[P5++] = R0;
ffa0971e:	00 e1 00 00 	R0.L = 0x0;		/* (  0)	R0=0x0(  0) */
ffa09722:	40 e1 80 00 	R0.H = 0x80;		/* (128)	R0=0x800000(8388608) */
ffa09726:	28 92       	[P5++] = R0;
ffa09728:	00 e1 80 00 	R0.L = 0x80;		/* (128)	R0=0x800080(8388736) */
ffa0972c:	40 e1 80 00 	R0.H = 0x80;		/* (128)	R0=0x800080(8388736) */
ffa09730:	28 92       	[P5++] = R0;
ffa09732:	00 e1 00 80 	R0.L = 0x8000;		/* (-32768)	R0=0x808000(8421376) */
ffa09736:	40 e1 80 00 	R0.H = 0x80;		/* (128)	R0=0x808000(8421376) */
ffa0973a:	28 92       	[P5++] = R0;
ffa0973c:	00 e1 80 80 	R0.L = 0x8080;		/* (-32640)	R0=0x808080(8421504) */
ffa09740:	40 e1 80 00 	R0.H = 0x80;		/* (128)	R0=0x808080(8421504) */
ffa09744:	28 92       	[P5++] = R0;
ffa09746:	00 e1 00 00 	R0.L = 0x0;		/* (  0)	R0=0x800000(8388608) */
ffa0974a:	40 e1 00 80 	R0.H = 0x8000;		/* (-32768)	R0=0x80000000(-2147483648) */
ffa0974e:	28 92       	[P5++] = R0;
ffa09750:	00 e1 80 00 	R0.L = 0x80;		/* (128)	R0=0x80000080(-2147483520) */
ffa09754:	40 e1 00 80 	R0.H = 0x8000;		/* (-32768)	R0=0x80000080(-2147483520) */
ffa09758:	28 92       	[P5++] = R0;
ffa0975a:	00 e1 00 80 	R0.L = 0x8000;		/* (-32768)	R0=0x80008000(-2147450880) */
ffa0975e:	40 e1 00 80 	R0.H = 0x8000;		/* (-32768)	R0=0x80008000(-2147450880) */
ffa09762:	28 92       	[P5++] = R0;
ffa09764:	00 e1 80 80 	R0.L = 0x8080;		/* (-32640)	R0=0x80008080(-2147450752) */
ffa09768:	40 e1 00 80 	R0.H = 0x8000;		/* (-32768)	R0=0x80008080(-2147450752) */
ffa0976c:	28 92       	[P5++] = R0;
ffa0976e:	00 e1 00 00 	R0.L = 0x0;		/* (  0)	R0=0x80000000(-2147483648) */
ffa09772:	40 e1 80 80 	R0.H = 0x8080;		/* (-32640)	R0=0x80800000(-2139095040) */
ffa09776:	28 92       	[P5++] = R0;
ffa09778:	00 e1 80 00 	R0.L = 0x80;		/* (128)	R0=0x80800080(-2139094912) */
ffa0977c:	40 e1 80 80 	R0.H = 0x8080;		/* (-32640)	R0=0x80800080(-2139094912) */
ffa09780:	28 92       	[P5++] = R0;
ffa09782:	00 e1 00 80 	R0.L = 0x8000;		/* (-32768)	R0=0x80808000(-2139062272) */
ffa09786:	40 e1 80 80 	R0.H = 0x8080;		/* (-32640)	R0=0x80808000(-2139062272) */
ffa0978a:	28 92       	[P5++] = R0;
ffa0978c:	00 e1 80 80 	R0.L = 0x8080;		/* (-32640)	R0=0x80808080(-2139062144) */
ffa09790:	40 e1 80 80 	R0.H = 0x8080;		/* (-32640)	R0=0x80808080(-2139062144) */
ffa09794:	28 92       	[P5++] = R0;
ffa09796:	10 00       	RTS;

ffa09798 <___divsi3>:
ffa09798:	c8 58       	R3 = R0 ^ R1;
ffa0979a:	07 c4 00 80 	R0 = ABS R0;
ffa0979e:	18 03       	CC = V;
ffa097a0:	82 c6 fb c7 	R3 = ROT R3 BY -0x1;
ffa097a4:	07 c4 08 82 	R1 = ABS R1;
ffa097a8:	88 08       	CC = R0 < R1;
ffa097aa:	76 18       	IF CC JUMP 0xffa09896 <___divsi3+0xfe>;
ffa097ac:	82 c6 89 85 	R2 = R1 >> 0xf;
ffa097b0:	0a 02       	CC = R2;
ffa097b2:	1e 18       	IF CC JUMP 0xffa097ee <___divsi3+0x56>;
ffa097b4:	82 c6 81 84 	R2 = R1 << 0x10;
ffa097b8:	02 09       	CC = R2 <= R0;
ffa097ba:	1a 18       	IF CC JUMP 0xffa097ee <___divsi3+0x56>;
ffa097bc:	48 42       	DIVS (R0, R1);
ffa097be:	08 42       	DIVQ (R0, R1);
ffa097c0:	08 42       	DIVQ (R0, R1);
ffa097c2:	08 42       	DIVQ (R0, R1);
ffa097c4:	08 42       	DIVQ (R0, R1);
ffa097c6:	08 42       	DIVQ (R0, R1);
ffa097c8:	08 42       	DIVQ (R0, R1);
ffa097ca:	08 42       	DIVQ (R0, R1);
ffa097cc:	08 42       	DIVQ (R0, R1);
ffa097ce:	08 42       	DIVQ (R0, R1);
ffa097d0:	08 42       	DIVQ (R0, R1);
ffa097d2:	08 42       	DIVQ (R0, R1);
ffa097d4:	08 42       	DIVQ (R0, R1);
ffa097d6:	08 42       	DIVQ (R0, R1);
ffa097d8:	08 42       	DIVQ (R0, R1);
ffa097da:	08 42       	DIVQ (R0, R1);
ffa097dc:	08 42       	DIVQ (R0, R1);
ffa097de:	c0 42       	R0 = R0.L (Z);
ffa097e0:	82 c6 0b 83 	R1 = R3 >> 0x1f;
ffa097e4:	08 50       	R0 = R0 + R1;
ffa097e6:	81 43       	R1 = -R0;
ffa097e8:	f3 49       	CC = BITTST (R3, 0x1e);		/* bit 30 */
ffa097ea:	01 07       	IF CC R0 = R1;
ffa097ec:	10 00       	RTS;
ffa097ee:	01 0c       	CC = R1 == 0x0;
ffa097f0:	34 18       	IF CC JUMP 0xffa09858 <___divsi3+0xc0>;
ffa097f2:	00 0c       	CC = R0 == 0x0;
ffa097f4:	3f 18       	IF CC JUMP 0xffa09872 <___divsi3+0xda>;
ffa097f6:	08 08       	CC = R0 == R1;
ffa097f8:	30 18       	IF CC JUMP 0xffa09858 <___divsi3+0xc0>;
ffa097fa:	09 0c       	CC = R1 == 0x1;
ffa097fc:	2e 18       	IF CC JUMP 0xffa09858 <___divsi3+0xc0>;
ffa097fe:	06 c6 01 c4 	R2.L = ONES R1;
ffa09802:	d2 42       	R2 = R2.L (Z);
ffa09804:	0a 0c       	CC = R2 == 0x1;
ffa09806:	37 18       	IF CC JUMP 0xffa09874 <___divsi3+0xdc>;
ffa09808:	f9 68       	P1 = 0x1f (X);		/*		P1=0x1f( 31) */
ffa0980a:	68 05       	[--SP] = (R7:5);
ffa0980c:	8a 43       	R2 = -R1;
ffa0980e:	42 01       	[--SP] = R2;
ffa09810:	82 c6 08 84 	R2 = R0 << 0x1;
ffa09814:	88 59       	R6 = R0 ^ R1;
ffa09816:	82 c6 0e 8b 	R5 = R6 >> 0x1f;
ffa0981a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0981c:	aa 56       	R2 = R2 | R5;
ffa0981e:	88 59       	R6 = R0 ^ R1;
ffa09820:	a2 e0 12 10 	LSETUP(0xffa09824 <___divsi3+0x8c>, 0xffa09844 <___divsi3+0xac>) LC0 = P1;
ffa09824:	82 c6 0a 8f 	R7 = R2 >> 0x1f;
ffa09828:	82 c6 0a 84 	R2 = R2 << 0x1;
ffa0982c:	82 ce 08 80 	R0 = R0 << 0x1 || R5 = [SP] || NOP;
ffa09830:	35 91 00 00 
ffa09834:	38 56       	R0 = R0 | R7;
ffa09836:	86 0c       	CC = R6 < 0x0;
ffa09838:	29 07       	IF CC R5 = R1;
ffa0983a:	28 50       	R0 = R0 + R5;
ffa0983c:	88 59       	R6 = R0 ^ R1;
ffa0983e:	82 c6 0e 8b 	R5 = R6 >> 0x1f;
ffa09842:	05 4b       	BITTGL (R5, 0x0);		/* bit  0 */
ffa09844:	aa 50       	R2 = R2 + R5;
ffa09846:	82 c6 0b 83 	R1 = R3 >> 0x1f;
ffa0984a:	8a 50       	R2 = R2 + R1;
ffa0984c:	f3 49       	CC = BITTST (R3, 0x1e);		/* bit 30 */
ffa0984e:	90 43       	R0 = -R2;
ffa09850:	02 06       	IF !CC R0 = R2;
ffa09852:	26 6c       	SP += 0x4;		/* (  4) */
ffa09854:	28 05       	(R7:5) = [SP++];
ffa09856:	10 00       	RTS;
ffa09858:	01 0c       	CC = R1 == 0x0;
ffa0985a:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa0985c:	0a 4e       	R2 >>= 0x1;
ffa0985e:	06 18       	IF CC JUMP 0xffa0986a <___divsi3+0xd2>;
ffa09860:	08 08       	CC = R0 == R1;
ffa09862:	82 e1 01 00 	R2 = 0x1 (Z);		/*		R2=0x1(  1) */
ffa09866:	02 18       	IF CC JUMP 0xffa0986a <___divsi3+0xd2>;
ffa09868:	10 30       	R2 = R0;
ffa0986a:	02 30       	R0 = R2;
ffa0986c:	92 43       	R2 = -R2;
ffa0986e:	f3 49       	CC = BITTST (R3, 0x1e);		/* bit 30 */
ffa09870:	02 07       	IF CC R0 = R2;
ffa09872:	10 00       	RTS;
ffa09874:	82 c6 08 85 	R2 = R0 >> 0x1f;
ffa09878:	81 0c       	CC = R1 < 0x0;
ffa0987a:	f8 1b       	IF CC JUMP 0xffa0986a <___divsi3+0xd2>;
ffa0987c:	05 c6 01 02 	R1.L = SIGNBITS R1;
ffa09880:	c9 42       	R1 = R1.L (Z);
ffa09882:	11 67       	R1 += -0x1e;		/* (-30) */
ffa09884:	02 c6 08 80 	R0 = SHIFT R0 BY R1.L;
ffa09888:	82 c6 0b 83 	R1 = R3 >> 0x1f;
ffa0988c:	08 50       	R0 = R0 + R1;
ffa0988e:	82 43       	R2 = -R0;
ffa09890:	f3 49       	CC = BITTST (R3, 0x1e);		/* bit 30 */
ffa09892:	02 07       	IF CC R0 = R2;
ffa09894:	10 00       	RTS;
ffa09896:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09898:	10 00       	RTS;
	...

ffa0989c <_exception_report>:
ffa0989c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa098a0:	b8 b0       	[FP + 0x8] = R0;
ffa098a2:	f9 b0       	[FP + 0xc] = R1;
ffa098a4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc07000(-4165632) */
ffa098a8:	0a e1 00 07 	P2.L = 0x700;		/* (1792)	P2=0xffc00700(-4192512) */
ffa098ac:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa098ae:	10 97       	W[P2] = R0;
ffa098b0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00700(-4192512) */
ffa098b4:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa098b8:	20 e1 00 01 	R0 = 0x100 (X);		/*		R0=0x100(256) */
ffa098bc:	10 97       	W[P2] = R0;
ffa098be:	24 00       	SSYNC;
ffa098c0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa098c4:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa098c8:	20 e1 00 01 	R0 = 0x100 (X);		/*		R0=0x100(256) */
ffa098cc:	10 97       	W[P2] = R0;
ffa098ce:	24 00       	SSYNC;
ffa098d0:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa098d2:	d0 bb       	[FP -0xc] = R0;
ffa098d4:	b8 a0       	R0 = [FP + 0x8];
ffa098d6:	e0 bb       	[FP -0x8] = R0;
ffa098d8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa098da:	f0 bb       	[FP -0x4] = R0;
ffa098dc:	27 20       	JUMP.S 0xffa0992a <_exception_report+0x8e>;
ffa098de:	d0 b9       	R0 = [FP -0xc];
ffa098e0:	e1 b9       	R1 = [FP -0x8];
ffa098e2:	08 54       	R0 = R0 & R1;
ffa098e4:	00 0c       	CC = R0 == 0x0;
ffa098e6:	08 18       	IF CC JUMP 0xffa098f6 <_exception_report+0x5a>;
ffa098e8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa098ec:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa098f0:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa098f2:	10 97       	W[P2] = R0;
ffa098f4:	07 20       	JUMP.S 0xffa09902 <_exception_report+0x66>;
ffa098f6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa098fa:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa098fe:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09900:	10 97       	W[P2] = R0;
ffa09902:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa09906:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa0990a:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0990c:	10 97       	W[P2] = R0;
ffa0990e:	24 00       	SSYNC;
ffa09910:	d0 b9       	R0 = [FP -0xc];
ffa09912:	08 4e       	R0 >>= 0x1;
ffa09914:	d0 bb       	[FP -0xc] = R0;
ffa09916:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa0991a:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa0991e:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09920:	10 97       	W[P2] = R0;
ffa09922:	24 00       	SSYNC;
ffa09924:	f0 b9       	R0 = [FP -0x4];
ffa09926:	08 64       	R0 += 0x1;		/* (  1) */
ffa09928:	f0 bb       	[FP -0x4] = R0;
ffa0992a:	f0 b9       	R0 = [FP -0x4];
ffa0992c:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa0992e:	08 09       	CC = R0 <= R1;
ffa09930:	d7 1b       	IF CC JUMP 0xffa098de <_exception_report+0x42>;
ffa09932:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa09936:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0993a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0993c:	10 97       	W[P2] = R0;
ffa0993e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09940:	f0 bb       	[FP -0x4] = R0;
ffa09942:	06 20       	JUMP.S 0xffa0994e <_exception_report+0xb2>;
ffa09944:	00 00       	NOP;
ffa09946:	00 00       	NOP;
ffa09948:	f0 b9       	R0 = [FP -0x4];
ffa0994a:	08 64       	R0 += 0x1;		/* (  1) */
ffa0994c:	f0 bb       	[FP -0x4] = R0;
ffa0994e:	f0 b9       	R0 = [FP -0x4];
ffa09950:	e9 60       	R1 = 0x1d (X);		/*		R1=0x1d( 29) */
ffa09952:	08 09       	CC = R0 <= R1;
ffa09954:	f8 1b       	IF CC JUMP 0xffa09944 <_exception_report+0xa8>;
ffa09956:	80 e1 00 80 	R0 = 0x8000 (Z);		/*		R0=0x8000(32768) */
ffa0995a:	d0 bb       	[FP -0xc] = R0;
ffa0995c:	f8 a0       	R0 = [FP + 0xc];
ffa0995e:	e0 bb       	[FP -0x8] = R0;
ffa09960:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09962:	f0 bb       	[FP -0x4] = R0;
ffa09964:	44 20       	JUMP.S 0xffa099ec <_exception_report+0x150>;
ffa09966:	d0 b9       	R0 = [FP -0xc];
ffa09968:	e1 b9       	R1 = [FP -0x8];
ffa0996a:	08 54       	R0 = R0 & R1;
ffa0996c:	00 0c       	CC = R0 == 0x0;
ffa0996e:	08 18       	IF CC JUMP 0xffa0997e <_exception_report+0xe2>;
ffa09970:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa09974:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa09978:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0997a:	10 97       	W[P2] = R0;
ffa0997c:	07 20       	JUMP.S 0xffa0998a <_exception_report+0xee>;
ffa0997e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa09982:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa09986:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09988:	10 97       	W[P2] = R0;
ffa0998a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0998e:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa09992:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09994:	10 97       	W[P2] = R0;
ffa09996:	24 00       	SSYNC;
ffa09998:	d0 b9       	R0 = [FP -0xc];
ffa0999a:	08 4e       	R0 >>= 0x1;
ffa0999c:	d0 bb       	[FP -0xc] = R0;
ffa0999e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa099a2:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa099a6:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa099a8:	10 97       	W[P2] = R0;
ffa099aa:	24 00       	SSYNC;
ffa099ac:	f1 b9       	R1 = [FP -0x4];
ffa099ae:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa099b0:	01 54       	R0 = R1 & R0;
ffa099b2:	18 0c       	CC = R0 == 0x3;
ffa099b4:	19 10       	IF !CC JUMP 0xffa099e6 <_exception_report+0x14a>;
	...
ffa099e6:	f0 b9       	R0 = [FP -0x4];
ffa099e8:	08 64       	R0 += 0x1;		/* (  1) */
ffa099ea:	f0 bb       	[FP -0x4] = R0;
ffa099ec:	f0 b9       	R0 = [FP -0x4];
ffa099ee:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa099f0:	08 09       	CC = R0 <= R1;
ffa099f2:	ba 1b       	IF CC JUMP 0xffa09966 <_exception_report+0xca>;
ffa099f4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa099f8:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa099fc:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa099fe:	10 97       	W[P2] = R0;
ffa09a00:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09a02:	f0 bb       	[FP -0x4] = R0;
ffa09a04:	06 20       	JUMP.S 0xffa09a10 <_exception_report+0x174>;
ffa09a06:	00 00       	NOP;
ffa09a08:	00 00       	NOP;
ffa09a0a:	f0 b9       	R0 = [FP -0x4];
ffa09a0c:	08 64       	R0 += 0x1;		/* (  1) */
ffa09a0e:	f0 bb       	[FP -0x4] = R0;
ffa09a10:	f0 b9       	R0 = [FP -0x4];
ffa09a12:	21 e1 2b 01 	R1 = 0x12b (X);		/*		R1=0x12b(299) */
ffa09a16:	08 09       	CC = R0 <= R1;
ffa09a18:	f7 1b       	IF CC JUMP 0xffa09a06 <_exception_report+0x16a>;
ffa09a1a:	4b 2f       	JUMP.S 0xffa098b0 <_exception_report+0x14>;

ffa09a1c <_nmi_report>:
ffa09a1c:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa09a20:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09a22:	f0 bb       	[FP -0x4] = R0;
ffa09a24:	06 20       	JUMP.S 0xffa09a30 <_nmi_report+0x14>;
ffa09a26:	00 00       	NOP;
ffa09a28:	00 00       	NOP;
ffa09a2a:	f0 b9       	R0 = [FP -0x4];
ffa09a2c:	08 64       	R0 += 0x1;		/* (  1) */
ffa09a2e:	f0 bb       	[FP -0x4] = R0;
ffa09a30:	f0 b9       	R0 = [FP -0x4];
ffa09a32:	21 e1 2b 01 	R1 = 0x12b (X);		/*		R1=0x12b(299) */
ffa09a36:	08 09       	CC = R0 <= R1;
ffa09a38:	f7 1b       	IF CC JUMP 0xffa09a26 <_nmi_report+0xa>;
ffa09a3a:	01 e8 00 00 	UNLINK;
ffa09a3e:	10 00       	RTS;

ffa09a40 <_main>:
ffa09a40:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa09a44:	4a e1 e0 ff 	P2.H = 0xffe0;		/* (-32)	P2=0xffe00704(-2095356) */
ffa09a48:	0a e1 04 10 	P2.L = 0x1004;		/* (4100)	P2=0xffe01004(-2093052) */
ffa09a4c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09a4e:	10 93       	[P2] = R0;
ffa09a50:	23 00       	CSYNC;
ffa09a52:	4a e1 e0 ff 	P2.H = 0xffe0;		/* (-32)	P2=0xffe01004(-2093052) */
ffa09a56:	0a e1 04 00 	P2.L = 0x4;		/* (  4)	P2=0xffe00004(-2097148) */
ffa09a5a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09a5c:	10 93       	[P2] = R0;
ffa09a5e:	23 00       	CSYNC;
ffa09a60:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00004(-4194300) */
ffa09a64:	0a e1 40 07 	P2.L = 0x740;		/* (1856)	P2=0xffc00740(-4192448) */
ffa09a68:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa09a6a:	10 97       	W[P2] = R0;
ffa09a6c:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc0001f(-4194273) */
ffa09a70:	09 e1 30 07 	P1.L = 0x730;		/* (1840)	P1=0xffc00730(-4192464) */
ffa09a74:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00740(-4192448) */
ffa09a78:	0a e1 40 07 	P2.L = 0x740;		/* (1856)	P2=0xffc00740(-4192448) */
ffa09a7c:	50 95       	R0 = W[P2] (X);
ffa09a7e:	c0 43       	R0 =~ R0;
ffa09a80:	08 97       	W[P1] = R0;
ffa09a82:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00740(-4192448) */
ffa09a86:	0a e1 00 07 	P2.L = 0x700;		/* (1792)	P2=0xffc00700(-4192512) */
ffa09a8a:	20 e1 87 01 	R0 = 0x187 (X);		/*		R0=0x187(391) */
ffa09a8e:	10 97       	W[P2] = R0;
ffa09a90:	20 e1 7c 00 	R0 = 0x7c (X);		/*		R0=0x7c(124) */
ffa09a94:	00 e3 6a 06 	CALL 0xffa0a768 <_radio_init>;
ffa09a98:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00700(-4192512) */
ffa09a9c:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa09aa0:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09aa2:	10 97       	W[P2] = R0;
ffa09aa4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa09aa8:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa09aac:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa09ab0:	10 97       	W[P2] = R0;
ffa09ab2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09ab4:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa09ab8:	0a 20       	JUMP.S 0xffa09acc <_main+0x8c>;
	...
ffa09ac2:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa09ac6:	08 64       	R0 += 0x1;		/* (  1) */
ffa09ac8:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa09acc:	78 e4 fe ff 	R0 = W[FP + -0x4] (Z);
ffa09ad0:	21 e1 e7 03 	R1 = 0x3e7 (X);		/*		R1=0x3e7(999) */
ffa09ad4:	08 0a       	CC = R0 <= R1 (IU);
ffa09ad6:	f2 1b       	IF CC JUMP 0xffa09aba <_main+0x7a>;
ffa09ad8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa09adc:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa09ae0:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa09ae4:	10 97       	W[P2] = R0;
ffa09ae6:	00 e3 f5 05 	CALL 0xffa0a6d0 <_radio_set_tx>;
ffa09aea:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa09aee:	0a e1 28 08 	P2.L = 0x828;		/* (2088)	P2=0xffc00828(-4192216) */
ffa09af2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09af4:	10 97       	W[P2] = R0;
ffa09af6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00828(-4192216) */
ffa09afa:	0a e1 2c 08 	P2.L = 0x82c;		/* (2092)	P2=0xffc0082c(-4192212) */
ffa09afe:	98 60       	R0 = 0x13 (X);		/*		R0=0x13( 19) */
ffa09b00:	10 97       	W[P2] = R0;
ffa09b02:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0082c(-4192212) */
ffa09b06:	0a e1 24 08 	P2.L = 0x824;		/* (2084)	P2=0xffc00824(-4192220) */
ffa09b0a:	20 e1 0f 01 	R0 = 0x10f (X);		/*		R0=0x10f(271) */
ffa09b0e:	10 97       	W[P2] = R0;
ffa09b10:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00824(-4192220) */
ffa09b14:	0a e1 28 09 	P2.L = 0x928;		/* (2344)	P2=0xffc00928(-4191960) */
ffa09b18:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09b1a:	10 97       	W[P2] = R0;
ffa09b1c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00928(-4191960) */
ffa09b20:	0a e1 2c 09 	P2.L = 0x92c;		/* (2348)	P2=0xffc0092c(-4191956) */
ffa09b24:	98 60       	R0 = 0x13 (X);		/*		R0=0x13( 19) */
ffa09b26:	10 97       	W[P2] = R0;
ffa09b28:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0092c(-4191956) */
ffa09b2c:	0a e1 24 09 	P2.L = 0x924;		/* (2340)	P2=0xffc00924(-4191964) */
ffa09b30:	20 e1 0f 01 	R0 = 0x10f (X);		/*		R0=0x10f(271) */
ffa09b34:	10 97       	W[P2] = R0;
ffa09b36:	ff e3 d5 f3 	CALL 0xffa082e0 <_radio_bidi_asm>;
ffa09b3a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09b3c:	01 e8 00 00 	UNLINK;
ffa09b40:	10 00       	RTS;
	...

ffa09b44 <_div>:
ffa09b44:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa09b48:	b8 b0       	[FP + 0x8] = R0;
ffa09b4a:	f9 b0       	[FP + 0xc] = R1;
ffa09b4c:	b8 a0       	R0 = [FP + 0x8];
ffa09b4e:	08 4f       	R0 <<= 0x1;
ffa09b50:	b8 b0       	[FP + 0x8] = R0;
ffa09b52:	b9 a0       	R1 = [FP + 0x8];
ffa09b54:	f8 a0       	R0 = [FP + 0xc];
ffa09b56:	11 30       	R2 = R1;
ffa09b58:	18 30       	R3 = R0;
ffa09b5a:	5a 42       	DIVS (R2, R3);
ffa09b5c:	0b 30       	R1 = R3;
ffa09b5e:	02 30       	R0 = R2;
ffa09b60:	b8 b0       	[FP + 0x8] = R0;
ffa09b62:	f9 b0       	[FP + 0xc] = R1;
ffa09b64:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09b66:	f0 bb       	[FP -0x4] = R0;
ffa09b68:	0d 20       	JUMP.S 0xffa09b82 <_div+0x3e>;
ffa09b6a:	b9 a0       	R1 = [FP + 0x8];
ffa09b6c:	f8 a0       	R0 = [FP + 0xc];
ffa09b6e:	11 30       	R2 = R1;
ffa09b70:	18 30       	R3 = R0;
ffa09b72:	1a 42       	DIVQ (R2, R3);
ffa09b74:	0b 30       	R1 = R3;
ffa09b76:	02 30       	R0 = R2;
ffa09b78:	b8 b0       	[FP + 0x8] = R0;
ffa09b7a:	f9 b0       	[FP + 0xc] = R1;
ffa09b7c:	f0 b9       	R0 = [FP -0x4];
ffa09b7e:	08 64       	R0 += 0x1;		/* (  1) */
ffa09b80:	f0 bb       	[FP -0x4] = R0;
ffa09b82:	f0 b9       	R0 = [FP -0x4];
ffa09b84:	71 60       	R1 = 0xe (X);		/*		R1=0xe( 14) */
ffa09b86:	08 09       	CC = R0 <= R1;
ffa09b88:	f1 1b       	IF CC JUMP 0xffa09b6a <_div+0x26>;
ffa09b8a:	b8 a0       	R0 = [FP + 0x8];
ffa09b8c:	80 42       	R0 = R0.L (X);
ffa09b8e:	b8 b0       	[FP + 0x8] = R0;
ffa09b90:	b8 a0       	R0 = [FP + 0x8];
ffa09b92:	01 e8 00 00 	UNLINK;
ffa09b96:	10 00       	RTS;

ffa09b98 <_mod>:
ffa09b98:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa09b9c:	b8 b0       	[FP + 0x8] = R0;
ffa09b9e:	f9 b0       	[FP + 0xc] = R1;
ffa09ba0:	f9 a0       	R1 = [FP + 0xc];
ffa09ba2:	b8 a0       	R0 = [FP + 0x8];
ffa09ba4:	ff e3 d0 ff 	CALL 0xffa09b44 <_div>;
ffa09ba8:	f0 bb       	[FP -0x4] = R0;
ffa09baa:	f1 b9       	R1 = [FP -0x4];
ffa09bac:	f8 a0       	R0 = [FP + 0xc];
ffa09bae:	c1 40       	R1 *= R0;
ffa09bb0:	b8 a0       	R0 = [FP + 0x8];
ffa09bb2:	08 52       	R0 = R0 - R1;
ffa09bb4:	01 e8 00 00 	UNLINK;
ffa09bb8:	10 00       	RTS;
	...

ffa09bbc <_memcpy_>:
ffa09bbc:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa09bc0:	b8 b0       	[FP + 0x8] = R0;
ffa09bc2:	f9 b0       	[FP + 0xc] = R1;
ffa09bc4:	3a b1       	[FP + 0x10] = R2;
ffa09bc6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09bc8:	f0 bb       	[FP -0x4] = R0;
ffa09bca:	0e 20       	JUMP.S 0xffa09be6 <_memcpy_+0x2a>;
ffa09bcc:	ba ac       	P2 = [FP + 0x8];
ffa09bce:	50 99       	R0 = B[P2] (X);
ffa09bd0:	fa ac       	P2 = [FP + 0xc];
ffa09bd2:	10 9b       	B[P2] = R0;
ffa09bd4:	f8 a0       	R0 = [FP + 0xc];
ffa09bd6:	08 64       	R0 += 0x1;		/* (  1) */
ffa09bd8:	f8 b0       	[FP + 0xc] = R0;
ffa09bda:	b8 a0       	R0 = [FP + 0x8];
ffa09bdc:	08 64       	R0 += 0x1;		/* (  1) */
ffa09bde:	b8 b0       	[FP + 0x8] = R0;
ffa09be0:	f0 b9       	R0 = [FP -0x4];
ffa09be2:	08 64       	R0 += 0x1;		/* (  1) */
ffa09be4:	f0 bb       	[FP -0x4] = R0;
ffa09be6:	f1 b9       	R1 = [FP -0x4];
ffa09be8:	38 a1       	R0 = [FP + 0x10];
ffa09bea:	81 08       	CC = R1 < R0;
ffa09bec:	f0 1b       	IF CC JUMP 0xffa09bcc <_memcpy_+0x10>;
ffa09bee:	01 e8 00 00 	UNLINK;
ffa09bf2:	10 00       	RTS;

ffa09bf4 <_memset_>:
ffa09bf4:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa09bf8:	b8 b0       	[FP + 0x8] = R0;
ffa09bfa:	3a b1       	[FP + 0x10] = R2;
ffa09bfc:	01 30       	R0 = R1;
ffa09bfe:	b8 e6 0c 00 	B[FP + 0xc] = R0;
ffa09c02:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09c04:	f0 bb       	[FP -0x4] = R0;
ffa09c06:	0b 20       	JUMP.S 0xffa09c1c <_memset_+0x28>;
ffa09c08:	ba ac       	P2 = [FP + 0x8];
ffa09c0a:	b8 e5 0c 00 	R0 = B[FP + 0xc] (X);
ffa09c0e:	10 9b       	B[P2] = R0;
ffa09c10:	b8 a0       	R0 = [FP + 0x8];
ffa09c12:	08 64       	R0 += 0x1;		/* (  1) */
ffa09c14:	b8 b0       	[FP + 0x8] = R0;
ffa09c16:	f0 b9       	R0 = [FP -0x4];
ffa09c18:	08 64       	R0 += 0x1;		/* (  1) */
ffa09c1a:	f0 bb       	[FP -0x4] = R0;
ffa09c1c:	f1 b9       	R1 = [FP -0x4];
ffa09c1e:	38 a1       	R0 = [FP + 0x10];
ffa09c20:	81 08       	CC = R1 < R0;
ffa09c22:	f3 1b       	IF CC JUMP 0xffa09c08 <_memset_+0x14>;
ffa09c24:	01 e8 00 00 	UNLINK;
ffa09c28:	10 00       	RTS;
	...

ffa09c2c <_strlen_>:
ffa09c2c:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa09c30:	b8 b0       	[FP + 0x8] = R0;
ffa09c32:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09c34:	f0 bb       	[FP -0x4] = R0;
ffa09c36:	10 20       	JUMP.S 0xffa09c56 <_strlen_+0x2a>;
ffa09c38:	f0 b9       	R0 = [FP -0x4];
ffa09c3a:	08 30       	R1 = R0;
ffa09c3c:	b8 a0       	R0 = [FP + 0x8];
ffa09c3e:	41 50       	R1 = R1 + R0;
ffa09c40:	11 32       	P2 = R1;
ffa09c42:	50 99       	R0 = B[P2] (X);
ffa09c44:	00 43       	R0 = R0.B (X);
ffa09c46:	00 0c       	CC = R0 == 0x0;
ffa09c48:	04 10       	IF !CC JUMP 0xffa09c50 <_strlen_+0x24>;
ffa09c4a:	f0 b9       	R0 = [FP -0x4];
ffa09c4c:	e0 bb       	[FP -0x8] = R0;
ffa09c4e:	0b 20       	JUMP.S 0xffa09c64 <_strlen_+0x38>;
ffa09c50:	f0 b9       	R0 = [FP -0x4];
ffa09c52:	08 64       	R0 += 0x1;		/* (  1) */
ffa09c54:	f0 bb       	[FP -0x4] = R0;
ffa09c56:	f0 b9       	R0 = [FP -0x4];
ffa09c58:	21 e1 ff 04 	R1 = 0x4ff (X);		/*		R1=0x4ff(1279) */
ffa09c5c:	08 09       	CC = R0 <= R1;
ffa09c5e:	ed 1b       	IF CC JUMP 0xffa09c38 <_strlen_+0xc>;
ffa09c60:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09c62:	e0 bb       	[FP -0x8] = R0;
ffa09c64:	e0 b9       	R0 = [FP -0x8];
ffa09c66:	01 e8 00 00 	UNLINK;
ffa09c6a:	10 00       	RTS;

ffa09c6c <_strcpy_>:
ffa09c6c:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa09c70:	b8 b0       	[FP + 0x8] = R0;
ffa09c72:	f9 b0       	[FP + 0xc] = R1;
ffa09c74:	3a b1       	[FP + 0x10] = R2;
ffa09c76:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09c78:	f0 bb       	[FP -0x4] = R0;
ffa09c7a:	0e 20       	JUMP.S 0xffa09c96 <_strcpy_+0x2a>;
ffa09c7c:	3a ad       	P2 = [FP + 0x10];
ffa09c7e:	50 99       	R0 = B[P2] (X);
ffa09c80:	ba ac       	P2 = [FP + 0x8];
ffa09c82:	10 9b       	B[P2] = R0;
ffa09c84:	b8 a0       	R0 = [FP + 0x8];
ffa09c86:	08 64       	R0 += 0x1;		/* (  1) */
ffa09c88:	b8 b0       	[FP + 0x8] = R0;
ffa09c8a:	38 a1       	R0 = [FP + 0x10];
ffa09c8c:	08 64       	R0 += 0x1;		/* (  1) */
ffa09c8e:	38 b1       	[FP + 0x10] = R0;
ffa09c90:	f0 b9       	R0 = [FP -0x4];
ffa09c92:	08 64       	R0 += 0x1;		/* (  1) */
ffa09c94:	f0 bb       	[FP -0x4] = R0;
ffa09c96:	3a ad       	P2 = [FP + 0x10];
ffa09c98:	50 99       	R0 = B[P2] (X);
ffa09c9a:	00 43       	R0 = R0.B (X);
ffa09c9c:	00 0c       	CC = R0 == 0x0;
ffa09c9e:	08 18       	IF CC JUMP 0xffa09cae <_strcpy_+0x42>;
ffa09ca0:	f0 b9       	R0 = [FP -0x4];
ffa09ca2:	21 e1 ff 04 	R1 = 0x4ff (X);		/*		R1=0x4ff(1279) */
ffa09ca6:	08 09       	CC = R0 <= R1;
ffa09ca8:	ea 1b       	IF CC JUMP 0xffa09c7c <_strcpy_+0x10>;
ffa09caa:	00 00       	NOP;
ffa09cac:	00 00       	NOP;
ffa09cae:	fa ac       	P2 = [FP + 0xc];
ffa09cb0:	11 91       	R1 = [P2];
ffa09cb2:	f0 b9       	R0 = [FP -0x4];
ffa09cb4:	01 50       	R0 = R1 + R0;
ffa09cb6:	fa ac       	P2 = [FP + 0xc];
ffa09cb8:	10 93       	[P2] = R0;
ffa09cba:	b8 a0       	R0 = [FP + 0x8];
ffa09cbc:	01 e8 00 00 	UNLINK;
ffa09cc0:	10 00       	RTS;
	...

ffa09cc4 <_strprepend>:
ffa09cc4:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa09cc8:	b8 b0       	[FP + 0x8] = R0;
ffa09cca:	f9 b0       	[FP + 0xc] = R1;
ffa09ccc:	3a b1       	[FP + 0x10] = R2;
ffa09cce:	38 a1       	R0 = [FP + 0x10];
ffa09cd0:	ff e3 ae ff 	CALL 0xffa09c2c <_strlen_>;
ffa09cd4:	d0 bb       	[FP -0xc] = R0;
ffa09cd6:	fa ac       	P2 = [FP + 0xc];
ffa09cd8:	10 91       	R0 = [P2];
ffa09cda:	08 30       	R1 = R0;
ffa09cdc:	b8 a0       	R0 = [FP + 0x8];
ffa09cde:	08 52       	R0 = R0 - R1;
ffa09ce0:	e0 bb       	[FP -0x8] = R0;
ffa09ce2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09ce4:	f0 bb       	[FP -0x4] = R0;
ffa09ce6:	0e 20       	JUMP.S 0xffa09d02 <_strprepend+0x3e>;
ffa09ce8:	3a ad       	P2 = [FP + 0x10];
ffa09cea:	50 99       	R0 = B[P2] (X);
ffa09cec:	ea b9       	P2 = [FP -0x8];
ffa09cee:	10 9b       	B[P2] = R0;
ffa09cf0:	e0 b9       	R0 = [FP -0x8];
ffa09cf2:	08 64       	R0 += 0x1;		/* (  1) */
ffa09cf4:	e0 bb       	[FP -0x8] = R0;
ffa09cf6:	38 a1       	R0 = [FP + 0x10];
ffa09cf8:	08 64       	R0 += 0x1;		/* (  1) */
ffa09cfa:	38 b1       	[FP + 0x10] = R0;
ffa09cfc:	f0 b9       	R0 = [FP -0x4];
ffa09cfe:	08 64       	R0 += 0x1;		/* (  1) */
ffa09d00:	f0 bb       	[FP -0x4] = R0;
ffa09d02:	f1 b9       	R1 = [FP -0x4];
ffa09d04:	d0 b9       	R0 = [FP -0xc];
ffa09d06:	81 08       	CC = R1 < R0;
ffa09d08:	f0 1b       	IF CC JUMP 0xffa09ce8 <_strprepend+0x24>;
ffa09d0a:	00 00       	NOP;
ffa09d0c:	00 00       	NOP;
ffa09d0e:	fa ac       	P2 = [FP + 0xc];
ffa09d10:	10 91       	R0 = [P2];
ffa09d12:	08 30       	R1 = R0;
ffa09d14:	b8 a0       	R0 = [FP + 0x8];
ffa09d16:	08 52       	R0 = R0 - R1;
ffa09d18:	01 e8 00 00 	UNLINK;
ffa09d1c:	10 00       	RTS;
	...

ffa09d20 <_strcmp>:
ffa09d20:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa09d24:	b8 b0       	[FP + 0x8] = R0;
ffa09d26:	f9 b0       	[FP + 0xc] = R1;
ffa09d28:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09d2a:	f0 bb       	[FP -0x4] = R0;
ffa09d2c:	1a 20       	JUMP.S 0xffa09d60 <_strcmp+0x40>;
ffa09d2e:	ba ac       	P2 = [FP + 0x8];
ffa09d30:	51 99       	R1 = B[P2] (X);
ffa09d32:	fa ac       	P2 = [FP + 0xc];
ffa09d34:	50 99       	R0 = B[P2] (X);
ffa09d36:	09 43       	R1 = R1.B (X);
ffa09d38:	00 43       	R0 = R0.B (X);
ffa09d3a:	01 08       	CC = R1 == R0;
ffa09d3c:	18 02       	CC = !CC;
ffa09d3e:	00 02       	R0 = CC;
ffa09d40:	08 30       	R1 = R0;
ffa09d42:	b8 a0       	R0 = [FP + 0x8];
ffa09d44:	08 64       	R0 += 0x1;		/* (  1) */
ffa09d46:	b8 b0       	[FP + 0x8] = R0;
ffa09d48:	f8 a0       	R0 = [FP + 0xc];
ffa09d4a:	08 64       	R0 += 0x1;		/* (  1) */
ffa09d4c:	f8 b0       	[FP + 0xc] = R0;
ffa09d4e:	48 43       	R0 = R1.B (Z);
ffa09d50:	00 0c       	CC = R0 == 0x0;
ffa09d52:	04 18       	IF CC JUMP 0xffa09d5a <_strcmp+0x3a>;
ffa09d54:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09d56:	e0 bb       	[FP -0x8] = R0;
ffa09d58:	17 20       	JUMP.S 0xffa09d86 <_strcmp+0x66>;
ffa09d5a:	f0 b9       	R0 = [FP -0x4];
ffa09d5c:	08 64       	R0 += 0x1;		/* (  1) */
ffa09d5e:	f0 bb       	[FP -0x4] = R0;
ffa09d60:	ba ac       	P2 = [FP + 0x8];
ffa09d62:	50 99       	R0 = B[P2] (X);
ffa09d64:	00 43       	R0 = R0.B (X);
ffa09d66:	00 0c       	CC = R0 == 0x0;
ffa09d68:	0d 18       	IF CC JUMP 0xffa09d82 <_strcmp+0x62>;
ffa09d6a:	00 00       	NOP;
ffa09d6c:	00 00       	NOP;
ffa09d6e:	fa ac       	P2 = [FP + 0xc];
ffa09d70:	50 99       	R0 = B[P2] (X);
ffa09d72:	00 43       	R0 = R0.B (X);
ffa09d74:	00 0c       	CC = R0 == 0x0;
ffa09d76:	06 18       	IF CC JUMP 0xffa09d82 <_strcmp+0x62>;
ffa09d78:	f0 b9       	R0 = [FP -0x4];
ffa09d7a:	21 e1 ff 04 	R1 = 0x4ff (X);		/*		R1=0x4ff(1279) */
ffa09d7e:	08 09       	CC = R0 <= R1;
ffa09d80:	d7 1b       	IF CC JUMP 0xffa09d2e <_strcmp+0xe>;
ffa09d82:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09d84:	e0 bb       	[FP -0x8] = R0;
ffa09d86:	e0 b9       	R0 = [FP -0x8];
ffa09d88:	01 e8 00 00 	UNLINK;
ffa09d8c:	10 00       	RTS;
	...

ffa09d90 <_substr>:
ffa09d90:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa09d94:	b8 b0       	[FP + 0x8] = R0;
ffa09d96:	f9 b0       	[FP + 0xc] = R1;
ffa09d98:	3a b1       	[FP + 0x10] = R2;
ffa09d9a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09d9c:	e0 bb       	[FP -0x8] = R0;
ffa09d9e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09da0:	f0 bb       	[FP -0x4] = R0;
ffa09da2:	39 20       	JUMP.S 0xffa09e14 <_substr+0x84>;
ffa09da4:	ba ac       	P2 = [FP + 0x8];
ffa09da6:	51 99       	R1 = B[P2] (X);
ffa09da8:	fa ac       	P2 = [FP + 0xc];
ffa09daa:	50 99       	R0 = B[P2] (X);
ffa09dac:	09 43       	R1 = R1.B (X);
ffa09dae:	00 43       	R0 = R0.B (X);
ffa09db0:	01 08       	CC = R1 == R0;
ffa09db2:	2b 10       	IF !CC JUMP 0xffa09e08 <_substr+0x78>;
ffa09db4:	b8 a0       	R0 = [FP + 0x8];
ffa09db6:	08 64       	R0 += 0x1;		/* (  1) */
ffa09db8:	c0 bb       	[FP -0x10] = R0;
ffa09dba:	f8 a0       	R0 = [FP + 0xc];
ffa09dbc:	08 64       	R0 += 0x1;		/* (  1) */
ffa09dbe:	d0 bb       	[FP -0xc] = R0;
ffa09dc0:	e0 b9       	R0 = [FP -0x8];
ffa09dc2:	08 64       	R0 += 0x1;		/* (  1) */
ffa09dc4:	f0 bb       	[FP -0x4] = R0;
ffa09dc6:	12 20       	JUMP.S 0xffa09dea <_substr+0x5a>;
ffa09dc8:	c0 b9       	R0 = [FP -0x10];
ffa09dca:	08 64       	R0 += 0x1;		/* (  1) */
ffa09dcc:	c0 bb       	[FP -0x10] = R0;
ffa09dce:	d0 b9       	R0 = [FP -0xc];
ffa09dd0:	08 64       	R0 += 0x1;		/* (  1) */
ffa09dd2:	d0 bb       	[FP -0xc] = R0;
ffa09dd4:	f0 b9       	R0 = [FP -0x4];
ffa09dd6:	08 64       	R0 += 0x1;		/* (  1) */
ffa09dd8:	f0 bb       	[FP -0x4] = R0;
ffa09dda:	ca b9       	P2 = [FP -0x10];
ffa09ddc:	50 99       	R0 = B[P2] (X);
ffa09dde:	00 43       	R0 = R0.B (X);
ffa09de0:	00 0c       	CC = R0 == 0x0;
ffa09de2:	04 10       	IF !CC JUMP 0xffa09dea <_substr+0x5a>;
ffa09de4:	f0 b9       	R0 = [FP -0x4];
ffa09de6:	b0 bb       	[FP -0x14] = R0;
ffa09de8:	28 20       	JUMP.S 0xffa09e38 <_substr+0xa8>;
ffa09dea:	ca b9       	P2 = [FP -0x10];
ffa09dec:	51 99       	R1 = B[P2] (X);
ffa09dee:	da b9       	P2 = [FP -0xc];
ffa09df0:	50 99       	R0 = B[P2] (X);
ffa09df2:	09 43       	R1 = R1.B (X);
ffa09df4:	00 43       	R0 = R0.B (X);
ffa09df6:	01 08       	CC = R1 == R0;
ffa09df8:	08 10       	IF !CC JUMP 0xffa09e08 <_substr+0x78>;
ffa09dfa:	00 00       	NOP;
ffa09dfc:	00 00       	NOP;
ffa09dfe:	da b9       	P2 = [FP -0xc];
ffa09e00:	50 99       	R0 = B[P2] (X);
ffa09e02:	00 43       	R0 = R0.B (X);
ffa09e04:	00 0c       	CC = R0 == 0x0;
ffa09e06:	e1 13       	IF !CC JUMP 0xffa09dc8 <_substr+0x38>;
ffa09e08:	f8 a0       	R0 = [FP + 0xc];
ffa09e0a:	08 64       	R0 += 0x1;		/* (  1) */
ffa09e0c:	f8 b0       	[FP + 0xc] = R0;
ffa09e0e:	e0 b9       	R0 = [FP -0x8];
ffa09e10:	08 64       	R0 += 0x1;		/* (  1) */
ffa09e12:	e0 bb       	[FP -0x8] = R0;
ffa09e14:	ba ac       	P2 = [FP + 0x8];
ffa09e16:	50 99       	R0 = B[P2] (X);
ffa09e18:	00 43       	R0 = R0.B (X);
ffa09e1a:	00 0c       	CC = R0 == 0x0;
ffa09e1c:	0c 18       	IF CC JUMP 0xffa09e34 <_substr+0xa4>;
ffa09e1e:	00 00       	NOP;
ffa09e20:	00 00       	NOP;
ffa09e22:	fa ac       	P2 = [FP + 0xc];
ffa09e24:	50 99       	R0 = B[P2] (X);
ffa09e26:	00 43       	R0 = R0.B (X);
ffa09e28:	00 0c       	CC = R0 == 0x0;
ffa09e2a:	05 18       	IF CC JUMP 0xffa09e34 <_substr+0xa4>;
ffa09e2c:	e1 b9       	R1 = [FP -0x8];
ffa09e2e:	38 a1       	R0 = [FP + 0x10];
ffa09e30:	81 08       	CC = R1 < R0;
ffa09e32:	b9 1b       	IF CC JUMP 0xffa09da4 <_substr+0x14>;
ffa09e34:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09e36:	b0 bb       	[FP -0x14] = R0;
ffa09e38:	b0 b9       	R0 = [FP -0x14];
ffa09e3a:	01 e8 00 00 	UNLINK;
ffa09e3e:	10 00       	RTS;

ffa09e40 <_sprintf_int>:
ffa09e40:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa09e44:	b8 b0       	[FP + 0x8] = R0;
ffa09e46:	f9 b0       	[FP + 0xc] = R1;
ffa09e48:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09e4a:	c0 bb       	[FP -0x10] = R0;
ffa09e4c:	f8 a0       	R0 = [FP + 0xc];
ffa09e4e:	00 0c       	CC = R0 == 0x0;
ffa09e50:	0b 10       	IF !CC JUMP 0xffa09e66 <_sprintf_int+0x26>;
ffa09e52:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900924 */
ffa09e56:	0a e1 80 70 	P2.L = 0x7080;		/* (28800)	P2=0xff907080 <_printf_temp> */
ffa09e5a:	52 91       	P2 = [P2];
ffa09e5c:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa09e5e:	10 9b       	B[P2] = R0;
ffa09e60:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09e62:	c0 bb       	[FP -0x10] = R0;
ffa09e64:	90 20       	JUMP.S 0xffa09f84 <_sprintf_int+0x144>;
ffa09e66:	f8 a0       	R0 = [FP + 0xc];
ffa09e68:	00 0d       	CC = R0 <= 0x0;
ffa09e6a:	3c 18       	IF CC JUMP 0xffa09ee2 <_sprintf_int+0xa2>;
ffa09e6c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09e6e:	c0 bb       	[FP -0x10] = R0;
ffa09e70:	31 20       	JUMP.S 0xffa09ed2 <_sprintf_int+0x92>;
ffa09e72:	f9 a0       	R1 = [FP + 0xc];
ffa09e74:	40 e1 66 66 	R0.H = 0x6666;		/* (26214)	R0=0x66660000(1717960704) */
ffa09e78:	00 e1 67 66 	R0.L = 0x6667;		/* (26215)	R0=0x66666667(1717986919) */
ffa09e7c:	80 c0 08 18 	A1 = R1.L * R0.L (FU);
ffa09e80:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa09e84:	11 c1 08 86 	A1 += R1.H * R0.L (M), A0 = R1.H * R0.H (IS);
ffa09e88:	11 c1 01 98 	A1 += R0.H * R1.L (M, IS);
ffa09e8c:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa09e90:	0b c4 00 00 	R0 = (A0 += A1);
ffa09e94:	82 c6 f0 05 	R2 = R0 >>> 0x2;
ffa09e98:	82 c6 09 01 	R0 = R1 >>> 0x1f;
ffa09e9c:	02 52       	R0 = R2 - R0;
ffa09e9e:	f0 bb       	[FP -0x4] = R0;
ffa09ea0:	f1 b9       	R1 = [FP -0x4];
ffa09ea2:	01 30       	R0 = R1;
ffa09ea4:	10 4f       	R0 <<= 0x2;
ffa09ea6:	08 50       	R0 = R0 + R1;
ffa09ea8:	08 4f       	R0 <<= 0x1;
ffa09eaa:	08 30       	R1 = R0;
ffa09eac:	f8 a0       	R0 = [FP + 0xc];
ffa09eae:	08 52       	R0 = R0 - R1;
ffa09eb0:	d0 bb       	[FP -0xc] = R0;
ffa09eb2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff907080 <_printf_temp> */
ffa09eb6:	0a e1 80 70 	P2.L = 0x7080;		/* (28800)	P2=0xff907080 <_printf_temp> */
ffa09eba:	11 91       	R1 = [P2];
ffa09ebc:	c0 b9       	R0 = [FP -0x10];
ffa09ebe:	41 50       	R1 = R1 + R0;
ffa09ec0:	11 32       	P2 = R1;
ffa09ec2:	d0 b9       	R0 = [FP -0xc];
ffa09ec4:	80 65       	R0 += 0x30;		/* ( 48) */
ffa09ec6:	10 9b       	B[P2] = R0;
ffa09ec8:	c0 b9       	R0 = [FP -0x10];
ffa09eca:	08 64       	R0 += 0x1;		/* (  1) */
ffa09ecc:	c0 bb       	[FP -0x10] = R0;
ffa09ece:	f0 b9       	R0 = [FP -0x4];
ffa09ed0:	f8 b0       	[FP + 0xc] = R0;
ffa09ed2:	f8 a0       	R0 = [FP + 0xc];
ffa09ed4:	00 0d       	CC = R0 <= 0x0;
ffa09ed6:	57 18       	IF CC JUMP 0xffa09f84 <_sprintf_int+0x144>;
ffa09ed8:	c0 b9       	R0 = [FP -0x10];
ffa09eda:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa09edc:	08 09       	CC = R0 <= R1;
ffa09ede:	ca 1b       	IF CC JUMP 0xffa09e72 <_sprintf_int+0x32>;
ffa09ee0:	52 20       	JUMP.S 0xffa09f84 <_sprintf_int+0x144>;
ffa09ee2:	f8 a0       	R0 = [FP + 0xc];
ffa09ee4:	80 0c       	CC = R0 < 0x0;
ffa09ee6:	4f 10       	IF !CC JUMP 0xffa09f84 <_sprintf_int+0x144>;
ffa09ee8:	f8 a0       	R0 = [FP + 0xc];
ffa09eea:	08 30       	R1 = R0;
ffa09eec:	f9 4c       	BITCLR (R1, 0x1f);		/* bit 31 */
ffa09eee:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa09ef0:	f8 4f       	R0 <<= 0x1f;
ffa09ef2:	08 52       	R0 = R0 - R1;
ffa09ef4:	f8 b0       	[FP + 0xc] = R0;
ffa09ef6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09ef8:	c0 bb       	[FP -0x10] = R0;
ffa09efa:	31 20       	JUMP.S 0xffa09f5c <_sprintf_int+0x11c>;
ffa09efc:	f9 a0       	R1 = [FP + 0xc];
ffa09efe:	40 e1 66 66 	R0.H = 0x6666;		/* (26214)	R0=0x66660000(1717960704) */
ffa09f02:	00 e1 67 66 	R0.L = 0x6667;		/* (26215)	R0=0x66666667(1717986919) */
ffa09f06:	80 c0 08 18 	A1 = R1.L * R0.L (FU);
ffa09f0a:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa09f0e:	11 c1 08 86 	A1 += R1.H * R0.L (M), A0 = R1.H * R0.H (IS);
ffa09f12:	11 c1 01 98 	A1 += R0.H * R1.L (M, IS);
ffa09f16:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa09f1a:	0b c4 00 00 	R0 = (A0 += A1);
ffa09f1e:	82 c6 f0 05 	R2 = R0 >>> 0x2;
ffa09f22:	82 c6 09 01 	R0 = R1 >>> 0x1f;
ffa09f26:	02 52       	R0 = R2 - R0;
ffa09f28:	f0 bb       	[FP -0x4] = R0;
ffa09f2a:	f1 b9       	R1 = [FP -0x4];
ffa09f2c:	01 30       	R0 = R1;
ffa09f2e:	10 4f       	R0 <<= 0x2;
ffa09f30:	08 50       	R0 = R0 + R1;
ffa09f32:	08 4f       	R0 <<= 0x1;
ffa09f34:	08 30       	R1 = R0;
ffa09f36:	f8 a0       	R0 = [FP + 0xc];
ffa09f38:	08 52       	R0 = R0 - R1;
ffa09f3a:	d0 bb       	[FP -0xc] = R0;
ffa09f3c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff907080 <_printf_temp> */
ffa09f40:	0a e1 80 70 	P2.L = 0x7080;		/* (28800)	P2=0xff907080 <_printf_temp> */
ffa09f44:	11 91       	R1 = [P2];
ffa09f46:	c0 b9       	R0 = [FP -0x10];
ffa09f48:	41 50       	R1 = R1 + R0;
ffa09f4a:	11 32       	P2 = R1;
ffa09f4c:	d0 b9       	R0 = [FP -0xc];
ffa09f4e:	80 65       	R0 += 0x30;		/* ( 48) */
ffa09f50:	10 9b       	B[P2] = R0;
ffa09f52:	c0 b9       	R0 = [FP -0x10];
ffa09f54:	08 64       	R0 += 0x1;		/* (  1) */
ffa09f56:	c0 bb       	[FP -0x10] = R0;
ffa09f58:	f0 b9       	R0 = [FP -0x4];
ffa09f5a:	f8 b0       	[FP + 0xc] = R0;
ffa09f5c:	f8 a0       	R0 = [FP + 0xc];
ffa09f5e:	00 0d       	CC = R0 <= 0x0;
ffa09f60:	05 18       	IF CC JUMP 0xffa09f6a <_sprintf_int+0x12a>;
ffa09f62:	c0 b9       	R0 = [FP -0x10];
ffa09f64:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa09f66:	08 09       	CC = R0 <= R1;
ffa09f68:	ca 1b       	IF CC JUMP 0xffa09efc <_sprintf_int+0xbc>;
ffa09f6a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff907080 <_printf_temp> */
ffa09f6e:	0a e1 80 70 	P2.L = 0x7080;		/* (28800)	P2=0xff907080 <_printf_temp> */
ffa09f72:	11 91       	R1 = [P2];
ffa09f74:	c0 b9       	R0 = [FP -0x10];
ffa09f76:	41 50       	R1 = R1 + R0;
ffa09f78:	11 32       	P2 = R1;
ffa09f7a:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa09f7c:	10 9b       	B[P2] = R0;
ffa09f7e:	c0 b9       	R0 = [FP -0x10];
ffa09f80:	08 64       	R0 += 0x1;		/* (  1) */
ffa09f82:	c0 bb       	[FP -0x10] = R0;
ffa09f84:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09f86:	e0 bb       	[FP -0x8] = R0;
ffa09f88:	16 20       	JUMP.S 0xffa09fb4 <_sprintf_int+0x174>;
ffa09f8a:	e0 b9       	R0 = [FP -0x8];
ffa09f8c:	08 30       	R1 = R0;
ffa09f8e:	b8 a0       	R0 = [FP + 0x8];
ffa09f90:	41 50       	R1 = R1 + R0;
ffa09f92:	09 32       	P1 = R1;
ffa09f94:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff907080 <_printf_temp> */
ffa09f98:	0a e1 80 70 	P2.L = 0x7080;		/* (28800)	P2=0xff907080 <_printf_temp> */
ffa09f9c:	12 91       	R2 = [P2];
ffa09f9e:	c1 b9       	R1 = [FP -0x10];
ffa09fa0:	e0 b9       	R0 = [FP -0x8];
ffa09fa2:	01 52       	R0 = R1 - R0;
ffa09fa4:	02 50       	R0 = R2 + R0;
ffa09fa6:	10 32       	P2 = R0;
ffa09fa8:	fa 6f       	P2 += -0x1;		/* ( -1) */
ffa09faa:	50 99       	R0 = B[P2] (X);
ffa09fac:	08 9b       	B[P1] = R0;
ffa09fae:	e0 b9       	R0 = [FP -0x8];
ffa09fb0:	08 64       	R0 += 0x1;		/* (  1) */
ffa09fb2:	e0 bb       	[FP -0x8] = R0;
ffa09fb4:	e1 b9       	R1 = [FP -0x8];
ffa09fb6:	c0 b9       	R0 = [FP -0x10];
ffa09fb8:	81 08       	CC = R1 < R0;
ffa09fba:	e8 1b       	IF CC JUMP 0xffa09f8a <_sprintf_int+0x14a>;
ffa09fbc:	c0 b9       	R0 = [FP -0x10];
ffa09fbe:	01 e8 00 00 	UNLINK;
ffa09fc2:	10 00       	RTS;

ffa09fc4 <_sprintf_hex>:
ffa09fc4:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa09fc8:	b8 b0       	[FP + 0x8] = R0;
ffa09fca:	f9 b0       	[FP + 0xc] = R1;
ffa09fcc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09fce:	d0 bb       	[FP -0xc] = R0;
ffa09fd0:	d0 b9       	R0 = [FP -0xc];
ffa09fd2:	08 30       	R1 = R0;
ffa09fd4:	b8 a0       	R0 = [FP + 0x8];
ffa09fd6:	41 50       	R1 = R1 + R0;
ffa09fd8:	11 32       	P2 = R1;
ffa09fda:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa09fdc:	10 9b       	B[P2] = R0;
ffa09fde:	d0 b9       	R0 = [FP -0xc];
ffa09fe0:	08 64       	R0 += 0x1;		/* (  1) */
ffa09fe2:	d0 bb       	[FP -0xc] = R0;
ffa09fe4:	d0 b9       	R0 = [FP -0xc];
ffa09fe6:	08 30       	R1 = R0;
ffa09fe8:	b8 a0       	R0 = [FP + 0x8];
ffa09fea:	41 50       	R1 = R1 + R0;
ffa09fec:	11 32       	P2 = R1;
ffa09fee:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa09ff2:	10 9b       	B[P2] = R0;
ffa09ff4:	d0 b9       	R0 = [FP -0xc];
ffa09ff6:	08 64       	R0 += 0x1;		/* (  1) */
ffa09ff8:	d0 bb       	[FP -0xc] = R0;
ffa09ffa:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09ffc:	c0 bb       	[FP -0x10] = R0;
ffa09ffe:	2c 20       	JUMP.S 0xffa0a056 <_sprintf_hex+0x92>;
ffa0a000:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa0a002:	c0 b9       	R0 = [FP -0x10];
ffa0a004:	01 52       	R0 = R1 - R0;
ffa0a006:	82 c6 10 82 	R1 = R0 << 0x2;
ffa0a00a:	f8 a0       	R0 = [FP + 0xc];
ffa0a00c:	08 40       	R0 >>>= R1;
ffa0a00e:	e0 bb       	[FP -0x8] = R0;
ffa0a010:	e0 b9       	R0 = [FP -0x8];
ffa0a012:	08 30       	R1 = R0;
ffa0a014:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa0a016:	01 54       	R0 = R1 & R0;
ffa0a018:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa0a01c:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa0a020:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa0a022:	08 09       	CC = R0 <= R1;
ffa0a024:	07 18       	IF CC JUMP 0xffa0a032 <_sprintf_hex+0x6e>;
ffa0a026:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa0a02a:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa0a02c:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa0a030:	06 20       	JUMP.S 0xffa0a03c <_sprintf_hex+0x78>;
ffa0a032:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa0a036:	80 65       	R0 += 0x30;		/* ( 48) */
ffa0a038:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa0a03c:	d1 b9       	R1 = [FP -0xc];
ffa0a03e:	c0 b9       	R0 = [FP -0x10];
ffa0a040:	01 50       	R0 = R1 + R0;
ffa0a042:	08 30       	R1 = R0;
ffa0a044:	b8 a0       	R0 = [FP + 0x8];
ffa0a046:	41 50       	R1 = R1 + R0;
ffa0a048:	11 32       	P2 = R1;
ffa0a04a:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa0a04e:	10 9b       	B[P2] = R0;
ffa0a050:	c0 b9       	R0 = [FP -0x10];
ffa0a052:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a054:	c0 bb       	[FP -0x10] = R0;
ffa0a056:	c0 b9       	R0 = [FP -0x10];
ffa0a058:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa0a05a:	08 09       	CC = R0 <= R1;
ffa0a05c:	d2 1b       	IF CC JUMP 0xffa0a000 <_sprintf_hex+0x3c>;
ffa0a05e:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa0a060:	01 e8 00 00 	UNLINK;
ffa0a064:	10 00       	RTS;
	...

ffa0a068 <_strprintf_int>:
ffa0a068:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0a06c:	b8 b0       	[FP + 0x8] = R0;
ffa0a06e:	f9 b0       	[FP + 0xc] = R1;
ffa0a070:	3a b1       	[FP + 0x10] = R2;
ffa0a072:	39 a1       	R1 = [FP + 0x10];
ffa0a074:	b8 a0       	R0 = [FP + 0x8];
ffa0a076:	ff e3 e5 fe 	CALL 0xffa09e40 <_sprintf_int>;
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

ffa0a09c <_strprintf_hex>:
ffa0a09c:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0a0a0:	b8 b0       	[FP + 0x8] = R0;
ffa0a0a2:	f9 b0       	[FP + 0xc] = R1;
ffa0a0a4:	3a b1       	[FP + 0x10] = R2;
ffa0a0a6:	39 a1       	R1 = [FP + 0x10];
ffa0a0a8:	b8 a0       	R0 = [FP + 0x8];
ffa0a0aa:	ff e3 8d ff 	CALL 0xffa09fc4 <_sprintf_hex>;
ffa0a0ae:	f0 bb       	[FP -0x4] = R0;
ffa0a0b0:	fa ac       	P2 = [FP + 0xc];
ffa0a0b2:	11 91       	R1 = [P2];
ffa0a0b4:	f0 b9       	R0 = [FP -0x4];
ffa0a0b6:	01 50       	R0 = R1 + R0;
ffa0a0b8:	fa ac       	P2 = [FP + 0xc];
ffa0a0ba:	10 93       	[P2] = R0;
ffa0a0bc:	f0 b9       	R0 = [FP -0x4];
ffa0a0be:	08 30       	R1 = R0;
ffa0a0c0:	b8 a0       	R0 = [FP + 0x8];
ffa0a0c2:	08 50       	R0 = R0 + R1;
ffa0a0c4:	b8 b0       	[FP + 0x8] = R0;
ffa0a0c6:	b8 a0       	R0 = [FP + 0x8];
ffa0a0c8:	01 e8 00 00 	UNLINK;
ffa0a0cc:	10 00       	RTS;
	...

ffa0a0d0 <_atoi>:
ffa0a0d0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a0d4:	b8 b0       	[FP + 0x8] = R0;
ffa0a0d6:	f9 b0       	[FP + 0xc] = R1;
ffa0a0d8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a0da:	d0 bb       	[FP -0xc] = R0;
ffa0a0dc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a0de:	e0 bb       	[FP -0x8] = R0;
ffa0a0e0:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a0e2:	f0 bb       	[FP -0x4] = R0;
ffa0a0e4:	ba ac       	P2 = [FP + 0x8];
ffa0a0e6:	50 99       	R0 = B[P2] (X);
ffa0a0e8:	00 43       	R0 = R0.B (X);
ffa0a0ea:	69 61       	R1 = 0x2d (X);		/*		R1=0x2d( 45) */
ffa0a0ec:	08 08       	CC = R0 == R1;
ffa0a0ee:	2c 10       	IF !CC JUMP 0xffa0a146 <_atoi+0x76>;
ffa0a0f0:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0a0f2:	f0 bb       	[FP -0x4] = R0;
ffa0a0f4:	b8 a0       	R0 = [FP + 0x8];
ffa0a0f6:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a0f8:	b8 b0       	[FP + 0x8] = R0;
ffa0a0fa:	d0 b9       	R0 = [FP -0xc];
ffa0a0fc:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a0fe:	d0 bb       	[FP -0xc] = R0;
ffa0a100:	23 20       	JUMP.S 0xffa0a146 <_atoi+0x76>;
ffa0a102:	ba ac       	P2 = [FP + 0x8];
ffa0a104:	50 99       	R0 = B[P2] (X);
ffa0a106:	01 43       	R1 = R0.B (X);
ffa0a108:	e0 b9       	R0 = [FP -0x8];
ffa0a10a:	01 50       	R0 = R1 + R0;
ffa0a10c:	80 66       	R0 += -0x30;		/* (-48) */
ffa0a10e:	e0 bb       	[FP -0x8] = R0;
ffa0a110:	b8 a0       	R0 = [FP + 0x8];
ffa0a112:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a114:	b8 b0       	[FP + 0x8] = R0;
ffa0a116:	d0 b9       	R0 = [FP -0xc];
ffa0a118:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a11a:	d0 bb       	[FP -0xc] = R0;
ffa0a11c:	ba ac       	P2 = [FP + 0x8];
ffa0a11e:	50 99       	R0 = B[P2] (X);
ffa0a120:	00 43       	R0 = R0.B (X);
ffa0a122:	79 61       	R1 = 0x2f (X);		/*		R1=0x2f( 47) */
ffa0a124:	08 09       	CC = R0 <= R1;
ffa0a126:	10 18       	IF CC JUMP 0xffa0a146 <_atoi+0x76>;
ffa0a128:	00 00       	NOP;
ffa0a12a:	00 00       	NOP;
ffa0a12c:	ba ac       	P2 = [FP + 0x8];
ffa0a12e:	50 99       	R0 = B[P2] (X);
ffa0a130:	00 43       	R0 = R0.B (X);
ffa0a132:	c9 61       	R1 = 0x39 (X);		/*		R1=0x39( 57) */
ffa0a134:	08 09       	CC = R0 <= R1;
ffa0a136:	08 10       	IF !CC JUMP 0xffa0a146 <_atoi+0x76>;
ffa0a138:	e0 b9       	R0 = [FP -0x8];
ffa0a13a:	08 30       	R1 = R0;
ffa0a13c:	11 4f       	R1 <<= 0x2;
ffa0a13e:	41 50       	R1 = R1 + R0;
ffa0a140:	82 c6 09 80 	R0 = R1 << 0x1;
ffa0a144:	e0 bb       	[FP -0x8] = R0;
ffa0a146:	ba ac       	P2 = [FP + 0x8];
ffa0a148:	50 99       	R0 = B[P2] (X);
ffa0a14a:	00 43       	R0 = R0.B (X);
ffa0a14c:	79 61       	R1 = 0x2f (X);		/*		R1=0x2f( 47) */
ffa0a14e:	08 09       	CC = R0 <= R1;
ffa0a150:	0d 18       	IF CC JUMP 0xffa0a16a <_atoi+0x9a>;
ffa0a152:	00 00       	NOP;
ffa0a154:	00 00       	NOP;
ffa0a156:	ba ac       	P2 = [FP + 0x8];
ffa0a158:	50 99       	R0 = B[P2] (X);
ffa0a15a:	00 43       	R0 = R0.B (X);
ffa0a15c:	c9 61       	R1 = 0x39 (X);		/*		R1=0x39( 57) */
ffa0a15e:	08 09       	CC = R0 <= R1;
ffa0a160:	05 10       	IF !CC JUMP 0xffa0a16a <_atoi+0x9a>;
ffa0a162:	d1 b9       	R1 = [FP -0xc];
ffa0a164:	f8 a0       	R0 = [FP + 0xc];
ffa0a166:	81 08       	CC = R1 < R0;
ffa0a168:	cd 1b       	IF CC JUMP 0xffa0a102 <_atoi+0x32>;
ffa0a16a:	e1 b9       	R1 = [FP -0x8];
ffa0a16c:	f0 b9       	R0 = [FP -0x4];
ffa0a16e:	c8 40       	R0 *= R1;
ffa0a170:	01 e8 00 00 	UNLINK;
ffa0a174:	10 00       	RTS;
	...

ffa0a178 <_udelay>:
ffa0a178:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa0a17c:	b8 b0       	[FP + 0x8] = R0;
ffa0a17e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a180:	e0 bb       	[FP -0x8] = R0;
ffa0a182:	10 20       	JUMP.S 0xffa0a1a2 <_udelay+0x2a>;
ffa0a184:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a186:	f0 bb       	[FP -0x4] = R0;
ffa0a188:	05 20       	JUMP.S 0xffa0a192 <_udelay+0x1a>;
ffa0a18a:	00 00       	NOP;
ffa0a18c:	f0 b9       	R0 = [FP -0x4];
ffa0a18e:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a190:	f0 bb       	[FP -0x4] = R0;
ffa0a192:	f0 b9       	R0 = [FP -0x4];
ffa0a194:	21 e1 9f 00 	R1 = 0x9f (X);		/*		R1=0x9f(159) */
ffa0a198:	08 09       	CC = R0 <= R1;
ffa0a19a:	f8 1b       	IF CC JUMP 0xffa0a18a <_udelay+0x12>;
ffa0a19c:	e0 b9       	R0 = [FP -0x8];
ffa0a19e:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a1a0:	e0 bb       	[FP -0x8] = R0;
ffa0a1a2:	e1 b9       	R1 = [FP -0x8];
ffa0a1a4:	b8 a0       	R0 = [FP + 0x8];
ffa0a1a6:	81 08       	CC = R1 < R0;
ffa0a1a8:	ee 1b       	IF CC JUMP 0xffa0a184 <_udelay+0xc>;
ffa0a1aa:	01 e8 00 00 	UNLINK;
ffa0a1ae:	10 00       	RTS;

ffa0a1b0 <_spi_delay>:
ffa0a1b0:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa0a1b4:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa0a1b6:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa0a1ba:	08 20       	JUMP.S 0xffa0a1ca <_spi_delay+0x1a>;
ffa0a1bc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc07080(-4165504) */
ffa0a1c0:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0a1c4:	50 95       	R0 = W[P2] (X);
ffa0a1c6:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa0a1ca:	78 e4 fe ff 	R0 = W[FP + -0x4] (Z);
ffa0a1ce:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa0a1d0:	08 54       	R0 = R0 & R1;
ffa0a1d2:	00 0c       	CC = R0 == 0x0;
ffa0a1d4:	f4 13       	IF !CC JUMP 0xffa0a1bc <_spi_delay+0xc>;
ffa0a1d6:	08 20       	JUMP.S 0xffa0a1e6 <_spi_delay+0x36>;
ffa0a1d8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0a1dc:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0a1e0:	50 95       	R0 = W[P2] (X);
ffa0a1e2:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa0a1e6:	78 e4 fe ff 	R0 = W[FP + -0x4] (Z);
ffa0a1ea:	00 49       	CC = BITTST (R0, 0x0);		/* bit  0 */
ffa0a1ec:	00 02       	R0 = CC;
ffa0a1ee:	00 0c       	CC = R0 == 0x0;
ffa0a1f0:	f4 1b       	IF CC JUMP 0xffa0a1d8 <_spi_delay+0x28>;
ffa0a1f2:	01 e8 00 00 	UNLINK;
ffa0a1f6:	10 00       	RTS;

ffa0a1f8 <_spi_write_register>:
ffa0a1f8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a1fc:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a200:	01 30       	R0 = R1;
ffa0a202:	b8 e6 0c 00 	B[FP + 0xc] = R0;
ffa0a206:	b8 e5 08 00 	R0 = B[FP + 0x8] (X);
ffa0a20a:	28 4a       	BITSET (R0, 0x5);		/* bit  5 */
ffa0a20c:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a210:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0a214:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a218:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a21a:	10 97       	W[P2] = R0;
ffa0a21c:	24 00       	SSYNC;
ffa0a21e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a222:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a226:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a22a:	10 97       	W[P2] = R0;
ffa0a22c:	ff e3 c2 ff 	CALL 0xffa0a1b0 <_spi_delay>;
ffa0a230:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a234:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0a238:	50 95       	R0 = W[P2] (X);
ffa0a23a:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a23e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0a242:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a246:	b8 e4 0c 00 	R0 = B[FP + 0xc] (Z);
ffa0a24a:	10 97       	W[P2] = R0;
ffa0a24c:	ff e3 b2 ff 	CALL 0xffa0a1b0 <_spi_delay>;
ffa0a250:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a254:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a258:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a25a:	10 97       	W[P2] = R0;
ffa0a25c:	24 00       	SSYNC;
ffa0a25e:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a262:	01 e8 00 00 	UNLINK;
ffa0a266:	10 00       	RTS;

ffa0a268 <_spi_write_register_ver>:
ffa0a268:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0a26c:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a270:	01 30       	R0 = R1;
ffa0a272:	b8 e6 0c 00 	B[FP + 0xc] = R0;
ffa0a276:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a27a:	b9 e4 0c 00 	R1 = B[FP + 0xc] (Z);
ffa0a27e:	ff e3 bd ff 	CALL 0xffa0a1f8 <_spi_write_register>;
ffa0a282:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a286:	00 e3 09 00 	CALL 0xffa0a298 <_spi_read_register>;
ffa0a28a:	b8 e6 ff ff 	B[FP + -0x1] = R0;
ffa0a28e:	b8 e4 ff ff 	R0 = B[FP + -0x1] (Z);
ffa0a292:	01 e8 00 00 	UNLINK;
ffa0a296:	10 00       	RTS;

ffa0a298 <_spi_read_register>:
ffa0a298:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a29c:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a2a0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a2a4:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a2a8:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a2aa:	10 97       	W[P2] = R0;
ffa0a2ac:	24 00       	SSYNC;
ffa0a2ae:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a2b2:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a2b6:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a2ba:	10 97       	W[P2] = R0;
ffa0a2bc:	ff e3 7a ff 	CALL 0xffa0a1b0 <_spi_delay>;
ffa0a2c0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a2c4:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0a2c8:	50 95       	R0 = W[P2] (X);
ffa0a2ca:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a2ce:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0a2d2:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a2d6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a2d8:	10 97       	W[P2] = R0;
ffa0a2da:	ff e3 6b ff 	CALL 0xffa0a1b0 <_spi_delay>;
ffa0a2de:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a2e2:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0a2e6:	50 95       	R0 = W[P2] (X);
ffa0a2e8:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a2ec:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0a2f0:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a2f4:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a2f6:	10 97       	W[P2] = R0;
ffa0a2f8:	24 00       	SSYNC;
ffa0a2fa:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a2fe:	01 e8 00 00 	UNLINK;
ffa0a302:	10 00       	RTS;

ffa0a304 <_spi_read_register_status>:
ffa0a304:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a308:	f9 b0       	[FP + 0xc] = R1;
ffa0a30a:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a30e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a312:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a316:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a318:	10 97       	W[P2] = R0;
ffa0a31a:	24 00       	SSYNC;
ffa0a31c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a320:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a324:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a328:	10 97       	W[P2] = R0;
ffa0a32a:	ff e3 43 ff 	CALL 0xffa0a1b0 <_spi_delay>;
ffa0a32e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a332:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0a336:	50 95       	R0 = W[P2] (X);
ffa0a338:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a33c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0a340:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a344:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a346:	10 97       	W[P2] = R0;
ffa0a348:	ff e3 34 ff 	CALL 0xffa0a1b0 <_spi_delay>;
ffa0a34c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a350:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0a354:	50 95       	R0 = W[P2] (X);
ffa0a356:	fa ac       	P2 = [FP + 0xc];
ffa0a358:	10 9b       	B[P2] = R0;
ffa0a35a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0a35e:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a362:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a364:	10 97       	W[P2] = R0;
ffa0a366:	24 00       	SSYNC;
ffa0a368:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a36c:	01 e8 00 00 	UNLINK;
ffa0a370:	10 00       	RTS;
	...

ffa0a374 <_spi_write_byte>:
ffa0a374:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a378:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a37c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a380:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a384:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a386:	10 97       	W[P2] = R0;
ffa0a388:	24 00       	SSYNC;
ffa0a38a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a38e:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a392:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a396:	10 97       	W[P2] = R0;
ffa0a398:	ff e3 0c ff 	CALL 0xffa0a1b0 <_spi_delay>;
ffa0a39c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a3a0:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0a3a4:	50 95       	R0 = W[P2] (X);
ffa0a3a6:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a3aa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0a3ae:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a3b2:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a3b4:	10 97       	W[P2] = R0;
ffa0a3b6:	24 00       	SSYNC;
ffa0a3b8:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a3bc:	01 e8 00 00 	UNLINK;
ffa0a3c0:	10 00       	RTS;
	...

ffa0a3c4 <_spi_write_packet>:
ffa0a3c4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a3c8:	b8 b0       	[FP + 0x8] = R0;
ffa0a3ca:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a3ce:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a3d2:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a3d4:	10 97       	W[P2] = R0;
ffa0a3d6:	24 00       	SSYNC;
ffa0a3d8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a3dc:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a3e0:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa0a3e4:	10 97       	W[P2] = R0;
ffa0a3e6:	ff e3 e5 fe 	CALL 0xffa0a1b0 <_spi_delay>;
ffa0a3ea:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a3ee:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a3f2:	20 e1 07 50 	R0 = 0x5007 (X);		/*		R0=0x5007(20487) */
ffa0a3f6:	10 97       	W[P2] = R0;
ffa0a3f8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a3fc:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xffc00d50(-4190896) */
ffa0a400:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa0a402:	10 97       	W[P2] = R0;
ffa0a404:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d50(-4190896) */
ffa0a408:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xffc00d54(-4190892) */
ffa0a40c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a40e:	10 97       	W[P2] = R0;
ffa0a410:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d54(-4190892) */
ffa0a414:	0a e1 44 0d 	P2.L = 0xd44;		/* (3396)	P2=0xffc00d44(-4190908) */
ffa0a418:	b8 a0       	R0 = [FP + 0x8];
ffa0a41a:	10 93       	[P2] = R0;
ffa0a41c:	24 00       	SSYNC;
ffa0a41e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d44(-4190908) */
ffa0a422:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa0a426:	20 e1 81 00 	R0 = 0x81 (X);		/*		R0=0x81(129) */
ffa0a42a:	10 97       	W[P2] = R0;
ffa0a42c:	01 20       	JUMP.S 0xffa0a42e <_spi_write_packet+0x6a>;
	...
ffa0a436:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa0a43a:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a43e:	50 95       	R0 = W[P2] (X);
ffa0a440:	c0 42       	R0 = R0.L (Z);
ffa0a442:	00 49       	CC = BITTST (R0, 0x0);		/* bit  0 */
ffa0a444:	00 02       	R0 = CC;
ffa0a446:	00 0c       	CC = R0 == 0x0;
ffa0a448:	f3 1b       	IF CC JUMP 0xffa0a42e <_spi_write_packet+0x6a>;
ffa0a44a:	00 00       	NOP;
ffa0a44c:	00 00       	NOP;
ffa0a44e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a452:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0a456:	50 95       	R0 = W[P2] (X);
ffa0a458:	c1 42       	R1 = R0.L (Z);
ffa0a45a:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa0a45c:	01 54       	R0 = R1 & R0;
ffa0a45e:	00 0c       	CC = R0 == 0x0;
ffa0a460:	e7 13       	IF !CC JUMP 0xffa0a42e <_spi_write_packet+0x6a>;
ffa0a462:	00 00       	NOP;
ffa0a464:	00 00       	NOP;
ffa0a466:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0a46a:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a46e:	50 95       	R0 = W[P2] (X);
ffa0a470:	c1 42       	R1 = R0.L (Z);
ffa0a472:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa0a474:	01 54       	R0 = R1 & R0;
ffa0a476:	00 0c       	CC = R0 == 0x0;
ffa0a478:	db 13       	IF !CC JUMP 0xffa0a42e <_spi_write_packet+0x6a>;
ffa0a47a:	ff e3 9b fe 	CALL 0xffa0a1b0 <_spi_delay>;
ffa0a47e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a482:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a486:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a488:	10 97       	W[P2] = R0;
ffa0a48a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a48e:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a492:	20 e1 0d 50 	R0 = 0x500d (X);		/*		R0=0x500d(20493) */
ffa0a496:	10 97       	W[P2] = R0;
ffa0a498:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a49c:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa0a4a0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a4a2:	10 97       	W[P2] = R0;
ffa0a4a4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa0a4a8:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a4ac:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a4ae:	10 97       	W[P2] = R0;
ffa0a4b0:	24 00       	SSYNC;
ffa0a4b2:	01 e8 00 00 	UNLINK;
ffa0a4b6:	10 00       	RTS;

ffa0a4b8 <_spi_write_packet_noDMA>:
ffa0a4b8:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa0a4bc:	b8 b0       	[FP + 0x8] = R0;
ffa0a4be:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a4c2:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a4c6:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a4c8:	10 97       	W[P2] = R0;
ffa0a4ca:	24 00       	SSYNC;
ffa0a4cc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a4d0:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a4d4:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa0a4d8:	10 97       	W[P2] = R0;
ffa0a4da:	ff e3 6b fe 	CALL 0xffa0a1b0 <_spi_delay>;
ffa0a4de:	b8 a0       	R0 = [FP + 0x8];
ffa0a4e0:	f0 bb       	[FP -0x4] = R0;
ffa0a4e2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a4e4:	e0 bb       	[FP -0x8] = R0;
ffa0a4e6:	11 20       	JUMP.S 0xffa0a508 <_spi_write_packet_noDMA+0x50>;
ffa0a4e8:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00730(-4192464) */
ffa0a4ec:	09 e1 0c 05 	P1.L = 0x50c;		/* (1292)	P1=0xffc0050c(-4193012) */
ffa0a4f0:	fa b9       	P2 = [FP -0x4];
ffa0a4f2:	50 99       	R0 = B[P2] (X);
ffa0a4f4:	00 43       	R0 = R0.B (X);
ffa0a4f6:	08 97       	W[P1] = R0;
ffa0a4f8:	f0 b9       	R0 = [FP -0x4];
ffa0a4fa:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a4fc:	f0 bb       	[FP -0x4] = R0;
ffa0a4fe:	ff e3 59 fe 	CALL 0xffa0a1b0 <_spi_delay>;
ffa0a502:	e0 b9       	R0 = [FP -0x8];
ffa0a504:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a506:	e0 bb       	[FP -0x8] = R0;
ffa0a508:	e0 b9       	R0 = [FP -0x8];
ffa0a50a:	f9 60       	R1 = 0x1f (X);		/*		R1=0x1f( 31) */
ffa0a50c:	08 09       	CC = R0 <= R1;
ffa0a50e:	ed 1b       	IF CC JUMP 0xffa0a4e8 <_spi_write_packet_noDMA+0x30>;
ffa0a510:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a514:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a518:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a51a:	10 97       	W[P2] = R0;
ffa0a51c:	24 00       	SSYNC;
ffa0a51e:	01 e8 00 00 	UNLINK;
ffa0a522:	10 00       	RTS;

ffa0a524 <_spi_read_packet>:
ffa0a524:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa0a528:	b8 b0       	[FP + 0x8] = R0;
ffa0a52a:	b8 a0       	R0 = [FP + 0x8];
ffa0a52c:	f0 bb       	[FP -0x4] = R0;
ffa0a52e:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0a530:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0a534:	ff e3 62 fe 	CALL 0xffa0a1f8 <_spi_write_register>;
ffa0a538:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a53c:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a540:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a542:	10 97       	W[P2] = R0;
ffa0a544:	24 00       	SSYNC;
ffa0a546:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a54a:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a54e:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa0a552:	10 97       	W[P2] = R0;
ffa0a554:	ff e3 2e fe 	CALL 0xffa0a1b0 <_spi_delay>;
ffa0a558:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a55a:	b8 e6 fb ff 	B[FP + -0x5] = R0;
ffa0a55e:	18 20       	JUMP.S 0xffa0a58e <_spi_read_packet+0x6a>;
ffa0a560:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a564:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a568:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a56a:	10 97       	W[P2] = R0;
ffa0a56c:	ff e3 22 fe 	CALL 0xffa0a1b0 <_spi_delay>;
ffa0a570:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a574:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0a578:	50 95       	R0 = W[P2] (X);
ffa0a57a:	fa b9       	P2 = [FP -0x4];
ffa0a57c:	10 9b       	B[P2] = R0;
ffa0a57e:	f0 b9       	R0 = [FP -0x4];
ffa0a580:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a582:	f0 bb       	[FP -0x4] = R0;
ffa0a584:	b8 e5 fb ff 	R0 = B[FP + -0x5] (X);
ffa0a588:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a58a:	b8 e6 fb ff 	B[FP + -0x5] = R0;
ffa0a58e:	b8 e4 fb ff 	R0 = B[FP + -0x5] (Z);
ffa0a592:	f9 60       	R1 = 0x1f (X);		/*		R1=0x1f( 31) */
ffa0a594:	08 0a       	CC = R0 <= R1 (IU);
ffa0a596:	e5 1b       	IF CC JUMP 0xffa0a560 <_spi_read_packet+0x3c>;
ffa0a598:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0a59c:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a5a0:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a5a2:	10 97       	W[P2] = R0;
ffa0a5a4:	24 00       	SSYNC;
ffa0a5a6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a5a8:	01 e8 00 00 	UNLINK;
ffa0a5ac:	10 00       	RTS;
	...

ffa0a5b0 <_spi_read_packet_nocheck>:
ffa0a5b0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a5b4:	b8 b0       	[FP + 0x8] = R0;
ffa0a5b6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a5ba:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a5be:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a5c0:	10 97       	W[P2] = R0;
ffa0a5c2:	24 00       	SSYNC;
ffa0a5c4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a5c8:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a5cc:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa0a5d0:	10 97       	W[P2] = R0;
ffa0a5d2:	ff e3 ef fd 	CALL 0xffa0a1b0 <_spi_delay>;
ffa0a5d6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a5da:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a5de:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a5e0:	10 97       	W[P2] = R0;
ffa0a5e2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a5e6:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xffc00d50(-4190896) */
ffa0a5ea:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa0a5ec:	10 97       	W[P2] = R0;
ffa0a5ee:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d50(-4190896) */
ffa0a5f2:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xffc00d54(-4190892) */
ffa0a5f6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a5f8:	10 97       	W[P2] = R0;
ffa0a5fa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d54(-4190892) */
ffa0a5fe:	0a e1 44 0d 	P2.L = 0xd44;		/* (3396)	P2=0xffc00d44(-4190908) */
ffa0a602:	b8 a0       	R0 = [FP + 0x8];
ffa0a604:	10 93       	[P2] = R0;
ffa0a606:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d44(-4190908) */
ffa0a60a:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa0a60e:	20 e1 83 00 	R0 = 0x83 (X);		/*		R0=0x83(131) */
ffa0a612:	10 97       	W[P2] = R0;
ffa0a614:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa0a618:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a61c:	20 e1 06 50 	R0 = 0x5006 (X);		/*		R0=0x5006(20486) */
ffa0a620:	10 97       	W[P2] = R0;
	...
ffa0a62a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a62e:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a632:	50 95       	R0 = W[P2] (X);
ffa0a634:	c0 42       	R0 = R0.L (Z);
ffa0a636:	00 49       	CC = BITTST (R0, 0x0);		/* bit  0 */
ffa0a638:	00 02       	R0 = CC;
ffa0a63a:	00 0c       	CC = R0 == 0x0;
ffa0a63c:	f3 1b       	IF CC JUMP 0xffa0a622 <_spi_read_packet_nocheck+0x72>;
ffa0a63e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a642:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa0a646:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a648:	10 97       	W[P2] = R0;
ffa0a64a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa0a64e:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a652:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a654:	10 97       	W[P2] = R0;
ffa0a656:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a65a:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a65e:	20 e1 0d 50 	R0 = 0x500d (X);		/*		R0=0x500d(20493) */
ffa0a662:	10 97       	W[P2] = R0;
ffa0a664:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a668:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a66c:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a66e:	10 97       	W[P2] = R0;
ffa0a670:	24 00       	SSYNC;
ffa0a672:	01 e8 00 00 	UNLINK;
ffa0a676:	10 00       	RTS;

ffa0a678 <_radio_set_rx>:
ffa0a678:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a67c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a680:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a684:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a686:	10 97       	W[P2] = R0;
ffa0a688:	24 00       	SSYNC;
ffa0a68a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a68c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a68e:	ff e3 b5 fd 	CALL 0xffa0a1f8 <_spi_write_register>;
ffa0a692:	20 e1 e2 00 	R0 = 0xe2 (X);		/*		R0=0xe2(226) */
ffa0a696:	ff e3 6f fe 	CALL 0xffa0a374 <_spi_write_byte>;
ffa0a69a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a69c:	f9 60       	R1 = 0x1f (X);		/*		R1=0x1f( 31) */
ffa0a69e:	ff e3 ad fd 	CALL 0xffa0a1f8 <_spi_write_register>;
ffa0a6a2:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0a6a4:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0a6a8:	ff e3 a8 fd 	CALL 0xffa0a1f8 <_spi_write_register>;
ffa0a6ac:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a6b0:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a6b4:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a6b6:	10 97       	W[P2] = R0;
ffa0a6b8:	24 00       	SSYNC;
ffa0a6ba:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a6be:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a6c2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a6c4:	10 97       	W[P2] = R0;
ffa0a6c6:	24 00       	SSYNC;
ffa0a6c8:	01 e8 00 00 	UNLINK;
ffa0a6cc:	10 00       	RTS;
	...

ffa0a6d0 <_radio_set_tx>:
ffa0a6d0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a6d4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a6d8:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a6dc:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a6de:	10 97       	W[P2] = R0;
ffa0a6e0:	24 00       	SSYNC;
ffa0a6e2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a6e4:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a6e6:	ff e3 89 fd 	CALL 0xffa0a1f8 <_spi_write_register>;
ffa0a6ea:	20 e1 e1 00 	R0 = 0xe1 (X);		/*		R0=0xe1(225) */
ffa0a6ee:	ff e3 43 fe 	CALL 0xffa0a374 <_spi_write_byte>;
ffa0a6f2:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0a6f4:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0a6f8:	ff e3 80 fd 	CALL 0xffa0a1f8 <_spi_write_register>;
ffa0a6fc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a6fe:	f1 60       	R1 = 0x1e (X);		/*		R1=0x1e( 30) */
ffa0a700:	ff e3 7c fd 	CALL 0xffa0a1f8 <_spi_write_register>;
ffa0a704:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a708:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a70c:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a70e:	10 97       	W[P2] = R0;
ffa0a710:	01 e8 00 00 	UNLINK;
ffa0a714:	10 00       	RTS;
	...

ffa0a718 <_radio_wait_irq>:
ffa0a718:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0a71c:	b8 b0       	[FP + 0x8] = R0;
ffa0a71e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a720:	f0 bb       	[FP -0x4] = R0;
ffa0a722:	08 20       	JUMP.S 0xffa0a732 <_radio_wait_irq+0x1a>;
	...
ffa0a72c:	f0 b9       	R0 = [FP -0x4];
ffa0a72e:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a730:	f0 bb       	[FP -0x4] = R0;
ffa0a732:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a736:	0a e1 00 07 	P2.L = 0x700;		/* (1792)	P2=0xffc00700(-4192512) */
ffa0a73a:	50 95       	R0 = W[P2] (X);
ffa0a73c:	c1 42       	R1 = R0.L (Z);
ffa0a73e:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa0a740:	01 54       	R0 = R1 & R0;
ffa0a742:	00 0c       	CC = R0 == 0x0;
ffa0a744:	05 18       	IF CC JUMP 0xffa0a74e <_radio_wait_irq+0x36>;
ffa0a746:	f1 b9       	R1 = [FP -0x4];
ffa0a748:	b8 a0       	R0 = [FP + 0x8];
ffa0a74a:	81 08       	CC = R1 < R0;
ffa0a74c:	ec 1b       	IF CC JUMP 0xffa0a724 <_radio_wait_irq+0xc>;
ffa0a74e:	f1 b9       	R1 = [FP -0x4];
ffa0a750:	b8 a0       	R0 = [FP + 0x8];
ffa0a752:	81 08       	CC = R1 < R0;
ffa0a754:	06 10       	IF !CC JUMP 0xffa0a760 <_radio_wait_irq+0x48>;
ffa0a756:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0a758:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0a75c:	ff e3 4e fd 	CALL 0xffa0a1f8 <_spi_write_register>;
ffa0a760:	f0 b9       	R0 = [FP -0x4];
ffa0a762:	01 e8 00 00 	UNLINK;
ffa0a766:	10 00       	RTS;

ffa0a768 <_radio_init>:
ffa0a768:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a76c:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a770:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00700(-4192512) */
ffa0a774:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a778:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a77a:	10 97       	W[P2] = R0;
ffa0a77c:	24 00       	SSYNC;
ffa0a77e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a782:	0a e1 14 05 	P2.L = 0x514;		/* (1300)	P2=0xffc00514(-4193004) */
ffa0a786:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa0a788:	10 97       	W[P2] = R0;
ffa0a78a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00514(-4193004) */
ffa0a78e:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a792:	20 e1 2d 50 	R0 = 0x502d (X);		/*		R0=0x502d(20525) */
ffa0a796:	10 97       	W[P2] = R0;
ffa0a798:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a79c:	0a e1 04 05 	P2.L = 0x504;		/* (1284)	P2=0xffc00504(-4193020) */
ffa0a7a0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a7a2:	10 97       	W[P2] = R0;
ffa0a7a4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00504(-4193020) */
ffa0a7a8:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a7ac:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a7ae:	10 97       	W[P2] = R0;
ffa0a7b0:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc0050c(-4193012) */
ffa0a7b4:	09 e1 40 07 	P1.L = 0x740;		/* (1856)	P1=0xffc00740(-4192448) */
ffa0a7b8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a7bc:	0a e1 40 07 	P2.L = 0x740;		/* (1856)	P2=0xffc00740(-4192448) */
ffa0a7c0:	50 95       	R0 = W[P2] (X);
ffa0a7c2:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa0a7c4:	08 97       	W[P1] = R0;
ffa0a7c6:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00740(-4192448) */
ffa0a7ca:	09 e1 30 07 	P1.L = 0x730;		/* (1840)	P1=0xffc00730(-4192464) */
ffa0a7ce:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00740(-4192448) */
ffa0a7d2:	0a e1 30 07 	P2.L = 0x730;		/* (1840)	P2=0xffc00730(-4192464) */
ffa0a7d6:	51 95       	R1 = W[P2] (X);
ffa0a7d8:	b8 63       	R0 = -0x9 (X);		/*		R0=0xfffffff7( -9) */
ffa0a7da:	01 54       	R0 = R1 & R0;
ffa0a7dc:	08 97       	W[P1] = R0;
ffa0a7de:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00730(-4192464) */
ffa0a7e2:	09 e1 30 07 	P1.L = 0x730;		/* (1840)	P1=0xffc00730(-4192464) */
ffa0a7e6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00730(-4192464) */
ffa0a7ea:	0a e1 30 07 	P2.L = 0x730;		/* (1840)	P2=0xffc00730(-4192464) */
ffa0a7ee:	51 95       	R1 = W[P2] (X);
ffa0a7f0:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a7f2:	01 56       	R0 = R1 | R0;
ffa0a7f4:	08 97       	W[P1] = R0;
ffa0a7f6:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a7fa:	21 e1 7c 00 	R1 = 0x7c (X);		/*		R1=0x7c(124) */
ffa0a7fe:	08 0a       	CC = R0 <= R1 (IU);
ffa0a800:	05 18       	IF CC JUMP 0xffa0a80a <_radio_init+0xa2>;
ffa0a802:	20 e1 7c 00 	R0 = 0x7c (X);		/*		R0=0x7c(124) */
ffa0a806:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a80a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a80c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a80e:	ff e3 f5 fc 	CALL 0xffa0a1f8 <_spi_write_register>;
ffa0a812:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a814:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a816:	ff e3 29 fd 	CALL 0xffa0a268 <_spi_write_register_ver>;
ffa0a81a:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a81c:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa0a81e:	ff e3 25 fd 	CALL 0xffa0a268 <_spi_write_register_ver>;
ffa0a822:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a824:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa0a826:	ff e3 21 fd 	CALL 0xffa0a268 <_spi_write_register_ver>;
ffa0a82a:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa0a82c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a82e:	ff e3 1d fd 	CALL 0xffa0a268 <_spi_write_register_ver>;
ffa0a832:	b9 e4 08 00 	R1 = B[FP + 0x8] (Z);
ffa0a836:	28 60       	R0 = 0x5 (X);		/*		R0=0x5(  5) */
ffa0a838:	ff e3 18 fd 	CALL 0xffa0a268 <_spi_write_register_ver>;
ffa0a83c:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa0a83e:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa0a840:	ff e3 14 fd 	CALL 0xffa0a268 <_spi_write_register_ver>;
ffa0a844:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0a846:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0a84a:	ff e3 0f fd 	CALL 0xffa0a268 <_spi_write_register_ver>;
ffa0a84e:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa0a850:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa0a852:	ff e3 0b fd 	CALL 0xffa0a268 <_spi_write_register_ver>;
ffa0a856:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00730(-4192464) */
ffa0a85a:	0a e1 6c 0d 	P2.L = 0xd6c;		/* (3436)	P2=0xffc00d6c(-4190868) */
ffa0a85e:	20 e1 00 50 	R0 = 0x5000 (X);		/*		R0=0x5000(20480) */
ffa0a862:	10 97       	W[P2] = R0;
ffa0a864:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d6c(-4190868) */
ffa0a868:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a86c:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a86e:	10 97       	W[P2] = R0;
ffa0a870:	20 e1 e2 00 	R0 = 0xe2 (X);		/*		R0=0xe2(226) */
ffa0a874:	ff e3 80 fd 	CALL 0xffa0a374 <_spi_write_byte>;
ffa0a878:	20 e1 e1 00 	R0 = 0xe1 (X);		/*		R0=0xe1(225) */
ffa0a87c:	ff e3 7c fd 	CALL 0xffa0a374 <_spi_write_byte>;
ffa0a880:	40 43       	R0 = R0.B (Z);
ffa0a882:	01 e8 00 00 	UNLINK;
ffa0a886:	10 00       	RTS;
