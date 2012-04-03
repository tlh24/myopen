
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
ffa0801e:	01 e1 00 32 	R1.L = 0x3200;		/* (12800)	R1=0x3200(12800) */
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
ffa0803a:	08 e1 04 00 	P0.L = 0x4;		/* (  4)	P0=0xffc00004(-4194300) */
ffa0803e:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00004(-4194300) */
ffa08042:	00 e1 05 00 	R0.L = 0x5;		/* (  5)	R0=0x5(  5) */
ffa08046:	00 97       	W[P0] = R0;
ffa08048:	08 e1 08 20 	P0.L = 0x2008;		/* (8200)	P0=0xffc02008(-4186104) */
ffa0804c:	48 e1 e0 ff 	P0.H = 0xffe0;		/* (-32)	P0=0xffe02008(-2088952) */
ffa08050:	00 e1 8e 81 	R0.L = 0x818e;		/* (-32370)	R0=0x818e(33166) */
ffa08054:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa0818e <_NHANDLER>(-6258290) */
ffa08058:	00 92       	[P0++] = R0;
ffa0805a:	00 e1 94 81 	R0.L = 0x8194;		/* (-32364)	R0=0xffa08194 <EXC_HANDLER>(-6258284) */
ffa0805e:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa08194 <EXC_HANDLER>(-6258284) */
ffa08062:	00 92       	[P0++] = R0;
ffa08064:	00 92       	[P0++] = R0;
ffa08066:	00 e1 86 81 	R0.L = 0x8186;		/* (-32378)	R0=0xffa08186 <_HWHANDLER>(-6258298) */
ffa0806a:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa08186 <_HWHANDLER>(-6258298) */
ffa0806e:	00 92       	[P0++] = R0;
ffa08070:	00 e1 12 82 	R0.L = 0x8212;		/* (-32238)	R0=0xffa08212 <_THANDLER>(-6258158) */
ffa08074:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa08212 <_THANDLER>(-6258158) */
ffa08078:	00 92       	[P0++] = R0;
ffa0807a:	00 e1 2e 82 	R0.L = 0x822e;		/* (-32210)	R0=0xffa0822e <_RTCHANDLER>(-6258130) */
ffa0807e:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa0822e <_RTCHANDLER>(-6258130) */
ffa08082:	00 92       	[P0++] = R0;
ffa08084:	00 e1 34 82 	R0.L = 0x8234;		/* (-32204)	R0=0xffa08234 <_I8HANDLER>(-6258124) */
ffa08088:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa08234 <_I8HANDLER>(-6258124) */
ffa0808c:	00 92       	[P0++] = R0;
ffa0808e:	00 e1 3a 82 	R0.L = 0x823a;		/* (-32198)	R0=0xffa0823a <_I9HANDLER>(-6258118) */
ffa08092:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa0823a <_I9HANDLER>(-6258118) */
ffa08096:	00 92       	[P0++] = R0;
ffa08098:	00 e1 60 81 	R0.L = 0x8160;		/* (-32416)	R0=0xffa08160 <_I11HANDLER>(-6258336) */
ffa0809c:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa08160 <_I11HANDLER>(-6258336) */
ffa080a0:	00 92       	[P0++] = R0;
ffa080a2:	00 e1 60 81 	R0.L = 0x8160;		/* (-32416)	R0=0xffa08160 <_I11HANDLER>(-6258336) */
ffa080a6:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa08160 <_I11HANDLER>(-6258336) */
ffa080aa:	00 92       	[P0++] = R0;
ffa080ac:	00 e1 62 81 	R0.L = 0x8162;		/* (-32414)	R0=0xffa08162 <_I12HANDLER>(-6258334) */
ffa080b0:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa08162 <_I12HANDLER>(-6258334) */
ffa080b4:	00 92       	[P0++] = R0;
ffa080b6:	00 e1 64 81 	R0.L = 0x8164;		/* (-32412)	R0=0xffa08164 <_I13HANDLER>(-6258332) */
ffa080ba:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa08164 <_I13HANDLER>(-6258332) */
ffa080be:	00 92       	[P0++] = R0;
ffa080c0:	00 e1 6a 81 	R0.L = 0x816a;		/* (-32406)	R0=0xffa0816a <_I14HANDLER>(-6258326) */
ffa080c4:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa0816a <_I14HANDLER>(-6258326) */
ffa080c8:	00 92       	[P0++] = R0;
ffa080ca:	00 e1 70 81 	R0.L = 0x8170;		/* (-32400)	R0=0xffa08170 <_I15HANDLER>(-6258320) */
ffa080ce:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa08170 <_I15HANDLER>(-6258320) */
ffa080d2:	00 92       	[P0++] = R0;
ffa080d4:	08 e1 3c 20 	P0.L = 0x203c;		/* (8252)	P0=0xffe0203c(-2088900) */
ffa080d8:	48 e1 e0 ff 	P0.H = 0xffe0;		/* (-32)	P0=0xffe0203c(-2088900) */
ffa080dc:	00 e1 46 81 	R0.L = 0x8146;		/* (-32442)	R0=0xffa08146 <call_main>(-6258362) */
ffa080e0:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa08146 <call_main>(-6258362) */
ffa080e4:	00 93       	[P0] = R0;
ffa080e6:	08 e1 0c 01 	P0.L = 0x10c;		/* (268)	P0=0xffe0010c(-2096884) */
ffa080ea:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc0010c(-4194036) */
ffa080ee:	00 e1 00 2c 	R0.L = 0x2c00;		/* (11264)	R0=0xffa02c00(-6280192) */
ffa080f2:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x2c00(11264) */
ffa080f6:	00 93       	[P0] = R0;
ffa080f8:	08 e1 10 01 	P0.L = 0x110;		/* (272)	P0=0xffc00110(-4194032) */
ffa080fc:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00110(-4194032) */
ffa08100:	00 e1 5f ff 	R0.L = 0xff5f;		/* (-161)	R0=0xff5f(65375) */
ffa08104:	40 e1 ff ff 	R0.H = 0xffff;		/* ( -1)	R0=0xffffff5f(-161) */
ffa08108:	00 93       	[P0] = R0;
ffa0810a:	08 e1 14 01 	P0.L = 0x114;		/* (276)	P0=0xffc00114(-4194028) */
ffa0810e:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00114(-4194028) */
ffa08112:	00 e1 ff 34 	R0.L = 0x34ff;		/* (13567)	R0=0xffff34ff(-51969) */
ffa08116:	40 e1 ff ff 	R0.H = 0xffff;		/* ( -1)	R0=0xffff34ff(-51969) */
ffa0811a:	00 93       	[P0] = R0;
ffa0811c:	08 e1 18 01 	P0.L = 0x118;		/* (280)	P0=0xffc00118(-4194024) */
ffa08120:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00118(-4194024) */
ffa08124:	00 e1 ff ff 	R0.L = 0xffff;		/* ( -1)	R0=0xffffffff( -1) */
ffa08128:	40 e1 ff ff 	R0.H = 0xffff;		/* ( -1)	R0=0xffffffff( -1) */
ffa0812c:	00 93       	[P0] = R0;
ffa0812e:	23 00       	CSYNC;
ffa08130:	80 e1 00 80 	R0 = 0x8000 (Z);		/*		R0=0x8000(32768) */
ffa08134:	40 00       	STI R0;
ffa08136:	9f 00       	RAISE 0xf;
ffa08138:	08 e1 44 81 	P0.L = 0x8144;		/* (-32444)	P0=0xffc08144(-4161212) */
ffa0813c:	48 e1 a0 ff 	P0.H = 0xffa0;		/* (-96)	P0=0xffa08144 <wait> */
ffa08140:	58 3e       	RETI = P0;
ffa08142:	11 00       	RTI;

ffa08144 <wait>:
ffa08144:	00 20       	JUMP.S 0xffa08144 <wait>;

ffa08146 <call_main>:
ffa08146:	7b 01       	[--SP] = RETI;
ffa08148:	08 e1 2c 9a 	P0.L = 0x9a2c;		/* (-26068)	P0=0xffa09a2c <_main> */
ffa0814c:	48 e1 a0 ff 	P0.H = 0xffa0;		/* (-96)	P0=0xffa09a2c <_main> */
ffa08150:	00 e1 5c 81 	R0.L = 0x815c;		/* (-32420)	R0=0x815c(33116) */
ffa08154:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa0815c <end>(-6258340) */
ffa08158:	38 38       	RETS = R0;
ffa0815a:	50 00       	JUMP (P0);

ffa0815c <end>:
ffa0815c:	20 00       	IDLE;
ffa0815e:	ff 2f       	JUMP.S 0xffa0815c <end>;

ffa08160 <_I11HANDLER>:
ffa08160:	11 00       	RTI;

ffa08162 <_I12HANDLER>:
ffa08162:	11 00       	RTI;

ffa08164 <_I13HANDLER>:
ffa08164:	00 e1 0d 00 	R0.L = 0xd;		/* ( 13)	R0=0xffa0000d(-6291443) */
ffa08168:	0a 20       	JUMP.S 0xffa0817c <display_fail>;

ffa0816a <_I14HANDLER>:
ffa0816a:	00 e1 0e 00 	R0.L = 0xe;		/* ( 14)	R0=0xffa0000e(-6291442) */
ffa0816e:	07 20       	JUMP.S 0xffa0817c <display_fail>;

ffa08170 <_I15HANDLER>:
ffa08170:	00 e1 0f 00 	R0.L = 0xf;		/* ( 15)	R0=0xffa0000f(-6291441) */
ffa08174:	04 20       	JUMP.S 0xffa0817c <display_fail>;

ffa08176 <idle_loop>:
ffa08176:	20 00       	IDLE;
ffa08178:	24 00       	SSYNC;
ffa0817a:	fe 2f       	JUMP.S 0xffa08176 <idle_loop>;

ffa0817c <display_fail>:
ffa0817c:	c1 31       	R0 = SEQSTAT;
ffa0817e:	cc 31       	R1 = RETX;
ffa08180:	00 e3 84 0b 	CALL 0xffa09888 <_exception_report>;
ffa08184:	12 00       	RTX;

ffa08186 <_HWHANDLER>:
ffa08186:	c1 31       	R0 = SEQSTAT;
ffa08188:	cc 31       	R1 = RETX;
ffa0818a:	fe 2f       	JUMP.S 0xffa08186 <_HWHANDLER>;
ffa0818c:	11 00       	RTI;

ffa0818e <_NHANDLER>:
ffa0818e:	00 e3 3d 0c 	CALL 0xffa09a08 <_nmi_report>;
ffa08192:	12 00       	RTX;

ffa08194 <EXC_HANDLER>:
ffa08194:	00 00       	NOP;
ffa08196:	00 00       	NOP;
ffa08198:	00 00       	NOP;
ffa0819a:	cc 31       	R1 = RETX;
ffa0819c:	fc 2f       	JUMP.S 0xffa08194 <EXC_HANDLER>;
ffa0819e:	4d 01       	[--SP] = P5;
ffa081a0:	0d e1 04 70 	P5.L = 0x7004;		/* (28676)	P5=0x7004 */
ffa081a4:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff907004 <_g_excregs> */
ffa081a8:	28 92       	[P5++] = R0;
ffa081aa:	29 92       	[P5++] = R1;
ffa081ac:	2a 92       	[P5++] = R2;
ffa081ae:	2b 92       	[P5++] = R3;
ffa081b0:	2c 92       	[P5++] = R4;
ffa081b2:	2d 92       	[P5++] = R5;
ffa081b4:	2e 92       	[P5++] = R6;
ffa081b6:	2f 92       	[P5++] = R7;
ffa081b8:	68 92       	[P5++] = P0;
ffa081ba:	69 92       	[P5++] = P1;
ffa081bc:	6a 92       	[P5++] = P2;
ffa081be:	6b 92       	[P5++] = P3;
ffa081c0:	6c 92       	[P5++] = P4;
ffa081c2:	65 32       	P4 = P5;
ffa081c4:	75 90       	P5 = [SP++];
ffa081c6:	65 92       	[P4++] = P5;
ffa081c8:	80 30       	R0 = I0;
ffa081ca:	20 92       	[P4++] = R0;
ffa081cc:	c0 30       	R0 = B0;
ffa081ce:	20 92       	[P4++] = R0;
ffa081d0:	c4 30       	R0 = L0;
ffa081d2:	20 92       	[P4++] = R0;
ffa081d4:	81 30       	R0 = I1;
ffa081d6:	20 92       	[P4++] = R0;
ffa081d8:	c1 30       	R0 = B1;
ffa081da:	20 92       	[P4++] = R0;
ffa081dc:	c5 30       	R0 = L1;
ffa081de:	20 92       	[P4++] = R0;
ffa081e0:	82 30       	R0 = I2;
ffa081e2:	20 92       	[P4++] = R0;
ffa081e4:	c2 30       	R0 = B2;
ffa081e6:	20 92       	[P4++] = R0;
ffa081e8:	c6 30       	R0 = L2;
ffa081ea:	20 92       	[P4++] = R0;
ffa081ec:	83 30       	R0 = I3;
ffa081ee:	20 92       	[P4++] = R0;
ffa081f0:	c3 30       	R0 = B3;
ffa081f2:	20 92       	[P4++] = R0;
ffa081f4:	c7 30       	R0 = L3;
ffa081f6:	20 92       	[P4++] = R0;
ffa081f8:	84 30       	R0 = M0;
ffa081fa:	20 92       	[P4++] = R0;
ffa081fc:	85 30       	R0 = M1;
ffa081fe:	20 92       	[P4++] = R0;
ffa08200:	86 30       	R0 = M2;
ffa08202:	20 92       	[P4++] = R0;
ffa08204:	87 30       	R0 = M3;
ffa08206:	20 92       	[P4++] = R0;
ffa08208:	c1 31       	R0 = SEQSTAT;
ffa0820a:	cc 31       	R1 = RETX;
ffa0820c:	00 e3 3e 0b 	CALL 0xffa09888 <_exception_report>;
ffa08210:	12 00       	RTX;

ffa08212 <_THANDLER>:
ffa08212:	4a 01       	[--SP] = P2;
ffa08214:	40 01       	[--SP] = R0;
ffa08216:	41 01       	[--SP] = R1;
ffa08218:	66 01       	[--SP] = ASTAT;
ffa0821a:	10 91       	R0 = [P2];
ffa0821c:	81 e1 01 00 	R1 = 0x1 (Z);		/*		R1=0x1(  1) */
ffa08220:	08 50       	R0 = R0 + R1;
ffa08222:	10 93       	[P2] = R0;
ffa08224:	26 01       	ASTAT = [SP++];
ffa08226:	31 90       	R1 = [SP++];
ffa08228:	30 90       	R0 = [SP++];
ffa0822a:	72 90       	P2 = [SP++];
ffa0822c:	11 00       	RTI;

ffa0822e <_RTCHANDLER>:
ffa0822e:	00 e1 07 00 	R0.L = 0x7;		/* (  7)	R0=0xffa00007(-6291449) */
ffa08232:	a5 2f       	JUMP.S 0xffa0817c <display_fail>;

ffa08234 <_I8HANDLER>:
ffa08234:	00 e1 08 00 	R0.L = 0x8;		/* (  8)	R0=0xffa00008(-6291448) */
ffa08238:	a2 2f       	JUMP.S 0xffa0817c <display_fail>;

ffa0823a <_I9HANDLER>:
ffa0823a:	00 e1 09 00 	R0.L = 0x9;		/* (  9)	R0=0xffa00009(-6291447) */
ffa0823e:	9f 2f       	JUMP.S 0xffa0817c <display_fail>;

ffa08240 <_atexit>:
ffa08240:	10 00       	RTS;
ffa08242:	00 00       	NOP;
ffa08244:	00 00       	NOP;
	...

ffa08248 <_clearirq_asm>:
ffa08248:	67 01       	[--SP] = RETS;
ffa0824a:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa0824c:	8f b4       	W[P1 + 0x4] = R7;
ffa0824e:	00 e3 39 04 	CALL 0xffa08ac0 <_get_asm2>;
ffa08252:	3e 61       	R6 = 0x27 (X);		/*		R6=0x27( 39) */
ffa08254:	1e 97       	W[P3] = R6;
ffa08256:	00 e3 d5 01 	CALL 0xffa08600 <_get_asm>;
ffa0825a:	26 e1 70 00 	R6 = 0x70 (X);		/*		R6=0x70(112) */
ffa0825e:	1e 97       	W[P3] = R6;
ffa08260:	00 e3 30 04 	CALL 0xffa08ac0 <_get_asm2>;
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
ffa0828e:	00 e3 19 04 	CALL 0xffa08ac0 <_get_asm2>;
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
ffa082a6:	00 e3 0d 04 	CALL 0xffa08ac0 <_get_asm2>;
ffa082aa:	26 e1 e2 00 	R6 = 0xe2 (X);		/*		R6=0xe2(226) */
ffa082ae:	1e 97       	W[P3] = R6;
ffa082b0:	00 e3 a8 01 	CALL 0xffa08600 <_get_asm>;
ffa082b4:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa082b6:	0f b5       	W[P1 + 0x8] = R7;
ffa082b8:	00 e3 04 04 	CALL 0xffa08ac0 <_get_asm2>;
ffa082bc:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa082be:	8f b4       	W[P1 + 0x4] = R7;
ffa082c0:	00 e3 a0 01 	CALL 0xffa08600 <_get_asm>;
ffa082c4:	26 e1 e1 00 	R6 = 0xe1 (X);		/*		R6=0xe1(225) */
ffa082c8:	1e 97       	W[P3] = R6;
ffa082ca:	00 e3 fb 03 	CALL 0xffa08ac0 <_get_asm2>;
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
ffa083ae:	00 e3 c9 05 	CALL 0xffa08f40 <_init6>;
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
ffa083cc:	00 e3 ec 06 	CALL 0xffa091a4 <_enc_create>;
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
ffa08414:	00 e3 56 03 	CALL 0xffa08ac0 <_get_asm2>;
ffa08418:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa0841a:	f5 bb       	[FP -0x4] = R5;
ffa0841c:	ff e3 42 ff 	CALL 0xffa082a0 <_clearfifos_asm>;
ffa08420:	ff e3 14 ff 	CALL 0xffa08248 <_clearirq_asm>;
ffa08424:	85 68       	P5 = 0x10 (X);		/*		P5=0x10( 16) */
ffa08426:	a2 e0 24 50 	LSETUP(0xffa0842a <wp_top>, 0xffa0846e <wp_bot>) LC0 = P5;

ffa0842a <wp_top>:
ffa0842a:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa0842c:	8f b4       	W[P1 + 0x4] = R7;
ffa0842e:	00 e3 49 03 	CALL 0xffa08ac0 <_get_asm2>;
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
ffa08452:	00 e3 37 03 	CALL 0xffa08ac0 <_get_asm2>;
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
ffa0847c:	00 e3 22 03 	CALL 0xffa08ac0 <_get_asm2>;
ffa08480:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa08482:	8f b4       	W[P1 + 0x4] = R7;
ffa08484:	00 e3 be 00 	CALL 0xffa08600 <_get_asm>;
ffa08488:	26 e1 e2 00 	R6 = 0xe2 (X);		/*		R6=0xe2(226) */
ffa0848c:	1e 97       	W[P3] = R6;
ffa0848e:	00 e3 19 03 	CALL 0xffa08ac0 <_get_asm2>;
ffa08492:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa08494:	0f b5       	W[P1 + 0x8] = R7;
ffa08496:	00 e3 b5 00 	CALL 0xffa08600 <_get_asm>;
ffa0849a:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa0849c:	8f b4       	W[P1 + 0x4] = R7;
ffa0849e:	00 e3 11 03 	CALL 0xffa08ac0 <_get_asm2>;
ffa084a2:	06 61       	R6 = 0x20 (X);		/*		R6=0x20( 32) */
ffa084a4:	1e 97       	W[P3] = R6;
ffa084a6:	00 e3 0d 03 	CALL 0xffa08ac0 <_get_asm2>;
ffa084aa:	fe 60       	R6 = 0x1f (X);		/*		R6=0x1f( 31) */
ffa084ac:	1e 97       	W[P3] = R6;
ffa084ae:	00 e3 a9 00 	CALL 0xffa08600 <_get_asm>;
ffa084b2:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa084b4:	0f b5       	W[P1 + 0x8] = R7;
ffa084b6:	00 e3 05 03 	CALL 0xffa08ac0 <_get_asm2>;
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
ffa084d4:	00 e3 f6 02 	CALL 0xffa08ac0 <_get_asm2>;
ffa084d8:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa084da:	8f b4       	W[P1 + 0x4] = R7;
ffa084dc:	00 e3 92 00 	CALL 0xffa08600 <_get_asm>;
ffa084e0:	26 e1 61 00 	R6 = 0x61 (X);		/*		R6=0x61( 97) */
ffa084e4:	1e 97       	W[P3] = R6;
ffa084e6:	00 e3 ed 02 	CALL 0xffa08ac0 <_get_asm2>;
ffa084ea:	25 68       	P5 = 0x4 (X);		/*		P5=0x4(  4) */
ffa084ec:	a2 e0 4b 50 	LSETUP(0xffa084f0 <rp_top>, 0xffa08582 <rp_bot>) LC0 = P5;

ffa084f0 <rp_top>:
ffa084f0:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa084f2:	e7 bb       	[FP -0x8] = R7;
ffa084f4:	d7 bb       	[FP -0xc] = R7;
ffa084f6:	00 e3 e5 02 	CALL 0xffa08ac0 <_get_asm2>;
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
ffa0851a:	00 e3 d3 02 	CALL 0xffa08ac0 <_get_asm2>;
ffa0851e:	25 68       	P5 = 0x4 (X);		/*		P5=0x4(  4) */
ffa08520:	b2 e0 0e 50 	LSETUP(0xffa08524 <v32_top>, 0xffa0853c <v32_bot>) LC1 = P5;

ffa08524 <v32_top>:
ffa08524:	1f 97       	W[P3] = R7;
ffa08526:	00 e3 cd 02 	CALL 0xffa08ac0 <_get_asm2>;
ffa0852a:	9f a5       	R7 = W[P3 + 0xc] (Z);
ffa0852c:	26 e1 ff 00 	R6 = 0xff (X);		/*		R6=0xff(255) */
ffa08530:	f7 55       	R7 = R7 & R6;
ffa08532:	d6 b9       	R6 = [FP -0xc];
ffa08534:	82 c6 46 8c 	R6 = R6 << 0x8;
ffa08538:	be 51       	R6 = R6 + R7;
ffa0853a:	d6 bb       	[FP -0xc] = R6;

ffa0853c <v32_bot>:
ffa0853c:	00 00       	NOP;
ffa0853e:	00 e3 c1 02 	CALL 0xffa08ac0 <_get_asm2>;
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
ffa0855c:	00 e3 b2 02 	CALL 0xffa08ac0 <_get_asm2>;
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
ffa0857e:	00 e3 a1 02 	CALL 0xffa08ac0 <_get_asm2>;

ffa08582 <rp_bot>:
ffa08582:	00 00       	NOP;
ffa08584:	00 e3 3e 00 	CALL 0xffa08600 <_get_asm>;
ffa08588:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa0858a:	0f b5       	W[P1 + 0x8] = R7;
ffa0858c:	00 e3 9a 02 	CALL 0xffa08ac0 <_get_asm2>;

ffa08590 <no_rxpacket>:
ffa08590:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa08592:	8f b4       	W[P1 + 0x4] = R7;
ffa08594:	00 e3 36 00 	CALL 0xffa08600 <_get_asm>;
ffa08598:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa0859a:	8f b4       	W[P1 + 0x4] = R7;
ffa0859c:	00 e3 92 02 	CALL 0xffa08ac0 <_get_asm2>;
ffa085a0:	26 e1 e1 00 	R6 = 0xe1 (X);		/*		R6=0xe1(225) */
ffa085a4:	1e 97       	W[P3] = R6;
ffa085a6:	00 e3 2d 00 	CALL 0xffa08600 <_get_asm>;
ffa085aa:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa085ac:	0f b5       	W[P1 + 0x8] = R7;
ffa085ae:	00 e3 89 02 	CALL 0xffa08ac0 <_get_asm2>;
ffa085b2:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa085b4:	8f b4       	W[P1 + 0x4] = R7;
ffa085b6:	00 e3 25 00 	CALL 0xffa08600 <_get_asm>;
ffa085ba:	06 61       	R6 = 0x20 (X);		/*		R6=0x20( 32) */
ffa085bc:	1e 97       	W[P3] = R6;
ffa085be:	00 e3 81 02 	CALL 0xffa08ac0 <_get_asm2>;
ffa085c2:	f6 60       	R6 = 0x1e (X);		/*		R6=0x1e( 30) */
ffa085c4:	1e 97       	W[P3] = R6;
ffa085c6:	00 e3 1d 00 	CALL 0xffa08600 <_get_asm>;
ffa085ca:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa085cc:	0f b5       	W[P1 + 0x8] = R7;
ffa085ce:	00 e3 79 02 	CALL 0xffa08ac0 <_get_asm2>;
ffa085d2:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00004(-4194300) */
ffa085d6:	0d e1 08 02 	P5.L = 0x208;		/* (520)	P5=0xffc00208(-4193784) */
ffa085da:	2f 93       	[P5] = R7;
ffa085dc:	00 e3 12 00 	CALL 0xffa08600 <_get_asm>;
ffa085e0:	87 60       	R7 = 0x10 (X);		/*		R7=0x10( 16) */
ffa085e2:	8f b4       	W[P1 + 0x4] = R7;
ffa085e4:	00 e3 6e 02 	CALL 0xffa08ac0 <_get_asm2>;
ffa085e8:	e7 b8       	R7 = [FP -0x48];
ffa085ea:	86 e1 01 00 	R6 = 0x1 (Z);		/*		R6=0x1(  1) */
ffa085ee:	f7 51       	R7 = R7 + R6;
ffa085f0:	82 c6 e7 8d 	R6 = R7 >> 0x4;
ffa085f4:	0e b5       	W[P1 + 0x8] = R6;
ffa085f6:	47 4c       	BITCLR (R7, 0x8);		/* bit  8 */
ffa085f8:	e7 ba       	[FP -0x48] = R7;
ffa085fa:	00 e3 63 02 	CALL 0xffa08ac0 <_get_asm2>;
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
ffa08624:	00 00       	NOP;
ffa08626:	00 00       	NOP;
ffa08628:	81 ce 12 84 	R2 = R2 << 0x2 (V) || R5 = [I0++] || NOP;
ffa0862c:	05 9c 00 00 
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
ffa08720:	00 c8 2e 80 	A1 = R5.H * R6.L, A0 = R5.L * R6.L || NOP || NOP;
ffa08724:	00 00 00 00 
ffa08728:	26 c8 e6 f2 	R3.H = (A1 -= R4.H * R6.H), R3.L = (A0 -= R4.L * R6.H) (S2RND) || NOP || NOP;
ffa0872c:	00 00 00 00 
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
ffa087a0:	81 ce 88 0d 	R6 = R0 >>> 0xf (V) || [I2++] = R1 || NOP;
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
ffa08830:	81 c6 12 84 	R2 = R2 << 0x2 (V);
ffa08834:	05 9c       	R5 = [I0++];
ffa08836:	00 00       	NOP;
ffa08838:	00 c8 15 80 	A1 = R2.H * R5.L, A0 = R2.L * R5.L || R1 = [I1++] || R6 = [I0++];
ffa0883c:	09 9c 06 9c 
ffa08840:	25 c8 0d ea 	R0.H = (A1 += R1.H * R5.H), R0.L = (A0 += R1.L * R5.H) (S2RND) || NOP || NOP;
ffa08844:	00 00 00 00 
ffa08848:	00 c8 0e 80 	A1 = R1.H * R6.L, A0 = R1.L * R6.L || I1 += M0 || NOP;
ffa0884c:	61 9e 00 00 
ffa08850:	25 c8 86 ea 	R2.H = (A1 += R0.H * R6.H), R2.L = (A0 += R0.L * R6.H) (S2RND) || R1 = [I1 ++ M0] || NOP;
ffa08854:	89 9d 00 00 
ffa08858:	81 ce 38 4e 	R7 = R0 << 0x7 (V, S) || R2 = [I0++] || [I2++] = R2;
ffa0885c:	02 9c 12 9e 
ffa08860:	00 c8 0a c0 	A1 = R1.H * R2.H, A0 = R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
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
ffa088c8:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa088cc:	89 9d 02 9c 
ffa088d0:	05 c8 8a e9 	R6.H = (A1 += R1.H * R2.H), R6.L = (A0 += R1.L * R2.L) || R1 = [I1++] || R5 = [I0++];
ffa088d4:	09 9c 05 9c 
ffa088d8:	00 cc 06 e0 	R0 = R0 -|- R6 (S) || I0 -= M1 || [I2++] = R0;
ffa088dc:	74 9e 10 9e 
ffa088e0:	81 ce 38 4c 	R6 = R0 << 0x7 (V, S) || I1 += M2 || [I2++] = R7;
ffa088e4:	69 9e 17 9e 
ffa088e8:	81 ce 96 4d 	R6 = R6 >>> 0xe (V) || R1 = [I1++] || R2 = [I0];
ffa088ec:	09 9c 02 9d 
ffa088f0:	00 c8 0e c0 	A1 = R1.H * R6.H, A0 = R1.L * R6.L || NOP || NOP;
ffa088f4:	00 00 00 00 
ffa088f8:	05 c8 15 e9 	R4.H = (A1 += R2.H * R5.H), R4.L = (A0 += R2.L * R5.L) || I1 -= M2 || NOP;
ffa088fc:	79 9e 00 00 
ffa08900:	03 c8 00 18 	MNOP || R5 = [I1++] || [I0 ++ M1] = R4;
ffa08904:	0d 9c a4 9f 
ffa08908:	00 c0 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L;
ffa0890c:	83 c6 38 00 	A0 = A0 << 0x7;
ffa08910:	83 c6 38 10 	A1 = A1 << 0x7;
ffa08914:	07 c0 c0 39 	R7.H = A1, R7.L = A0;
ffa08918:	10 cc 00 c0 	A1 = ABS A0, A0 = ABS A0 || R6 = [I0++] || NOP;
ffa0891c:	06 9c 00 00 
ffa08920:	06 c9 36 f1 	R4.H = (A1 -= R6.H * R6.H), R4.L = (A0 -= R6.L * R6.L) (IS) || R6 = [I0++] || NOP;
ffa08924:	06 9c 00 00 
ffa08928:	00 c8 2e 80 	A1 = R5.H * R6.L, A0 = R5.L * R6.L || NOP || NOP;
ffa0892c:	00 00 00 00 
ffa08930:	26 c8 e6 f2 	R3.H = (A1 -= R4.H * R6.H), R3.L = (A0 -= R4.L * R6.H) (S2RND) || NOP || NOP;
ffa08934:	00 00 00 00 
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
ffa08a50:	32 14       	IF !CC JUMP 0xffa08ab4 <end_txchan> (BP);
ffa08a52:	98 b9       	P0 = [FP -0x1c];
ffa08a54:	00 00       	NOP;
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
ffa08a84:	2f 60       	R7 = 0x5 (X);		/*		R7=0x5(  5) */
ffa08a86:	3c 08       	CC = R4 == R7;
ffa08a88:	13 14       	IF !CC JUMP 0xffa08aae <end_txchan_qs> (BP);
ffa08a8a:	1f 9c       	R7 = [I3++];
ffa08a8c:	1e 9c       	R6 = [I3++];
ffa08a8e:	2e 32       	P5 = R6;
ffa08a90:	f5 b9       	R5 = [FP -0x4];
ffa08a92:	0d 64       	R5 += 0x1;		/* (  1) */
ffa08a94:	f5 bb       	[FP -0x4] = R5;
ffa08a96:	f5 b8       	R5 = [FP -0x44];
ffa08a98:	28 90       	R0 = [P5++];
ffa08a9a:	29 90       	R1 = [P5++];
ffa08a9c:	38 56       	R0 = R0 | R7;
ffa08a9e:	69 56       	R1 = R1 | R5;
ffa08aa0:	e0 6a       	P0 = -0x24 (X);		/*		P0=0xffffffdc(-36) */
ffa08aa2:	45 5b       	P5 = P5 + P0;
ffa08aa4:	20 92       	[P4++] = R0;
ffa08aa6:	21 92       	[P4++] = R1;
ffa08aa8:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa08aaa:	ac 92       	[P5--] = R4;
ffa08aac:	ac 92       	[P5--] = R4;

ffa08aae <end_txchan_qs>:
ffa08aae:	7c 30       	R7 = P4;
ffa08ab0:	57 4c       	BITCLR (R7, 0xa);		/* bit 10 */
ffa08ab2:	27 32       	P4 = R7;

ffa08ab4 <end_txchan>:
ffa08ab4:	5b b9       	P3 = [FP -0x2c];
ffa08ab6:	49 b9       	P1 = [FP -0x30];
ffa08ab8:	10 00       	RTS;
ffa08aba:	00 00       	NOP;
ffa08abc:	00 00       	NOP;
	...

ffa08ac0 <_get_asm2>:
ffa08ac0:	68 b9       	P0 = [FP -0x28];
ffa08ac2:	27 e1 00 01 	R7 = 0x100 (X);		/*		R7=0x100(256) */
ffa08ac6:	8f b4       	W[P1 + 0x4] = R7;
ffa08ac8:	27 e1 80 00 	R7 = 0x80 (X);		/*		R7=0x80(128) */
ffa08acc:	0f b5       	W[P1 + 0x8] = R7;

ffa08ace <wait_samples>:
ffa08ace:	03 a7       	R3 = W[P0 + 0x18] (Z);
ffa08ad0:	03 48       	CC = !BITTST (R3, 0x0);		/* bit  0 */
ffa08ad2:	fe 1b       	IF CC JUMP 0xffa08ace <wait_samples>;
ffa08ad4:	00 95       	R0 = W[P0] (Z);
ffa08ad6:	01 95       	R1 = W[P0] (Z);
ffa08ad8:	d2 b8       	R2 = [FP -0x4c];
ffa08ada:	81 4f       	R1 <<= 0x10;
ffa08adc:	08 56       	R0 = R0 | R1;
ffa08ade:	90 54       	R2 = R0 & R2;
ffa08ae0:	07 9c       	R7 = [I0++];
ffa08ae2:	8f b5       	W[P1 + 0xc] = R7;
ffa08ae4:	00 00       	NOP;
ffa08ae6:	00 00       	NOP;
ffa08ae8:	81 ce 12 84 	R2 = R2 << 0x2 (V) || R5 = [I0++] || NOP;
ffa08aec:	05 9c 00 00 
ffa08af0:	00 c8 15 80 	A1 = R2.H * R5.L, A0 = R2.L * R5.L || R1 = [I1++] || R6 = [I0++];
ffa08af4:	09 9c 06 9c 
ffa08af8:	25 c8 0d ea 	R0.H = (A1 += R1.H * R5.H), R0.L = (A0 += R1.L * R5.H) (S2RND) || NOP || NOP;
ffa08afc:	00 00 00 00 
ffa08b00:	00 c8 0e 80 	A1 = R1.H * R6.L, A0 = R1.L * R6.L || I1 += M0 || NOP;
ffa08b04:	61 9e 00 00 
ffa08b08:	25 c8 86 ea 	R2.H = (A1 += R0.H * R6.H), R2.L = (A0 += R0.L * R6.H) (S2RND) || R1 = [I1 ++ M0] || NOP;
ffa08b0c:	89 9d 00 00 
ffa08b10:	81 ce 38 4e 	R7 = R0 << 0x7 (V, S) || R2 = [I0++] || [I2++] = R2;
ffa08b14:	02 9c 12 9e 
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
ffa08c40:	81 ce 88 0d 	R6 = R0 >>> 0xf (V) || [I2++] = R1 || NOP;
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
ffa08cd0:	81 c6 12 84 	R2 = R2 << 0x2 (V);
ffa08cd4:	05 9c       	R5 = [I0++];
ffa08cd6:	00 00       	NOP;
ffa08cd8:	00 c8 15 80 	A1 = R2.H * R5.L, A0 = R2.L * R5.L || R1 = [I1++] || R6 = [I0++];
ffa08cdc:	09 9c 06 9c 
ffa08ce0:	25 c8 0d ea 	R0.H = (A1 += R1.H * R5.H), R0.L = (A0 += R1.L * R5.H) (S2RND) || NOP || NOP;
ffa08ce4:	00 00 00 00 
ffa08ce8:	00 c8 0e 80 	A1 = R1.H * R6.L, A0 = R1.L * R6.L || I1 += M0 || NOP;
ffa08cec:	61 9e 00 00 
ffa08cf0:	25 c8 86 ea 	R2.H = (A1 += R0.H * R6.H), R2.L = (A0 += R0.L * R6.H) (S2RND) || R1 = [I1 ++ M0] || NOP;
ffa08cf4:	89 9d 00 00 
ffa08cf8:	81 ce 38 4e 	R7 = R0 << 0x7 (V, S) || R2 = [I0++] || [I2++] = R2;
ffa08cfc:	02 9c 12 9e 
ffa08d00:	00 c8 0a c0 	A1 = R1.H * R2.H, A0 = R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
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
ffa08d58:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08d5c:	89 9d 02 9c 
ffa08d60:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08d64:	89 9d 02 9c 
ffa08d68:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08d6c:	89 9d 02 9c 
ffa08d70:	05 c8 8a e9 	R6.H = (A1 += R1.H * R2.H), R6.L = (A0 += R1.L * R2.L) || R1 = [I1++] || R5 = [I0++];
ffa08d74:	09 9c 05 9c 
ffa08d78:	00 cc 06 e0 	R0 = R0 -|- R6 (S) || I0 -= M1 || [I2++] = R0;
ffa08d7c:	74 9e 10 9e 
ffa08d80:	81 ce 38 4c 	R6 = R0 << 0x7 (V, S) || I1 += M2 || [I2++] = R7;
ffa08d84:	69 9e 17 9e 
ffa08d88:	81 ce 96 4d 	R6 = R6 >>> 0xe (V) || R1 = [I1++] || R2 = [I0];
ffa08d8c:	09 9c 02 9d 
ffa08d90:	00 c8 0e c0 	A1 = R1.H * R6.H, A0 = R1.L * R6.L || NOP || NOP;
ffa08d94:	00 00 00 00 
ffa08d98:	05 c8 15 e9 	R4.H = (A1 += R2.H * R5.H), R4.L = (A0 += R2.L * R5.L) || I1 -= M2 || NOP;
ffa08d9c:	79 9e 00 00 
ffa08da0:	03 c8 00 18 	MNOP || R5 = [I1++] || [I0 ++ M1] = R4;
ffa08da4:	0d 9c a4 9f 
ffa08da8:	00 c0 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L;
ffa08dac:	83 c6 38 00 	A0 = A0 << 0x7;
ffa08db0:	83 c6 38 10 	A1 = A1 << 0x7;
ffa08db4:	07 c0 c0 39 	R7.H = A1, R7.L = A0;
ffa08db8:	03 c8 00 18 	MNOP || I0 += M3 || R3 = [I2++];
ffa08dbc:	6c 9e 13 9c 
ffa08dc0:	03 c8 00 18 	MNOP || R5 = [I0++] || R1 = [I1++];
ffa08dc4:	05 9c 09 9c 
ffa08dc8:	00 c8 3d c0 	A1 = R7.H * R5.H, A0 = R7.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa08dcc:	05 9c 0a 9c 
ffa08dd0:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || R3 = [I1++];
ffa08dd4:	05 9c 0b 9c 
ffa08dd8:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R5 = [I0++] || R4 = [I1++];
ffa08ddc:	05 9c 0c 9c 
ffa08de0:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || [I2++] = R7;
ffa08de4:	05 9c 17 9e 
ffa08de8:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || [I2++] = R1 || NOP;
ffa08dec:	11 9e 00 00 
ffa08df0:	03 c8 00 18 	MNOP || R5 = [I0++] || [I2++] = R0;
ffa08df4:	05 9c 10 9e 
ffa08df8:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || R5 = [I0++] || [I2++] = R3;
ffa08dfc:	05 9c 13 9e 
ffa08e00:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || R1 = [I1++];
ffa08e04:	05 9c 09 9c 
ffa08e08:	01 c8 25 c8 	A1 += R4.H * R5.H, A0 += R4.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa08e0c:	05 9c 0a 9c 
ffa08e10:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || NOP;
ffa08e14:	05 9c 00 00 
ffa08e18:	25 c8 15 e8 	R0.H = (A1 += R2.H * R5.H), R0.L = (A0 += R2.L * R5.L) (S2RND) || R5 = [I0++] || NOP;
ffa08e1c:	05 9c 00 00 
ffa08e20:	00 cc 05 20 	R0 = R0 +|+ R5 (S) || [I2++] = R0 || NOP;
ffa08e24:	10 9e 00 00 
ffa08e28:	81 ce 88 0d 	R6 = R0 >>> 0xf (V) || [I2++] = R1 || NOP;
ffa08e2c:	11 9e 00 00 
ffa08e30:	03 c8 00 18 	MNOP || R5 = [I0++] || R1 = [I1++];
ffa08e34:	05 9c 09 9c 
ffa08e38:	00 c8 3d c0 	A1 = R7.H * R5.H, A0 = R7.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa08e3c:	05 9c 0a 9c 
ffa08e40:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || R3 = [I1++];
ffa08e44:	05 9c 0b 9c 
ffa08e48:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R5 = [I0++] || R4 = [I1++];
ffa08e4c:	05 9c 0c 9c 
ffa08e50:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || [I2++] = R7;
ffa08e54:	05 9c 17 9e 
ffa08e58:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || [I2++] = R1 || NOP;
ffa08e5c:	11 9e 00 00 
ffa08e60:	03 c8 00 18 	MNOP || R5 = [I0++] || [I2++] = R0;
ffa08e64:	05 9c 10 9e 
ffa08e68:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || R5 = [I0++] || [I2++] = R3;
ffa08e6c:	05 9c 13 9e 
ffa08e70:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || R1 = [I1++];
ffa08e74:	05 9c 09 9c 
ffa08e78:	01 c8 25 c8 	A1 += R4.H * R5.H, A0 += R4.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa08e7c:	05 9c 0a 9c 
ffa08e80:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || NOP;
ffa08e84:	05 9c 00 00 
ffa08e88:	25 c8 15 e8 	R0.H = (A1 += R2.H * R5.H), R0.L = (A0 += R2.L * R5.L) (S2RND) || R5 = [I0++] || NOP;
ffa08e8c:	05 9c 00 00 
ffa08e90:	00 cc 05 20 	R0 = R0 +|+ R5 (S) || R7 = [I0++] || [I2++] = R0;
ffa08e94:	07 9c 10 9e 
ffa08e98:	81 ce 90 41 	R0 = R0 >>> 0xe (V) || R5 = [I0++] || [I2++] = R1;
ffa08e9c:	05 9c 11 9e 
ffa08ea0:	be 55       	R6 = R6 & R7;
ffa08ea2:	28 54       	R0 = R0 & R5;
ffa08ea4:	86 57       	R6 = R6 | R0;
ffa08ea6:	77 b9       	R7 = [FP -0x24];
ffa08ea8:	37 56       	R0 = R7 | R6;
ffa08eaa:	06 9c       	R6 = [I0++];
ffa08eac:	06 32       	P0 = R6;
ffa08eae:	3d b9       	P5 = [FP -0x34];
ffa08eb0:	19 b9       	P1 = [FP -0x3c];
ffa08eb2:	02 c4 00 40 	R0.L = R0.L + R0.H (NS);
ffa08eb6:	40 43       	R0 = R0.B (Z);
ffa08eb8:	45 5b       	P5 = P5 + P0;
ffa08eba:	29 99       	R1 = B[P5] (Z);
ffa08ebc:	41 56       	R1 = R1 | R0;
ffa08ebe:	01 32       	P0 = R1;
ffa08ec0:	29 9b       	B[P5] = R1;
ffa08ec2:	03 69       	P3 = 0x20 (X);		/*		P3=0x20( 32) */
ffa08ec4:	5d 5b       	P5 = P5 + P3;
ffa08ec6:	41 5a       	P1 = P1 + P0;
ffa08ec8:	0a 99       	R2 = B[P1] (Z);
ffa08eca:	2a 9b       	B[P5] = R2;
ffa08ecc:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa08ece:	06 08       	CC = R6 == R0;
ffa08ed0:	32 14       	IF !CC JUMP 0xffa08f34 <end_txchan> (BP);
ffa08ed2:	98 b9       	P0 = [FP -0x1c];
ffa08ed4:	00 00       	NOP;
ffa08ed6:	00 00       	NOP;
ffa08ed8:	03 c8 00 18 	MNOP || P1 = [FP -0x18] || R0 = [I3++];
ffa08edc:	a9 b9 18 9c 
ffa08ee0:	03 c8 00 18 	MNOP || P3 = [FP -0x14] || R1 = [I3++];
ffa08ee4:	bb b9 19 9c 
ffa08ee8:	03 c8 00 18 	MNOP || P5 = [FP -0x10] || R4 = [I3++];
ffa08eec:	cd b9 1c 9c 
ffa08ef0:	28 34       	M1 = R0;
ffa08ef2:	31 34       	M2 = R1;
ffa08ef4:	00 99       	R0 = B[P0] (Z);
ffa08ef6:	09 99       	R1 = B[P1] (Z);
ffa08ef8:	1a 99       	R2 = B[P3] (Z);
ffa08efa:	2b 99       	R3 = B[P5] (Z);
ffa08efc:	20 9a       	B[P4++] = R0;
ffa08efe:	21 9a       	B[P4++] = R1;
ffa08f00:	22 9a       	B[P4++] = R2;
ffa08f02:	23 9a       	B[P4++] = R3;
ffa08f04:	2f 60       	R7 = 0x5 (X);		/*		R7=0x5(  5) */
ffa08f06:	3c 08       	CC = R4 == R7;
ffa08f08:	13 14       	IF !CC JUMP 0xffa08f2e <end_txchan_qs> (BP);
ffa08f0a:	1f 9c       	R7 = [I3++];
ffa08f0c:	1e 9c       	R6 = [I3++];
ffa08f0e:	2e 32       	P5 = R6;
ffa08f10:	f5 b9       	R5 = [FP -0x4];
ffa08f12:	0d 64       	R5 += 0x1;		/* (  1) */
ffa08f14:	f5 bb       	[FP -0x4] = R5;
ffa08f16:	f5 b8       	R5 = [FP -0x44];
ffa08f18:	28 90       	R0 = [P5++];
ffa08f1a:	29 90       	R1 = [P5++];
ffa08f1c:	38 56       	R0 = R0 | R7;
ffa08f1e:	69 56       	R1 = R1 | R5;
ffa08f20:	e0 6a       	P0 = -0x24 (X);		/*		P0=0xffffffdc(-36) */
ffa08f22:	45 5b       	P5 = P5 + P0;
ffa08f24:	20 92       	[P4++] = R0;
ffa08f26:	21 92       	[P4++] = R1;
ffa08f28:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa08f2a:	ac 92       	[P5--] = R4;
ffa08f2c:	ac 92       	[P5--] = R4;

ffa08f2e <end_txchan_qs>:
ffa08f2e:	7c 30       	R7 = P4;
ffa08f30:	57 4c       	BITCLR (R7, 0xa);		/* bit 10 */
ffa08f32:	27 32       	P4 = R7;

ffa08f34 <end_txchan>:
ffa08f34:	5b b9       	P3 = [FP -0x2c];
ffa08f36:	49 b9       	P1 = [FP -0x30];
ffa08f38:	10 00       	RTS;
ffa08f3a:	00 00       	NOP;
ffa08f3c:	00 00       	NOP;
	...

ffa08f40 <_init6>:
ffa08f40:	10 e1 00 40 	I0.L = 0x4000;		/* (16384)	I0=0x4000(16384) */
ffa08f44:	50 e1 90 ff 	I0.H = 0xff90;		/* (-112)	I0=0xff904000(-7323648) */
ffa08f48:	80 36       	B0 = I0;
ffa08f4a:	1c e1 00 2d 	L0.L = 0x2d00;		/* (11520)	L0=0x2d00(11520) */
ffa08f4e:	5c e1 00 00 	L0.H = 0x0;		/* (  0)	L0=0x2d00(11520) */
ffa08f52:	14 e1 00 01 	M0.L = 0x100;		/* (256)	M0=0x100(256) */
ffa08f56:	54 e1 00 00 	M0.H = 0x0;		/* (  0)	M0=0x100(256) */
ffa08f5a:	05 69       	P5 = 0x20 (X);		/*		P5=0x20( 32) */
ffa08f5c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa08f5e:	a2 e0 a6 50 	LSETUP(0xffa08f62 <lt_top>, 0xffa090aa <lt_bot>) LC0 = P5;

ffa08f62 <lt_top>:
ffa08f62:	20 e1 00 01 	R0 = 0x100 (X);		/*		R0=0x100(256) */
ffa08f66:	00 9e       	[I0++] = R0;
ffa08f68:	15 68       	P5 = 0x2 (X);		/*		P5=0x2(  2) */
ffa08f6a:	b2 e0 8e 50 	LSETUP(0xffa08f6e <lt2_top>, 0xffa09086 <lt2_bot>) LC1 = P5;

ffa08f6e <lt2_top>:
ffa08f6e:	00 e1 00 7d 	R0.L = 0x7d00;		/* (32000)	R0=0x7d00(32000) */
ffa08f72:	40 e1 00 c0 	R0.H = 0xc000;		/* (-16384)	R0=0xc0007d00(-1073709824) */
ffa08f76:	00 9e       	[I0++] = R0;
ffa08f78:	00 e1 00 40 	R0.L = 0x4000;		/* (16384)	R0=0xc0004000(-1073725440) */
ffa08f7c:	40 e1 84 03 	R0.H = 0x384;		/* (900)	R0=0x3844000(58998784) */
ffa08f80:	00 9e       	[I0++] = R0;
ffa08f82:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa08f84:	00 9e       	[I0++] = R0;
ffa08f86:	00 9e       	[I0++] = R0;
ffa08f88:	00 9e       	[I0++] = R0;
ffa08f8a:	00 9e       	[I0++] = R0;
ffa08f8c:	00 9e       	[I0++] = R0;
ffa08f8e:	00 9e       	[I0++] = R0;
ffa08f90:	00 9e       	[I0++] = R0;
ffa08f92:	00 9e       	[I0++] = R0;
ffa08f94:	00 9e       	[I0++] = R0;
ffa08f96:	00 9e       	[I0++] = R0;
ffa08f98:	00 9e       	[I0++] = R0;
ffa08f9a:	00 9e       	[I0++] = R0;
ffa08f9c:	00 9e       	[I0++] = R0;
ffa08f9e:	00 9e       	[I0++] = R0;
ffa08fa0:	00 9e       	[I0++] = R0;
ffa08fa2:	00 e1 ff 7f 	R0.L = 0x7fff;		/* (32767)	R0=0x7fff(32767) */
ffa08fa6:	20 9e       	W[I0++] = R0.L;
ffa08fa8:	20 9e       	W[I0++] = R0.L;
ffa08faa:	00 e1 bb 26 	R0.L = 0x26bb;		/* (9915)	R0=0x26bb(9915) */
ffa08fae:	40 e1 bb 26 	R0.H = 0x26bb;		/* (9915)	R0=0x26bb26bb(649799355) */
ffa08fb2:	00 9e       	[I0++] = R0;
ffa08fb4:	00 e1 00 40 	R0.L = 0x4000;		/* (16384)	R0=0x26bb4000(649805824) */
ffa08fb8:	40 e1 01 00 	R0.H = 0x1;		/* (  1)	R0=0x14000(81920) */
ffa08fbc:	00 9e       	[I0++] = R0;
ffa08fbe:	20 e1 d4 1e 	R0 = 0x1ed4 (X);		/*		R0=0x1ed4(7892) */
ffa08fc2:	20 9e       	W[I0++] = R0.L;
ffa08fc4:	20 9e       	W[I0++] = R0.L;
ffa08fc6:	20 e1 a9 3d 	R0 = 0x3da9 (X);		/*		R0=0x3da9(15785) */
ffa08fca:	20 9e       	W[I0++] = R0.L;
ffa08fcc:	20 9e       	W[I0++] = R0.L;
ffa08fce:	20 e1 d4 1e 	R0 = 0x1ed4 (X);		/*		R0=0x1ed4(7892) */
ffa08fd2:	20 9e       	W[I0++] = R0.L;
ffa08fd4:	20 9e       	W[I0++] = R0.L;
ffa08fd6:	20 e1 ad 14 	R0 = 0x14ad (X);		/*		R0=0x14ad(5293) */
ffa08fda:	20 9e       	W[I0++] = R0.L;
ffa08fdc:	20 9e       	W[I0++] = R0.L;
ffa08fde:	20 e1 c9 e2 	R0 = -0x1d37 (X);		/*		R0=0xffffe2c9(-7479) */
ffa08fe2:	20 9e       	W[I0++] = R0.L;
ffa08fe4:	20 9e       	W[I0++] = R0.L;
ffa08fe6:	20 e1 ee 3b 	R0 = 0x3bee (X);		/*		R0=0x3bee(15342) */
ffa08fea:	20 9e       	W[I0++] = R0.L;
ffa08fec:	20 9e       	W[I0++] = R0.L;
ffa08fee:	20 e1 21 88 	R0 = -0x77df (X);		/*		R0=0xffff8821(-30687) */
ffa08ff2:	20 9e       	W[I0++] = R0.L;
ffa08ff4:	20 9e       	W[I0++] = R0.L;
ffa08ff6:	20 e1 ee 3b 	R0 = 0x3bee (X);		/*		R0=0x3bee(15342) */
ffa08ffa:	20 9e       	W[I0++] = R0.L;
ffa08ffc:	20 9e       	W[I0++] = R0.L;
ffa08ffe:	20 e1 a5 7a 	R0 = 0x7aa5 (X);		/*		R0=0x7aa5(31397) */
ffa09002:	20 9e       	W[I0++] = R0.L;
ffa09004:	20 9e       	W[I0++] = R0.L;
ffa09006:	20 e1 bc c4 	R0 = -0x3b44 (X);		/*		R0=0xffffc4bc(-15172) */
ffa0900a:	20 9e       	W[I0++] = R0.L;
ffa0900c:	20 9e       	W[I0++] = R0.L;
ffa0900e:	20 e1 10 27 	R0 = 0x2710 (X);		/*		R0=0x2710(10000) */
ffa09012:	20 9e       	W[I0++] = R0.L;
ffa09014:	20 9e       	W[I0++] = R0.L;
ffa09016:	20 e1 d4 1e 	R0 = 0x1ed4 (X);		/*		R0=0x1ed4(7892) */
ffa0901a:	20 9e       	W[I0++] = R0.L;
ffa0901c:	20 9e       	W[I0++] = R0.L;
ffa0901e:	20 e1 a6 3d 	R0 = 0x3da6 (X);		/*		R0=0x3da6(15782) */
ffa09022:	20 9e       	W[I0++] = R0.L;
ffa09024:	20 9e       	W[I0++] = R0.L;
ffa09026:	20 e1 d4 1e 	R0 = 0x1ed4 (X);		/*		R0=0x1ed4(7892) */
ffa0902a:	20 9e       	W[I0++] = R0.L;
ffa0902c:	20 9e       	W[I0++] = R0.L;
ffa0902e:	20 e1 f0 0e 	R0 = 0xef0 (X);		/*		R0=0xef0(3824) */
ffa09032:	20 9e       	W[I0++] = R0.L;
ffa09034:	20 9e       	W[I0++] = R0.L;
ffa09036:	20 e1 aa fc 	R0 = -0x356 (X);		/*		R0=0xfffffcaa(-854) */
ffa0903a:	20 9e       	W[I0++] = R0.L;
ffa0903c:	20 9e       	W[I0++] = R0.L;
ffa0903e:	20 e1 ee 3b 	R0 = 0x3bee (X);		/*		R0=0x3bee(15342) */
ffa09042:	20 9e       	W[I0++] = R0.L;
ffa09044:	20 9e       	W[I0++] = R0.L;
ffa09046:	20 e1 27 88 	R0 = -0x77d9 (X);		/*		R0=0xffff8827(-30681) */
ffa0904a:	20 9e       	W[I0++] = R0.L;
ffa0904c:	20 9e       	W[I0++] = R0.L;
ffa0904e:	20 e1 ee 3b 	R0 = 0x3bee (X);		/*		R0=0x3bee(15342) */
ffa09052:	20 9e       	W[I0++] = R0.L;
ffa09054:	20 9e       	W[I0++] = R0.L;
ffa09056:	20 e1 8c 74 	R0 = 0x748c (X);		/*		R0=0x748c(29836) */
ffa0905a:	20 9e       	W[I0++] = R0.L;
ffa0905c:	20 9e       	W[I0++] = R0.L;
ffa0905e:	20 e1 dd ca 	R0 = -0x3523 (X);		/*		R0=0xffffcadd(-13603) */
ffa09062:	20 9e       	W[I0++] = R0.L;
ffa09064:	20 9e       	W[I0++] = R0.L;
ffa09066:	20 e1 10 27 	R0 = 0x2710 (X);		/*		R0=0x2710(10000) */
ffa0906a:	20 9e       	W[I0++] = R0.L;
ffa0906c:	20 9e       	W[I0++] = R0.L;
ffa0906e:	00 e1 01 00 	R0.L = 0x1;		/* (  1)	R0=0x1(  1) */
ffa09072:	20 9e       	W[I0++] = R0.L;
ffa09074:	00 e1 10 00 	R0.L = 0x10;		/* ( 16)	R0=0x10( 16) */
ffa09078:	20 9e       	W[I0++] = R0.L;
ffa0907a:	00 e1 02 00 	R0.L = 0x2;		/* (  2)	R0=0x2(  2) */
ffa0907e:	20 9e       	W[I0++] = R0.L;
ffa09080:	00 e1 20 00 	R0.L = 0x20;		/* ( 32)	R0=0x20( 32) */
ffa09084:	20 9e       	W[I0++] = R0.L;

ffa09086 <lt2_bot>:
ffa09086:	37 e1 08 00 	M3 = 0x8 (X);		/*		M3=0x8(  8) */
ffa0908a:	7c 9e       	I0 -= M3;
ffa0908c:	00 e1 04 00 	R0.L = 0x4;		/* (  4)	R0=0x4(  4) */
ffa09090:	20 9e       	W[I0++] = R0.L;
ffa09092:	00 e1 40 00 	R0.L = 0x40;		/* ( 64)	R0=0x40( 64) */
ffa09096:	20 9e       	W[I0++] = R0.L;
ffa09098:	00 e1 08 00 	R0.L = 0x8;		/* (  8)	R0=0x8(  8) */
ffa0909c:	20 9e       	W[I0++] = R0.L;
ffa0909e:	00 e1 80 00 	R0.L = 0x80;		/* (128)	R0=0x80(128) */
ffa090a2:	20 9e       	W[I0++] = R0.L;
ffa090a4:	01 9e       	[I0++] = R1;
ffa090a6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa090a8:	41 50       	R1 = R1 + R0;

ffa090aa <lt_bot>:
ffa090aa:	08 e1 c8 68 	P0.L = 0x68c8;		/* (26824)	P0=0xffff68c8(-38712) */
ffa090ae:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff9068c8 */
ffa090b2:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa090b6:	00 93       	[P0] = R0;
ffa090b8:	11 e1 00 40 	I1.L = 0x4000;		/* (16384)	I1=0x4000(16384) */
ffa090bc:	51 e1 80 ff 	I1.H = 0xff80;		/* (-128)	I1=0xff804000(-8372224) */
ffa090c0:	1d e1 00 10 	L1.L = 0x1000;		/* (4096)	L1=0x1000(4096) */
ffa090c4:	5d e1 00 00 	L1.H = 0x0;		/* (  0)	L1=0x1000(4096) */
ffa090c8:	91 34       	I2 = I1;
ffa090ca:	89 36       	B1 = I1;
ffa090cc:	92 36       	B2 = I2;
ffa090ce:	f5 36       	L2 = L1;
ffa090d0:	35 e1 40 00 	M1 = 0x40 (X);		/*		M1=0x40( 64) */
ffa090d4:	b4 34       	M2 = M0;
ffa090d6:	08 e1 00 40 	P0.L = 0x4000;		/* (16384)	P0=0xff904000 */
ffa090da:	48 e1 80 ff 	P0.H = 0xff80;		/* (-128)	P0=0xff804000 */
ffa090de:	0d e1 00 04 	P5.L = 0x400;		/* (1024)	P5=0x400 */
ffa090e2:	4d e1 00 00 	P5.H = 0x0;		/* (  0)	P5=0x400 */
ffa090e6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa090e8:	a2 e0 04 50 	LSETUP(0xffa090ec <lt3_top>, 0xffa090f0 <lt3_bot>) LC0 = P5;

ffa090ec <lt3_top>:
ffa090ec:	00 00       	NOP;
ffa090ee:	00 92       	[P0++] = R0;

ffa090f0 <lt3_bot>:
ffa090f0:	00 00       	NOP;
ffa090f2:	13 e1 00 50 	I3.L = 0x5000;		/* (20480)	I3=0x5000(20480) */
ffa090f6:	53 e1 80 ff 	I3.H = 0xff80;		/* (-128)	I3=0xff805000(-8368128) */
ffa090fa:	1f e1 00 0f 	L3.L = 0xf00;		/* (3840)	L3=0xf00(3840) */
ffa090fe:	5f e1 00 00 	L3.H = 0x0;		/* (  0)	L3=0xf00(3840) */
ffa09102:	9b 36       	B3 = I3;
ffa09104:	37 e1 08 00 	M3 = 0x8 (X);		/*		M3=0x8(  8) */
ffa09108:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0910a:	8c 30       	R1 = M0;
ffa0910c:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0910e:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa09110:	85 69       	P5 = 0x30 (X);		/*		P5=0x30( 48) */
ffa09112:	a2 e0 46 50 	LSETUP(0xffa09116 <lt4_top>, 0xffa0919e <lt4_bot>) LC0 = P5;

ffa09116 <lt4_top>:
ffa09116:	00 00       	NOP;
ffa09118:	35 68       	P5 = 0x6 (X);		/*		P5=0x6(  6) */
ffa0911a:	b2 e0 18 50 	LSETUP(0xffa0911e <lt5_top>, 0xffa0914a <lt5_bot>) LC1 = P5;

ffa0911e <lt5_top>:
ffa0911e:	84 60       	R4 = 0x10 (X);		/*		R4=0x10( 16) */
ffa09120:	c4 52       	R3 = R4 - R0;
ffa09122:	24 60       	R4 = 0x4 (X);		/*		R4=0x4(  4) */
ffa09124:	e3 40       	R3 *= R4;
ffa09126:	1b 9e       	[I3++] = R3;
ffa09128:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa0912a:	e0 50       	R3 = R0 + R4;
ffa0912c:	cb 40       	R3 *= R1;
ffa0912e:	1b 9e       	[I3++] = R3;
ffa09130:	1f 9e       	[I3++] = R7;
ffa09132:	20 50       	R0 = R0 + R4;
ffa09134:	e7 51       	R7 = R7 + R4;
ffa09136:	7c 60       	R4 = 0xf (X);		/*		R4=0xf( 15) */
ffa09138:	20 08       	CC = R0 == R4;
ffa0913a:	02 10       	IF !CC JUMP 0xffa0913e <no_rollover>;
ffa0913c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */

ffa0913e <no_rollover>:
ffa0913e:	00 00       	NOP;
ffa09140:	34 60       	R4 = 0x6 (X);		/*		R4=0x6(  6) */
ffa09142:	27 08       	CC = R7 == R4;
ffa09144:	02 10       	IF !CC JUMP 0xffa09148 <no_rollover2>;
ffa09146:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */

ffa09148 <no_rollover2>:
	...

ffa0914a <lt5_bot>:
ffa0914a:	00 00       	NOP;
ffa0914c:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa0914e:	82 c6 e2 86 	R3 = R2 << 0x1c;
ffa09152:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa09154:	82 c6 fc 88 	R4 = R4 << 0x1f;
ffa09158:	e3 54       	R3 = R3 & R4;
ffa0915a:	5d 57       	R5 = R5 | R3;
ffa0915c:	82 c6 aa 86 	R3 = R2 << 0x15;
ffa09160:	82 c6 c4 89 	R4 = R4 >> 0x8;
ffa09164:	e3 54       	R3 = R3 & R4;
ffa09166:	5d 57       	R5 = R5 | R3;
ffa09168:	82 c6 72 86 	R3 = R2 << 0xe;
ffa0916c:	82 c6 c4 89 	R4 = R4 >> 0x8;
ffa09170:	e3 54       	R3 = R3 & R4;
ffa09172:	5d 57       	R5 = R5 | R3;
ffa09174:	82 c6 3a 86 	R3 = R2 << 0x7;
ffa09178:	82 c6 c4 89 	R4 = R4 >> 0x8;
ffa0917c:	e3 54       	R3 = R3 & R4;
ffa0917e:	5d 57       	R5 = R5 | R3;
ffa09180:	1d 9e       	[I3++] = R5;
ffa09182:	03 e1 20 60 	R3.L = 0x6020;		/* (24608)	R3=0x6020(24608) */
ffa09186:	43 e1 80 ff 	R3.H = 0xff80;		/* (-128)	R3=0xff806020(-8364000) */
ffa0918a:	1c 60       	R4 = 0x3 (X);		/*		R4=0x3(  3) */
ffa0918c:	62 55       	R5 = R2 & R4;
ffa0918e:	82 c6 1d 8a 	R5 = R5 << 0x3;
ffa09192:	5d 51       	R5 = R5 + R3;
ffa09194:	1d 9e       	[I3++] = R5;
ffa09196:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa09198:	a2 50       	R2 = R2 + R4;
ffa0919a:	7c 60       	R4 = 0xf (X);		/*		R4=0xf( 15) */
ffa0919c:	a2 54       	R2 = R2 & R4;

ffa0919e <lt4_bot>:
ffa0919e:	00 00       	NOP;
ffa091a0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa091a2:	10 00       	RTS;

ffa091a4 <_enc_create>:
ffa091a4:	0d e1 00 61 	P5.L = 0x6100;		/* (24832)	P5=0x6100 */
ffa091a8:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff806100 */
ffa091ac:	50 61       	R0 = 0x2a (X);		/*		R0=0x2a( 42) */
ffa091ae:	28 9a       	B[P5++] = R0;
ffa091b0:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa091b2:	28 9a       	B[P5++] = R0;
ffa091b4:	60 61       	R0 = 0x2c (X);		/*		R0=0x2c( 44) */
ffa091b6:	28 9a       	B[P5++] = R0;
ffa091b8:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa091ba:	28 9a       	B[P5++] = R0;
ffa091bc:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa091be:	28 9a       	B[P5++] = R0;
ffa091c0:	70 61       	R0 = 0x2e (X);		/*		R0=0x2e( 46) */
ffa091c2:	28 9a       	B[P5++] = R0;
ffa091c4:	78 61       	R0 = 0x2f (X);		/*		R0=0x2f( 47) */
ffa091c6:	28 9a       	B[P5++] = R0;
ffa091c8:	70 61       	R0 = 0x2e (X);		/*		R0=0x2e( 46) */
ffa091ca:	28 9a       	B[P5++] = R0;
ffa091cc:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa091ce:	28 9a       	B[P5++] = R0;
ffa091d0:	88 61       	R0 = 0x31 (X);		/*		R0=0x31( 49) */
ffa091d2:	28 9a       	B[P5++] = R0;
ffa091d4:	90 61       	R0 = 0x32 (X);		/*		R0=0x32( 50) */
ffa091d6:	28 9a       	B[P5++] = R0;
ffa091d8:	88 61       	R0 = 0x31 (X);		/*		R0=0x31( 49) */
ffa091da:	28 9a       	B[P5++] = R0;
ffa091dc:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa091de:	28 9a       	B[P5++] = R0;
ffa091e0:	70 61       	R0 = 0x2e (X);		/*		R0=0x2e( 46) */
ffa091e2:	28 9a       	B[P5++] = R0;
ffa091e4:	78 61       	R0 = 0x2f (X);		/*		R0=0x2f( 47) */
ffa091e6:	28 9a       	B[P5++] = R0;
ffa091e8:	70 61       	R0 = 0x2e (X);		/*		R0=0x2e( 46) */
ffa091ea:	28 9a       	B[P5++] = R0;
ffa091ec:	98 61       	R0 = 0x33 (X);		/*		R0=0x33( 51) */
ffa091ee:	28 9a       	B[P5++] = R0;
ffa091f0:	a0 61       	R0 = 0x34 (X);		/*		R0=0x34( 52) */
ffa091f2:	28 9a       	B[P5++] = R0;
ffa091f4:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa091f6:	28 9a       	B[P5++] = R0;
ffa091f8:	b0 61       	R0 = 0x36 (X);		/*		R0=0x36( 54) */
ffa091fa:	28 9a       	B[P5++] = R0;
ffa091fc:	b8 61       	R0 = 0x37 (X);		/*		R0=0x37( 55) */
ffa091fe:	28 9a       	B[P5++] = R0;
ffa09200:	c0 61       	R0 = 0x38 (X);		/*		R0=0x38( 56) */
ffa09202:	28 9a       	B[P5++] = R0;
ffa09204:	c8 61       	R0 = 0x39 (X);		/*		R0=0x39( 57) */
ffa09206:	28 9a       	B[P5++] = R0;
ffa09208:	c0 61       	R0 = 0x38 (X);		/*		R0=0x38( 56) */
ffa0920a:	28 9a       	B[P5++] = R0;
ffa0920c:	d0 61       	R0 = 0x3a (X);		/*		R0=0x3a( 58) */
ffa0920e:	28 9a       	B[P5++] = R0;
ffa09210:	d8 61       	R0 = 0x3b (X);		/*		R0=0x3b( 59) */
ffa09212:	28 9a       	B[P5++] = R0;
ffa09214:	e0 61       	R0 = 0x3c (X);		/*		R0=0x3c( 60) */
ffa09216:	28 9a       	B[P5++] = R0;
ffa09218:	d8 61       	R0 = 0x3b (X);		/*		R0=0x3b( 59) */
ffa0921a:	28 9a       	B[P5++] = R0;
ffa0921c:	b8 61       	R0 = 0x37 (X);		/*		R0=0x37( 55) */
ffa0921e:	28 9a       	B[P5++] = R0;
ffa09220:	c0 61       	R0 = 0x38 (X);		/*		R0=0x38( 56) */
ffa09222:	28 9a       	B[P5++] = R0;
ffa09224:	e8 61       	R0 = 0x3d (X);		/*		R0=0x3d( 61) */
ffa09226:	28 9a       	B[P5++] = R0;
ffa09228:	f0 61       	R0 = 0x3e (X);		/*		R0=0x3e( 62) */
ffa0922a:	28 9a       	B[P5++] = R0;
ffa0922c:	f8 61       	R0 = 0x3f (X);		/*		R0=0x3f( 63) */
ffa0922e:	28 9a       	B[P5++] = R0;
ffa09230:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa09234:	28 9a       	B[P5++] = R0;
ffa09236:	20 e1 41 00 	R0 = 0x41 (X);		/*		R0=0x41( 65) */
ffa0923a:	28 9a       	B[P5++] = R0;
ffa0923c:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa09240:	28 9a       	B[P5++] = R0;
ffa09242:	20 e1 42 00 	R0 = 0x42 (X);		/*		R0=0x42( 66) */
ffa09246:	28 9a       	B[P5++] = R0;
ffa09248:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa0924c:	28 9a       	B[P5++] = R0;
ffa0924e:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa09252:	28 9a       	B[P5++] = R0;
ffa09254:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa09258:	28 9a       	B[P5++] = R0;
ffa0925a:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa0925e:	28 9a       	B[P5++] = R0;
ffa09260:	20 e1 46 00 	R0 = 0x46 (X);		/*		R0=0x46( 70) */
ffa09264:	28 9a       	B[P5++] = R0;
ffa09266:	20 e1 47 00 	R0 = 0x47 (X);		/*		R0=0x47( 71) */
ffa0926a:	28 9a       	B[P5++] = R0;
ffa0926c:	20 e1 48 00 	R0 = 0x48 (X);		/*		R0=0x48( 72) */
ffa09270:	28 9a       	B[P5++] = R0;
ffa09272:	20 e1 42 00 	R0 = 0x42 (X);		/*		R0=0x42( 66) */
ffa09276:	28 9a       	B[P5++] = R0;
ffa09278:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa0927c:	28 9a       	B[P5++] = R0;
ffa0927e:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa09282:	28 9a       	B[P5++] = R0;
ffa09284:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa09288:	28 9a       	B[P5++] = R0;
ffa0928a:	98 61       	R0 = 0x33 (X);		/*		R0=0x33( 51) */
ffa0928c:	28 9a       	B[P5++] = R0;
ffa0928e:	a0 61       	R0 = 0x34 (X);		/*		R0=0x34( 52) */
ffa09290:	28 9a       	B[P5++] = R0;
ffa09292:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa09294:	28 9a       	B[P5++] = R0;
ffa09296:	a0 61       	R0 = 0x34 (X);		/*		R0=0x34( 52) */
ffa09298:	28 9a       	B[P5++] = R0;
ffa0929a:	20 e1 49 00 	R0 = 0x49 (X);		/*		R0=0x49( 73) */
ffa0929e:	28 9a       	B[P5++] = R0;
ffa092a0:	20 e1 4a 00 	R0 = 0x4a (X);		/*		R0=0x4a( 74) */
ffa092a4:	28 9a       	B[P5++] = R0;
ffa092a6:	20 e1 4b 00 	R0 = 0x4b (X);		/*		R0=0x4b( 75) */
ffa092aa:	28 9a       	B[P5++] = R0;
ffa092ac:	c0 61       	R0 = 0x38 (X);		/*		R0=0x38( 56) */
ffa092ae:	28 9a       	B[P5++] = R0;
ffa092b0:	d0 61       	R0 = 0x3a (X);		/*		R0=0x3a( 58) */
ffa092b2:	28 9a       	B[P5++] = R0;
ffa092b4:	d8 61       	R0 = 0x3b (X);		/*		R0=0x3b( 59) */
ffa092b6:	28 9a       	B[P5++] = R0;
ffa092b8:	e0 61       	R0 = 0x3c (X);		/*		R0=0x3c( 60) */
ffa092ba:	28 9a       	B[P5++] = R0;
ffa092bc:	d8 61       	R0 = 0x3b (X);		/*		R0=0x3b( 59) */
ffa092be:	28 9a       	B[P5++] = R0;
ffa092c0:	b8 61       	R0 = 0x37 (X);		/*		R0=0x37( 55) */
ffa092c2:	28 9a       	B[P5++] = R0;
ffa092c4:	c0 61       	R0 = 0x38 (X);		/*		R0=0x38( 56) */
ffa092c6:	28 9a       	B[P5++] = R0;
ffa092c8:	c8 61       	R0 = 0x39 (X);		/*		R0=0x39( 57) */
ffa092ca:	28 9a       	B[P5++] = R0;
ffa092cc:	20 e1 4c 00 	R0 = 0x4c (X);		/*		R0=0x4c( 76) */
ffa092d0:	28 9a       	B[P5++] = R0;
ffa092d2:	20 e1 4d 00 	R0 = 0x4d (X);		/*		R0=0x4d( 77) */
ffa092d6:	28 9a       	B[P5++] = R0;
ffa092d8:	20 e1 4e 00 	R0 = 0x4e (X);		/*		R0=0x4e( 78) */
ffa092dc:	28 9a       	B[P5++] = R0;
ffa092de:	20 e1 4f 00 	R0 = 0x4f (X);		/*		R0=0x4f( 79) */
ffa092e2:	28 9a       	B[P5++] = R0;
ffa092e4:	20 e1 4e 00 	R0 = 0x4e (X);		/*		R0=0x4e( 78) */
ffa092e8:	28 9a       	B[P5++] = R0;
ffa092ea:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa092ee:	28 9a       	B[P5++] = R0;
ffa092f0:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa092f4:	28 9a       	B[P5++] = R0;
ffa092f6:	20 e1 52 00 	R0 = 0x52 (X);		/*		R0=0x52( 82) */
ffa092fa:	28 9a       	B[P5++] = R0;
ffa092fc:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa09300:	28 9a       	B[P5++] = R0;
ffa09302:	20 e1 53 00 	R0 = 0x53 (X);		/*		R0=0x53( 83) */
ffa09306:	28 9a       	B[P5++] = R0;
ffa09308:	20 e1 54 00 	R0 = 0x54 (X);		/*		R0=0x54( 84) */
ffa0930c:	28 9a       	B[P5++] = R0;
ffa0930e:	20 e1 55 00 	R0 = 0x55 (X);		/*		R0=0x55( 85) */
ffa09312:	28 9a       	B[P5++] = R0;
ffa09314:	20 e1 56 00 	R0 = 0x56 (X);		/*		R0=0x56( 86) */
ffa09318:	28 9a       	B[P5++] = R0;
ffa0931a:	20 e1 57 00 	R0 = 0x57 (X);		/*		R0=0x57( 87) */
ffa0931e:	28 9a       	B[P5++] = R0;
ffa09320:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa09324:	28 9a       	B[P5++] = R0;
ffa09326:	20 e1 52 00 	R0 = 0x52 (X);		/*		R0=0x52( 82) */
ffa0932a:	28 9a       	B[P5++] = R0;
ffa0932c:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa09330:	28 9a       	B[P5++] = R0;
ffa09332:	20 e1 58 00 	R0 = 0x58 (X);		/*		R0=0x58( 88) */
ffa09336:	28 9a       	B[P5++] = R0;
ffa09338:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa0933c:	28 9a       	B[P5++] = R0;
ffa0933e:	20 e1 5a 00 	R0 = 0x5a (X);		/*		R0=0x5a( 90) */
ffa09342:	28 9a       	B[P5++] = R0;
ffa09344:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa09348:	28 9a       	B[P5++] = R0;
ffa0934a:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa0934e:	28 9a       	B[P5++] = R0;
ffa09350:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa09354:	28 9a       	B[P5++] = R0;
ffa09356:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa0935a:	28 9a       	B[P5++] = R0;
ffa0935c:	20 e1 5e 00 	R0 = 0x5e (X);		/*		R0=0x5e( 94) */
ffa09360:	28 9a       	B[P5++] = R0;
ffa09362:	20 e1 5f 00 	R0 = 0x5f (X);		/*		R0=0x5f( 95) */
ffa09366:	28 9a       	B[P5++] = R0;
ffa09368:	20 e1 60 00 	R0 = 0x60 (X);		/*		R0=0x60( 96) */
ffa0936c:	28 9a       	B[P5++] = R0;
ffa0936e:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa09372:	28 9a       	B[P5++] = R0;
ffa09374:	20 e1 60 00 	R0 = 0x60 (X);		/*		R0=0x60( 96) */
ffa09378:	28 9a       	B[P5++] = R0;
ffa0937a:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa0937e:	28 9a       	B[P5++] = R0;
ffa09380:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa09384:	28 9a       	B[P5++] = R0;
ffa09386:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa0938a:	28 9a       	B[P5++] = R0;
ffa0938c:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa09390:	28 9a       	B[P5++] = R0;
ffa09392:	20 e1 62 00 	R0 = 0x62 (X);		/*		R0=0x62( 98) */
ffa09396:	28 9a       	B[P5++] = R0;
ffa09398:	20 e1 63 00 	R0 = 0x63 (X);		/*		R0=0x63( 99) */
ffa0939c:	28 9a       	B[P5++] = R0;
ffa0939e:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa093a2:	28 9a       	B[P5++] = R0;
ffa093a4:	20 e1 63 00 	R0 = 0x63 (X);		/*		R0=0x63( 99) */
ffa093a8:	28 9a       	B[P5++] = R0;
ffa093aa:	20 e1 65 00 	R0 = 0x65 (X);		/*		R0=0x65(101) */
ffa093ae:	28 9a       	B[P5++] = R0;
ffa093b0:	20 e1 66 00 	R0 = 0x66 (X);		/*		R0=0x66(102) */
ffa093b4:	28 9a       	B[P5++] = R0;
ffa093b6:	20 e1 67 00 	R0 = 0x67 (X);		/*		R0=0x67(103) */
ffa093ba:	28 9a       	B[P5++] = R0;
ffa093bc:	20 e1 66 00 	R0 = 0x66 (X);		/*		R0=0x66(102) */
ffa093c0:	28 9a       	B[P5++] = R0;
ffa093c2:	20 e1 68 00 	R0 = 0x68 (X);		/*		R0=0x68(104) */
ffa093c6:	28 9a       	B[P5++] = R0;
ffa093c8:	20 e1 69 00 	R0 = 0x69 (X);		/*		R0=0x69(105) */
ffa093cc:	28 9a       	B[P5++] = R0;
ffa093ce:	20 e1 6a 00 	R0 = 0x6a (X);		/*		R0=0x6a(106) */
ffa093d2:	28 9a       	B[P5++] = R0;
ffa093d4:	20 e1 6b 00 	R0 = 0x6b (X);		/*		R0=0x6b(107) */
ffa093d8:	28 9a       	B[P5++] = R0;
ffa093da:	20 e1 6c 00 	R0 = 0x6c (X);		/*		R0=0x6c(108) */
ffa093de:	28 9a       	B[P5++] = R0;
ffa093e0:	20 e1 6d 00 	R0 = 0x6d (X);		/*		R0=0x6d(109) */
ffa093e4:	28 9a       	B[P5++] = R0;
ffa093e6:	20 e1 67 00 	R0 = 0x67 (X);		/*		R0=0x67(103) */
ffa093ea:	28 9a       	B[P5++] = R0;
ffa093ec:	20 e1 66 00 	R0 = 0x66 (X);		/*		R0=0x66(102) */
ffa093f0:	28 9a       	B[P5++] = R0;
ffa093f2:	20 e1 58 00 	R0 = 0x58 (X);		/*		R0=0x58( 88) */
ffa093f6:	28 9a       	B[P5++] = R0;
ffa093f8:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa093fc:	28 9a       	B[P5++] = R0;
ffa093fe:	20 e1 5a 00 	R0 = 0x5a (X);		/*		R0=0x5a( 90) */
ffa09402:	28 9a       	B[P5++] = R0;
ffa09404:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa09408:	28 9a       	B[P5++] = R0;
ffa0940a:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa0940e:	28 9a       	B[P5++] = R0;
ffa09410:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa09414:	28 9a       	B[P5++] = R0;
ffa09416:	20 e1 6e 00 	R0 = 0x6e (X);		/*		R0=0x6e(110) */
ffa0941a:	28 9a       	B[P5++] = R0;
ffa0941c:	20 e1 6f 00 	R0 = 0x6f (X);		/*		R0=0x6f(111) */
ffa09420:	28 9a       	B[P5++] = R0;
ffa09422:	20 e1 70 00 	R0 = 0x70 (X);		/*		R0=0x70(112) */
ffa09426:	28 9a       	B[P5++] = R0;
ffa09428:	20 e1 60 00 	R0 = 0x60 (X);		/*		R0=0x60( 96) */
ffa0942c:	28 9a       	B[P5++] = R0;
ffa0942e:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa09432:	28 9a       	B[P5++] = R0;
ffa09434:	20 e1 60 00 	R0 = 0x60 (X);		/*		R0=0x60( 96) */
ffa09438:	28 9a       	B[P5++] = R0;
ffa0943a:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa0943e:	28 9a       	B[P5++] = R0;
ffa09440:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa09444:	28 9a       	B[P5++] = R0;
ffa09446:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa0944a:	28 9a       	B[P5++] = R0;
ffa0944c:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa09450:	28 9a       	B[P5++] = R0;
ffa09452:	20 e1 71 00 	R0 = 0x71 (X);		/*		R0=0x71(113) */
ffa09456:	28 9a       	B[P5++] = R0;
ffa09458:	20 e1 72 00 	R0 = 0x72 (X);		/*		R0=0x72(114) */
ffa0945c:	28 9a       	B[P5++] = R0;
ffa0945e:	20 e1 73 00 	R0 = 0x73 (X);		/*		R0=0x73(115) */
ffa09462:	28 9a       	B[P5++] = R0;
ffa09464:	20 e1 74 00 	R0 = 0x74 (X);		/*		R0=0x74(116) */
ffa09468:	28 9a       	B[P5++] = R0;
ffa0946a:	20 e1 75 00 	R0 = 0x75 (X);		/*		R0=0x75(117) */
ffa0946e:	28 9a       	B[P5++] = R0;
ffa09470:	20 e1 76 00 	R0 = 0x76 (X);		/*		R0=0x76(118) */
ffa09474:	28 9a       	B[P5++] = R0;
ffa09476:	20 e1 77 00 	R0 = 0x77 (X);		/*		R0=0x77(119) */
ffa0947a:	28 9a       	B[P5++] = R0;
ffa0947c:	20 e1 76 00 	R0 = 0x76 (X);		/*		R0=0x76(118) */
ffa09480:	28 9a       	B[P5++] = R0;
ffa09482:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa09486:	28 9a       	B[P5++] = R0;
ffa09488:	20 e1 79 00 	R0 = 0x79 (X);		/*		R0=0x79(121) */
ffa0948c:	28 9a       	B[P5++] = R0;
ffa0948e:	20 e1 7a 00 	R0 = 0x7a (X);		/*		R0=0x7a(122) */
ffa09492:	28 9a       	B[P5++] = R0;
ffa09494:	20 e1 79 00 	R0 = 0x79 (X);		/*		R0=0x79(121) */
ffa09498:	28 9a       	B[P5++] = R0;
ffa0949a:	20 e1 7b 00 	R0 = 0x7b (X);		/*		R0=0x7b(123) */
ffa0949e:	28 9a       	B[P5++] = R0;
ffa094a0:	20 e1 7c 00 	R0 = 0x7c (X);		/*		R0=0x7c(124) */
ffa094a4:	28 9a       	B[P5++] = R0;
ffa094a6:	20 e1 7d 00 	R0 = 0x7d (X);		/*		R0=0x7d(125) */
ffa094aa:	28 9a       	B[P5++] = R0;
ffa094ac:	20 e1 76 00 	R0 = 0x76 (X);		/*		R0=0x76(118) */
ffa094b0:	28 9a       	B[P5++] = R0;
ffa094b2:	20 e1 7e 00 	R0 = 0x7e (X);		/*		R0=0x7e(126) */
ffa094b6:	28 9a       	B[P5++] = R0;
ffa094b8:	20 e1 7f 00 	R0 = 0x7f (X);		/*		R0=0x7f(127) */
ffa094bc:	28 9a       	B[P5++] = R0;
ffa094be:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa094c0:	28 9a       	B[P5++] = R0;
ffa094c2:	20 e1 7f 00 	R0 = 0x7f (X);		/*		R0=0x7f(127) */
ffa094c6:	28 9a       	B[P5++] = R0;
ffa094c8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa094ca:	28 9a       	B[P5++] = R0;
ffa094cc:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa094ce:	28 9a       	B[P5++] = R0;
ffa094d0:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa094d2:	28 9a       	B[P5++] = R0;
ffa094d4:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa094d6:	28 9a       	B[P5++] = R0;
ffa094d8:	28 60       	R0 = 0x5 (X);		/*		R0=0x5(  5) */
ffa094da:	28 9a       	B[P5++] = R0;
ffa094dc:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa094de:	28 9a       	B[P5++] = R0;
ffa094e0:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa094e2:	28 9a       	B[P5++] = R0;
ffa094e4:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa094e6:	28 9a       	B[P5++] = R0;
ffa094e8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa094ea:	28 9a       	B[P5++] = R0;
ffa094ec:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa094ee:	28 9a       	B[P5++] = R0;
ffa094f0:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa094f2:	28 9a       	B[P5++] = R0;
ffa094f4:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa094f6:	28 9a       	B[P5++] = R0;
ffa094f8:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa094fa:	28 9a       	B[P5++] = R0;
ffa094fc:	48 60       	R0 = 0x9 (X);		/*		R0=0x9(  9) */
ffa094fe:	28 9a       	B[P5++] = R0;
ffa09500:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa09502:	28 9a       	B[P5++] = R0;
ffa09504:	58 60       	R0 = 0xb (X);		/*		R0=0xb( 11) */
ffa09506:	28 9a       	B[P5++] = R0;
ffa09508:	60 60       	R0 = 0xc (X);		/*		R0=0xc( 12) */
ffa0950a:	28 9a       	B[P5++] = R0;
ffa0950c:	68 60       	R0 = 0xd (X);		/*		R0=0xd( 13) */
ffa0950e:	28 9a       	B[P5++] = R0;
ffa09510:	70 60       	R0 = 0xe (X);		/*		R0=0xe( 14) */
ffa09512:	28 9a       	B[P5++] = R0;
ffa09514:	68 60       	R0 = 0xd (X);		/*		R0=0xd( 13) */
ffa09516:	28 9a       	B[P5++] = R0;
ffa09518:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa0951a:	28 9a       	B[P5++] = R0;
ffa0951c:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa0951e:	28 9a       	B[P5++] = R0;
ffa09520:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa09522:	28 9a       	B[P5++] = R0;
ffa09524:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa09526:	28 9a       	B[P5++] = R0;
ffa09528:	60 60       	R0 = 0xc (X);		/*		R0=0xc( 12) */
ffa0952a:	28 9a       	B[P5++] = R0;
ffa0952c:	90 60       	R0 = 0x12 (X);		/*		R0=0x12( 18) */
ffa0952e:	28 9a       	B[P5++] = R0;
ffa09530:	98 60       	R0 = 0x13 (X);		/*		R0=0x13( 19) */
ffa09532:	28 9a       	B[P5++] = R0;
ffa09534:	a0 60       	R0 = 0x14 (X);		/*		R0=0x14( 20) */
ffa09536:	28 9a       	B[P5++] = R0;
ffa09538:	20 e1 7e 00 	R0 = 0x7e (X);		/*		R0=0x7e(126) */
ffa0953c:	28 9a       	B[P5++] = R0;
ffa0953e:	20 e1 7f 00 	R0 = 0x7f (X);		/*		R0=0x7f(127) */
ffa09542:	28 9a       	B[P5++] = R0;
ffa09544:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09546:	28 9a       	B[P5++] = R0;
ffa09548:	20 e1 7f 00 	R0 = 0x7f (X);		/*		R0=0x7f(127) */
ffa0954c:	28 9a       	B[P5++] = R0;
ffa0954e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09550:	28 9a       	B[P5++] = R0;
ffa09552:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09554:	28 9a       	B[P5++] = R0;
ffa09556:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa09558:	28 9a       	B[P5++] = R0;
ffa0955a:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0955c:	28 9a       	B[P5++] = R0;
ffa0955e:	a8 60       	R0 = 0x15 (X);		/*		R0=0x15( 21) */
ffa09560:	28 9a       	B[P5++] = R0;
ffa09562:	b0 60       	R0 = 0x16 (X);		/*		R0=0x16( 22) */
ffa09564:	28 9a       	B[P5++] = R0;
ffa09566:	b8 60       	R0 = 0x17 (X);		/*		R0=0x17( 23) */
ffa09568:	28 9a       	B[P5++] = R0;
ffa0956a:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa0956c:	28 9a       	B[P5++] = R0;
ffa0956e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09570:	28 9a       	B[P5++] = R0;
ffa09572:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09574:	28 9a       	B[P5++] = R0;
ffa09576:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa09578:	28 9a       	B[P5++] = R0;
ffa0957a:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0957c:	28 9a       	B[P5++] = R0;
ffa0957e:	20 e1 4d 00 	R0 = 0x4d (X);		/*		R0=0x4d( 77) */
ffa09582:	28 9a       	B[P5++] = R0;
ffa09584:	20 e1 4e 00 	R0 = 0x4e (X);		/*		R0=0x4e( 78) */
ffa09588:	28 9a       	B[P5++] = R0;
ffa0958a:	20 e1 4f 00 	R0 = 0x4f (X);		/*		R0=0x4f( 79) */
ffa0958e:	28 9a       	B[P5++] = R0;
ffa09590:	c0 60       	R0 = 0x18 (X);		/*		R0=0x18( 24) */
ffa09592:	28 9a       	B[P5++] = R0;
ffa09594:	c8 60       	R0 = 0x19 (X);		/*		R0=0x19( 25) */
ffa09596:	28 9a       	B[P5++] = R0;
ffa09598:	d0 60       	R0 = 0x1a (X);		/*		R0=0x1a( 26) */
ffa0959a:	28 9a       	B[P5++] = R0;
ffa0959c:	20 e1 52 00 	R0 = 0x52 (X);		/*		R0=0x52( 82) */
ffa095a0:	28 9a       	B[P5++] = R0;
ffa095a2:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa095a6:	28 9a       	B[P5++] = R0;
ffa095a8:	20 e1 53 00 	R0 = 0x53 (X);		/*		R0=0x53( 83) */
ffa095ac:	28 9a       	B[P5++] = R0;
ffa095ae:	20 e1 54 00 	R0 = 0x54 (X);		/*		R0=0x54( 84) */
ffa095b2:	28 9a       	B[P5++] = R0;
ffa095b4:	20 e1 55 00 	R0 = 0x55 (X);		/*		R0=0x55( 85) */
ffa095b8:	28 9a       	B[P5++] = R0;
ffa095ba:	20 e1 54 00 	R0 = 0x54 (X);		/*		R0=0x54( 84) */
ffa095be:	28 9a       	B[P5++] = R0;
ffa095c0:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa095c4:	28 9a       	B[P5++] = R0;
ffa095c6:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa095ca:	28 9a       	B[P5++] = R0;
ffa095cc:	d8 60       	R0 = 0x1b (X);		/*		R0=0x1b( 27) */
ffa095ce:	28 9a       	B[P5++] = R0;
ffa095d0:	e0 60       	R0 = 0x1c (X);		/*		R0=0x1c( 28) */
ffa095d2:	28 9a       	B[P5++] = R0;
ffa095d4:	e8 60       	R0 = 0x1d (X);		/*		R0=0x1d( 29) */
ffa095d6:	28 9a       	B[P5++] = R0;
ffa095d8:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa095dc:	28 9a       	B[P5++] = R0;
ffa095de:	20 e1 5a 00 	R0 = 0x5a (X);		/*		R0=0x5a( 90) */
ffa095e2:	28 9a       	B[P5++] = R0;
ffa095e4:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa095e8:	28 9a       	B[P5++] = R0;
ffa095ea:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa095ee:	28 9a       	B[P5++] = R0;
ffa095f0:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa095f4:	28 9a       	B[P5++] = R0;
ffa095f6:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa095fa:	28 9a       	B[P5++] = R0;
ffa095fc:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa09600:	28 9a       	B[P5++] = R0;
ffa09602:	20 e1 5f 00 	R0 = 0x5f (X);		/*		R0=0x5f( 95) */
ffa09606:	28 9a       	B[P5++] = R0;
ffa09608:	f0 60       	R0 = 0x1e (X);		/*		R0=0x1e( 30) */
ffa0960a:	28 9a       	B[P5++] = R0;
ffa0960c:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa0960e:	28 9a       	B[P5++] = R0;
ffa09610:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa09612:	28 9a       	B[P5++] = R0;
ffa09614:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa09618:	28 9a       	B[P5++] = R0;
ffa0961a:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa0961e:	28 9a       	B[P5++] = R0;
ffa09620:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa09624:	28 9a       	B[P5++] = R0;
ffa09626:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa0962a:	28 9a       	B[P5++] = R0;
ffa0962c:	20 e1 62 00 	R0 = 0x62 (X);		/*		R0=0x62( 98) */
ffa09630:	28 9a       	B[P5++] = R0;
ffa09632:	20 e1 63 00 	R0 = 0x63 (X);		/*		R0=0x63( 99) */
ffa09636:	28 9a       	B[P5++] = R0;
ffa09638:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa0963c:	28 9a       	B[P5++] = R0;
ffa0963e:	20 e1 63 00 	R0 = 0x63 (X);		/*		R0=0x63( 99) */
ffa09642:	28 9a       	B[P5++] = R0;
ffa09644:	08 61       	R0 = 0x21 (X);		/*		R0=0x21( 33) */
ffa09646:	28 9a       	B[P5++] = R0;
ffa09648:	10 61       	R0 = 0x22 (X);		/*		R0=0x22( 34) */
ffa0964a:	28 9a       	B[P5++] = R0;
ffa0964c:	18 61       	R0 = 0x23 (X);		/*		R0=0x23( 35) */
ffa0964e:	28 9a       	B[P5++] = R0;
ffa09650:	20 e1 66 00 	R0 = 0x66 (X);		/*		R0=0x66(102) */
ffa09654:	28 9a       	B[P5++] = R0;
ffa09656:	20 e1 68 00 	R0 = 0x68 (X);		/*		R0=0x68(104) */
ffa0965a:	28 9a       	B[P5++] = R0;
ffa0965c:	20 e1 69 00 	R0 = 0x69 (X);		/*		R0=0x69(105) */
ffa09660:	28 9a       	B[P5++] = R0;
ffa09662:	20 e1 6a 00 	R0 = 0x6a (X);		/*		R0=0x6a(106) */
ffa09666:	28 9a       	B[P5++] = R0;
ffa09668:	20 e1 69 00 	R0 = 0x69 (X);		/*		R0=0x69(105) */
ffa0966c:	28 9a       	B[P5++] = R0;
ffa0966e:	20 e1 65 00 	R0 = 0x65 (X);		/*		R0=0x65(101) */
ffa09672:	28 9a       	B[P5++] = R0;
ffa09674:	20 e1 66 00 	R0 = 0x66 (X);		/*		R0=0x66(102) */
ffa09678:	28 9a       	B[P5++] = R0;
ffa0967a:	20 e1 67 00 	R0 = 0x67 (X);		/*		R0=0x67(103) */
ffa0967e:	28 9a       	B[P5++] = R0;
ffa09680:	20 61       	R0 = 0x24 (X);		/*		R0=0x24( 36) */
ffa09682:	28 9a       	B[P5++] = R0;
ffa09684:	28 61       	R0 = 0x25 (X);		/*		R0=0x25( 37) */
ffa09686:	28 9a       	B[P5++] = R0;
ffa09688:	30 61       	R0 = 0x26 (X);		/*		R0=0x26( 38) */
ffa0968a:	28 9a       	B[P5++] = R0;
ffa0968c:	20 e1 5a 00 	R0 = 0x5a (X);		/*		R0=0x5a( 90) */
ffa09690:	28 9a       	B[P5++] = R0;
ffa09692:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa09696:	28 9a       	B[P5++] = R0;
ffa09698:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa0969c:	28 9a       	B[P5++] = R0;
ffa0969e:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa096a2:	28 9a       	B[P5++] = R0;
ffa096a4:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa096a8:	28 9a       	B[P5++] = R0;
ffa096aa:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa096ae:	28 9a       	B[P5++] = R0;
ffa096b0:	20 e1 5f 00 	R0 = 0x5f (X);		/*		R0=0x5f( 95) */
ffa096b4:	28 9a       	B[P5++] = R0;
ffa096b6:	20 e1 60 00 	R0 = 0x60 (X);		/*		R0=0x60( 96) */
ffa096ba:	28 9a       	B[P5++] = R0;
ffa096bc:	38 61       	R0 = 0x27 (X);		/*		R0=0x27( 39) */
ffa096be:	28 9a       	B[P5++] = R0;
ffa096c0:	40 61       	R0 = 0x28 (X);		/*		R0=0x28( 40) */
ffa096c2:	28 9a       	B[P5++] = R0;
ffa096c4:	48 61       	R0 = 0x29 (X);		/*		R0=0x29( 41) */
ffa096c6:	28 9a       	B[P5++] = R0;
ffa096c8:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa096cc:	28 9a       	B[P5++] = R0;
ffa096ce:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa096d2:	28 9a       	B[P5++] = R0;
ffa096d4:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa096d8:	28 9a       	B[P5++] = R0;
ffa096da:	0d e1 00 62 	P5.L = 0x6200;		/* (25088)	P5=0xff806200 */
ffa096de:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff806200 */
ffa096e2:	00 e1 00 00 	R0.L = 0x0;		/* (  0)	R0=0x0(  0) */
ffa096e6:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x0(  0) */
ffa096ea:	28 92       	[P5++] = R0;
ffa096ec:	00 e1 80 00 	R0.L = 0x80;		/* (128)	R0=0x80(128) */
ffa096f0:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x80(128) */
ffa096f4:	28 92       	[P5++] = R0;
ffa096f6:	00 e1 00 80 	R0.L = 0x8000;		/* (-32768)	R0=0x8000(32768) */
ffa096fa:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x8000(32768) */
ffa096fe:	28 92       	[P5++] = R0;
ffa09700:	00 e1 80 80 	R0.L = 0x8080;		/* (-32640)	R0=0x8080(32896) */
ffa09704:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x8080(32896) */
ffa09708:	28 92       	[P5++] = R0;
ffa0970a:	00 e1 00 00 	R0.L = 0x0;		/* (  0)	R0=0x0(  0) */
ffa0970e:	40 e1 80 00 	R0.H = 0x80;		/* (128)	R0=0x800000(8388608) */
ffa09712:	28 92       	[P5++] = R0;
ffa09714:	00 e1 80 00 	R0.L = 0x80;		/* (128)	R0=0x800080(8388736) */
ffa09718:	40 e1 80 00 	R0.H = 0x80;		/* (128)	R0=0x800080(8388736) */
ffa0971c:	28 92       	[P5++] = R0;
ffa0971e:	00 e1 00 80 	R0.L = 0x8000;		/* (-32768)	R0=0x808000(8421376) */
ffa09722:	40 e1 80 00 	R0.H = 0x80;		/* (128)	R0=0x808000(8421376) */
ffa09726:	28 92       	[P5++] = R0;
ffa09728:	00 e1 80 80 	R0.L = 0x8080;		/* (-32640)	R0=0x808080(8421504) */
ffa0972c:	40 e1 80 00 	R0.H = 0x80;		/* (128)	R0=0x808080(8421504) */
ffa09730:	28 92       	[P5++] = R0;
ffa09732:	00 e1 00 00 	R0.L = 0x0;		/* (  0)	R0=0x800000(8388608) */
ffa09736:	40 e1 00 80 	R0.H = 0x8000;		/* (-32768)	R0=0x80000000(-2147483648) */
ffa0973a:	28 92       	[P5++] = R0;
ffa0973c:	00 e1 80 00 	R0.L = 0x80;		/* (128)	R0=0x80000080(-2147483520) */
ffa09740:	40 e1 00 80 	R0.H = 0x8000;		/* (-32768)	R0=0x80000080(-2147483520) */
ffa09744:	28 92       	[P5++] = R0;
ffa09746:	00 e1 00 80 	R0.L = 0x8000;		/* (-32768)	R0=0x80008000(-2147450880) */
ffa0974a:	40 e1 00 80 	R0.H = 0x8000;		/* (-32768)	R0=0x80008000(-2147450880) */
ffa0974e:	28 92       	[P5++] = R0;
ffa09750:	00 e1 80 80 	R0.L = 0x8080;		/* (-32640)	R0=0x80008080(-2147450752) */
ffa09754:	40 e1 00 80 	R0.H = 0x8000;		/* (-32768)	R0=0x80008080(-2147450752) */
ffa09758:	28 92       	[P5++] = R0;
ffa0975a:	00 e1 00 00 	R0.L = 0x0;		/* (  0)	R0=0x80000000(-2147483648) */
ffa0975e:	40 e1 80 80 	R0.H = 0x8080;		/* (-32640)	R0=0x80800000(-2139095040) */
ffa09762:	28 92       	[P5++] = R0;
ffa09764:	00 e1 80 00 	R0.L = 0x80;		/* (128)	R0=0x80800080(-2139094912) */
ffa09768:	40 e1 80 80 	R0.H = 0x8080;		/* (-32640)	R0=0x80800080(-2139094912) */
ffa0976c:	28 92       	[P5++] = R0;
ffa0976e:	00 e1 00 80 	R0.L = 0x8000;		/* (-32768)	R0=0x80808000(-2139062272) */
ffa09772:	40 e1 80 80 	R0.H = 0x8080;		/* (-32640)	R0=0x80808000(-2139062272) */
ffa09776:	28 92       	[P5++] = R0;
ffa09778:	00 e1 80 80 	R0.L = 0x8080;		/* (-32640)	R0=0x80808080(-2139062144) */
ffa0977c:	40 e1 80 80 	R0.H = 0x8080;		/* (-32640)	R0=0x80808080(-2139062144) */
ffa09780:	28 92       	[P5++] = R0;
ffa09782:	10 00       	RTS;

ffa09784 <___divsi3>:
ffa09784:	c8 58       	R3 = R0 ^ R1;
ffa09786:	07 c4 00 80 	R0 = ABS R0;
ffa0978a:	18 03       	CC = V;
ffa0978c:	82 c6 fb c7 	R3 = ROT R3 BY -0x1;
ffa09790:	07 c4 08 82 	R1 = ABS R1;
ffa09794:	88 08       	CC = R0 < R1;
ffa09796:	76 18       	IF CC JUMP 0xffa09882 <___divsi3+0xfe>;
ffa09798:	82 c6 89 85 	R2 = R1 >> 0xf;
ffa0979c:	0a 02       	CC = R2;
ffa0979e:	1e 18       	IF CC JUMP 0xffa097da <___divsi3+0x56>;
ffa097a0:	82 c6 81 84 	R2 = R1 << 0x10;
ffa097a4:	02 09       	CC = R2 <= R0;
ffa097a6:	1a 18       	IF CC JUMP 0xffa097da <___divsi3+0x56>;
ffa097a8:	48 42       	DIVS (R0, R1);
ffa097aa:	08 42       	DIVQ (R0, R1);
ffa097ac:	08 42       	DIVQ (R0, R1);
ffa097ae:	08 42       	DIVQ (R0, R1);
ffa097b0:	08 42       	DIVQ (R0, R1);
ffa097b2:	08 42       	DIVQ (R0, R1);
ffa097b4:	08 42       	DIVQ (R0, R1);
ffa097b6:	08 42       	DIVQ (R0, R1);
ffa097b8:	08 42       	DIVQ (R0, R1);
ffa097ba:	08 42       	DIVQ (R0, R1);
ffa097bc:	08 42       	DIVQ (R0, R1);
ffa097be:	08 42       	DIVQ (R0, R1);
ffa097c0:	08 42       	DIVQ (R0, R1);
ffa097c2:	08 42       	DIVQ (R0, R1);
ffa097c4:	08 42       	DIVQ (R0, R1);
ffa097c6:	08 42       	DIVQ (R0, R1);
ffa097c8:	08 42       	DIVQ (R0, R1);
ffa097ca:	c0 42       	R0 = R0.L (Z);
ffa097cc:	82 c6 0b 83 	R1 = R3 >> 0x1f;
ffa097d0:	08 50       	R0 = R0 + R1;
ffa097d2:	81 43       	R1 = -R0;
ffa097d4:	f3 49       	CC = BITTST (R3, 0x1e);		/* bit 30 */
ffa097d6:	01 07       	IF CC R0 = R1;
ffa097d8:	10 00       	RTS;
ffa097da:	01 0c       	CC = R1 == 0x0;
ffa097dc:	34 18       	IF CC JUMP 0xffa09844 <___divsi3+0xc0>;
ffa097de:	00 0c       	CC = R0 == 0x0;
ffa097e0:	3f 18       	IF CC JUMP 0xffa0985e <___divsi3+0xda>;
ffa097e2:	08 08       	CC = R0 == R1;
ffa097e4:	30 18       	IF CC JUMP 0xffa09844 <___divsi3+0xc0>;
ffa097e6:	09 0c       	CC = R1 == 0x1;
ffa097e8:	2e 18       	IF CC JUMP 0xffa09844 <___divsi3+0xc0>;
ffa097ea:	06 c6 01 c4 	R2.L = ONES R1;
ffa097ee:	d2 42       	R2 = R2.L (Z);
ffa097f0:	0a 0c       	CC = R2 == 0x1;
ffa097f2:	37 18       	IF CC JUMP 0xffa09860 <___divsi3+0xdc>;
ffa097f4:	f9 68       	P1 = 0x1f (X);		/*		P1=0x1f( 31) */
ffa097f6:	68 05       	[--SP] = (R7:5);
ffa097f8:	8a 43       	R2 = -R1;
ffa097fa:	42 01       	[--SP] = R2;
ffa097fc:	82 c6 08 84 	R2 = R0 << 0x1;
ffa09800:	88 59       	R6 = R0 ^ R1;
ffa09802:	82 c6 0e 8b 	R5 = R6 >> 0x1f;
ffa09806:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09808:	aa 56       	R2 = R2 | R5;
ffa0980a:	88 59       	R6 = R0 ^ R1;
ffa0980c:	a2 e0 12 10 	LSETUP(0xffa09810 <___divsi3+0x8c>, 0xffa09830 <___divsi3+0xac>) LC0 = P1;
ffa09810:	82 c6 0a 8f 	R7 = R2 >> 0x1f;
ffa09814:	82 c6 0a 84 	R2 = R2 << 0x1;
ffa09818:	82 ce 08 80 	R0 = R0 << 0x1 || R5 = [SP] || NOP;
ffa0981c:	35 91 00 00 
ffa09820:	38 56       	R0 = R0 | R7;
ffa09822:	86 0c       	CC = R6 < 0x0;
ffa09824:	29 07       	IF CC R5 = R1;
ffa09826:	28 50       	R0 = R0 + R5;
ffa09828:	88 59       	R6 = R0 ^ R1;
ffa0982a:	82 c6 0e 8b 	R5 = R6 >> 0x1f;
ffa0982e:	05 4b       	BITTGL (R5, 0x0);		/* bit  0 */
ffa09830:	aa 50       	R2 = R2 + R5;
ffa09832:	82 c6 0b 83 	R1 = R3 >> 0x1f;
ffa09836:	8a 50       	R2 = R2 + R1;
ffa09838:	f3 49       	CC = BITTST (R3, 0x1e);		/* bit 30 */
ffa0983a:	90 43       	R0 = -R2;
ffa0983c:	02 06       	IF !CC R0 = R2;
ffa0983e:	26 6c       	SP += 0x4;		/* (  4) */
ffa09840:	28 05       	(R7:5) = [SP++];
ffa09842:	10 00       	RTS;
ffa09844:	01 0c       	CC = R1 == 0x0;
ffa09846:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa09848:	0a 4e       	R2 >>= 0x1;
ffa0984a:	06 18       	IF CC JUMP 0xffa09856 <___divsi3+0xd2>;
ffa0984c:	08 08       	CC = R0 == R1;
ffa0984e:	82 e1 01 00 	R2 = 0x1 (Z);		/*		R2=0x1(  1) */
ffa09852:	02 18       	IF CC JUMP 0xffa09856 <___divsi3+0xd2>;
ffa09854:	10 30       	R2 = R0;
ffa09856:	02 30       	R0 = R2;
ffa09858:	92 43       	R2 = -R2;
ffa0985a:	f3 49       	CC = BITTST (R3, 0x1e);		/* bit 30 */
ffa0985c:	02 07       	IF CC R0 = R2;
ffa0985e:	10 00       	RTS;
ffa09860:	82 c6 08 85 	R2 = R0 >> 0x1f;
ffa09864:	81 0c       	CC = R1 < 0x0;
ffa09866:	f8 1b       	IF CC JUMP 0xffa09856 <___divsi3+0xd2>;
ffa09868:	05 c6 01 02 	R1.L = SIGNBITS R1;
ffa0986c:	c9 42       	R1 = R1.L (Z);
ffa0986e:	11 67       	R1 += -0x1e;		/* (-30) */
ffa09870:	02 c6 08 80 	R0 = SHIFT R0 BY R1.L;
ffa09874:	82 c6 0b 83 	R1 = R3 >> 0x1f;
ffa09878:	08 50       	R0 = R0 + R1;
ffa0987a:	82 43       	R2 = -R0;
ffa0987c:	f3 49       	CC = BITTST (R3, 0x1e);		/* bit 30 */
ffa0987e:	02 07       	IF CC R0 = R2;
ffa09880:	10 00       	RTS;
ffa09882:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09884:	10 00       	RTS;
	...

ffa09888 <_exception_report>:
ffa09888:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0988c:	b8 b0       	[FP + 0x8] = R0;
ffa0988e:	f9 b0       	[FP + 0xc] = R1;
ffa09890:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc07000(-4165632) */
ffa09894:	0a e1 00 07 	P2.L = 0x700;		/* (1792)	P2=0xffc00700(-4192512) */
ffa09898:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0989a:	10 97       	W[P2] = R0;
ffa0989c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00700(-4192512) */
ffa098a0:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa098a4:	20 e1 00 01 	R0 = 0x100 (X);		/*		R0=0x100(256) */
ffa098a8:	10 97       	W[P2] = R0;
ffa098aa:	24 00       	SSYNC;
ffa098ac:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa098b0:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa098b4:	20 e1 00 01 	R0 = 0x100 (X);		/*		R0=0x100(256) */
ffa098b8:	10 97       	W[P2] = R0;
ffa098ba:	24 00       	SSYNC;
ffa098bc:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa098be:	d0 bb       	[FP -0xc] = R0;
ffa098c0:	b8 a0       	R0 = [FP + 0x8];
ffa098c2:	e0 bb       	[FP -0x8] = R0;
ffa098c4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa098c6:	f0 bb       	[FP -0x4] = R0;
ffa098c8:	27 20       	JUMP.S 0xffa09916 <_exception_report+0x8e>;
ffa098ca:	d0 b9       	R0 = [FP -0xc];
ffa098cc:	e1 b9       	R1 = [FP -0x8];
ffa098ce:	08 54       	R0 = R0 & R1;
ffa098d0:	00 0c       	CC = R0 == 0x0;
ffa098d2:	08 18       	IF CC JUMP 0xffa098e2 <_exception_report+0x5a>;
ffa098d4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa098d8:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa098dc:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa098de:	10 97       	W[P2] = R0;
ffa098e0:	07 20       	JUMP.S 0xffa098ee <_exception_report+0x66>;
ffa098e2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa098e6:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa098ea:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa098ec:	10 97       	W[P2] = R0;
ffa098ee:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa098f2:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa098f6:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa098f8:	10 97       	W[P2] = R0;
ffa098fa:	24 00       	SSYNC;
ffa098fc:	d0 b9       	R0 = [FP -0xc];
ffa098fe:	08 4e       	R0 >>= 0x1;
ffa09900:	d0 bb       	[FP -0xc] = R0;
ffa09902:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa09906:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa0990a:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0990c:	10 97       	W[P2] = R0;
ffa0990e:	24 00       	SSYNC;
ffa09910:	f0 b9       	R0 = [FP -0x4];
ffa09912:	08 64       	R0 += 0x1;		/* (  1) */
ffa09914:	f0 bb       	[FP -0x4] = R0;
ffa09916:	f0 b9       	R0 = [FP -0x4];
ffa09918:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa0991a:	08 09       	CC = R0 <= R1;
ffa0991c:	d7 1b       	IF CC JUMP 0xffa098ca <_exception_report+0x42>;
ffa0991e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa09922:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa09926:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09928:	10 97       	W[P2] = R0;
ffa0992a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0992c:	f0 bb       	[FP -0x4] = R0;
ffa0992e:	06 20       	JUMP.S 0xffa0993a <_exception_report+0xb2>;
ffa09930:	00 00       	NOP;
ffa09932:	00 00       	NOP;
ffa09934:	f0 b9       	R0 = [FP -0x4];
ffa09936:	08 64       	R0 += 0x1;		/* (  1) */
ffa09938:	f0 bb       	[FP -0x4] = R0;
ffa0993a:	f0 b9       	R0 = [FP -0x4];
ffa0993c:	e9 60       	R1 = 0x1d (X);		/*		R1=0x1d( 29) */
ffa0993e:	08 09       	CC = R0 <= R1;
ffa09940:	f8 1b       	IF CC JUMP 0xffa09930 <_exception_report+0xa8>;
ffa09942:	80 e1 00 80 	R0 = 0x8000 (Z);		/*		R0=0x8000(32768) */
ffa09946:	d0 bb       	[FP -0xc] = R0;
ffa09948:	f8 a0       	R0 = [FP + 0xc];
ffa0994a:	e0 bb       	[FP -0x8] = R0;
ffa0994c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0994e:	f0 bb       	[FP -0x4] = R0;
ffa09950:	44 20       	JUMP.S 0xffa099d8 <_exception_report+0x150>;
ffa09952:	d0 b9       	R0 = [FP -0xc];
ffa09954:	e1 b9       	R1 = [FP -0x8];
ffa09956:	08 54       	R0 = R0 & R1;
ffa09958:	00 0c       	CC = R0 == 0x0;
ffa0995a:	08 18       	IF CC JUMP 0xffa0996a <_exception_report+0xe2>;
ffa0995c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa09960:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa09964:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09966:	10 97       	W[P2] = R0;
ffa09968:	07 20       	JUMP.S 0xffa09976 <_exception_report+0xee>;
ffa0996a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0996e:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa09972:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09974:	10 97       	W[P2] = R0;
ffa09976:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0997a:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa0997e:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09980:	10 97       	W[P2] = R0;
ffa09982:	24 00       	SSYNC;
ffa09984:	d0 b9       	R0 = [FP -0xc];
ffa09986:	08 4e       	R0 >>= 0x1;
ffa09988:	d0 bb       	[FP -0xc] = R0;
ffa0998a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa0998e:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa09992:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09994:	10 97       	W[P2] = R0;
ffa09996:	24 00       	SSYNC;
ffa09998:	f1 b9       	R1 = [FP -0x4];
ffa0999a:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0999c:	01 54       	R0 = R1 & R0;
ffa0999e:	18 0c       	CC = R0 == 0x3;
ffa099a0:	19 10       	IF !CC JUMP 0xffa099d2 <_exception_report+0x14a>;
	...
ffa099d2:	f0 b9       	R0 = [FP -0x4];
ffa099d4:	08 64       	R0 += 0x1;		/* (  1) */
ffa099d6:	f0 bb       	[FP -0x4] = R0;
ffa099d8:	f0 b9       	R0 = [FP -0x4];
ffa099da:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa099dc:	08 09       	CC = R0 <= R1;
ffa099de:	ba 1b       	IF CC JUMP 0xffa09952 <_exception_report+0xca>;
ffa099e0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa099e4:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa099e8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa099ea:	10 97       	W[P2] = R0;
ffa099ec:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa099ee:	f0 bb       	[FP -0x4] = R0;
ffa099f0:	06 20       	JUMP.S 0xffa099fc <_exception_report+0x174>;
ffa099f2:	00 00       	NOP;
ffa099f4:	00 00       	NOP;
ffa099f6:	f0 b9       	R0 = [FP -0x4];
ffa099f8:	08 64       	R0 += 0x1;		/* (  1) */
ffa099fa:	f0 bb       	[FP -0x4] = R0;
ffa099fc:	f0 b9       	R0 = [FP -0x4];
ffa099fe:	21 e1 2b 01 	R1 = 0x12b (X);		/*		R1=0x12b(299) */
ffa09a02:	08 09       	CC = R0 <= R1;
ffa09a04:	f7 1b       	IF CC JUMP 0xffa099f2 <_exception_report+0x16a>;
ffa09a06:	4b 2f       	JUMP.S 0xffa0989c <_exception_report+0x14>;

ffa09a08 <_nmi_report>:
ffa09a08:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa09a0c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09a0e:	f0 bb       	[FP -0x4] = R0;
ffa09a10:	06 20       	JUMP.S 0xffa09a1c <_nmi_report+0x14>;
ffa09a12:	00 00       	NOP;
ffa09a14:	00 00       	NOP;
ffa09a16:	f0 b9       	R0 = [FP -0x4];
ffa09a18:	08 64       	R0 += 0x1;		/* (  1) */
ffa09a1a:	f0 bb       	[FP -0x4] = R0;
ffa09a1c:	f0 b9       	R0 = [FP -0x4];
ffa09a1e:	21 e1 2b 01 	R1 = 0x12b (X);		/*		R1=0x12b(299) */
ffa09a22:	08 09       	CC = R0 <= R1;
ffa09a24:	f7 1b       	IF CC JUMP 0xffa09a12 <_nmi_report+0xa>;
ffa09a26:	01 e8 00 00 	UNLINK;
ffa09a2a:	10 00       	RTS;

ffa09a2c <_main>:
ffa09a2c:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa09a30:	4a e1 e0 ff 	P2.H = 0xffe0;		/* (-32)	P2=0xffe00704(-2095356) */
ffa09a34:	0a e1 04 10 	P2.L = 0x1004;		/* (4100)	P2=0xffe01004(-2093052) */
ffa09a38:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09a3a:	10 93       	[P2] = R0;
ffa09a3c:	23 00       	CSYNC;
ffa09a3e:	4a e1 e0 ff 	P2.H = 0xffe0;		/* (-32)	P2=0xffe01004(-2093052) */
ffa09a42:	0a e1 04 00 	P2.L = 0x4;		/* (  4)	P2=0xffe00004(-2097148) */
ffa09a46:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09a48:	10 93       	[P2] = R0;
ffa09a4a:	23 00       	CSYNC;
ffa09a4c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00004(-4194300) */
ffa09a50:	0a e1 40 07 	P2.L = 0x740;		/* (1856)	P2=0xffc00740(-4192448) */
ffa09a54:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa09a56:	10 97       	W[P2] = R0;
ffa09a58:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc0001f(-4194273) */
ffa09a5c:	09 e1 30 07 	P1.L = 0x730;		/* (1840)	P1=0xffc00730(-4192464) */
ffa09a60:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00740(-4192448) */
ffa09a64:	0a e1 40 07 	P2.L = 0x740;		/* (1856)	P2=0xffc00740(-4192448) */
ffa09a68:	50 95       	R0 = W[P2] (X);
ffa09a6a:	c0 43       	R0 =~ R0;
ffa09a6c:	08 97       	W[P1] = R0;
ffa09a6e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00740(-4192448) */
ffa09a72:	0a e1 00 07 	P2.L = 0x700;		/* (1792)	P2=0xffc00700(-4192512) */
ffa09a76:	20 e1 87 01 	R0 = 0x187 (X);		/*		R0=0x187(391) */
ffa09a7a:	10 97       	W[P2] = R0;
ffa09a7c:	20 e1 7c 00 	R0 = 0x7c (X);		/*		R0=0x7c(124) */
ffa09a80:	00 e3 6a 06 	CALL 0xffa0a754 <_radio_init>;
ffa09a84:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00700(-4192512) */
ffa09a88:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa09a8c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09a8e:	10 97       	W[P2] = R0;
ffa09a90:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa09a94:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa09a98:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa09a9c:	10 97       	W[P2] = R0;
ffa09a9e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09aa0:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa09aa4:	0a 20       	JUMP.S 0xffa09ab8 <_main+0x8c>;
	...
ffa09aae:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa09ab2:	08 64       	R0 += 0x1;		/* (  1) */
ffa09ab4:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa09ab8:	78 e4 fe ff 	R0 = W[FP + -0x4] (Z);
ffa09abc:	21 e1 e7 03 	R1 = 0x3e7 (X);		/*		R1=0x3e7(999) */
ffa09ac0:	08 0a       	CC = R0 <= R1 (IU);
ffa09ac2:	f2 1b       	IF CC JUMP 0xffa09aa6 <_main+0x7a>;
ffa09ac4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa09ac8:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa09acc:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa09ad0:	10 97       	W[P2] = R0;
ffa09ad2:	00 e3 f5 05 	CALL 0xffa0a6bc <_radio_set_tx>;
ffa09ad6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa09ada:	0a e1 28 08 	P2.L = 0x828;		/* (2088)	P2=0xffc00828(-4192216) */
ffa09ade:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09ae0:	10 97       	W[P2] = R0;
ffa09ae2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00828(-4192216) */
ffa09ae6:	0a e1 2c 08 	P2.L = 0x82c;		/* (2092)	P2=0xffc0082c(-4192212) */
ffa09aea:	98 60       	R0 = 0x13 (X);		/*		R0=0x13( 19) */
ffa09aec:	10 97       	W[P2] = R0;
ffa09aee:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0082c(-4192212) */
ffa09af2:	0a e1 24 08 	P2.L = 0x824;		/* (2084)	P2=0xffc00824(-4192220) */
ffa09af6:	20 e1 0f 01 	R0 = 0x10f (X);		/*		R0=0x10f(271) */
ffa09afa:	10 97       	W[P2] = R0;
ffa09afc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00824(-4192220) */
ffa09b00:	0a e1 28 09 	P2.L = 0x928;		/* (2344)	P2=0xffc00928(-4191960) */
ffa09b04:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09b06:	10 97       	W[P2] = R0;
ffa09b08:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00928(-4191960) */
ffa09b0c:	0a e1 2c 09 	P2.L = 0x92c;		/* (2348)	P2=0xffc0092c(-4191956) */
ffa09b10:	98 60       	R0 = 0x13 (X);		/*		R0=0x13( 19) */
ffa09b12:	10 97       	W[P2] = R0;
ffa09b14:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0092c(-4191956) */
ffa09b18:	0a e1 24 09 	P2.L = 0x924;		/* (2340)	P2=0xffc00924(-4191964) */
ffa09b1c:	20 e1 0f 01 	R0 = 0x10f (X);		/*		R0=0x10f(271) */
ffa09b20:	10 97       	W[P2] = R0;
ffa09b22:	ff e3 df f3 	CALL 0xffa082e0 <_radio_bidi_asm>;
ffa09b26:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09b28:	01 e8 00 00 	UNLINK;
ffa09b2c:	10 00       	RTS;
	...

ffa09b30 <_div>:
ffa09b30:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa09b34:	b8 b0       	[FP + 0x8] = R0;
ffa09b36:	f9 b0       	[FP + 0xc] = R1;
ffa09b38:	b8 a0       	R0 = [FP + 0x8];
ffa09b3a:	08 4f       	R0 <<= 0x1;
ffa09b3c:	b8 b0       	[FP + 0x8] = R0;
ffa09b3e:	b9 a0       	R1 = [FP + 0x8];
ffa09b40:	f8 a0       	R0 = [FP + 0xc];
ffa09b42:	11 30       	R2 = R1;
ffa09b44:	18 30       	R3 = R0;
ffa09b46:	5a 42       	DIVS (R2, R3);
ffa09b48:	0b 30       	R1 = R3;
ffa09b4a:	02 30       	R0 = R2;
ffa09b4c:	b8 b0       	[FP + 0x8] = R0;
ffa09b4e:	f9 b0       	[FP + 0xc] = R1;
ffa09b50:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09b52:	f0 bb       	[FP -0x4] = R0;
ffa09b54:	0d 20       	JUMP.S 0xffa09b6e <_div+0x3e>;
ffa09b56:	b9 a0       	R1 = [FP + 0x8];
ffa09b58:	f8 a0       	R0 = [FP + 0xc];
ffa09b5a:	11 30       	R2 = R1;
ffa09b5c:	18 30       	R3 = R0;
ffa09b5e:	1a 42       	DIVQ (R2, R3);
ffa09b60:	0b 30       	R1 = R3;
ffa09b62:	02 30       	R0 = R2;
ffa09b64:	b8 b0       	[FP + 0x8] = R0;
ffa09b66:	f9 b0       	[FP + 0xc] = R1;
ffa09b68:	f0 b9       	R0 = [FP -0x4];
ffa09b6a:	08 64       	R0 += 0x1;		/* (  1) */
ffa09b6c:	f0 bb       	[FP -0x4] = R0;
ffa09b6e:	f0 b9       	R0 = [FP -0x4];
ffa09b70:	71 60       	R1 = 0xe (X);		/*		R1=0xe( 14) */
ffa09b72:	08 09       	CC = R0 <= R1;
ffa09b74:	f1 1b       	IF CC JUMP 0xffa09b56 <_div+0x26>;
ffa09b76:	b8 a0       	R0 = [FP + 0x8];
ffa09b78:	80 42       	R0 = R0.L (X);
ffa09b7a:	b8 b0       	[FP + 0x8] = R0;
ffa09b7c:	b8 a0       	R0 = [FP + 0x8];
ffa09b7e:	01 e8 00 00 	UNLINK;
ffa09b82:	10 00       	RTS;

ffa09b84 <_mod>:
ffa09b84:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa09b88:	b8 b0       	[FP + 0x8] = R0;
ffa09b8a:	f9 b0       	[FP + 0xc] = R1;
ffa09b8c:	f9 a0       	R1 = [FP + 0xc];
ffa09b8e:	b8 a0       	R0 = [FP + 0x8];
ffa09b90:	ff e3 d0 ff 	CALL 0xffa09b30 <_div>;
ffa09b94:	f0 bb       	[FP -0x4] = R0;
ffa09b96:	f1 b9       	R1 = [FP -0x4];
ffa09b98:	f8 a0       	R0 = [FP + 0xc];
ffa09b9a:	c1 40       	R1 *= R0;
ffa09b9c:	b8 a0       	R0 = [FP + 0x8];
ffa09b9e:	08 52       	R0 = R0 - R1;
ffa09ba0:	01 e8 00 00 	UNLINK;
ffa09ba4:	10 00       	RTS;
	...

ffa09ba8 <_memcpy_>:
ffa09ba8:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa09bac:	b8 b0       	[FP + 0x8] = R0;
ffa09bae:	f9 b0       	[FP + 0xc] = R1;
ffa09bb0:	3a b1       	[FP + 0x10] = R2;
ffa09bb2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09bb4:	f0 bb       	[FP -0x4] = R0;
ffa09bb6:	0e 20       	JUMP.S 0xffa09bd2 <_memcpy_+0x2a>;
ffa09bb8:	ba ac       	P2 = [FP + 0x8];
ffa09bba:	50 99       	R0 = B[P2] (X);
ffa09bbc:	fa ac       	P2 = [FP + 0xc];
ffa09bbe:	10 9b       	B[P2] = R0;
ffa09bc0:	f8 a0       	R0 = [FP + 0xc];
ffa09bc2:	08 64       	R0 += 0x1;		/* (  1) */
ffa09bc4:	f8 b0       	[FP + 0xc] = R0;
ffa09bc6:	b8 a0       	R0 = [FP + 0x8];
ffa09bc8:	08 64       	R0 += 0x1;		/* (  1) */
ffa09bca:	b8 b0       	[FP + 0x8] = R0;
ffa09bcc:	f0 b9       	R0 = [FP -0x4];
ffa09bce:	08 64       	R0 += 0x1;		/* (  1) */
ffa09bd0:	f0 bb       	[FP -0x4] = R0;
ffa09bd2:	f1 b9       	R1 = [FP -0x4];
ffa09bd4:	38 a1       	R0 = [FP + 0x10];
ffa09bd6:	81 08       	CC = R1 < R0;
ffa09bd8:	f0 1b       	IF CC JUMP 0xffa09bb8 <_memcpy_+0x10>;
ffa09bda:	01 e8 00 00 	UNLINK;
ffa09bde:	10 00       	RTS;

ffa09be0 <_memset_>:
ffa09be0:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa09be4:	b8 b0       	[FP + 0x8] = R0;
ffa09be6:	3a b1       	[FP + 0x10] = R2;
ffa09be8:	01 30       	R0 = R1;
ffa09bea:	b8 e6 0c 00 	B[FP + 0xc] = R0;
ffa09bee:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09bf0:	f0 bb       	[FP -0x4] = R0;
ffa09bf2:	0b 20       	JUMP.S 0xffa09c08 <_memset_+0x28>;
ffa09bf4:	ba ac       	P2 = [FP + 0x8];
ffa09bf6:	b8 e5 0c 00 	R0 = B[FP + 0xc] (X);
ffa09bfa:	10 9b       	B[P2] = R0;
ffa09bfc:	b8 a0       	R0 = [FP + 0x8];
ffa09bfe:	08 64       	R0 += 0x1;		/* (  1) */
ffa09c00:	b8 b0       	[FP + 0x8] = R0;
ffa09c02:	f0 b9       	R0 = [FP -0x4];
ffa09c04:	08 64       	R0 += 0x1;		/* (  1) */
ffa09c06:	f0 bb       	[FP -0x4] = R0;
ffa09c08:	f1 b9       	R1 = [FP -0x4];
ffa09c0a:	38 a1       	R0 = [FP + 0x10];
ffa09c0c:	81 08       	CC = R1 < R0;
ffa09c0e:	f3 1b       	IF CC JUMP 0xffa09bf4 <_memset_+0x14>;
ffa09c10:	01 e8 00 00 	UNLINK;
ffa09c14:	10 00       	RTS;
	...

ffa09c18 <_strlen_>:
ffa09c18:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa09c1c:	b8 b0       	[FP + 0x8] = R0;
ffa09c1e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09c20:	f0 bb       	[FP -0x4] = R0;
ffa09c22:	10 20       	JUMP.S 0xffa09c42 <_strlen_+0x2a>;
ffa09c24:	f0 b9       	R0 = [FP -0x4];
ffa09c26:	08 30       	R1 = R0;
ffa09c28:	b8 a0       	R0 = [FP + 0x8];
ffa09c2a:	41 50       	R1 = R1 + R0;
ffa09c2c:	11 32       	P2 = R1;
ffa09c2e:	50 99       	R0 = B[P2] (X);
ffa09c30:	00 43       	R0 = R0.B (X);
ffa09c32:	00 0c       	CC = R0 == 0x0;
ffa09c34:	04 10       	IF !CC JUMP 0xffa09c3c <_strlen_+0x24>;
ffa09c36:	f0 b9       	R0 = [FP -0x4];
ffa09c38:	e0 bb       	[FP -0x8] = R0;
ffa09c3a:	0b 20       	JUMP.S 0xffa09c50 <_strlen_+0x38>;
ffa09c3c:	f0 b9       	R0 = [FP -0x4];
ffa09c3e:	08 64       	R0 += 0x1;		/* (  1) */
ffa09c40:	f0 bb       	[FP -0x4] = R0;
ffa09c42:	f0 b9       	R0 = [FP -0x4];
ffa09c44:	21 e1 ff 04 	R1 = 0x4ff (X);		/*		R1=0x4ff(1279) */
ffa09c48:	08 09       	CC = R0 <= R1;
ffa09c4a:	ed 1b       	IF CC JUMP 0xffa09c24 <_strlen_+0xc>;
ffa09c4c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09c4e:	e0 bb       	[FP -0x8] = R0;
ffa09c50:	e0 b9       	R0 = [FP -0x8];
ffa09c52:	01 e8 00 00 	UNLINK;
ffa09c56:	10 00       	RTS;

ffa09c58 <_strcpy_>:
ffa09c58:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa09c5c:	b8 b0       	[FP + 0x8] = R0;
ffa09c5e:	f9 b0       	[FP + 0xc] = R1;
ffa09c60:	3a b1       	[FP + 0x10] = R2;
ffa09c62:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09c64:	f0 bb       	[FP -0x4] = R0;
ffa09c66:	0e 20       	JUMP.S 0xffa09c82 <_strcpy_+0x2a>;
ffa09c68:	3a ad       	P2 = [FP + 0x10];
ffa09c6a:	50 99       	R0 = B[P2] (X);
ffa09c6c:	ba ac       	P2 = [FP + 0x8];
ffa09c6e:	10 9b       	B[P2] = R0;
ffa09c70:	b8 a0       	R0 = [FP + 0x8];
ffa09c72:	08 64       	R0 += 0x1;		/* (  1) */
ffa09c74:	b8 b0       	[FP + 0x8] = R0;
ffa09c76:	38 a1       	R0 = [FP + 0x10];
ffa09c78:	08 64       	R0 += 0x1;		/* (  1) */
ffa09c7a:	38 b1       	[FP + 0x10] = R0;
ffa09c7c:	f0 b9       	R0 = [FP -0x4];
ffa09c7e:	08 64       	R0 += 0x1;		/* (  1) */
ffa09c80:	f0 bb       	[FP -0x4] = R0;
ffa09c82:	3a ad       	P2 = [FP + 0x10];
ffa09c84:	50 99       	R0 = B[P2] (X);
ffa09c86:	00 43       	R0 = R0.B (X);
ffa09c88:	00 0c       	CC = R0 == 0x0;
ffa09c8a:	08 18       	IF CC JUMP 0xffa09c9a <_strcpy_+0x42>;
ffa09c8c:	f0 b9       	R0 = [FP -0x4];
ffa09c8e:	21 e1 ff 04 	R1 = 0x4ff (X);		/*		R1=0x4ff(1279) */
ffa09c92:	08 09       	CC = R0 <= R1;
ffa09c94:	ea 1b       	IF CC JUMP 0xffa09c68 <_strcpy_+0x10>;
ffa09c96:	00 00       	NOP;
ffa09c98:	00 00       	NOP;
ffa09c9a:	fa ac       	P2 = [FP + 0xc];
ffa09c9c:	11 91       	R1 = [P2];
ffa09c9e:	f0 b9       	R0 = [FP -0x4];
ffa09ca0:	01 50       	R0 = R1 + R0;
ffa09ca2:	fa ac       	P2 = [FP + 0xc];
ffa09ca4:	10 93       	[P2] = R0;
ffa09ca6:	b8 a0       	R0 = [FP + 0x8];
ffa09ca8:	01 e8 00 00 	UNLINK;
ffa09cac:	10 00       	RTS;
	...

ffa09cb0 <_strprepend>:
ffa09cb0:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa09cb4:	b8 b0       	[FP + 0x8] = R0;
ffa09cb6:	f9 b0       	[FP + 0xc] = R1;
ffa09cb8:	3a b1       	[FP + 0x10] = R2;
ffa09cba:	38 a1       	R0 = [FP + 0x10];
ffa09cbc:	ff e3 ae ff 	CALL 0xffa09c18 <_strlen_>;
ffa09cc0:	d0 bb       	[FP -0xc] = R0;
ffa09cc2:	fa ac       	P2 = [FP + 0xc];
ffa09cc4:	10 91       	R0 = [P2];
ffa09cc6:	08 30       	R1 = R0;
ffa09cc8:	b8 a0       	R0 = [FP + 0x8];
ffa09cca:	08 52       	R0 = R0 - R1;
ffa09ccc:	e0 bb       	[FP -0x8] = R0;
ffa09cce:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09cd0:	f0 bb       	[FP -0x4] = R0;
ffa09cd2:	0e 20       	JUMP.S 0xffa09cee <_strprepend+0x3e>;
ffa09cd4:	3a ad       	P2 = [FP + 0x10];
ffa09cd6:	50 99       	R0 = B[P2] (X);
ffa09cd8:	ea b9       	P2 = [FP -0x8];
ffa09cda:	10 9b       	B[P2] = R0;
ffa09cdc:	e0 b9       	R0 = [FP -0x8];
ffa09cde:	08 64       	R0 += 0x1;		/* (  1) */
ffa09ce0:	e0 bb       	[FP -0x8] = R0;
ffa09ce2:	38 a1       	R0 = [FP + 0x10];
ffa09ce4:	08 64       	R0 += 0x1;		/* (  1) */
ffa09ce6:	38 b1       	[FP + 0x10] = R0;
ffa09ce8:	f0 b9       	R0 = [FP -0x4];
ffa09cea:	08 64       	R0 += 0x1;		/* (  1) */
ffa09cec:	f0 bb       	[FP -0x4] = R0;
ffa09cee:	f1 b9       	R1 = [FP -0x4];
ffa09cf0:	d0 b9       	R0 = [FP -0xc];
ffa09cf2:	81 08       	CC = R1 < R0;
ffa09cf4:	f0 1b       	IF CC JUMP 0xffa09cd4 <_strprepend+0x24>;
ffa09cf6:	00 00       	NOP;
ffa09cf8:	00 00       	NOP;
ffa09cfa:	fa ac       	P2 = [FP + 0xc];
ffa09cfc:	10 91       	R0 = [P2];
ffa09cfe:	08 30       	R1 = R0;
ffa09d00:	b8 a0       	R0 = [FP + 0x8];
ffa09d02:	08 52       	R0 = R0 - R1;
ffa09d04:	01 e8 00 00 	UNLINK;
ffa09d08:	10 00       	RTS;
	...

ffa09d0c <_strcmp>:
ffa09d0c:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa09d10:	b8 b0       	[FP + 0x8] = R0;
ffa09d12:	f9 b0       	[FP + 0xc] = R1;
ffa09d14:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09d16:	f0 bb       	[FP -0x4] = R0;
ffa09d18:	1a 20       	JUMP.S 0xffa09d4c <_strcmp+0x40>;
ffa09d1a:	ba ac       	P2 = [FP + 0x8];
ffa09d1c:	51 99       	R1 = B[P2] (X);
ffa09d1e:	fa ac       	P2 = [FP + 0xc];
ffa09d20:	50 99       	R0 = B[P2] (X);
ffa09d22:	09 43       	R1 = R1.B (X);
ffa09d24:	00 43       	R0 = R0.B (X);
ffa09d26:	01 08       	CC = R1 == R0;
ffa09d28:	18 02       	CC = !CC;
ffa09d2a:	00 02       	R0 = CC;
ffa09d2c:	08 30       	R1 = R0;
ffa09d2e:	b8 a0       	R0 = [FP + 0x8];
ffa09d30:	08 64       	R0 += 0x1;		/* (  1) */
ffa09d32:	b8 b0       	[FP + 0x8] = R0;
ffa09d34:	f8 a0       	R0 = [FP + 0xc];
ffa09d36:	08 64       	R0 += 0x1;		/* (  1) */
ffa09d38:	f8 b0       	[FP + 0xc] = R0;
ffa09d3a:	48 43       	R0 = R1.B (Z);
ffa09d3c:	00 0c       	CC = R0 == 0x0;
ffa09d3e:	04 18       	IF CC JUMP 0xffa09d46 <_strcmp+0x3a>;
ffa09d40:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09d42:	e0 bb       	[FP -0x8] = R0;
ffa09d44:	17 20       	JUMP.S 0xffa09d72 <_strcmp+0x66>;
ffa09d46:	f0 b9       	R0 = [FP -0x4];
ffa09d48:	08 64       	R0 += 0x1;		/* (  1) */
ffa09d4a:	f0 bb       	[FP -0x4] = R0;
ffa09d4c:	ba ac       	P2 = [FP + 0x8];
ffa09d4e:	50 99       	R0 = B[P2] (X);
ffa09d50:	00 43       	R0 = R0.B (X);
ffa09d52:	00 0c       	CC = R0 == 0x0;
ffa09d54:	0d 18       	IF CC JUMP 0xffa09d6e <_strcmp+0x62>;
ffa09d56:	00 00       	NOP;
ffa09d58:	00 00       	NOP;
ffa09d5a:	fa ac       	P2 = [FP + 0xc];
ffa09d5c:	50 99       	R0 = B[P2] (X);
ffa09d5e:	00 43       	R0 = R0.B (X);
ffa09d60:	00 0c       	CC = R0 == 0x0;
ffa09d62:	06 18       	IF CC JUMP 0xffa09d6e <_strcmp+0x62>;
ffa09d64:	f0 b9       	R0 = [FP -0x4];
ffa09d66:	21 e1 ff 04 	R1 = 0x4ff (X);		/*		R1=0x4ff(1279) */
ffa09d6a:	08 09       	CC = R0 <= R1;
ffa09d6c:	d7 1b       	IF CC JUMP 0xffa09d1a <_strcmp+0xe>;
ffa09d6e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09d70:	e0 bb       	[FP -0x8] = R0;
ffa09d72:	e0 b9       	R0 = [FP -0x8];
ffa09d74:	01 e8 00 00 	UNLINK;
ffa09d78:	10 00       	RTS;
	...

ffa09d7c <_substr>:
ffa09d7c:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa09d80:	b8 b0       	[FP + 0x8] = R0;
ffa09d82:	f9 b0       	[FP + 0xc] = R1;
ffa09d84:	3a b1       	[FP + 0x10] = R2;
ffa09d86:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09d88:	e0 bb       	[FP -0x8] = R0;
ffa09d8a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09d8c:	f0 bb       	[FP -0x4] = R0;
ffa09d8e:	39 20       	JUMP.S 0xffa09e00 <_substr+0x84>;
ffa09d90:	ba ac       	P2 = [FP + 0x8];
ffa09d92:	51 99       	R1 = B[P2] (X);
ffa09d94:	fa ac       	P2 = [FP + 0xc];
ffa09d96:	50 99       	R0 = B[P2] (X);
ffa09d98:	09 43       	R1 = R1.B (X);
ffa09d9a:	00 43       	R0 = R0.B (X);
ffa09d9c:	01 08       	CC = R1 == R0;
ffa09d9e:	2b 10       	IF !CC JUMP 0xffa09df4 <_substr+0x78>;
ffa09da0:	b8 a0       	R0 = [FP + 0x8];
ffa09da2:	08 64       	R0 += 0x1;		/* (  1) */
ffa09da4:	c0 bb       	[FP -0x10] = R0;
ffa09da6:	f8 a0       	R0 = [FP + 0xc];
ffa09da8:	08 64       	R0 += 0x1;		/* (  1) */
ffa09daa:	d0 bb       	[FP -0xc] = R0;
ffa09dac:	e0 b9       	R0 = [FP -0x8];
ffa09dae:	08 64       	R0 += 0x1;		/* (  1) */
ffa09db0:	f0 bb       	[FP -0x4] = R0;
ffa09db2:	12 20       	JUMP.S 0xffa09dd6 <_substr+0x5a>;
ffa09db4:	c0 b9       	R0 = [FP -0x10];
ffa09db6:	08 64       	R0 += 0x1;		/* (  1) */
ffa09db8:	c0 bb       	[FP -0x10] = R0;
ffa09dba:	d0 b9       	R0 = [FP -0xc];
ffa09dbc:	08 64       	R0 += 0x1;		/* (  1) */
ffa09dbe:	d0 bb       	[FP -0xc] = R0;
ffa09dc0:	f0 b9       	R0 = [FP -0x4];
ffa09dc2:	08 64       	R0 += 0x1;		/* (  1) */
ffa09dc4:	f0 bb       	[FP -0x4] = R0;
ffa09dc6:	ca b9       	P2 = [FP -0x10];
ffa09dc8:	50 99       	R0 = B[P2] (X);
ffa09dca:	00 43       	R0 = R0.B (X);
ffa09dcc:	00 0c       	CC = R0 == 0x0;
ffa09dce:	04 10       	IF !CC JUMP 0xffa09dd6 <_substr+0x5a>;
ffa09dd0:	f0 b9       	R0 = [FP -0x4];
ffa09dd2:	b0 bb       	[FP -0x14] = R0;
ffa09dd4:	28 20       	JUMP.S 0xffa09e24 <_substr+0xa8>;
ffa09dd6:	ca b9       	P2 = [FP -0x10];
ffa09dd8:	51 99       	R1 = B[P2] (X);
ffa09dda:	da b9       	P2 = [FP -0xc];
ffa09ddc:	50 99       	R0 = B[P2] (X);
ffa09dde:	09 43       	R1 = R1.B (X);
ffa09de0:	00 43       	R0 = R0.B (X);
ffa09de2:	01 08       	CC = R1 == R0;
ffa09de4:	08 10       	IF !CC JUMP 0xffa09df4 <_substr+0x78>;
ffa09de6:	00 00       	NOP;
ffa09de8:	00 00       	NOP;
ffa09dea:	da b9       	P2 = [FP -0xc];
ffa09dec:	50 99       	R0 = B[P2] (X);
ffa09dee:	00 43       	R0 = R0.B (X);
ffa09df0:	00 0c       	CC = R0 == 0x0;
ffa09df2:	e1 13       	IF !CC JUMP 0xffa09db4 <_substr+0x38>;
ffa09df4:	f8 a0       	R0 = [FP + 0xc];
ffa09df6:	08 64       	R0 += 0x1;		/* (  1) */
ffa09df8:	f8 b0       	[FP + 0xc] = R0;
ffa09dfa:	e0 b9       	R0 = [FP -0x8];
ffa09dfc:	08 64       	R0 += 0x1;		/* (  1) */
ffa09dfe:	e0 bb       	[FP -0x8] = R0;
ffa09e00:	ba ac       	P2 = [FP + 0x8];
ffa09e02:	50 99       	R0 = B[P2] (X);
ffa09e04:	00 43       	R0 = R0.B (X);
ffa09e06:	00 0c       	CC = R0 == 0x0;
ffa09e08:	0c 18       	IF CC JUMP 0xffa09e20 <_substr+0xa4>;
ffa09e0a:	00 00       	NOP;
ffa09e0c:	00 00       	NOP;
ffa09e0e:	fa ac       	P2 = [FP + 0xc];
ffa09e10:	50 99       	R0 = B[P2] (X);
ffa09e12:	00 43       	R0 = R0.B (X);
ffa09e14:	00 0c       	CC = R0 == 0x0;
ffa09e16:	05 18       	IF CC JUMP 0xffa09e20 <_substr+0xa4>;
ffa09e18:	e1 b9       	R1 = [FP -0x8];
ffa09e1a:	38 a1       	R0 = [FP + 0x10];
ffa09e1c:	81 08       	CC = R1 < R0;
ffa09e1e:	b9 1b       	IF CC JUMP 0xffa09d90 <_substr+0x14>;
ffa09e20:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09e22:	b0 bb       	[FP -0x14] = R0;
ffa09e24:	b0 b9       	R0 = [FP -0x14];
ffa09e26:	01 e8 00 00 	UNLINK;
ffa09e2a:	10 00       	RTS;

ffa09e2c <_sprintf_int>:
ffa09e2c:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa09e30:	b8 b0       	[FP + 0x8] = R0;
ffa09e32:	f9 b0       	[FP + 0xc] = R1;
ffa09e34:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09e36:	c0 bb       	[FP -0x10] = R0;
ffa09e38:	f8 a0       	R0 = [FP + 0xc];
ffa09e3a:	00 0c       	CC = R0 == 0x0;
ffa09e3c:	0b 10       	IF !CC JUMP 0xffa09e52 <_sprintf_int+0x26>;
ffa09e3e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900924 */
ffa09e42:	0a e1 80 70 	P2.L = 0x7080;		/* (28800)	P2=0xff907080 <_printf_temp> */
ffa09e46:	52 91       	P2 = [P2];
ffa09e48:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa09e4a:	10 9b       	B[P2] = R0;
ffa09e4c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09e4e:	c0 bb       	[FP -0x10] = R0;
ffa09e50:	90 20       	JUMP.S 0xffa09f70 <_sprintf_int+0x144>;
ffa09e52:	f8 a0       	R0 = [FP + 0xc];
ffa09e54:	00 0d       	CC = R0 <= 0x0;
ffa09e56:	3c 18       	IF CC JUMP 0xffa09ece <_sprintf_int+0xa2>;
ffa09e58:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09e5a:	c0 bb       	[FP -0x10] = R0;
ffa09e5c:	31 20       	JUMP.S 0xffa09ebe <_sprintf_int+0x92>;
ffa09e5e:	f9 a0       	R1 = [FP + 0xc];
ffa09e60:	40 e1 66 66 	R0.H = 0x6666;		/* (26214)	R0=0x66660000(1717960704) */
ffa09e64:	00 e1 67 66 	R0.L = 0x6667;		/* (26215)	R0=0x66666667(1717986919) */
ffa09e68:	80 c0 08 18 	A1 = R1.L * R0.L (FU);
ffa09e6c:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa09e70:	11 c1 08 86 	A1 += R1.H * R0.L (M), A0 = R1.H * R0.H (IS);
ffa09e74:	11 c1 01 98 	A1 += R0.H * R1.L (M, IS);
ffa09e78:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa09e7c:	0b c4 00 00 	R0 = (A0 += A1);
ffa09e80:	82 c6 f0 05 	R2 = R0 >>> 0x2;
ffa09e84:	82 c6 09 01 	R0 = R1 >>> 0x1f;
ffa09e88:	02 52       	R0 = R2 - R0;
ffa09e8a:	f0 bb       	[FP -0x4] = R0;
ffa09e8c:	f1 b9       	R1 = [FP -0x4];
ffa09e8e:	01 30       	R0 = R1;
ffa09e90:	10 4f       	R0 <<= 0x2;
ffa09e92:	08 50       	R0 = R0 + R1;
ffa09e94:	08 4f       	R0 <<= 0x1;
ffa09e96:	08 30       	R1 = R0;
ffa09e98:	f8 a0       	R0 = [FP + 0xc];
ffa09e9a:	08 52       	R0 = R0 - R1;
ffa09e9c:	d0 bb       	[FP -0xc] = R0;
ffa09e9e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff907080 <_printf_temp> */
ffa09ea2:	0a e1 80 70 	P2.L = 0x7080;		/* (28800)	P2=0xff907080 <_printf_temp> */
ffa09ea6:	11 91       	R1 = [P2];
ffa09ea8:	c0 b9       	R0 = [FP -0x10];
ffa09eaa:	41 50       	R1 = R1 + R0;
ffa09eac:	11 32       	P2 = R1;
ffa09eae:	d0 b9       	R0 = [FP -0xc];
ffa09eb0:	80 65       	R0 += 0x30;		/* ( 48) */
ffa09eb2:	10 9b       	B[P2] = R0;
ffa09eb4:	c0 b9       	R0 = [FP -0x10];
ffa09eb6:	08 64       	R0 += 0x1;		/* (  1) */
ffa09eb8:	c0 bb       	[FP -0x10] = R0;
ffa09eba:	f0 b9       	R0 = [FP -0x4];
ffa09ebc:	f8 b0       	[FP + 0xc] = R0;
ffa09ebe:	f8 a0       	R0 = [FP + 0xc];
ffa09ec0:	00 0d       	CC = R0 <= 0x0;
ffa09ec2:	57 18       	IF CC JUMP 0xffa09f70 <_sprintf_int+0x144>;
ffa09ec4:	c0 b9       	R0 = [FP -0x10];
ffa09ec6:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa09ec8:	08 09       	CC = R0 <= R1;
ffa09eca:	ca 1b       	IF CC JUMP 0xffa09e5e <_sprintf_int+0x32>;
ffa09ecc:	52 20       	JUMP.S 0xffa09f70 <_sprintf_int+0x144>;
ffa09ece:	f8 a0       	R0 = [FP + 0xc];
ffa09ed0:	80 0c       	CC = R0 < 0x0;
ffa09ed2:	4f 10       	IF !CC JUMP 0xffa09f70 <_sprintf_int+0x144>;
ffa09ed4:	f8 a0       	R0 = [FP + 0xc];
ffa09ed6:	08 30       	R1 = R0;
ffa09ed8:	f9 4c       	BITCLR (R1, 0x1f);		/* bit 31 */
ffa09eda:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa09edc:	f8 4f       	R0 <<= 0x1f;
ffa09ede:	08 52       	R0 = R0 - R1;
ffa09ee0:	f8 b0       	[FP + 0xc] = R0;
ffa09ee2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09ee4:	c0 bb       	[FP -0x10] = R0;
ffa09ee6:	31 20       	JUMP.S 0xffa09f48 <_sprintf_int+0x11c>;
ffa09ee8:	f9 a0       	R1 = [FP + 0xc];
ffa09eea:	40 e1 66 66 	R0.H = 0x6666;		/* (26214)	R0=0x66660000(1717960704) */
ffa09eee:	00 e1 67 66 	R0.L = 0x6667;		/* (26215)	R0=0x66666667(1717986919) */
ffa09ef2:	80 c0 08 18 	A1 = R1.L * R0.L (FU);
ffa09ef6:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa09efa:	11 c1 08 86 	A1 += R1.H * R0.L (M), A0 = R1.H * R0.H (IS);
ffa09efe:	11 c1 01 98 	A1 += R0.H * R1.L (M, IS);
ffa09f02:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa09f06:	0b c4 00 00 	R0 = (A0 += A1);
ffa09f0a:	82 c6 f0 05 	R2 = R0 >>> 0x2;
ffa09f0e:	82 c6 09 01 	R0 = R1 >>> 0x1f;
ffa09f12:	02 52       	R0 = R2 - R0;
ffa09f14:	f0 bb       	[FP -0x4] = R0;
ffa09f16:	f1 b9       	R1 = [FP -0x4];
ffa09f18:	01 30       	R0 = R1;
ffa09f1a:	10 4f       	R0 <<= 0x2;
ffa09f1c:	08 50       	R0 = R0 + R1;
ffa09f1e:	08 4f       	R0 <<= 0x1;
ffa09f20:	08 30       	R1 = R0;
ffa09f22:	f8 a0       	R0 = [FP + 0xc];
ffa09f24:	08 52       	R0 = R0 - R1;
ffa09f26:	d0 bb       	[FP -0xc] = R0;
ffa09f28:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff907080 <_printf_temp> */
ffa09f2c:	0a e1 80 70 	P2.L = 0x7080;		/* (28800)	P2=0xff907080 <_printf_temp> */
ffa09f30:	11 91       	R1 = [P2];
ffa09f32:	c0 b9       	R0 = [FP -0x10];
ffa09f34:	41 50       	R1 = R1 + R0;
ffa09f36:	11 32       	P2 = R1;
ffa09f38:	d0 b9       	R0 = [FP -0xc];
ffa09f3a:	80 65       	R0 += 0x30;		/* ( 48) */
ffa09f3c:	10 9b       	B[P2] = R0;
ffa09f3e:	c0 b9       	R0 = [FP -0x10];
ffa09f40:	08 64       	R0 += 0x1;		/* (  1) */
ffa09f42:	c0 bb       	[FP -0x10] = R0;
ffa09f44:	f0 b9       	R0 = [FP -0x4];
ffa09f46:	f8 b0       	[FP + 0xc] = R0;
ffa09f48:	f8 a0       	R0 = [FP + 0xc];
ffa09f4a:	00 0d       	CC = R0 <= 0x0;
ffa09f4c:	05 18       	IF CC JUMP 0xffa09f56 <_sprintf_int+0x12a>;
ffa09f4e:	c0 b9       	R0 = [FP -0x10];
ffa09f50:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa09f52:	08 09       	CC = R0 <= R1;
ffa09f54:	ca 1b       	IF CC JUMP 0xffa09ee8 <_sprintf_int+0xbc>;
ffa09f56:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff907080 <_printf_temp> */
ffa09f5a:	0a e1 80 70 	P2.L = 0x7080;		/* (28800)	P2=0xff907080 <_printf_temp> */
ffa09f5e:	11 91       	R1 = [P2];
ffa09f60:	c0 b9       	R0 = [FP -0x10];
ffa09f62:	41 50       	R1 = R1 + R0;
ffa09f64:	11 32       	P2 = R1;
ffa09f66:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa09f68:	10 9b       	B[P2] = R0;
ffa09f6a:	c0 b9       	R0 = [FP -0x10];
ffa09f6c:	08 64       	R0 += 0x1;		/* (  1) */
ffa09f6e:	c0 bb       	[FP -0x10] = R0;
ffa09f70:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09f72:	e0 bb       	[FP -0x8] = R0;
ffa09f74:	16 20       	JUMP.S 0xffa09fa0 <_sprintf_int+0x174>;
ffa09f76:	e0 b9       	R0 = [FP -0x8];
ffa09f78:	08 30       	R1 = R0;
ffa09f7a:	b8 a0       	R0 = [FP + 0x8];
ffa09f7c:	41 50       	R1 = R1 + R0;
ffa09f7e:	09 32       	P1 = R1;
ffa09f80:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff907080 <_printf_temp> */
ffa09f84:	0a e1 80 70 	P2.L = 0x7080;		/* (28800)	P2=0xff907080 <_printf_temp> */
ffa09f88:	12 91       	R2 = [P2];
ffa09f8a:	c1 b9       	R1 = [FP -0x10];
ffa09f8c:	e0 b9       	R0 = [FP -0x8];
ffa09f8e:	01 52       	R0 = R1 - R0;
ffa09f90:	02 50       	R0 = R2 + R0;
ffa09f92:	10 32       	P2 = R0;
ffa09f94:	fa 6f       	P2 += -0x1;		/* ( -1) */
ffa09f96:	50 99       	R0 = B[P2] (X);
ffa09f98:	08 9b       	B[P1] = R0;
ffa09f9a:	e0 b9       	R0 = [FP -0x8];
ffa09f9c:	08 64       	R0 += 0x1;		/* (  1) */
ffa09f9e:	e0 bb       	[FP -0x8] = R0;
ffa09fa0:	e1 b9       	R1 = [FP -0x8];
ffa09fa2:	c0 b9       	R0 = [FP -0x10];
ffa09fa4:	81 08       	CC = R1 < R0;
ffa09fa6:	e8 1b       	IF CC JUMP 0xffa09f76 <_sprintf_int+0x14a>;
ffa09fa8:	c0 b9       	R0 = [FP -0x10];
ffa09faa:	01 e8 00 00 	UNLINK;
ffa09fae:	10 00       	RTS;

ffa09fb0 <_sprintf_hex>:
ffa09fb0:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa09fb4:	b8 b0       	[FP + 0x8] = R0;
ffa09fb6:	f9 b0       	[FP + 0xc] = R1;
ffa09fb8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09fba:	d0 bb       	[FP -0xc] = R0;
ffa09fbc:	d0 b9       	R0 = [FP -0xc];
ffa09fbe:	08 30       	R1 = R0;
ffa09fc0:	b8 a0       	R0 = [FP + 0x8];
ffa09fc2:	41 50       	R1 = R1 + R0;
ffa09fc4:	11 32       	P2 = R1;
ffa09fc6:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa09fc8:	10 9b       	B[P2] = R0;
ffa09fca:	d0 b9       	R0 = [FP -0xc];
ffa09fcc:	08 64       	R0 += 0x1;		/* (  1) */
ffa09fce:	d0 bb       	[FP -0xc] = R0;
ffa09fd0:	d0 b9       	R0 = [FP -0xc];
ffa09fd2:	08 30       	R1 = R0;
ffa09fd4:	b8 a0       	R0 = [FP + 0x8];
ffa09fd6:	41 50       	R1 = R1 + R0;
ffa09fd8:	11 32       	P2 = R1;
ffa09fda:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa09fde:	10 9b       	B[P2] = R0;
ffa09fe0:	d0 b9       	R0 = [FP -0xc];
ffa09fe2:	08 64       	R0 += 0x1;		/* (  1) */
ffa09fe4:	d0 bb       	[FP -0xc] = R0;
ffa09fe6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09fe8:	c0 bb       	[FP -0x10] = R0;
ffa09fea:	2c 20       	JUMP.S 0xffa0a042 <_sprintf_hex+0x92>;
ffa09fec:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa09fee:	c0 b9       	R0 = [FP -0x10];
ffa09ff0:	01 52       	R0 = R1 - R0;
ffa09ff2:	82 c6 10 82 	R1 = R0 << 0x2;
ffa09ff6:	f8 a0       	R0 = [FP + 0xc];
ffa09ff8:	08 40       	R0 >>>= R1;
ffa09ffa:	e0 bb       	[FP -0x8] = R0;
ffa09ffc:	e0 b9       	R0 = [FP -0x8];
ffa09ffe:	08 30       	R1 = R0;
ffa0a000:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa0a002:	01 54       	R0 = R1 & R0;
ffa0a004:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa0a008:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa0a00c:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa0a00e:	08 09       	CC = R0 <= R1;
ffa0a010:	07 18       	IF CC JUMP 0xffa0a01e <_sprintf_hex+0x6e>;
ffa0a012:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa0a016:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa0a018:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa0a01c:	06 20       	JUMP.S 0xffa0a028 <_sprintf_hex+0x78>;
ffa0a01e:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa0a022:	80 65       	R0 += 0x30;		/* ( 48) */
ffa0a024:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa0a028:	d1 b9       	R1 = [FP -0xc];
ffa0a02a:	c0 b9       	R0 = [FP -0x10];
ffa0a02c:	01 50       	R0 = R1 + R0;
ffa0a02e:	08 30       	R1 = R0;
ffa0a030:	b8 a0       	R0 = [FP + 0x8];
ffa0a032:	41 50       	R1 = R1 + R0;
ffa0a034:	11 32       	P2 = R1;
ffa0a036:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa0a03a:	10 9b       	B[P2] = R0;
ffa0a03c:	c0 b9       	R0 = [FP -0x10];
ffa0a03e:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a040:	c0 bb       	[FP -0x10] = R0;
ffa0a042:	c0 b9       	R0 = [FP -0x10];
ffa0a044:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa0a046:	08 09       	CC = R0 <= R1;
ffa0a048:	d2 1b       	IF CC JUMP 0xffa09fec <_sprintf_hex+0x3c>;
ffa0a04a:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa0a04c:	01 e8 00 00 	UNLINK;
ffa0a050:	10 00       	RTS;
	...

ffa0a054 <_strprintf_int>:
ffa0a054:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0a058:	b8 b0       	[FP + 0x8] = R0;
ffa0a05a:	f9 b0       	[FP + 0xc] = R1;
ffa0a05c:	3a b1       	[FP + 0x10] = R2;
ffa0a05e:	39 a1       	R1 = [FP + 0x10];
ffa0a060:	b8 a0       	R0 = [FP + 0x8];
ffa0a062:	ff e3 e5 fe 	CALL 0xffa09e2c <_sprintf_int>;
ffa0a066:	f0 bb       	[FP -0x4] = R0;
ffa0a068:	fa ac       	P2 = [FP + 0xc];
ffa0a06a:	11 91       	R1 = [P2];
ffa0a06c:	f0 b9       	R0 = [FP -0x4];
ffa0a06e:	01 50       	R0 = R1 + R0;
ffa0a070:	fa ac       	P2 = [FP + 0xc];
ffa0a072:	10 93       	[P2] = R0;
ffa0a074:	f0 b9       	R0 = [FP -0x4];
ffa0a076:	08 30       	R1 = R0;
ffa0a078:	b8 a0       	R0 = [FP + 0x8];
ffa0a07a:	08 50       	R0 = R0 + R1;
ffa0a07c:	b8 b0       	[FP + 0x8] = R0;
ffa0a07e:	b8 a0       	R0 = [FP + 0x8];
ffa0a080:	01 e8 00 00 	UNLINK;
ffa0a084:	10 00       	RTS;
	...

ffa0a088 <_strprintf_hex>:
ffa0a088:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0a08c:	b8 b0       	[FP + 0x8] = R0;
ffa0a08e:	f9 b0       	[FP + 0xc] = R1;
ffa0a090:	3a b1       	[FP + 0x10] = R2;
ffa0a092:	39 a1       	R1 = [FP + 0x10];
ffa0a094:	b8 a0       	R0 = [FP + 0x8];
ffa0a096:	ff e3 8d ff 	CALL 0xffa09fb0 <_sprintf_hex>;
ffa0a09a:	f0 bb       	[FP -0x4] = R0;
ffa0a09c:	fa ac       	P2 = [FP + 0xc];
ffa0a09e:	11 91       	R1 = [P2];
ffa0a0a0:	f0 b9       	R0 = [FP -0x4];
ffa0a0a2:	01 50       	R0 = R1 + R0;
ffa0a0a4:	fa ac       	P2 = [FP + 0xc];
ffa0a0a6:	10 93       	[P2] = R0;
ffa0a0a8:	f0 b9       	R0 = [FP -0x4];
ffa0a0aa:	08 30       	R1 = R0;
ffa0a0ac:	b8 a0       	R0 = [FP + 0x8];
ffa0a0ae:	08 50       	R0 = R0 + R1;
ffa0a0b0:	b8 b0       	[FP + 0x8] = R0;
ffa0a0b2:	b8 a0       	R0 = [FP + 0x8];
ffa0a0b4:	01 e8 00 00 	UNLINK;
ffa0a0b8:	10 00       	RTS;
	...

ffa0a0bc <_atoi>:
ffa0a0bc:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a0c0:	b8 b0       	[FP + 0x8] = R0;
ffa0a0c2:	f9 b0       	[FP + 0xc] = R1;
ffa0a0c4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a0c6:	d0 bb       	[FP -0xc] = R0;
ffa0a0c8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a0ca:	e0 bb       	[FP -0x8] = R0;
ffa0a0cc:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a0ce:	f0 bb       	[FP -0x4] = R0;
ffa0a0d0:	ba ac       	P2 = [FP + 0x8];
ffa0a0d2:	50 99       	R0 = B[P2] (X);
ffa0a0d4:	00 43       	R0 = R0.B (X);
ffa0a0d6:	69 61       	R1 = 0x2d (X);		/*		R1=0x2d( 45) */
ffa0a0d8:	08 08       	CC = R0 == R1;
ffa0a0da:	2c 10       	IF !CC JUMP 0xffa0a132 <_atoi+0x76>;
ffa0a0dc:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0a0de:	f0 bb       	[FP -0x4] = R0;
ffa0a0e0:	b8 a0       	R0 = [FP + 0x8];
ffa0a0e2:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a0e4:	b8 b0       	[FP + 0x8] = R0;
ffa0a0e6:	d0 b9       	R0 = [FP -0xc];
ffa0a0e8:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a0ea:	d0 bb       	[FP -0xc] = R0;
ffa0a0ec:	23 20       	JUMP.S 0xffa0a132 <_atoi+0x76>;
ffa0a0ee:	ba ac       	P2 = [FP + 0x8];
ffa0a0f0:	50 99       	R0 = B[P2] (X);
ffa0a0f2:	01 43       	R1 = R0.B (X);
ffa0a0f4:	e0 b9       	R0 = [FP -0x8];
ffa0a0f6:	01 50       	R0 = R1 + R0;
ffa0a0f8:	80 66       	R0 += -0x30;		/* (-48) */
ffa0a0fa:	e0 bb       	[FP -0x8] = R0;
ffa0a0fc:	b8 a0       	R0 = [FP + 0x8];
ffa0a0fe:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a100:	b8 b0       	[FP + 0x8] = R0;
ffa0a102:	d0 b9       	R0 = [FP -0xc];
ffa0a104:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a106:	d0 bb       	[FP -0xc] = R0;
ffa0a108:	ba ac       	P2 = [FP + 0x8];
ffa0a10a:	50 99       	R0 = B[P2] (X);
ffa0a10c:	00 43       	R0 = R0.B (X);
ffa0a10e:	79 61       	R1 = 0x2f (X);		/*		R1=0x2f( 47) */
ffa0a110:	08 09       	CC = R0 <= R1;
ffa0a112:	10 18       	IF CC JUMP 0xffa0a132 <_atoi+0x76>;
ffa0a114:	00 00       	NOP;
ffa0a116:	00 00       	NOP;
ffa0a118:	ba ac       	P2 = [FP + 0x8];
ffa0a11a:	50 99       	R0 = B[P2] (X);
ffa0a11c:	00 43       	R0 = R0.B (X);
ffa0a11e:	c9 61       	R1 = 0x39 (X);		/*		R1=0x39( 57) */
ffa0a120:	08 09       	CC = R0 <= R1;
ffa0a122:	08 10       	IF !CC JUMP 0xffa0a132 <_atoi+0x76>;
ffa0a124:	e0 b9       	R0 = [FP -0x8];
ffa0a126:	08 30       	R1 = R0;
ffa0a128:	11 4f       	R1 <<= 0x2;
ffa0a12a:	41 50       	R1 = R1 + R0;
ffa0a12c:	82 c6 09 80 	R0 = R1 << 0x1;
ffa0a130:	e0 bb       	[FP -0x8] = R0;
ffa0a132:	ba ac       	P2 = [FP + 0x8];
ffa0a134:	50 99       	R0 = B[P2] (X);
ffa0a136:	00 43       	R0 = R0.B (X);
ffa0a138:	79 61       	R1 = 0x2f (X);		/*		R1=0x2f( 47) */
ffa0a13a:	08 09       	CC = R0 <= R1;
ffa0a13c:	0d 18       	IF CC JUMP 0xffa0a156 <_atoi+0x9a>;
ffa0a13e:	00 00       	NOP;
ffa0a140:	00 00       	NOP;
ffa0a142:	ba ac       	P2 = [FP + 0x8];
ffa0a144:	50 99       	R0 = B[P2] (X);
ffa0a146:	00 43       	R0 = R0.B (X);
ffa0a148:	c9 61       	R1 = 0x39 (X);		/*		R1=0x39( 57) */
ffa0a14a:	08 09       	CC = R0 <= R1;
ffa0a14c:	05 10       	IF !CC JUMP 0xffa0a156 <_atoi+0x9a>;
ffa0a14e:	d1 b9       	R1 = [FP -0xc];
ffa0a150:	f8 a0       	R0 = [FP + 0xc];
ffa0a152:	81 08       	CC = R1 < R0;
ffa0a154:	cd 1b       	IF CC JUMP 0xffa0a0ee <_atoi+0x32>;
ffa0a156:	e1 b9       	R1 = [FP -0x8];
ffa0a158:	f0 b9       	R0 = [FP -0x4];
ffa0a15a:	c8 40       	R0 *= R1;
ffa0a15c:	01 e8 00 00 	UNLINK;
ffa0a160:	10 00       	RTS;
	...

ffa0a164 <_udelay>:
ffa0a164:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa0a168:	b8 b0       	[FP + 0x8] = R0;
ffa0a16a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a16c:	e0 bb       	[FP -0x8] = R0;
ffa0a16e:	10 20       	JUMP.S 0xffa0a18e <_udelay+0x2a>;
ffa0a170:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a172:	f0 bb       	[FP -0x4] = R0;
ffa0a174:	05 20       	JUMP.S 0xffa0a17e <_udelay+0x1a>;
ffa0a176:	00 00       	NOP;
ffa0a178:	f0 b9       	R0 = [FP -0x4];
ffa0a17a:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a17c:	f0 bb       	[FP -0x4] = R0;
ffa0a17e:	f0 b9       	R0 = [FP -0x4];
ffa0a180:	21 e1 9f 00 	R1 = 0x9f (X);		/*		R1=0x9f(159) */
ffa0a184:	08 09       	CC = R0 <= R1;
ffa0a186:	f8 1b       	IF CC JUMP 0xffa0a176 <_udelay+0x12>;
ffa0a188:	e0 b9       	R0 = [FP -0x8];
ffa0a18a:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a18c:	e0 bb       	[FP -0x8] = R0;
ffa0a18e:	e1 b9       	R1 = [FP -0x8];
ffa0a190:	b8 a0       	R0 = [FP + 0x8];
ffa0a192:	81 08       	CC = R1 < R0;
ffa0a194:	ee 1b       	IF CC JUMP 0xffa0a170 <_udelay+0xc>;
ffa0a196:	01 e8 00 00 	UNLINK;
ffa0a19a:	10 00       	RTS;

ffa0a19c <_spi_delay>:
ffa0a19c:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa0a1a0:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa0a1a2:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa0a1a6:	08 20       	JUMP.S 0xffa0a1b6 <_spi_delay+0x1a>;
ffa0a1a8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc07080(-4165504) */
ffa0a1ac:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0a1b0:	50 95       	R0 = W[P2] (X);
ffa0a1b2:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa0a1b6:	78 e4 fe ff 	R0 = W[FP + -0x4] (Z);
ffa0a1ba:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa0a1bc:	08 54       	R0 = R0 & R1;
ffa0a1be:	00 0c       	CC = R0 == 0x0;
ffa0a1c0:	f4 13       	IF !CC JUMP 0xffa0a1a8 <_spi_delay+0xc>;
ffa0a1c2:	08 20       	JUMP.S 0xffa0a1d2 <_spi_delay+0x36>;
ffa0a1c4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0a1c8:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0a1cc:	50 95       	R0 = W[P2] (X);
ffa0a1ce:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa0a1d2:	78 e4 fe ff 	R0 = W[FP + -0x4] (Z);
ffa0a1d6:	00 49       	CC = BITTST (R0, 0x0);		/* bit  0 */
ffa0a1d8:	00 02       	R0 = CC;
ffa0a1da:	00 0c       	CC = R0 == 0x0;
ffa0a1dc:	f4 1b       	IF CC JUMP 0xffa0a1c4 <_spi_delay+0x28>;
ffa0a1de:	01 e8 00 00 	UNLINK;
ffa0a1e2:	10 00       	RTS;

ffa0a1e4 <_spi_write_register>:
ffa0a1e4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a1e8:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a1ec:	01 30       	R0 = R1;
ffa0a1ee:	b8 e6 0c 00 	B[FP + 0xc] = R0;
ffa0a1f2:	b8 e5 08 00 	R0 = B[FP + 0x8] (X);
ffa0a1f6:	28 4a       	BITSET (R0, 0x5);		/* bit  5 */
ffa0a1f8:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a1fc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0a200:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a204:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a206:	10 97       	W[P2] = R0;
ffa0a208:	24 00       	SSYNC;
ffa0a20a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a20e:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a212:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a216:	10 97       	W[P2] = R0;
ffa0a218:	ff e3 c2 ff 	CALL 0xffa0a19c <_spi_delay>;
ffa0a21c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a220:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0a224:	50 95       	R0 = W[P2] (X);
ffa0a226:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a22a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0a22e:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a232:	b8 e4 0c 00 	R0 = B[FP + 0xc] (Z);
ffa0a236:	10 97       	W[P2] = R0;
ffa0a238:	ff e3 b2 ff 	CALL 0xffa0a19c <_spi_delay>;
ffa0a23c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a240:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a244:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a246:	10 97       	W[P2] = R0;
ffa0a248:	24 00       	SSYNC;
ffa0a24a:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a24e:	01 e8 00 00 	UNLINK;
ffa0a252:	10 00       	RTS;

ffa0a254 <_spi_write_register_ver>:
ffa0a254:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0a258:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a25c:	01 30       	R0 = R1;
ffa0a25e:	b8 e6 0c 00 	B[FP + 0xc] = R0;
ffa0a262:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a266:	b9 e4 0c 00 	R1 = B[FP + 0xc] (Z);
ffa0a26a:	ff e3 bd ff 	CALL 0xffa0a1e4 <_spi_write_register>;
ffa0a26e:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a272:	00 e3 09 00 	CALL 0xffa0a284 <_spi_read_register>;
ffa0a276:	b8 e6 ff ff 	B[FP + -0x1] = R0;
ffa0a27a:	b8 e4 ff ff 	R0 = B[FP + -0x1] (Z);
ffa0a27e:	01 e8 00 00 	UNLINK;
ffa0a282:	10 00       	RTS;

ffa0a284 <_spi_read_register>:
ffa0a284:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a288:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a28c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a290:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a294:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a296:	10 97       	W[P2] = R0;
ffa0a298:	24 00       	SSYNC;
ffa0a29a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a29e:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a2a2:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a2a6:	10 97       	W[P2] = R0;
ffa0a2a8:	ff e3 7a ff 	CALL 0xffa0a19c <_spi_delay>;
ffa0a2ac:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a2b0:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0a2b4:	50 95       	R0 = W[P2] (X);
ffa0a2b6:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a2ba:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0a2be:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a2c2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a2c4:	10 97       	W[P2] = R0;
ffa0a2c6:	ff e3 6b ff 	CALL 0xffa0a19c <_spi_delay>;
ffa0a2ca:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a2ce:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0a2d2:	50 95       	R0 = W[P2] (X);
ffa0a2d4:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a2d8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0a2dc:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a2e0:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a2e2:	10 97       	W[P2] = R0;
ffa0a2e4:	24 00       	SSYNC;
ffa0a2e6:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a2ea:	01 e8 00 00 	UNLINK;
ffa0a2ee:	10 00       	RTS;

ffa0a2f0 <_spi_read_register_status>:
ffa0a2f0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a2f4:	f9 b0       	[FP + 0xc] = R1;
ffa0a2f6:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a2fa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a2fe:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a302:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a304:	10 97       	W[P2] = R0;
ffa0a306:	24 00       	SSYNC;
ffa0a308:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a30c:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a310:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a314:	10 97       	W[P2] = R0;
ffa0a316:	ff e3 43 ff 	CALL 0xffa0a19c <_spi_delay>;
ffa0a31a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a31e:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0a322:	50 95       	R0 = W[P2] (X);
ffa0a324:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a328:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0a32c:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a330:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a332:	10 97       	W[P2] = R0;
ffa0a334:	ff e3 34 ff 	CALL 0xffa0a19c <_spi_delay>;
ffa0a338:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a33c:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0a340:	50 95       	R0 = W[P2] (X);
ffa0a342:	fa ac       	P2 = [FP + 0xc];
ffa0a344:	10 9b       	B[P2] = R0;
ffa0a346:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0a34a:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a34e:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a350:	10 97       	W[P2] = R0;
ffa0a352:	24 00       	SSYNC;
ffa0a354:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a358:	01 e8 00 00 	UNLINK;
ffa0a35c:	10 00       	RTS;
	...

ffa0a360 <_spi_write_byte>:
ffa0a360:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a364:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a368:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a36c:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a370:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a372:	10 97       	W[P2] = R0;
ffa0a374:	24 00       	SSYNC;
ffa0a376:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a37a:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a37e:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a382:	10 97       	W[P2] = R0;
ffa0a384:	ff e3 0c ff 	CALL 0xffa0a19c <_spi_delay>;
ffa0a388:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a38c:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0a390:	50 95       	R0 = W[P2] (X);
ffa0a392:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a396:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0a39a:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a39e:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a3a0:	10 97       	W[P2] = R0;
ffa0a3a2:	24 00       	SSYNC;
ffa0a3a4:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a3a8:	01 e8 00 00 	UNLINK;
ffa0a3ac:	10 00       	RTS;
	...

ffa0a3b0 <_spi_write_packet>:
ffa0a3b0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a3b4:	b8 b0       	[FP + 0x8] = R0;
ffa0a3b6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a3ba:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a3be:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a3c0:	10 97       	W[P2] = R0;
ffa0a3c2:	24 00       	SSYNC;
ffa0a3c4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a3c8:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a3cc:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa0a3d0:	10 97       	W[P2] = R0;
ffa0a3d2:	ff e3 e5 fe 	CALL 0xffa0a19c <_spi_delay>;
ffa0a3d6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a3da:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a3de:	20 e1 07 50 	R0 = 0x5007 (X);		/*		R0=0x5007(20487) */
ffa0a3e2:	10 97       	W[P2] = R0;
ffa0a3e4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a3e8:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xffc00d50(-4190896) */
ffa0a3ec:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa0a3ee:	10 97       	W[P2] = R0;
ffa0a3f0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d50(-4190896) */
ffa0a3f4:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xffc00d54(-4190892) */
ffa0a3f8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a3fa:	10 97       	W[P2] = R0;
ffa0a3fc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d54(-4190892) */
ffa0a400:	0a e1 44 0d 	P2.L = 0xd44;		/* (3396)	P2=0xffc00d44(-4190908) */
ffa0a404:	b8 a0       	R0 = [FP + 0x8];
ffa0a406:	10 93       	[P2] = R0;
ffa0a408:	24 00       	SSYNC;
ffa0a40a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d44(-4190908) */
ffa0a40e:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa0a412:	20 e1 81 00 	R0 = 0x81 (X);		/*		R0=0x81(129) */
ffa0a416:	10 97       	W[P2] = R0;
ffa0a418:	01 20       	JUMP.S 0xffa0a41a <_spi_write_packet+0x6a>;
	...
ffa0a422:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa0a426:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a42a:	50 95       	R0 = W[P2] (X);
ffa0a42c:	c0 42       	R0 = R0.L (Z);
ffa0a42e:	00 49       	CC = BITTST (R0, 0x0);		/* bit  0 */
ffa0a430:	00 02       	R0 = CC;
ffa0a432:	00 0c       	CC = R0 == 0x0;
ffa0a434:	f3 1b       	IF CC JUMP 0xffa0a41a <_spi_write_packet+0x6a>;
ffa0a436:	00 00       	NOP;
ffa0a438:	00 00       	NOP;
ffa0a43a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a43e:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0a442:	50 95       	R0 = W[P2] (X);
ffa0a444:	c1 42       	R1 = R0.L (Z);
ffa0a446:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa0a448:	01 54       	R0 = R1 & R0;
ffa0a44a:	00 0c       	CC = R0 == 0x0;
ffa0a44c:	e7 13       	IF !CC JUMP 0xffa0a41a <_spi_write_packet+0x6a>;
ffa0a44e:	00 00       	NOP;
ffa0a450:	00 00       	NOP;
ffa0a452:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0a456:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a45a:	50 95       	R0 = W[P2] (X);
ffa0a45c:	c1 42       	R1 = R0.L (Z);
ffa0a45e:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa0a460:	01 54       	R0 = R1 & R0;
ffa0a462:	00 0c       	CC = R0 == 0x0;
ffa0a464:	db 13       	IF !CC JUMP 0xffa0a41a <_spi_write_packet+0x6a>;
ffa0a466:	ff e3 9b fe 	CALL 0xffa0a19c <_spi_delay>;
ffa0a46a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a46e:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a472:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a474:	10 97       	W[P2] = R0;
ffa0a476:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a47a:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a47e:	20 e1 0d 50 	R0 = 0x500d (X);		/*		R0=0x500d(20493) */
ffa0a482:	10 97       	W[P2] = R0;
ffa0a484:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a488:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa0a48c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a48e:	10 97       	W[P2] = R0;
ffa0a490:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa0a494:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a498:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a49a:	10 97       	W[P2] = R0;
ffa0a49c:	24 00       	SSYNC;
ffa0a49e:	01 e8 00 00 	UNLINK;
ffa0a4a2:	10 00       	RTS;

ffa0a4a4 <_spi_write_packet_noDMA>:
ffa0a4a4:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa0a4a8:	b8 b0       	[FP + 0x8] = R0;
ffa0a4aa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a4ae:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a4b2:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a4b4:	10 97       	W[P2] = R0;
ffa0a4b6:	24 00       	SSYNC;
ffa0a4b8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a4bc:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a4c0:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa0a4c4:	10 97       	W[P2] = R0;
ffa0a4c6:	ff e3 6b fe 	CALL 0xffa0a19c <_spi_delay>;
ffa0a4ca:	b8 a0       	R0 = [FP + 0x8];
ffa0a4cc:	f0 bb       	[FP -0x4] = R0;
ffa0a4ce:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a4d0:	e0 bb       	[FP -0x8] = R0;
ffa0a4d2:	11 20       	JUMP.S 0xffa0a4f4 <_spi_write_packet_noDMA+0x50>;
ffa0a4d4:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00730(-4192464) */
ffa0a4d8:	09 e1 0c 05 	P1.L = 0x50c;		/* (1292)	P1=0xffc0050c(-4193012) */
ffa0a4dc:	fa b9       	P2 = [FP -0x4];
ffa0a4de:	50 99       	R0 = B[P2] (X);
ffa0a4e0:	00 43       	R0 = R0.B (X);
ffa0a4e2:	08 97       	W[P1] = R0;
ffa0a4e4:	f0 b9       	R0 = [FP -0x4];
ffa0a4e6:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a4e8:	f0 bb       	[FP -0x4] = R0;
ffa0a4ea:	ff e3 59 fe 	CALL 0xffa0a19c <_spi_delay>;
ffa0a4ee:	e0 b9       	R0 = [FP -0x8];
ffa0a4f0:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a4f2:	e0 bb       	[FP -0x8] = R0;
ffa0a4f4:	e0 b9       	R0 = [FP -0x8];
ffa0a4f6:	f9 60       	R1 = 0x1f (X);		/*		R1=0x1f( 31) */
ffa0a4f8:	08 09       	CC = R0 <= R1;
ffa0a4fa:	ed 1b       	IF CC JUMP 0xffa0a4d4 <_spi_write_packet_noDMA+0x30>;
ffa0a4fc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a500:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a504:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a506:	10 97       	W[P2] = R0;
ffa0a508:	24 00       	SSYNC;
ffa0a50a:	01 e8 00 00 	UNLINK;
ffa0a50e:	10 00       	RTS;

ffa0a510 <_spi_read_packet>:
ffa0a510:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa0a514:	b8 b0       	[FP + 0x8] = R0;
ffa0a516:	b8 a0       	R0 = [FP + 0x8];
ffa0a518:	f0 bb       	[FP -0x4] = R0;
ffa0a51a:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0a51c:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0a520:	ff e3 62 fe 	CALL 0xffa0a1e4 <_spi_write_register>;
ffa0a524:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a528:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a52c:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a52e:	10 97       	W[P2] = R0;
ffa0a530:	24 00       	SSYNC;
ffa0a532:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a536:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a53a:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa0a53e:	10 97       	W[P2] = R0;
ffa0a540:	ff e3 2e fe 	CALL 0xffa0a19c <_spi_delay>;
ffa0a544:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a546:	b8 e6 fb ff 	B[FP + -0x5] = R0;
ffa0a54a:	18 20       	JUMP.S 0xffa0a57a <_spi_read_packet+0x6a>;
ffa0a54c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a550:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a554:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a556:	10 97       	W[P2] = R0;
ffa0a558:	ff e3 22 fe 	CALL 0xffa0a19c <_spi_delay>;
ffa0a55c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a560:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0a564:	50 95       	R0 = W[P2] (X);
ffa0a566:	fa b9       	P2 = [FP -0x4];
ffa0a568:	10 9b       	B[P2] = R0;
ffa0a56a:	f0 b9       	R0 = [FP -0x4];
ffa0a56c:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a56e:	f0 bb       	[FP -0x4] = R0;
ffa0a570:	b8 e5 fb ff 	R0 = B[FP + -0x5] (X);
ffa0a574:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a576:	b8 e6 fb ff 	B[FP + -0x5] = R0;
ffa0a57a:	b8 e4 fb ff 	R0 = B[FP + -0x5] (Z);
ffa0a57e:	f9 60       	R1 = 0x1f (X);		/*		R1=0x1f( 31) */
ffa0a580:	08 0a       	CC = R0 <= R1 (IU);
ffa0a582:	e5 1b       	IF CC JUMP 0xffa0a54c <_spi_read_packet+0x3c>;
ffa0a584:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0a588:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a58c:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a58e:	10 97       	W[P2] = R0;
ffa0a590:	24 00       	SSYNC;
ffa0a592:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a594:	01 e8 00 00 	UNLINK;
ffa0a598:	10 00       	RTS;
	...

ffa0a59c <_spi_read_packet_nocheck>:
ffa0a59c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a5a0:	b8 b0       	[FP + 0x8] = R0;
ffa0a5a2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a5a6:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a5aa:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a5ac:	10 97       	W[P2] = R0;
ffa0a5ae:	24 00       	SSYNC;
ffa0a5b0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a5b4:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a5b8:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa0a5bc:	10 97       	W[P2] = R0;
ffa0a5be:	ff e3 ef fd 	CALL 0xffa0a19c <_spi_delay>;
ffa0a5c2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a5c6:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a5ca:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a5cc:	10 97       	W[P2] = R0;
ffa0a5ce:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a5d2:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xffc00d50(-4190896) */
ffa0a5d6:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa0a5d8:	10 97       	W[P2] = R0;
ffa0a5da:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d50(-4190896) */
ffa0a5de:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xffc00d54(-4190892) */
ffa0a5e2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a5e4:	10 97       	W[P2] = R0;
ffa0a5e6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d54(-4190892) */
ffa0a5ea:	0a e1 44 0d 	P2.L = 0xd44;		/* (3396)	P2=0xffc00d44(-4190908) */
ffa0a5ee:	b8 a0       	R0 = [FP + 0x8];
ffa0a5f0:	10 93       	[P2] = R0;
ffa0a5f2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d44(-4190908) */
ffa0a5f6:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa0a5fa:	20 e1 83 00 	R0 = 0x83 (X);		/*		R0=0x83(131) */
ffa0a5fe:	10 97       	W[P2] = R0;
ffa0a600:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa0a604:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a608:	20 e1 06 50 	R0 = 0x5006 (X);		/*		R0=0x5006(20486) */
ffa0a60c:	10 97       	W[P2] = R0;
	...
ffa0a616:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a61a:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a61e:	50 95       	R0 = W[P2] (X);
ffa0a620:	c0 42       	R0 = R0.L (Z);
ffa0a622:	00 49       	CC = BITTST (R0, 0x0);		/* bit  0 */
ffa0a624:	00 02       	R0 = CC;
ffa0a626:	00 0c       	CC = R0 == 0x0;
ffa0a628:	f3 1b       	IF CC JUMP 0xffa0a60e <_spi_read_packet_nocheck+0x72>;
ffa0a62a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a62e:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa0a632:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a634:	10 97       	W[P2] = R0;
ffa0a636:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa0a63a:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a63e:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a640:	10 97       	W[P2] = R0;
ffa0a642:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a646:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a64a:	20 e1 0d 50 	R0 = 0x500d (X);		/*		R0=0x500d(20493) */
ffa0a64e:	10 97       	W[P2] = R0;
ffa0a650:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a654:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a658:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a65a:	10 97       	W[P2] = R0;
ffa0a65c:	24 00       	SSYNC;
ffa0a65e:	01 e8 00 00 	UNLINK;
ffa0a662:	10 00       	RTS;

ffa0a664 <_radio_set_rx>:
ffa0a664:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a668:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a66c:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a670:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a672:	10 97       	W[P2] = R0;
ffa0a674:	24 00       	SSYNC;
ffa0a676:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a678:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a67a:	ff e3 b5 fd 	CALL 0xffa0a1e4 <_spi_write_register>;
ffa0a67e:	20 e1 e2 00 	R0 = 0xe2 (X);		/*		R0=0xe2(226) */
ffa0a682:	ff e3 6f fe 	CALL 0xffa0a360 <_spi_write_byte>;
ffa0a686:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a688:	f9 60       	R1 = 0x1f (X);		/*		R1=0x1f( 31) */
ffa0a68a:	ff e3 ad fd 	CALL 0xffa0a1e4 <_spi_write_register>;
ffa0a68e:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0a690:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0a694:	ff e3 a8 fd 	CALL 0xffa0a1e4 <_spi_write_register>;
ffa0a698:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a69c:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a6a0:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a6a2:	10 97       	W[P2] = R0;
ffa0a6a4:	24 00       	SSYNC;
ffa0a6a6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a6aa:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a6ae:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a6b0:	10 97       	W[P2] = R0;
ffa0a6b2:	24 00       	SSYNC;
ffa0a6b4:	01 e8 00 00 	UNLINK;
ffa0a6b8:	10 00       	RTS;
	...

ffa0a6bc <_radio_set_tx>:
ffa0a6bc:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a6c0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a6c4:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a6c8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a6ca:	10 97       	W[P2] = R0;
ffa0a6cc:	24 00       	SSYNC;
ffa0a6ce:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a6d0:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a6d2:	ff e3 89 fd 	CALL 0xffa0a1e4 <_spi_write_register>;
ffa0a6d6:	20 e1 e1 00 	R0 = 0xe1 (X);		/*		R0=0xe1(225) */
ffa0a6da:	ff e3 43 fe 	CALL 0xffa0a360 <_spi_write_byte>;
ffa0a6de:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0a6e0:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0a6e4:	ff e3 80 fd 	CALL 0xffa0a1e4 <_spi_write_register>;
ffa0a6e8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a6ea:	f1 60       	R1 = 0x1e (X);		/*		R1=0x1e( 30) */
ffa0a6ec:	ff e3 7c fd 	CALL 0xffa0a1e4 <_spi_write_register>;
ffa0a6f0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a6f4:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a6f8:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a6fa:	10 97       	W[P2] = R0;
ffa0a6fc:	01 e8 00 00 	UNLINK;
ffa0a700:	10 00       	RTS;
	...

ffa0a704 <_radio_wait_irq>:
ffa0a704:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0a708:	b8 b0       	[FP + 0x8] = R0;
ffa0a70a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a70c:	f0 bb       	[FP -0x4] = R0;
ffa0a70e:	08 20       	JUMP.S 0xffa0a71e <_radio_wait_irq+0x1a>;
	...
ffa0a718:	f0 b9       	R0 = [FP -0x4];
ffa0a71a:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a71c:	f0 bb       	[FP -0x4] = R0;
ffa0a71e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a722:	0a e1 00 07 	P2.L = 0x700;		/* (1792)	P2=0xffc00700(-4192512) */
ffa0a726:	50 95       	R0 = W[P2] (X);
ffa0a728:	c1 42       	R1 = R0.L (Z);
ffa0a72a:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa0a72c:	01 54       	R0 = R1 & R0;
ffa0a72e:	00 0c       	CC = R0 == 0x0;
ffa0a730:	05 18       	IF CC JUMP 0xffa0a73a <_radio_wait_irq+0x36>;
ffa0a732:	f1 b9       	R1 = [FP -0x4];
ffa0a734:	b8 a0       	R0 = [FP + 0x8];
ffa0a736:	81 08       	CC = R1 < R0;
ffa0a738:	ec 1b       	IF CC JUMP 0xffa0a710 <_radio_wait_irq+0xc>;
ffa0a73a:	f1 b9       	R1 = [FP -0x4];
ffa0a73c:	b8 a0       	R0 = [FP + 0x8];
ffa0a73e:	81 08       	CC = R1 < R0;
ffa0a740:	06 10       	IF !CC JUMP 0xffa0a74c <_radio_wait_irq+0x48>;
ffa0a742:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0a744:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0a748:	ff e3 4e fd 	CALL 0xffa0a1e4 <_spi_write_register>;
ffa0a74c:	f0 b9       	R0 = [FP -0x4];
ffa0a74e:	01 e8 00 00 	UNLINK;
ffa0a752:	10 00       	RTS;

ffa0a754 <_radio_init>:
ffa0a754:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a758:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a75c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00700(-4192512) */
ffa0a760:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a764:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a766:	10 97       	W[P2] = R0;
ffa0a768:	24 00       	SSYNC;
ffa0a76a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a76e:	0a e1 14 05 	P2.L = 0x514;		/* (1300)	P2=0xffc00514(-4193004) */
ffa0a772:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa0a774:	10 97       	W[P2] = R0;
ffa0a776:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00514(-4193004) */
ffa0a77a:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a77e:	20 e1 2d 50 	R0 = 0x502d (X);		/*		R0=0x502d(20525) */
ffa0a782:	10 97       	W[P2] = R0;
ffa0a784:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a788:	0a e1 04 05 	P2.L = 0x504;		/* (1284)	P2=0xffc00504(-4193020) */
ffa0a78c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a78e:	10 97       	W[P2] = R0;
ffa0a790:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00504(-4193020) */
ffa0a794:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a798:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a79a:	10 97       	W[P2] = R0;
ffa0a79c:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc0050c(-4193012) */
ffa0a7a0:	09 e1 40 07 	P1.L = 0x740;		/* (1856)	P1=0xffc00740(-4192448) */
ffa0a7a4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a7a8:	0a e1 40 07 	P2.L = 0x740;		/* (1856)	P2=0xffc00740(-4192448) */
ffa0a7ac:	50 95       	R0 = W[P2] (X);
ffa0a7ae:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa0a7b0:	08 97       	W[P1] = R0;
ffa0a7b2:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00740(-4192448) */
ffa0a7b6:	09 e1 30 07 	P1.L = 0x730;		/* (1840)	P1=0xffc00730(-4192464) */
ffa0a7ba:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00740(-4192448) */
ffa0a7be:	0a e1 30 07 	P2.L = 0x730;		/* (1840)	P2=0xffc00730(-4192464) */
ffa0a7c2:	51 95       	R1 = W[P2] (X);
ffa0a7c4:	b8 63       	R0 = -0x9 (X);		/*		R0=0xfffffff7( -9) */
ffa0a7c6:	01 54       	R0 = R1 & R0;
ffa0a7c8:	08 97       	W[P1] = R0;
ffa0a7ca:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00730(-4192464) */
ffa0a7ce:	09 e1 30 07 	P1.L = 0x730;		/* (1840)	P1=0xffc00730(-4192464) */
ffa0a7d2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00730(-4192464) */
ffa0a7d6:	0a e1 30 07 	P2.L = 0x730;		/* (1840)	P2=0xffc00730(-4192464) */
ffa0a7da:	51 95       	R1 = W[P2] (X);
ffa0a7dc:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a7de:	01 56       	R0 = R1 | R0;
ffa0a7e0:	08 97       	W[P1] = R0;
ffa0a7e2:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a7e6:	21 e1 7c 00 	R1 = 0x7c (X);		/*		R1=0x7c(124) */
ffa0a7ea:	08 0a       	CC = R0 <= R1 (IU);
ffa0a7ec:	05 18       	IF CC JUMP 0xffa0a7f6 <_radio_init+0xa2>;
ffa0a7ee:	20 e1 7c 00 	R0 = 0x7c (X);		/*		R0=0x7c(124) */
ffa0a7f2:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a7f6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a7f8:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a7fa:	ff e3 f5 fc 	CALL 0xffa0a1e4 <_spi_write_register>;
ffa0a7fe:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a800:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a802:	ff e3 29 fd 	CALL 0xffa0a254 <_spi_write_register_ver>;
ffa0a806:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a808:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa0a80a:	ff e3 25 fd 	CALL 0xffa0a254 <_spi_write_register_ver>;
ffa0a80e:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a810:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa0a812:	ff e3 21 fd 	CALL 0xffa0a254 <_spi_write_register_ver>;
ffa0a816:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa0a818:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a81a:	ff e3 1d fd 	CALL 0xffa0a254 <_spi_write_register_ver>;
ffa0a81e:	b9 e4 08 00 	R1 = B[FP + 0x8] (Z);
ffa0a822:	28 60       	R0 = 0x5 (X);		/*		R0=0x5(  5) */
ffa0a824:	ff e3 18 fd 	CALL 0xffa0a254 <_spi_write_register_ver>;
ffa0a828:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa0a82a:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa0a82c:	ff e3 14 fd 	CALL 0xffa0a254 <_spi_write_register_ver>;
ffa0a830:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0a832:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0a836:	ff e3 0f fd 	CALL 0xffa0a254 <_spi_write_register_ver>;
ffa0a83a:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa0a83c:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa0a83e:	ff e3 0b fd 	CALL 0xffa0a254 <_spi_write_register_ver>;
ffa0a842:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00730(-4192464) */
ffa0a846:	0a e1 6c 0d 	P2.L = 0xd6c;		/* (3436)	P2=0xffc00d6c(-4190868) */
ffa0a84a:	20 e1 00 50 	R0 = 0x5000 (X);		/*		R0=0x5000(20480) */
ffa0a84e:	10 97       	W[P2] = R0;
ffa0a850:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d6c(-4190868) */
ffa0a854:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a858:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a85a:	10 97       	W[P2] = R0;
ffa0a85c:	20 e1 e2 00 	R0 = 0xe2 (X);		/*		R0=0xe2(226) */
ffa0a860:	ff e3 80 fd 	CALL 0xffa0a360 <_spi_write_byte>;
ffa0a864:	20 e1 e1 00 	R0 = 0xe1 (X);		/*		R0=0xe1(225) */
ffa0a868:	ff e3 7c fd 	CALL 0xffa0a360 <_spi_write_byte>;
ffa0a86c:	40 43       	R0 = R0.B (Z);
ffa0a86e:	01 e8 00 00 	UNLINK;
ffa0a872:	10 00       	RTS;
