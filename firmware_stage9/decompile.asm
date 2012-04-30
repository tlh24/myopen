
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
ffa0814e:	08 e1 a8 9a 	P0.L = 0x9aa8;		/* (-25944)	P0=0xffa09aa8 <_main> */
ffa08152:	48 e1 a0 ff 	P0.H = 0xffa0;		/* (-96)	P0=0xffa09aa8 <_main> */
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
ffa08186:	00 e3 bf 0b 	CALL 0xffa09904 <_exception_report>;
ffa0818a:	12 00       	RTX;

ffa0818c <_HWHANDLER>:
ffa0818c:	c1 31       	R0 = SEQSTAT;
ffa0818e:	cc 31       	R1 = RETX;
ffa08190:	fe 2f       	JUMP.S 0xffa0818c <_HWHANDLER>;
ffa08192:	11 00       	RTI;

ffa08194 <_NHANDLER>:
ffa08194:	00 e3 78 0c 	CALL 0xffa09a84 <_nmi_report>;
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
ffa08212:	00 e3 79 0b 	CALL 0xffa09904 <_exception_report>;
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
ffa0824e:	00 e3 55 04 	CALL 0xffa08af8 <_get_asm2>;
ffa08252:	3e 61       	R6 = 0x27 (X);		/*		R6=0x27( 39) */
ffa08254:	1e 97       	W[P3] = R6;
ffa08256:	00 e3 dd 01 	CALL 0xffa08610 <_get_asm>;
ffa0825a:	26 e1 70 00 	R6 = 0x70 (X);		/*		R6=0x70(112) */
ffa0825e:	1e 97       	W[P3] = R6;
ffa08260:	00 e3 4c 04 	CALL 0xffa08af8 <_get_asm2>;
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
ffa0828e:	00 e3 35 04 	CALL 0xffa08af8 <_get_asm2>;
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
ffa082a6:	00 e3 29 04 	CALL 0xffa08af8 <_get_asm2>;
ffa082aa:	26 e1 e2 00 	R6 = 0xe2 (X);		/*		R6=0xe2(226) */
ffa082ae:	1e 97       	W[P3] = R6;
ffa082b0:	00 e3 b0 01 	CALL 0xffa08610 <_get_asm>;
ffa082b4:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa082b6:	0f b5       	W[P1 + 0x8] = R7;
ffa082b8:	00 e3 20 04 	CALL 0xffa08af8 <_get_asm2>;
ffa082bc:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa082be:	8f b4       	W[P1 + 0x4] = R7;
ffa082c0:	00 e3 a8 01 	CALL 0xffa08610 <_get_asm>;
ffa082c4:	26 e1 e1 00 	R6 = 0xe1 (X);		/*		R6=0xe1(225) */
ffa082c8:	1e 97       	W[P3] = R6;
ffa082ca:	00 e3 17 04 	CALL 0xffa08af8 <_get_asm2>;
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
ffa083b8:	00 e3 f8 05 	CALL 0xffa08fa8 <_init6>;
ffa083bc:	0d e1 00 61 	P5.L = 0x6100;		/* (24832)	P5=0xffc06100(-4169472) */
ffa083c0:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff806100 */
ffa083c4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa083c6:	28 92       	[P5++] = R0;
ffa083c8:	28 92       	[P5++] = R0;
ffa083ca:	28 92       	[P5++] = R0;
ffa083cc:	28 92       	[P5++] = R0;
ffa083ce:	28 92       	[P5++] = R0;
ffa083d0:	28 92       	[P5++] = R0;
ffa083d2:	28 92       	[P5++] = R0;
ffa083d4:	28 92       	[P5++] = R0;
ffa083d6:	00 e3 25 07 	CALL 0xffa09220 <_enc_create>;
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
ffa0841e:	00 e3 6d 03 	CALL 0xffa08af8 <_get_asm2>;
ffa08422:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa08424:	f5 bb       	[FP -0x4] = R5;
ffa08426:	ff e3 3d ff 	CALL 0xffa082a0 <_clearfifos_asm>;
ffa0842a:	ff e3 0f ff 	CALL 0xffa08248 <_clearirq_asm>;
ffa0842e:	85 68       	P5 = 0x10 (X);		/*		P5=0x10( 16) */
ffa08430:	a2 e0 24 50 	LSETUP(0xffa08434 <wp_top>, 0xffa08478 <wp_bot>) LC0 = P5;

ffa08434 <wp_top>:
ffa08434:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa08436:	8f b4       	W[P1 + 0x4] = R7;
ffa08438:	00 e3 60 03 	CALL 0xffa08af8 <_get_asm2>;
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
ffa0845c:	00 e3 4e 03 	CALL 0xffa08af8 <_get_asm2>;
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
ffa08486:	00 e3 39 03 	CALL 0xffa08af8 <_get_asm2>;
ffa0848a:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa0848c:	8f b4       	W[P1 + 0x4] = R7;
ffa0848e:	00 e3 c1 00 	CALL 0xffa08610 <_get_asm>;
ffa08492:	26 e1 e2 00 	R6 = 0xe2 (X);		/*		R6=0xe2(226) */
ffa08496:	1e 97       	W[P3] = R6;
ffa08498:	00 e3 30 03 	CALL 0xffa08af8 <_get_asm2>;
ffa0849c:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa0849e:	0f b5       	W[P1 + 0x8] = R7;
ffa084a0:	00 e3 b8 00 	CALL 0xffa08610 <_get_asm>;
ffa084a4:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa084a6:	8f b4       	W[P1 + 0x4] = R7;
ffa084a8:	00 e3 28 03 	CALL 0xffa08af8 <_get_asm2>;
ffa084ac:	06 61       	R6 = 0x20 (X);		/*		R6=0x20( 32) */
ffa084ae:	1e 97       	W[P3] = R6;
ffa084b0:	00 e3 24 03 	CALL 0xffa08af8 <_get_asm2>;
ffa084b4:	fe 60       	R6 = 0x1f (X);		/*		R6=0x1f( 31) */
ffa084b6:	1e 97       	W[P3] = R6;
ffa084b8:	00 e3 ac 00 	CALL 0xffa08610 <_get_asm>;
ffa084bc:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa084be:	0f b5       	W[P1 + 0x8] = R7;
ffa084c0:	00 e3 1c 03 	CALL 0xffa08af8 <_get_asm2>;
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
ffa084de:	00 e3 0d 03 	CALL 0xffa08af8 <_get_asm2>;
ffa084e2:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa084e4:	8f b4       	W[P1 + 0x4] = R7;
ffa084e6:	00 e3 95 00 	CALL 0xffa08610 <_get_asm>;
ffa084ea:	26 e1 61 00 	R6 = 0x61 (X);		/*		R6=0x61( 97) */
ffa084ee:	1e 97       	W[P3] = R6;
ffa084f0:	00 e3 04 03 	CALL 0xffa08af8 <_get_asm2>;
ffa084f4:	25 68       	P5 = 0x4 (X);		/*		P5=0x4(  4) */
ffa084f6:	a2 e0 4b 50 	LSETUP(0xffa084fa <rp_top>, 0xffa0858c <rp_bot>) LC0 = P5;

ffa084fa <rp_top>:
ffa084fa:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa084fc:	e7 bb       	[FP -0x8] = R7;
ffa084fe:	d7 bb       	[FP -0xc] = R7;
ffa08500:	00 e3 fc 02 	CALL 0xffa08af8 <_get_asm2>;
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
ffa08524:	00 e3 ea 02 	CALL 0xffa08af8 <_get_asm2>;
ffa08528:	25 68       	P5 = 0x4 (X);		/*		P5=0x4(  4) */
ffa0852a:	b2 e0 0e 50 	LSETUP(0xffa0852e <v32_top>, 0xffa08546 <v32_bot>) LC1 = P5;

ffa0852e <v32_top>:
ffa0852e:	1f 97       	W[P3] = R7;
ffa08530:	00 e3 e4 02 	CALL 0xffa08af8 <_get_asm2>;
ffa08534:	9f a5       	R7 = W[P3 + 0xc] (Z);
ffa08536:	26 e1 ff 00 	R6 = 0xff (X);		/*		R6=0xff(255) */
ffa0853a:	f7 55       	R7 = R7 & R6;
ffa0853c:	d6 b9       	R6 = [FP -0xc];
ffa0853e:	82 c6 46 8c 	R6 = R6 << 0x8;
ffa08542:	be 51       	R6 = R6 + R7;
ffa08544:	d6 bb       	[FP -0xc] = R6;

ffa08546 <v32_bot>:
ffa08546:	00 00       	NOP;
ffa08548:	00 e3 d8 02 	CALL 0xffa08af8 <_get_asm2>;
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
ffa08566:	00 e3 c9 02 	CALL 0xffa08af8 <_get_asm2>;
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
ffa08588:	00 e3 b8 02 	CALL 0xffa08af8 <_get_asm2>;

ffa0858c <rp_bot>:
ffa0858c:	00 00       	NOP;
ffa0858e:	00 e3 41 00 	CALL 0xffa08610 <_get_asm>;
ffa08592:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa08594:	0f b5       	W[P1 + 0x8] = R7;
ffa08596:	00 e3 b1 02 	CALL 0xffa08af8 <_get_asm2>;

ffa0859a <no_rxpacket>:
ffa0859a:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa0859c:	8f b4       	W[P1 + 0x4] = R7;
ffa0859e:	00 e3 39 00 	CALL 0xffa08610 <_get_asm>;
ffa085a2:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa085a4:	8f b4       	W[P1 + 0x4] = R7;
ffa085a6:	00 e3 a9 02 	CALL 0xffa08af8 <_get_asm2>;
ffa085aa:	26 e1 e1 00 	R6 = 0xe1 (X);		/*		R6=0xe1(225) */
ffa085ae:	1e 97       	W[P3] = R6;
ffa085b0:	00 e3 30 00 	CALL 0xffa08610 <_get_asm>;
ffa085b4:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa085b6:	0f b5       	W[P1 + 0x8] = R7;
ffa085b8:	00 e3 a0 02 	CALL 0xffa08af8 <_get_asm2>;
ffa085bc:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa085be:	8f b4       	W[P1 + 0x4] = R7;
ffa085c0:	00 e3 28 00 	CALL 0xffa08610 <_get_asm>;
ffa085c4:	06 61       	R6 = 0x20 (X);		/*		R6=0x20( 32) */
ffa085c6:	1e 97       	W[P3] = R6;
ffa085c8:	00 e3 98 02 	CALL 0xffa08af8 <_get_asm2>;
ffa085cc:	f6 60       	R6 = 0x1e (X);		/*		R6=0x1e( 30) */
ffa085ce:	1e 97       	W[P3] = R6;
ffa085d0:	00 e3 20 00 	CALL 0xffa08610 <_get_asm>;
ffa085d4:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa085d6:	0f b5       	W[P1 + 0x8] = R7;
ffa085d8:	00 e3 90 02 	CALL 0xffa08af8 <_get_asm2>;
ffa085dc:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00004(-4194300) */
ffa085e0:	0d e1 08 02 	P5.L = 0x208;		/* (520)	P5=0xffc00208(-4193784) */
ffa085e4:	2f 93       	[P5] = R7;
ffa085e6:	00 e3 15 00 	CALL 0xffa08610 <_get_asm>;
ffa085ea:	87 60       	R7 = 0x10 (X);		/*		R7=0x10( 16) */
ffa085ec:	8f b4       	W[P1 + 0x4] = R7;
ffa085ee:	00 e3 85 02 	CALL 0xffa08af8 <_get_asm2>;
ffa085f2:	e7 b8       	R7 = [FP -0x48];
ffa085f4:	86 e1 01 00 	R6 = 0x1 (Z);		/*		R6=0x1(  1) */
ffa085f8:	f7 51       	R7 = R7 + R6;
ffa085fa:	82 c6 e7 8d 	R6 = R7 >> 0x4;
ffa085fe:	0e b5       	W[P1 + 0x8] = R6;
ffa08600:	47 4c       	BITCLR (R7, 0x8);		/* bit  8 */
ffa08602:	e7 ba       	[FP -0x48] = R7;
ffa08604:	00 e3 7a 02 	CALL 0xffa08af8 <_get_asm2>;
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
ffa08660:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || R5 = [I1--] || NOP;
ffa08664:	8d 9c 00 00 
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
ffa08724:	05 c8 8a e9 	R6.H = (A1 += R1.H * R2.H), R6.L = (A0 += R1.L * R2.L) || I1 += M3 || R5 = [I0++];
ffa08728:	6d 9e 05 9c 
ffa0872c:	00 cc 3e ee 	R7 = R7 -|- R6 (S) || I0 -= M1 || [I2++] = R0;
ffa08730:	74 9e 10 9e 
ffa08734:	81 ce 3f 4c 	R6 = R7 << 0x7 (V, S) || I1 += M2 || R2 = [I0];
ffa08738:	69 9e 02 9d 
ffa0873c:	81 ce 96 4d 	R6 = R6 >>> 0xe (V) || R1 = [I1++] || NOP;
ffa08740:	09 9c 00 00 
ffa08744:	00 c8 0e c0 	A1 = R1.H * R6.H, A0 = R1.L * R6.L || NOP || NOP;
ffa08748:	00 00 00 00 
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
ffa087c4:	81 ce 90 0d 	R6 = R0 >>> 0xe (V) || [I2++] = R1 || NOP;
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
ffa08834:	81 ce 90 41 	R0 = R0 >>> 0xe (V) || R5 = [I0++] || [I2++] = R1;
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
ffa08852:	90 54       	R2 = R0 & R2;
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
ffa08880:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || R5 = [I1--] || NOP;
ffa08884:	8d 9c 00 00 
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
ffa08944:	05 c8 8a e9 	R6.H = (A1 += R1.H * R2.H), R6.L = (A0 += R1.L * R2.L) || I1 += M3 || R5 = [I0++];
ffa08948:	6d 9e 05 9c 
ffa0894c:	00 cc 3e ee 	R7 = R7 -|- R6 (S) || I0 -= M1 || [I2++] = R0;
ffa08950:	74 9e 10 9e 
ffa08954:	81 ce 3f 4c 	R6 = R7 << 0x7 (V, S) || I1 += M2 || R2 = [I0];
ffa08958:	69 9e 02 9d 
ffa0895c:	81 ce 96 4d 	R6 = R6 >>> 0xe (V) || R1 = [I1++] || NOP;
ffa08960:	09 9c 00 00 
ffa08964:	00 c8 0e c0 	A1 = R1.H * R6.H, A0 = R1.L * R6.L || NOP || NOP;
ffa08968:	00 00 00 00 
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

ffa08af8 <_get_asm2>:
ffa08af8:	68 b9       	P0 = [FP -0x28];
ffa08afa:	27 e1 00 01 	R7 = 0x100 (X);		/*		R7=0x100(256) */
ffa08afe:	8f b4       	W[P1 + 0x4] = R7;
ffa08b00:	27 e1 80 00 	R7 = 0x80 (X);		/*		R7=0x80(128) */
ffa08b04:	0f b5       	W[P1 + 0x8] = R7;

ffa08b06 <wait_samples>:
ffa08b06:	03 a7       	R3 = W[P0 + 0x18] (Z);
ffa08b08:	03 48       	CC = !BITTST (R3, 0x0);		/* bit  0 */
ffa08b0a:	fe 1b       	IF CC JUMP 0xffa08b06 <wait_samples>;
ffa08b0c:	00 95       	R0 = W[P0] (Z);
ffa08b0e:	01 95       	R1 = W[P0] (Z);
ffa08b10:	d2 b8       	R2 = [FP -0x4c];
ffa08b12:	81 4f       	R1 <<= 0x10;
ffa08b14:	08 56       	R0 = R0 | R1;
ffa08b16:	d0 55       	R7 = R0 & R2;
ffa08b18:	05 9c       	R5 = [I0++];
ffa08b1a:	8d b5       	W[P1 + 0xc] = R5;
ffa08b1c:	c6 b8       	R6 = [FP -0x50];
ffa08b1e:	00 00       	NOP;
ffa08b20:	03 c8 00 18 	MNOP || R5 = [I0++] || R1 = [I1++];
ffa08b24:	05 9c 09 9c 
ffa08b28:	00 c8 3d c0 	A1 = R7.H * R5.H, A0 = R7.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa08b2c:	05 9c 0a 9c 
ffa08b30:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || R4 = [I1++];
ffa08b34:	05 9c 0c 9c 
ffa08b38:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R5 = [I0++] || R3 = [I1++];
ffa08b3c:	05 9c 0b 9c 
ffa08b40:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || [I2++] = R7;
ffa08b44:	05 9c 17 9e 
ffa08b48:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || R5 = [I1--] || NOP;
ffa08b4c:	8d 9c 00 00 
ffa08b50:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || [I2++] = R1 || NOP;
ffa08b54:	11 9e 00 00 
ffa08b58:	83 ce 38 00 	A0 = A0 << 0x7 || [I2++] = R3 || NOP;
ffa08b5c:	13 9e 00 00 
ffa08b60:	83 ce 38 10 	A1 = A1 << 0x7 || [I2++] = R0 || NOP;
ffa08b64:	10 9e 00 00 
ffa08b68:	07 c8 c0 39 	R7.H = A1, R7.L = A0 || I1 += M0 || NOP;
ffa08b6c:	61 9e 00 00 
ffa08b70:	03 c8 00 18 	MNOP || I0 += M3 || R3 = [I2++];
ffa08b74:	6c 9e 13 9c 
ffa08b78:	81 ce 6f 40 	R0 = R7 << 0xd (V, S) || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08b7c:	89 9d 02 9c 
ffa08b80:	00 c8 0a c0 	A1 = R1.H * R2.H, A0 = R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08b84:	89 9d 02 9c 
ffa08b88:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08b8c:	89 9d 02 9c 
ffa08b90:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08b94:	89 9d 02 9c 
ffa08b98:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08b9c:	89 9d 02 9c 
ffa08ba0:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08ba4:	89 9d 02 9c 
ffa08ba8:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08bac:	89 9d 02 9c 
ffa08bb0:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08bb4:	89 9d 02 9c 
ffa08bb8:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08bbc:	89 9d 02 9c 
ffa08bc0:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08bc4:	89 9d 02 9c 
ffa08bc8:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08bcc:	89 9d 02 9c 
ffa08bd0:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08bd4:	89 9d 02 9c 
ffa08bd8:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08bdc:	89 9d 02 9c 
ffa08be0:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08be4:	89 9d 02 9c 
ffa08be8:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08bec:	89 9d 02 9c 
ffa08bf0:	05 c8 8a e9 	R6.H = (A1 += R1.H * R2.H), R6.L = (A0 += R1.L * R2.L) || I1 += M3 || R5 = [I0++];
ffa08bf4:	6d 9e 05 9c 
ffa08bf8:	00 cc 3e ee 	R7 = R7 -|- R6 (S) || I0 -= M1 || [I2++] = R0;
ffa08bfc:	74 9e 10 9e 
ffa08c00:	81 ce 3f 4c 	R6 = R7 << 0x7 (V, S) || I1 += M2 || R2 = [I0];
ffa08c04:	69 9e 02 9d 
ffa08c08:	81 ce 96 4d 	R6 = R6 >>> 0xe (V) || R1 = [I1++] || NOP;
ffa08c0c:	09 9c 00 00 
ffa08c10:	00 c8 0e c0 	A1 = R1.H * R6.H, A0 = R1.L * R6.L || NOP || NOP;
ffa08c14:	00 00 00 00 
ffa08c18:	05 c8 15 e9 	R4.H = (A1 += R2.H * R5.H), R4.L = (A0 += R2.L * R5.L) || I1 -= M2 || NOP;
ffa08c1c:	79 9e 00 00 
ffa08c20:	03 c8 00 18 	MNOP || [I0 ++ M1] = R4 || NOP;
ffa08c24:	a4 9f 00 00 
ffa08c28:	03 c8 00 18 	MNOP || R5 = [I0++] || R1 = [I1++];
ffa08c2c:	05 9c 09 9c 
ffa08c30:	00 c8 3d c0 	A1 = R7.H * R5.H, A0 = R7.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa08c34:	05 9c 0a 9c 
ffa08c38:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || R3 = [I1++];
ffa08c3c:	05 9c 0b 9c 
ffa08c40:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R5 = [I0++] || R4 = [I1++];
ffa08c44:	05 9c 0c 9c 
ffa08c48:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || [I2++] = R7;
ffa08c4c:	05 9c 17 9e 
ffa08c50:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || [I2++] = R1 || NOP;
ffa08c54:	11 9e 00 00 
ffa08c58:	03 c8 00 18 	MNOP || R5 = [I0++] || [I2++] = R0;
ffa08c5c:	05 9c 10 9e 
ffa08c60:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || R5 = [I0++] || [I2++] = R3;
ffa08c64:	05 9c 13 9e 
ffa08c68:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || R1 = [I1++];
ffa08c6c:	05 9c 09 9c 
ffa08c70:	01 c8 25 c8 	A1 += R4.H * R5.H, A0 += R4.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa08c74:	05 9c 0a 9c 
ffa08c78:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || NOP;
ffa08c7c:	05 9c 00 00 
ffa08c80:	25 c8 15 e8 	R0.H = (A1 += R2.H * R5.H), R0.L = (A0 += R2.L * R5.L) (S2RND) || R5 = [I0++] || NOP;
ffa08c84:	05 9c 00 00 
ffa08c88:	00 cc 05 20 	R0 = R0 +|+ R5 (S) || [I2++] = R0 || NOP;
ffa08c8c:	10 9e 00 00 
ffa08c90:	81 ce 90 0d 	R6 = R0 >>> 0xe (V) || [I2++] = R1 || NOP;
ffa08c94:	11 9e 00 00 
ffa08c98:	03 c8 00 18 	MNOP || R5 = [I0++] || R1 = [I1++];
ffa08c9c:	05 9c 09 9c 
ffa08ca0:	00 c8 3d c0 	A1 = R7.H * R5.H, A0 = R7.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa08ca4:	05 9c 0a 9c 
ffa08ca8:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || R3 = [I1++];
ffa08cac:	05 9c 0b 9c 
ffa08cb0:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R5 = [I0++] || R4 = [I1++];
ffa08cb4:	05 9c 0c 9c 
ffa08cb8:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || [I2++] = R7;
ffa08cbc:	05 9c 17 9e 
ffa08cc0:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || [I2++] = R1 || NOP;
ffa08cc4:	11 9e 00 00 
ffa08cc8:	03 c8 00 18 	MNOP || R5 = [I0++] || [I2++] = R0;
ffa08ccc:	05 9c 10 9e 
ffa08cd0:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || R5 = [I0++] || [I2++] = R3;
ffa08cd4:	05 9c 13 9e 
ffa08cd8:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || R1 = [I1++];
ffa08cdc:	05 9c 09 9c 
ffa08ce0:	01 c8 25 c8 	A1 += R4.H * R5.H, A0 += R4.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa08ce4:	05 9c 0a 9c 
ffa08ce8:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || NOP;
ffa08cec:	05 9c 00 00 
ffa08cf0:	25 c8 15 e8 	R0.H = (A1 += R2.H * R5.H), R0.L = (A0 += R2.L * R5.L) (S2RND) || R5 = [I0++] || NOP;
ffa08cf4:	05 9c 00 00 
ffa08cf8:	00 cc 05 20 	R0 = R0 +|+ R5 (S) || R7 = [I0++] || [I2++] = R0;
ffa08cfc:	07 9c 10 9e 
ffa08d00:	81 ce 90 41 	R0 = R0 >>> 0xe (V) || R5 = [I0++] || [I2++] = R1;
ffa08d04:	05 9c 11 9e 
ffa08d08:	be 55       	R6 = R6 & R7;
ffa08d0a:	28 54       	R0 = R0 & R5;
ffa08d0c:	86 57       	R6 = R6 | R0;
ffa08d0e:	76 bb       	[FP -0x24] = R6;
ffa08d10:	40 e4 80 00 	R0 = W[P0 + 0x100] (Z);
ffa08d14:	41 e4 80 00 	R1 = W[P0 + 0x100] (Z);
ffa08d18:	d2 b8       	R2 = [FP -0x4c];
ffa08d1a:	81 4f       	R1 <<= 0x10;
ffa08d1c:	08 56       	R0 = R0 | R1;
ffa08d1e:	90 54       	R2 = R0 & R2;
ffa08d20:	c6 b8       	R6 = [FP -0x50];
ffa08d22:	00 00       	NOP;
ffa08d24:	00 00       	NOP;
ffa08d26:	00 00       	NOP;
ffa08d28:	03 c8 00 18 	MNOP || R5 = [I0++] || R1 = [I1++];
ffa08d2c:	05 9c 09 9c 
ffa08d30:	00 c8 3d c0 	A1 = R7.H * R5.H, A0 = R7.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa08d34:	05 9c 0a 9c 
ffa08d38:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || R4 = [I1++];
ffa08d3c:	05 9c 0c 9c 
ffa08d40:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R5 = [I0++] || R3 = [I1++];
ffa08d44:	05 9c 0b 9c 
ffa08d48:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || [I2++] = R7;
ffa08d4c:	05 9c 17 9e 
ffa08d50:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || R5 = [I1--] || NOP;
ffa08d54:	8d 9c 00 00 
ffa08d58:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || [I2++] = R1 || NOP;
ffa08d5c:	11 9e 00 00 
ffa08d60:	83 ce 38 00 	A0 = A0 << 0x7 || [I2++] = R3 || NOP;
ffa08d64:	13 9e 00 00 
ffa08d68:	83 ce 38 10 	A1 = A1 << 0x7 || [I2++] = R0 || NOP;
ffa08d6c:	10 9e 00 00 
ffa08d70:	07 c8 c0 39 	R7.H = A1, R7.L = A0 || I1 += M0 || NOP;
ffa08d74:	61 9e 00 00 
ffa08d78:	03 c8 00 18 	MNOP || I0 += M3 || R3 = [I2++];
ffa08d7c:	6c 9e 13 9c 
ffa08d80:	81 ce 6f 40 	R0 = R7 << 0xd (V, S) || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08d84:	89 9d 02 9c 
ffa08d88:	00 c8 0a c0 	A1 = R1.H * R2.H, A0 = R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08d8c:	89 9d 02 9c 
ffa08d90:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08d94:	89 9d 02 9c 
ffa08d98:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08d9c:	89 9d 02 9c 
ffa08da0:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08da4:	89 9d 02 9c 
ffa08da8:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08dac:	89 9d 02 9c 
ffa08db0:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08db4:	89 9d 02 9c 
ffa08db8:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08dbc:	89 9d 02 9c 
ffa08dc0:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08dc4:	89 9d 02 9c 
ffa08dc8:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08dcc:	89 9d 02 9c 
ffa08dd0:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08dd4:	89 9d 02 9c 
ffa08dd8:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08ddc:	89 9d 02 9c 
ffa08de0:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08de4:	89 9d 02 9c 
ffa08de8:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08dec:	89 9d 02 9c 
ffa08df0:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08df4:	89 9d 02 9c 
ffa08df8:	05 c8 8a e9 	R6.H = (A1 += R1.H * R2.H), R6.L = (A0 += R1.L * R2.L) || I1 += M3 || R5 = [I0++];
ffa08dfc:	6d 9e 05 9c 
ffa08e00:	00 cc 3e ee 	R7 = R7 -|- R6 (S) || I0 -= M1 || [I2++] = R0;
ffa08e04:	74 9e 10 9e 
ffa08e08:	81 ce 3f 4c 	R6 = R7 << 0x7 (V, S) || I1 += M2 || R2 = [I0];
ffa08e0c:	69 9e 02 9d 
ffa08e10:	81 ce 96 4d 	R6 = R6 >>> 0xe (V) || R1 = [I1++] || NOP;
ffa08e14:	09 9c 00 00 
ffa08e18:	00 c8 0e c0 	A1 = R1.H * R6.H, A0 = R1.L * R6.L || NOP || NOP;
ffa08e1c:	00 00 00 00 
ffa08e20:	05 c8 15 e9 	R4.H = (A1 += R2.H * R5.H), R4.L = (A0 += R2.L * R5.L) || I1 -= M2 || NOP;
ffa08e24:	79 9e 00 00 
ffa08e28:	03 c8 00 18 	MNOP || [I0 ++ M1] = R4 || NOP;
ffa08e2c:	a4 9f 00 00 
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
ffa08e90:	00 cc 05 20 	R0 = R0 +|+ R5 (S) || [I2++] = R0 || NOP;
ffa08e94:	10 9e 00 00 
ffa08e98:	81 ce 88 0d 	R6 = R0 >>> 0xf (V) || [I2++] = R1 || NOP;
ffa08e9c:	11 9e 00 00 
ffa08ea0:	03 c8 00 18 	MNOP || R5 = [I0++] || R1 = [I1++];
ffa08ea4:	05 9c 09 9c 
ffa08ea8:	00 c8 3d c0 	A1 = R7.H * R5.H, A0 = R7.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa08eac:	05 9c 0a 9c 
ffa08eb0:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || R3 = [I1++];
ffa08eb4:	05 9c 0b 9c 
ffa08eb8:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R5 = [I0++] || R4 = [I1++];
ffa08ebc:	05 9c 0c 9c 
ffa08ec0:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || [I2++] = R7;
ffa08ec4:	05 9c 17 9e 
ffa08ec8:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || [I2++] = R1 || NOP;
ffa08ecc:	11 9e 00 00 
ffa08ed0:	03 c8 00 18 	MNOP || R5 = [I0++] || [I2++] = R0;
ffa08ed4:	05 9c 10 9e 
ffa08ed8:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || R5 = [I0++] || [I2++] = R3;
ffa08edc:	05 9c 13 9e 
ffa08ee0:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || R1 = [I1++];
ffa08ee4:	05 9c 09 9c 
ffa08ee8:	01 c8 25 c8 	A1 += R4.H * R5.H, A0 += R4.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa08eec:	05 9c 0a 9c 
ffa08ef0:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || NOP;
ffa08ef4:	05 9c 00 00 
ffa08ef8:	25 c8 15 e8 	R0.H = (A1 += R2.H * R5.H), R0.L = (A0 += R2.L * R5.L) (S2RND) || R5 = [I0++] || NOP;
ffa08efc:	05 9c 00 00 
ffa08f00:	00 cc 05 20 	R0 = R0 +|+ R5 (S) || R7 = [I0++] || [I2++] = R0;
ffa08f04:	07 9c 10 9e 
ffa08f08:	81 ce 90 41 	R0 = R0 >>> 0xe (V) || R5 = [I0++] || [I2++] = R1;
ffa08f0c:	05 9c 11 9e 
ffa08f10:	be 55       	R6 = R6 & R7;
ffa08f12:	28 54       	R0 = R0 & R5;
ffa08f14:	86 57       	R6 = R6 | R0;
ffa08f16:	77 b9       	R7 = [FP -0x24];
ffa08f18:	37 56       	R0 = R7 | R6;
ffa08f1a:	06 9c       	R6 = [I0++];
ffa08f1c:	06 32       	P0 = R6;
ffa08f1e:	3d b9       	P5 = [FP -0x34];
ffa08f20:	19 b9       	P1 = [FP -0x3c];
ffa08f22:	02 c4 00 40 	R0.L = R0.L + R0.H (NS);
ffa08f26:	40 43       	R0 = R0.B (Z);
ffa08f28:	45 5b       	P5 = P5 + P0;
ffa08f2a:	29 99       	R1 = B[P5] (Z);
ffa08f2c:	41 56       	R1 = R1 | R0;
ffa08f2e:	01 32       	P0 = R1;
ffa08f30:	29 9b       	B[P5] = R1;
ffa08f32:	03 69       	P3 = 0x20 (X);		/*		P3=0x20( 32) */
ffa08f34:	5d 5b       	P5 = P5 + P3;
ffa08f36:	41 5a       	P1 = P1 + P0;
ffa08f38:	0a 99       	R2 = B[P1] (Z);
ffa08f3a:	2a 9b       	B[P5] = R2;
ffa08f3c:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa08f3e:	06 08       	CC = R6 == R0;
ffa08f40:	31 14       	IF !CC JUMP 0xffa08fa2 <end_txchan> (BP);
ffa08f42:	98 b9       	P0 = [FP -0x1c];
ffa08f44:	2f 60       	R7 = 0x5 (X);		/*		R7=0x5(  5) */
ffa08f46:	00 00       	NOP;
ffa08f48:	03 c8 00 18 	MNOP || P1 = [FP -0x18] || R0 = [I3++];
ffa08f4c:	a9 b9 18 9c 
ffa08f50:	03 c8 00 18 	MNOP || P3 = [FP -0x14] || R1 = [I3++];
ffa08f54:	bb b9 19 9c 
ffa08f58:	03 c8 00 18 	MNOP || P5 = [FP -0x10] || R4 = [I3++];
ffa08f5c:	cd b9 1c 9c 
ffa08f60:	28 34       	M1 = R0;
ffa08f62:	31 34       	M2 = R1;
ffa08f64:	00 99       	R0 = B[P0] (Z);
ffa08f66:	09 99       	R1 = B[P1] (Z);
ffa08f68:	1a 99       	R2 = B[P3] (Z);
ffa08f6a:	2b 99       	R3 = B[P5] (Z);
ffa08f6c:	20 9a       	B[P4++] = R0;
ffa08f6e:	21 9a       	B[P4++] = R1;
ffa08f70:	22 9a       	B[P4++] = R2;
ffa08f72:	23 9a       	B[P4++] = R3;
ffa08f74:	3c 08       	CC = R4 == R7;
ffa08f76:	13 14       	IF !CC JUMP 0xffa08f9c <end_txchan_qs> (BP);
ffa08f78:	1f 9c       	R7 = [I3++];
ffa08f7a:	1e 9c       	R6 = [I3++];
ffa08f7c:	2e 32       	P5 = R6;
ffa08f7e:	f5 b9       	R5 = [FP -0x4];
ffa08f80:	0d 64       	R5 += 0x1;		/* (  1) */
ffa08f82:	f5 bb       	[FP -0x4] = R5;
ffa08f84:	f5 b8       	R5 = [FP -0x44];
ffa08f86:	28 90       	R0 = [P5++];
ffa08f88:	29 90       	R1 = [P5++];
ffa08f8a:	38 56       	R0 = R0 | R7;
ffa08f8c:	69 56       	R1 = R1 | R5;
ffa08f8e:	e0 6a       	P0 = -0x24 (X);		/*		P0=0xffffffdc(-36) */
ffa08f90:	45 5b       	P5 = P5 + P0;
ffa08f92:	20 92       	[P4++] = R0;
ffa08f94:	21 92       	[P4++] = R1;
ffa08f96:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa08f98:	ac 92       	[P5--] = R4;
ffa08f9a:	ac 92       	[P5--] = R4;

ffa08f9c <end_txchan_qs>:
ffa08f9c:	7c 30       	R7 = P4;
ffa08f9e:	57 4c       	BITCLR (R7, 0xa);		/* bit 10 */
ffa08fa0:	27 32       	P4 = R7;

ffa08fa2 <end_txchan>:
ffa08fa2:	5b b9       	P3 = [FP -0x2c];
ffa08fa4:	49 b9       	P1 = [FP -0x30];
ffa08fa6:	10 00       	RTS;

ffa08fa8 <_init6>:
ffa08fa8:	10 e1 00 40 	I0.L = 0x4000;		/* (16384)	I0=0x4000(16384) */
ffa08fac:	50 e1 90 ff 	I0.H = 0xff90;		/* (-112)	I0=0xff904000(-7323648) */
ffa08fb0:	80 36       	B0 = I0;
ffa08fb2:	1c e1 00 30 	L0.L = 0x3000;		/* (12288)	L0=0x3000(12288) */
ffa08fb6:	5c e1 00 00 	L0.H = 0x0;		/* (  0)	L0=0x3000(12288) */
ffa08fba:	14 e1 20 01 	M0.L = 0x120;		/* (288)	M0=0x120(288) */
ffa08fbe:	54 e1 00 00 	M0.H = 0x0;		/* (  0)	M0=0x120(288) */
ffa08fc2:	05 69       	P5 = 0x20 (X);		/*		P5=0x20( 32) */
ffa08fc4:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa08fc6:	a2 e0 af 50 	LSETUP(0xffa08fca <lt_top>, 0xffa09124 <lt_bot>) LC0 = P5;

ffa08fca <lt_top>:
ffa08fca:	20 e1 00 01 	R0 = 0x100 (X);		/*		R0=0x100(256) */
ffa08fce:	00 9e       	[I0++] = R0;
ffa08fd0:	15 68       	P5 = 0x2 (X);		/*		P5=0x2(  2) */
ffa08fd2:	b2 e0 97 50 	LSETUP(0xffa08fd6 <lt2_top>, 0xffa09100 <lt2_bot>) LC1 = P5;

ffa08fd6 <lt2_top>:
ffa08fd6:	00 e1 00 40 	R0.L = 0x4000;		/* (16384)	R0=0x4000(16384) */
ffa08fda:	20 9e       	W[I0++] = R0.L;
ffa08fdc:	20 9e       	W[I0++] = R0.L;
ffa08fde:	00 e1 00 00 	R0.L = 0x0;		/* (  0)	R0=0x0(  0) */
ffa08fe2:	20 9e       	W[I0++] = R0.L;
ffa08fe4:	20 9e       	W[I0++] = R0.L;
ffa08fe6:	00 e1 00 c0 	R0.L = 0xc000;		/* (-16384)	R0=0xc000(49152) */
ffa08fea:	20 9e       	W[I0++] = R0.L;
ffa08fec:	20 9e       	W[I0++] = R0.L;
ffa08fee:	00 e1 07 5d 	R0.L = 0x5d07;		/* (23815)	R0=0x5d07(23815) */
ffa08ff2:	20 9e       	W[I0++] = R0.L;
ffa08ff4:	20 9e       	W[I0++] = R0.L;
ffa08ff6:	00 e1 2b dd 	R0.L = 0xdd2b;		/* (-8917)	R0=0xdd2b(56619) */
ffa08ffa:	20 9e       	W[I0++] = R0.L;
ffa08ffc:	20 9e       	W[I0++] = R0.L;
ffa08ffe:	00 e1 bb 26 	R0.L = 0x26bb;		/* (9915)	R0=0x26bb(9915) */
ffa09002:	40 e1 bb 26 	R0.H = 0x26bb;		/* (9915)	R0=0x26bb26bb(649799355) */
ffa09006:	00 9e       	[I0++] = R0;
ffa09008:	00 e1 01 00 	R0.L = 0x1;		/* (  1)	R0=0x26bb0001(649789441) */
ffa0900c:	20 9e       	W[I0++] = R0.L;
ffa0900e:	20 9e       	W[I0++] = R0.L;
ffa09010:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09012:	00 9e       	[I0++] = R0;
ffa09014:	00 9e       	[I0++] = R0;
ffa09016:	00 9e       	[I0++] = R0;
ffa09018:	00 9e       	[I0++] = R0;
ffa0901a:	00 9e       	[I0++] = R0;
ffa0901c:	00 9e       	[I0++] = R0;
ffa0901e:	00 9e       	[I0++] = R0;
ffa09020:	00 9e       	[I0++] = R0;
ffa09022:	00 9e       	[I0++] = R0;
ffa09024:	00 9e       	[I0++] = R0;
ffa09026:	00 9e       	[I0++] = R0;
ffa09028:	00 9e       	[I0++] = R0;
ffa0902a:	00 9e       	[I0++] = R0;
ffa0902c:	00 9e       	[I0++] = R0;
ffa0902e:	00 9e       	[I0++] = R0;
ffa09030:	00 e1 ff 7f 	R0.L = 0x7fff;		/* (32767)	R0=0x7fff(32767) */
ffa09034:	20 9e       	W[I0++] = R0.L;
ffa09036:	20 9e       	W[I0++] = R0.L;
ffa09038:	20 e1 d4 1e 	R0 = 0x1ed4 (X);		/*		R0=0x1ed4(7892) */
ffa0903c:	20 9e       	W[I0++] = R0.L;
ffa0903e:	20 9e       	W[I0++] = R0.L;
ffa09040:	20 e1 a9 3d 	R0 = 0x3da9 (X);		/*		R0=0x3da9(15785) */
ffa09044:	20 9e       	W[I0++] = R0.L;
ffa09046:	20 9e       	W[I0++] = R0.L;
ffa09048:	20 e1 d4 1e 	R0 = 0x1ed4 (X);		/*		R0=0x1ed4(7892) */
ffa0904c:	20 9e       	W[I0++] = R0.L;
ffa0904e:	20 9e       	W[I0++] = R0.L;
ffa09050:	20 e1 ad 14 	R0 = 0x14ad (X);		/*		R0=0x14ad(5293) */
ffa09054:	20 9e       	W[I0++] = R0.L;
ffa09056:	20 9e       	W[I0++] = R0.L;
ffa09058:	20 e1 c9 e2 	R0 = -0x1d37 (X);		/*		R0=0xffffe2c9(-7479) */
ffa0905c:	20 9e       	W[I0++] = R0.L;
ffa0905e:	20 9e       	W[I0++] = R0.L;
ffa09060:	20 e1 ee 3b 	R0 = 0x3bee (X);		/*		R0=0x3bee(15342) */
ffa09064:	20 9e       	W[I0++] = R0.L;
ffa09066:	20 9e       	W[I0++] = R0.L;
ffa09068:	20 e1 21 88 	R0 = -0x77df (X);		/*		R0=0xffff8821(-30687) */
ffa0906c:	20 9e       	W[I0++] = R0.L;
ffa0906e:	20 9e       	W[I0++] = R0.L;
ffa09070:	20 e1 ee 3b 	R0 = 0x3bee (X);		/*		R0=0x3bee(15342) */
ffa09074:	20 9e       	W[I0++] = R0.L;
ffa09076:	20 9e       	W[I0++] = R0.L;
ffa09078:	20 e1 a5 7a 	R0 = 0x7aa5 (X);		/*		R0=0x7aa5(31397) */
ffa0907c:	20 9e       	W[I0++] = R0.L;
ffa0907e:	20 9e       	W[I0++] = R0.L;
ffa09080:	20 e1 bc c4 	R0 = -0x3b44 (X);		/*		R0=0xffffc4bc(-15172) */
ffa09084:	20 9e       	W[I0++] = R0.L;
ffa09086:	20 9e       	W[I0++] = R0.L;
ffa09088:	20 e1 10 27 	R0 = 0x2710 (X);		/*		R0=0x2710(10000) */
ffa0908c:	20 9e       	W[I0++] = R0.L;
ffa0908e:	20 9e       	W[I0++] = R0.L;
ffa09090:	20 e1 d4 1e 	R0 = 0x1ed4 (X);		/*		R0=0x1ed4(7892) */
ffa09094:	20 9e       	W[I0++] = R0.L;
ffa09096:	20 9e       	W[I0++] = R0.L;
ffa09098:	20 e1 a6 3d 	R0 = 0x3da6 (X);		/*		R0=0x3da6(15782) */
ffa0909c:	20 9e       	W[I0++] = R0.L;
ffa0909e:	20 9e       	W[I0++] = R0.L;
ffa090a0:	20 e1 d4 1e 	R0 = 0x1ed4 (X);		/*		R0=0x1ed4(7892) */
ffa090a4:	20 9e       	W[I0++] = R0.L;
ffa090a6:	20 9e       	W[I0++] = R0.L;
ffa090a8:	20 e1 f0 0e 	R0 = 0xef0 (X);		/*		R0=0xef0(3824) */
ffa090ac:	20 9e       	W[I0++] = R0.L;
ffa090ae:	20 9e       	W[I0++] = R0.L;
ffa090b0:	20 e1 aa fc 	R0 = -0x356 (X);		/*		R0=0xfffffcaa(-854) */
ffa090b4:	20 9e       	W[I0++] = R0.L;
ffa090b6:	20 9e       	W[I0++] = R0.L;
ffa090b8:	20 e1 ee 3b 	R0 = 0x3bee (X);		/*		R0=0x3bee(15342) */
ffa090bc:	20 9e       	W[I0++] = R0.L;
ffa090be:	20 9e       	W[I0++] = R0.L;
ffa090c0:	20 e1 27 88 	R0 = -0x77d9 (X);		/*		R0=0xffff8827(-30681) */
ffa090c4:	20 9e       	W[I0++] = R0.L;
ffa090c6:	20 9e       	W[I0++] = R0.L;
ffa090c8:	20 e1 ee 3b 	R0 = 0x3bee (X);		/*		R0=0x3bee(15342) */
ffa090cc:	20 9e       	W[I0++] = R0.L;
ffa090ce:	20 9e       	W[I0++] = R0.L;
ffa090d0:	20 e1 8c 74 	R0 = 0x748c (X);		/*		R0=0x748c(29836) */
ffa090d4:	20 9e       	W[I0++] = R0.L;
ffa090d6:	20 9e       	W[I0++] = R0.L;
ffa090d8:	20 e1 dd ca 	R0 = -0x3523 (X);		/*		R0=0xffffcadd(-13603) */
ffa090dc:	20 9e       	W[I0++] = R0.L;
ffa090de:	20 9e       	W[I0++] = R0.L;
ffa090e0:	20 e1 10 27 	R0 = 0x2710 (X);		/*		R0=0x2710(10000) */
ffa090e4:	20 9e       	W[I0++] = R0.L;
ffa090e6:	20 9e       	W[I0++] = R0.L;
ffa090e8:	00 e1 01 00 	R0.L = 0x1;		/* (  1)	R0=0x1(  1) */
ffa090ec:	20 9e       	W[I0++] = R0.L;
ffa090ee:	00 e1 10 00 	R0.L = 0x10;		/* ( 16)	R0=0x10( 16) */
ffa090f2:	20 9e       	W[I0++] = R0.L;
ffa090f4:	00 e1 02 00 	R0.L = 0x2;		/* (  2)	R0=0x2(  2) */
ffa090f8:	20 9e       	W[I0++] = R0.L;
ffa090fa:	00 e1 20 00 	R0.L = 0x20;		/* ( 32)	R0=0x20( 32) */
ffa090fe:	20 9e       	W[I0++] = R0.L;

ffa09100 <lt2_bot>:
ffa09100:	37 e1 08 00 	M3 = 0x8 (X);		/*		M3=0x8(  8) */
ffa09104:	7c 9e       	I0 -= M3;
ffa09106:	00 e1 04 00 	R0.L = 0x4;		/* (  4)	R0=0x4(  4) */
ffa0910a:	20 9e       	W[I0++] = R0.L;
ffa0910c:	00 e1 40 00 	R0.L = 0x40;		/* ( 64)	R0=0x40( 64) */
ffa09110:	20 9e       	W[I0++] = R0.L;
ffa09112:	00 e1 08 00 	R0.L = 0x8;		/* (  8)	R0=0x8(  8) */
ffa09116:	20 9e       	W[I0++] = R0.L;
ffa09118:	00 e1 80 00 	R0.L = 0x80;		/* (128)	R0=0x80(128) */
ffa0911c:	20 9e       	W[I0++] = R0.L;
ffa0911e:	01 9e       	[I0++] = R1;
ffa09120:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09122:	41 50       	R1 = R1 + R0;

ffa09124 <lt_bot>:
ffa09124:	08 e1 80 6b 	P0.L = 0x6b80;		/* (27520)	P0=0xffff6b80(-38016) */
ffa09128:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff906b80 */
ffa0912c:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa09130:	00 93       	[P0] = R0;
ffa09132:	11 e1 00 40 	I1.L = 0x4000;		/* (16384)	I1=0x4000(16384) */
ffa09136:	51 e1 80 ff 	I1.H = 0xff80;		/* (-128)	I1=0xff804000(-8372224) */
ffa0913a:	1d e1 00 12 	L1.L = 0x1200;		/* (4608)	L1=0x1200(4608) */
ffa0913e:	5d e1 00 00 	L1.H = 0x0;		/* (  0)	L1=0x1200(4608) */
ffa09142:	91 34       	I2 = I1;
ffa09144:	89 36       	B1 = I1;
ffa09146:	92 36       	B2 = I2;
ffa09148:	f5 36       	L2 = L1;
ffa0914a:	35 e1 40 00 	M1 = 0x40 (X);		/*		M1=0x40( 64) */
ffa0914e:	b4 34       	M2 = M0;
ffa09150:	08 e1 00 40 	P0.L = 0x4000;		/* (16384)	P0=0xff904000 */
ffa09154:	48 e1 80 ff 	P0.H = 0xff80;		/* (-128)	P0=0xff804000 */
ffa09158:	0d e1 80 04 	P5.L = 0x480;		/* (1152)	P5=0x480 */
ffa0915c:	4d e1 00 00 	P5.H = 0x0;		/* (  0)	P5=0x480 */
ffa09160:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09162:	a2 e0 04 50 	LSETUP(0xffa09166 <lt3_top>, 0xffa0916a <lt3_bot>) LC0 = P5;

ffa09166 <lt3_top>:
ffa09166:	00 00       	NOP;
ffa09168:	00 92       	[P0++] = R0;

ffa0916a <lt3_bot>:
ffa0916a:	00 00       	NOP;
ffa0916c:	13 e1 00 52 	I3.L = 0x5200;		/* (20992)	I3=0x5200(20992) */
ffa09170:	53 e1 80 ff 	I3.H = 0xff80;		/* (-128)	I3=0xff805200(-8367616) */
ffa09174:	1f e1 00 0f 	L3.L = 0xf00;		/* (3840)	L3=0xf00(3840) */
ffa09178:	5f e1 00 00 	L3.H = 0x0;		/* (  0)	L3=0xf00(3840) */
ffa0917c:	9b 36       	B3 = I3;
ffa0917e:	37 e1 08 00 	M3 = 0x8 (X);		/*		M3=0x8(  8) */
ffa09182:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09184:	8c 30       	R1 = M0;
ffa09186:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa09188:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0918a:	85 69       	P5 = 0x30 (X);		/*		P5=0x30( 48) */
ffa0918c:	a2 e0 46 50 	LSETUP(0xffa09190 <lt4_top>, 0xffa09218 <lt4_bot>) LC0 = P5;

ffa09190 <lt4_top>:
ffa09190:	00 00       	NOP;
ffa09192:	35 68       	P5 = 0x6 (X);		/*		P5=0x6(  6) */
ffa09194:	b2 e0 18 50 	LSETUP(0xffa09198 <lt5_top>, 0xffa091c4 <lt5_bot>) LC1 = P5;

ffa09198 <lt5_top>:
ffa09198:	84 60       	R4 = 0x10 (X);		/*		R4=0x10( 16) */
ffa0919a:	c4 52       	R3 = R4 - R0;
ffa0919c:	24 60       	R4 = 0x4 (X);		/*		R4=0x4(  4) */
ffa0919e:	e3 40       	R3 *= R4;
ffa091a0:	1b 9e       	[I3++] = R3;
ffa091a2:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa091a4:	e0 50       	R3 = R0 + R4;
ffa091a6:	cb 40       	R3 *= R1;
ffa091a8:	1b 9e       	[I3++] = R3;
ffa091aa:	1f 9e       	[I3++] = R7;
ffa091ac:	20 50       	R0 = R0 + R4;
ffa091ae:	e7 51       	R7 = R7 + R4;
ffa091b0:	7c 60       	R4 = 0xf (X);		/*		R4=0xf( 15) */
ffa091b2:	20 08       	CC = R0 == R4;
ffa091b4:	02 10       	IF !CC JUMP 0xffa091b8 <no_rollover>;
ffa091b6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */

ffa091b8 <no_rollover>:
ffa091b8:	00 00       	NOP;
ffa091ba:	34 60       	R4 = 0x6 (X);		/*		R4=0x6(  6) */
ffa091bc:	27 08       	CC = R7 == R4;
ffa091be:	02 10       	IF !CC JUMP 0xffa091c2 <no_rollover2>;
ffa091c0:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */

ffa091c2 <no_rollover2>:
	...

ffa091c4 <lt5_bot>:
ffa091c4:	00 00       	NOP;
ffa091c6:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa091c8:	82 c6 e2 86 	R3 = R2 << 0x1c;
ffa091cc:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa091ce:	82 c6 fc 88 	R4 = R4 << 0x1f;
ffa091d2:	e3 54       	R3 = R3 & R4;
ffa091d4:	5d 57       	R5 = R5 | R3;
ffa091d6:	82 c6 aa 86 	R3 = R2 << 0x15;
ffa091da:	82 c6 c4 89 	R4 = R4 >> 0x8;
ffa091de:	e3 54       	R3 = R3 & R4;
ffa091e0:	5d 57       	R5 = R5 | R3;
ffa091e2:	82 c6 72 86 	R3 = R2 << 0xe;
ffa091e6:	82 c6 c4 89 	R4 = R4 >> 0x8;
ffa091ea:	e3 54       	R3 = R3 & R4;
ffa091ec:	5d 57       	R5 = R5 | R3;
ffa091ee:	82 c6 3a 86 	R3 = R2 << 0x7;
ffa091f2:	82 c6 c4 89 	R4 = R4 >> 0x8;
ffa091f6:	e3 54       	R3 = R3 & R4;
ffa091f8:	5d 57       	R5 = R5 | R3;
ffa091fa:	1d 9e       	[I3++] = R5;
ffa091fc:	03 e1 20 61 	R3.L = 0x6120;		/* (24864)	R3=0x6120(24864) */
ffa09200:	43 e1 80 ff 	R3.H = 0xff80;		/* (-128)	R3=0xff806120(-8363744) */
ffa09204:	1c 60       	R4 = 0x3 (X);		/*		R4=0x3(  3) */
ffa09206:	62 55       	R5 = R2 & R4;
ffa09208:	82 c6 1d 8a 	R5 = R5 << 0x3;
ffa0920c:	5d 51       	R5 = R5 + R3;
ffa0920e:	1d 9e       	[I3++] = R5;
ffa09210:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa09212:	a2 50       	R2 = R2 + R4;
ffa09214:	7c 60       	R4 = 0xf (X);		/*		R4=0xf( 15) */
ffa09216:	a2 54       	R2 = R2 & R4;

ffa09218 <lt4_bot>:
ffa09218:	00 00       	NOP;
ffa0921a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0921c:	10 00       	RTS;
	...

ffa09220 <_enc_create>:
ffa09220:	0d e1 00 62 	P5.L = 0x6200;		/* (25088)	P5=0x6200 */
ffa09224:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff806200 */
ffa09228:	50 61       	R0 = 0x2a (X);		/*		R0=0x2a( 42) */
ffa0922a:	28 9a       	B[P5++] = R0;
ffa0922c:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa0922e:	28 9a       	B[P5++] = R0;
ffa09230:	60 61       	R0 = 0x2c (X);		/*		R0=0x2c( 44) */
ffa09232:	28 9a       	B[P5++] = R0;
ffa09234:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa09236:	28 9a       	B[P5++] = R0;
ffa09238:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa0923a:	28 9a       	B[P5++] = R0;
ffa0923c:	70 61       	R0 = 0x2e (X);		/*		R0=0x2e( 46) */
ffa0923e:	28 9a       	B[P5++] = R0;
ffa09240:	78 61       	R0 = 0x2f (X);		/*		R0=0x2f( 47) */
ffa09242:	28 9a       	B[P5++] = R0;
ffa09244:	70 61       	R0 = 0x2e (X);		/*		R0=0x2e( 46) */
ffa09246:	28 9a       	B[P5++] = R0;
ffa09248:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa0924a:	28 9a       	B[P5++] = R0;
ffa0924c:	88 61       	R0 = 0x31 (X);		/*		R0=0x31( 49) */
ffa0924e:	28 9a       	B[P5++] = R0;
ffa09250:	90 61       	R0 = 0x32 (X);		/*		R0=0x32( 50) */
ffa09252:	28 9a       	B[P5++] = R0;
ffa09254:	88 61       	R0 = 0x31 (X);		/*		R0=0x31( 49) */
ffa09256:	28 9a       	B[P5++] = R0;
ffa09258:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa0925a:	28 9a       	B[P5++] = R0;
ffa0925c:	70 61       	R0 = 0x2e (X);		/*		R0=0x2e( 46) */
ffa0925e:	28 9a       	B[P5++] = R0;
ffa09260:	78 61       	R0 = 0x2f (X);		/*		R0=0x2f( 47) */
ffa09262:	28 9a       	B[P5++] = R0;
ffa09264:	70 61       	R0 = 0x2e (X);		/*		R0=0x2e( 46) */
ffa09266:	28 9a       	B[P5++] = R0;
ffa09268:	98 61       	R0 = 0x33 (X);		/*		R0=0x33( 51) */
ffa0926a:	28 9a       	B[P5++] = R0;
ffa0926c:	a0 61       	R0 = 0x34 (X);		/*		R0=0x34( 52) */
ffa0926e:	28 9a       	B[P5++] = R0;
ffa09270:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa09272:	28 9a       	B[P5++] = R0;
ffa09274:	b0 61       	R0 = 0x36 (X);		/*		R0=0x36( 54) */
ffa09276:	28 9a       	B[P5++] = R0;
ffa09278:	b8 61       	R0 = 0x37 (X);		/*		R0=0x37( 55) */
ffa0927a:	28 9a       	B[P5++] = R0;
ffa0927c:	c0 61       	R0 = 0x38 (X);		/*		R0=0x38( 56) */
ffa0927e:	28 9a       	B[P5++] = R0;
ffa09280:	c8 61       	R0 = 0x39 (X);		/*		R0=0x39( 57) */
ffa09282:	28 9a       	B[P5++] = R0;
ffa09284:	c0 61       	R0 = 0x38 (X);		/*		R0=0x38( 56) */
ffa09286:	28 9a       	B[P5++] = R0;
ffa09288:	d0 61       	R0 = 0x3a (X);		/*		R0=0x3a( 58) */
ffa0928a:	28 9a       	B[P5++] = R0;
ffa0928c:	d8 61       	R0 = 0x3b (X);		/*		R0=0x3b( 59) */
ffa0928e:	28 9a       	B[P5++] = R0;
ffa09290:	e0 61       	R0 = 0x3c (X);		/*		R0=0x3c( 60) */
ffa09292:	28 9a       	B[P5++] = R0;
ffa09294:	d8 61       	R0 = 0x3b (X);		/*		R0=0x3b( 59) */
ffa09296:	28 9a       	B[P5++] = R0;
ffa09298:	b8 61       	R0 = 0x37 (X);		/*		R0=0x37( 55) */
ffa0929a:	28 9a       	B[P5++] = R0;
ffa0929c:	c0 61       	R0 = 0x38 (X);		/*		R0=0x38( 56) */
ffa0929e:	28 9a       	B[P5++] = R0;
ffa092a0:	e8 61       	R0 = 0x3d (X);		/*		R0=0x3d( 61) */
ffa092a2:	28 9a       	B[P5++] = R0;
ffa092a4:	f0 61       	R0 = 0x3e (X);		/*		R0=0x3e( 62) */
ffa092a6:	28 9a       	B[P5++] = R0;
ffa092a8:	f8 61       	R0 = 0x3f (X);		/*		R0=0x3f( 63) */
ffa092aa:	28 9a       	B[P5++] = R0;
ffa092ac:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa092b0:	28 9a       	B[P5++] = R0;
ffa092b2:	20 e1 41 00 	R0 = 0x41 (X);		/*		R0=0x41( 65) */
ffa092b6:	28 9a       	B[P5++] = R0;
ffa092b8:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa092bc:	28 9a       	B[P5++] = R0;
ffa092be:	20 e1 42 00 	R0 = 0x42 (X);		/*		R0=0x42( 66) */
ffa092c2:	28 9a       	B[P5++] = R0;
ffa092c4:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa092c8:	28 9a       	B[P5++] = R0;
ffa092ca:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa092ce:	28 9a       	B[P5++] = R0;
ffa092d0:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa092d4:	28 9a       	B[P5++] = R0;
ffa092d6:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa092da:	28 9a       	B[P5++] = R0;
ffa092dc:	20 e1 46 00 	R0 = 0x46 (X);		/*		R0=0x46( 70) */
ffa092e0:	28 9a       	B[P5++] = R0;
ffa092e2:	20 e1 47 00 	R0 = 0x47 (X);		/*		R0=0x47( 71) */
ffa092e6:	28 9a       	B[P5++] = R0;
ffa092e8:	20 e1 48 00 	R0 = 0x48 (X);		/*		R0=0x48( 72) */
ffa092ec:	28 9a       	B[P5++] = R0;
ffa092ee:	20 e1 42 00 	R0 = 0x42 (X);		/*		R0=0x42( 66) */
ffa092f2:	28 9a       	B[P5++] = R0;
ffa092f4:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa092f8:	28 9a       	B[P5++] = R0;
ffa092fa:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa092fe:	28 9a       	B[P5++] = R0;
ffa09300:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa09304:	28 9a       	B[P5++] = R0;
ffa09306:	98 61       	R0 = 0x33 (X);		/*		R0=0x33( 51) */
ffa09308:	28 9a       	B[P5++] = R0;
ffa0930a:	a0 61       	R0 = 0x34 (X);		/*		R0=0x34( 52) */
ffa0930c:	28 9a       	B[P5++] = R0;
ffa0930e:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa09310:	28 9a       	B[P5++] = R0;
ffa09312:	a0 61       	R0 = 0x34 (X);		/*		R0=0x34( 52) */
ffa09314:	28 9a       	B[P5++] = R0;
ffa09316:	20 e1 49 00 	R0 = 0x49 (X);		/*		R0=0x49( 73) */
ffa0931a:	28 9a       	B[P5++] = R0;
ffa0931c:	20 e1 4a 00 	R0 = 0x4a (X);		/*		R0=0x4a( 74) */
ffa09320:	28 9a       	B[P5++] = R0;
ffa09322:	20 e1 4b 00 	R0 = 0x4b (X);		/*		R0=0x4b( 75) */
ffa09326:	28 9a       	B[P5++] = R0;
ffa09328:	c0 61       	R0 = 0x38 (X);		/*		R0=0x38( 56) */
ffa0932a:	28 9a       	B[P5++] = R0;
ffa0932c:	d0 61       	R0 = 0x3a (X);		/*		R0=0x3a( 58) */
ffa0932e:	28 9a       	B[P5++] = R0;
ffa09330:	d8 61       	R0 = 0x3b (X);		/*		R0=0x3b( 59) */
ffa09332:	28 9a       	B[P5++] = R0;
ffa09334:	e0 61       	R0 = 0x3c (X);		/*		R0=0x3c( 60) */
ffa09336:	28 9a       	B[P5++] = R0;
ffa09338:	d8 61       	R0 = 0x3b (X);		/*		R0=0x3b( 59) */
ffa0933a:	28 9a       	B[P5++] = R0;
ffa0933c:	b8 61       	R0 = 0x37 (X);		/*		R0=0x37( 55) */
ffa0933e:	28 9a       	B[P5++] = R0;
ffa09340:	c0 61       	R0 = 0x38 (X);		/*		R0=0x38( 56) */
ffa09342:	28 9a       	B[P5++] = R0;
ffa09344:	c8 61       	R0 = 0x39 (X);		/*		R0=0x39( 57) */
ffa09346:	28 9a       	B[P5++] = R0;
ffa09348:	20 e1 4c 00 	R0 = 0x4c (X);		/*		R0=0x4c( 76) */
ffa0934c:	28 9a       	B[P5++] = R0;
ffa0934e:	20 e1 4d 00 	R0 = 0x4d (X);		/*		R0=0x4d( 77) */
ffa09352:	28 9a       	B[P5++] = R0;
ffa09354:	20 e1 4e 00 	R0 = 0x4e (X);		/*		R0=0x4e( 78) */
ffa09358:	28 9a       	B[P5++] = R0;
ffa0935a:	20 e1 4f 00 	R0 = 0x4f (X);		/*		R0=0x4f( 79) */
ffa0935e:	28 9a       	B[P5++] = R0;
ffa09360:	20 e1 4e 00 	R0 = 0x4e (X);		/*		R0=0x4e( 78) */
ffa09364:	28 9a       	B[P5++] = R0;
ffa09366:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa0936a:	28 9a       	B[P5++] = R0;
ffa0936c:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa09370:	28 9a       	B[P5++] = R0;
ffa09372:	20 e1 52 00 	R0 = 0x52 (X);		/*		R0=0x52( 82) */
ffa09376:	28 9a       	B[P5++] = R0;
ffa09378:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa0937c:	28 9a       	B[P5++] = R0;
ffa0937e:	20 e1 53 00 	R0 = 0x53 (X);		/*		R0=0x53( 83) */
ffa09382:	28 9a       	B[P5++] = R0;
ffa09384:	20 e1 54 00 	R0 = 0x54 (X);		/*		R0=0x54( 84) */
ffa09388:	28 9a       	B[P5++] = R0;
ffa0938a:	20 e1 55 00 	R0 = 0x55 (X);		/*		R0=0x55( 85) */
ffa0938e:	28 9a       	B[P5++] = R0;
ffa09390:	20 e1 56 00 	R0 = 0x56 (X);		/*		R0=0x56( 86) */
ffa09394:	28 9a       	B[P5++] = R0;
ffa09396:	20 e1 57 00 	R0 = 0x57 (X);		/*		R0=0x57( 87) */
ffa0939a:	28 9a       	B[P5++] = R0;
ffa0939c:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa093a0:	28 9a       	B[P5++] = R0;
ffa093a2:	20 e1 52 00 	R0 = 0x52 (X);		/*		R0=0x52( 82) */
ffa093a6:	28 9a       	B[P5++] = R0;
ffa093a8:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa093ac:	28 9a       	B[P5++] = R0;
ffa093ae:	20 e1 58 00 	R0 = 0x58 (X);		/*		R0=0x58( 88) */
ffa093b2:	28 9a       	B[P5++] = R0;
ffa093b4:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa093b8:	28 9a       	B[P5++] = R0;
ffa093ba:	20 e1 5a 00 	R0 = 0x5a (X);		/*		R0=0x5a( 90) */
ffa093be:	28 9a       	B[P5++] = R0;
ffa093c0:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa093c4:	28 9a       	B[P5++] = R0;
ffa093c6:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa093ca:	28 9a       	B[P5++] = R0;
ffa093cc:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa093d0:	28 9a       	B[P5++] = R0;
ffa093d2:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa093d6:	28 9a       	B[P5++] = R0;
ffa093d8:	20 e1 5e 00 	R0 = 0x5e (X);		/*		R0=0x5e( 94) */
ffa093dc:	28 9a       	B[P5++] = R0;
ffa093de:	20 e1 5f 00 	R0 = 0x5f (X);		/*		R0=0x5f( 95) */
ffa093e2:	28 9a       	B[P5++] = R0;
ffa093e4:	20 e1 60 00 	R0 = 0x60 (X);		/*		R0=0x60( 96) */
ffa093e8:	28 9a       	B[P5++] = R0;
ffa093ea:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa093ee:	28 9a       	B[P5++] = R0;
ffa093f0:	20 e1 60 00 	R0 = 0x60 (X);		/*		R0=0x60( 96) */
ffa093f4:	28 9a       	B[P5++] = R0;
ffa093f6:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa093fa:	28 9a       	B[P5++] = R0;
ffa093fc:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa09400:	28 9a       	B[P5++] = R0;
ffa09402:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa09406:	28 9a       	B[P5++] = R0;
ffa09408:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa0940c:	28 9a       	B[P5++] = R0;
ffa0940e:	20 e1 62 00 	R0 = 0x62 (X);		/*		R0=0x62( 98) */
ffa09412:	28 9a       	B[P5++] = R0;
ffa09414:	20 e1 63 00 	R0 = 0x63 (X);		/*		R0=0x63( 99) */
ffa09418:	28 9a       	B[P5++] = R0;
ffa0941a:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa0941e:	28 9a       	B[P5++] = R0;
ffa09420:	20 e1 63 00 	R0 = 0x63 (X);		/*		R0=0x63( 99) */
ffa09424:	28 9a       	B[P5++] = R0;
ffa09426:	20 e1 65 00 	R0 = 0x65 (X);		/*		R0=0x65(101) */
ffa0942a:	28 9a       	B[P5++] = R0;
ffa0942c:	20 e1 66 00 	R0 = 0x66 (X);		/*		R0=0x66(102) */
ffa09430:	28 9a       	B[P5++] = R0;
ffa09432:	20 e1 67 00 	R0 = 0x67 (X);		/*		R0=0x67(103) */
ffa09436:	28 9a       	B[P5++] = R0;
ffa09438:	20 e1 66 00 	R0 = 0x66 (X);		/*		R0=0x66(102) */
ffa0943c:	28 9a       	B[P5++] = R0;
ffa0943e:	20 e1 68 00 	R0 = 0x68 (X);		/*		R0=0x68(104) */
ffa09442:	28 9a       	B[P5++] = R0;
ffa09444:	20 e1 69 00 	R0 = 0x69 (X);		/*		R0=0x69(105) */
ffa09448:	28 9a       	B[P5++] = R0;
ffa0944a:	20 e1 6a 00 	R0 = 0x6a (X);		/*		R0=0x6a(106) */
ffa0944e:	28 9a       	B[P5++] = R0;
ffa09450:	20 e1 6b 00 	R0 = 0x6b (X);		/*		R0=0x6b(107) */
ffa09454:	28 9a       	B[P5++] = R0;
ffa09456:	20 e1 6c 00 	R0 = 0x6c (X);		/*		R0=0x6c(108) */
ffa0945a:	28 9a       	B[P5++] = R0;
ffa0945c:	20 e1 6d 00 	R0 = 0x6d (X);		/*		R0=0x6d(109) */
ffa09460:	28 9a       	B[P5++] = R0;
ffa09462:	20 e1 67 00 	R0 = 0x67 (X);		/*		R0=0x67(103) */
ffa09466:	28 9a       	B[P5++] = R0;
ffa09468:	20 e1 66 00 	R0 = 0x66 (X);		/*		R0=0x66(102) */
ffa0946c:	28 9a       	B[P5++] = R0;
ffa0946e:	20 e1 58 00 	R0 = 0x58 (X);		/*		R0=0x58( 88) */
ffa09472:	28 9a       	B[P5++] = R0;
ffa09474:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa09478:	28 9a       	B[P5++] = R0;
ffa0947a:	20 e1 5a 00 	R0 = 0x5a (X);		/*		R0=0x5a( 90) */
ffa0947e:	28 9a       	B[P5++] = R0;
ffa09480:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa09484:	28 9a       	B[P5++] = R0;
ffa09486:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa0948a:	28 9a       	B[P5++] = R0;
ffa0948c:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa09490:	28 9a       	B[P5++] = R0;
ffa09492:	20 e1 6e 00 	R0 = 0x6e (X);		/*		R0=0x6e(110) */
ffa09496:	28 9a       	B[P5++] = R0;
ffa09498:	20 e1 6f 00 	R0 = 0x6f (X);		/*		R0=0x6f(111) */
ffa0949c:	28 9a       	B[P5++] = R0;
ffa0949e:	20 e1 70 00 	R0 = 0x70 (X);		/*		R0=0x70(112) */
ffa094a2:	28 9a       	B[P5++] = R0;
ffa094a4:	20 e1 60 00 	R0 = 0x60 (X);		/*		R0=0x60( 96) */
ffa094a8:	28 9a       	B[P5++] = R0;
ffa094aa:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa094ae:	28 9a       	B[P5++] = R0;
ffa094b0:	20 e1 60 00 	R0 = 0x60 (X);		/*		R0=0x60( 96) */
ffa094b4:	28 9a       	B[P5++] = R0;
ffa094b6:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa094ba:	28 9a       	B[P5++] = R0;
ffa094bc:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa094c0:	28 9a       	B[P5++] = R0;
ffa094c2:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa094c6:	28 9a       	B[P5++] = R0;
ffa094c8:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa094cc:	28 9a       	B[P5++] = R0;
ffa094ce:	20 e1 71 00 	R0 = 0x71 (X);		/*		R0=0x71(113) */
ffa094d2:	28 9a       	B[P5++] = R0;
ffa094d4:	20 e1 72 00 	R0 = 0x72 (X);		/*		R0=0x72(114) */
ffa094d8:	28 9a       	B[P5++] = R0;
ffa094da:	20 e1 73 00 	R0 = 0x73 (X);		/*		R0=0x73(115) */
ffa094de:	28 9a       	B[P5++] = R0;
ffa094e0:	20 e1 74 00 	R0 = 0x74 (X);		/*		R0=0x74(116) */
ffa094e4:	28 9a       	B[P5++] = R0;
ffa094e6:	20 e1 75 00 	R0 = 0x75 (X);		/*		R0=0x75(117) */
ffa094ea:	28 9a       	B[P5++] = R0;
ffa094ec:	20 e1 76 00 	R0 = 0x76 (X);		/*		R0=0x76(118) */
ffa094f0:	28 9a       	B[P5++] = R0;
ffa094f2:	20 e1 77 00 	R0 = 0x77 (X);		/*		R0=0x77(119) */
ffa094f6:	28 9a       	B[P5++] = R0;
ffa094f8:	20 e1 76 00 	R0 = 0x76 (X);		/*		R0=0x76(118) */
ffa094fc:	28 9a       	B[P5++] = R0;
ffa094fe:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa09502:	28 9a       	B[P5++] = R0;
ffa09504:	20 e1 79 00 	R0 = 0x79 (X);		/*		R0=0x79(121) */
ffa09508:	28 9a       	B[P5++] = R0;
ffa0950a:	20 e1 7a 00 	R0 = 0x7a (X);		/*		R0=0x7a(122) */
ffa0950e:	28 9a       	B[P5++] = R0;
ffa09510:	20 e1 79 00 	R0 = 0x79 (X);		/*		R0=0x79(121) */
ffa09514:	28 9a       	B[P5++] = R0;
ffa09516:	20 e1 7b 00 	R0 = 0x7b (X);		/*		R0=0x7b(123) */
ffa0951a:	28 9a       	B[P5++] = R0;
ffa0951c:	20 e1 7c 00 	R0 = 0x7c (X);		/*		R0=0x7c(124) */
ffa09520:	28 9a       	B[P5++] = R0;
ffa09522:	20 e1 7d 00 	R0 = 0x7d (X);		/*		R0=0x7d(125) */
ffa09526:	28 9a       	B[P5++] = R0;
ffa09528:	20 e1 76 00 	R0 = 0x76 (X);		/*		R0=0x76(118) */
ffa0952c:	28 9a       	B[P5++] = R0;
ffa0952e:	20 e1 7e 00 	R0 = 0x7e (X);		/*		R0=0x7e(126) */
ffa09532:	28 9a       	B[P5++] = R0;
ffa09534:	20 e1 7f 00 	R0 = 0x7f (X);		/*		R0=0x7f(127) */
ffa09538:	28 9a       	B[P5++] = R0;
ffa0953a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0953c:	28 9a       	B[P5++] = R0;
ffa0953e:	20 e1 7f 00 	R0 = 0x7f (X);		/*		R0=0x7f(127) */
ffa09542:	28 9a       	B[P5++] = R0;
ffa09544:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09546:	28 9a       	B[P5++] = R0;
ffa09548:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0954a:	28 9a       	B[P5++] = R0;
ffa0954c:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0954e:	28 9a       	B[P5++] = R0;
ffa09550:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa09552:	28 9a       	B[P5++] = R0;
ffa09554:	28 60       	R0 = 0x5 (X);		/*		R0=0x5(  5) */
ffa09556:	28 9a       	B[P5++] = R0;
ffa09558:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa0955a:	28 9a       	B[P5++] = R0;
ffa0955c:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0955e:	28 9a       	B[P5++] = R0;
ffa09560:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa09562:	28 9a       	B[P5++] = R0;
ffa09564:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09566:	28 9a       	B[P5++] = R0;
ffa09568:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0956a:	28 9a       	B[P5++] = R0;
ffa0956c:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0956e:	28 9a       	B[P5++] = R0;
ffa09570:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09572:	28 9a       	B[P5++] = R0;
ffa09574:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa09576:	28 9a       	B[P5++] = R0;
ffa09578:	48 60       	R0 = 0x9 (X);		/*		R0=0x9(  9) */
ffa0957a:	28 9a       	B[P5++] = R0;
ffa0957c:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa0957e:	28 9a       	B[P5++] = R0;
ffa09580:	58 60       	R0 = 0xb (X);		/*		R0=0xb( 11) */
ffa09582:	28 9a       	B[P5++] = R0;
ffa09584:	60 60       	R0 = 0xc (X);		/*		R0=0xc( 12) */
ffa09586:	28 9a       	B[P5++] = R0;
ffa09588:	68 60       	R0 = 0xd (X);		/*		R0=0xd( 13) */
ffa0958a:	28 9a       	B[P5++] = R0;
ffa0958c:	70 60       	R0 = 0xe (X);		/*		R0=0xe( 14) */
ffa0958e:	28 9a       	B[P5++] = R0;
ffa09590:	68 60       	R0 = 0xd (X);		/*		R0=0xd( 13) */
ffa09592:	28 9a       	B[P5++] = R0;
ffa09594:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa09596:	28 9a       	B[P5++] = R0;
ffa09598:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa0959a:	28 9a       	B[P5++] = R0;
ffa0959c:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa0959e:	28 9a       	B[P5++] = R0;
ffa095a0:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa095a2:	28 9a       	B[P5++] = R0;
ffa095a4:	60 60       	R0 = 0xc (X);		/*		R0=0xc( 12) */
ffa095a6:	28 9a       	B[P5++] = R0;
ffa095a8:	90 60       	R0 = 0x12 (X);		/*		R0=0x12( 18) */
ffa095aa:	28 9a       	B[P5++] = R0;
ffa095ac:	98 60       	R0 = 0x13 (X);		/*		R0=0x13( 19) */
ffa095ae:	28 9a       	B[P5++] = R0;
ffa095b0:	a0 60       	R0 = 0x14 (X);		/*		R0=0x14( 20) */
ffa095b2:	28 9a       	B[P5++] = R0;
ffa095b4:	20 e1 7e 00 	R0 = 0x7e (X);		/*		R0=0x7e(126) */
ffa095b8:	28 9a       	B[P5++] = R0;
ffa095ba:	20 e1 7f 00 	R0 = 0x7f (X);		/*		R0=0x7f(127) */
ffa095be:	28 9a       	B[P5++] = R0;
ffa095c0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa095c2:	28 9a       	B[P5++] = R0;
ffa095c4:	20 e1 7f 00 	R0 = 0x7f (X);		/*		R0=0x7f(127) */
ffa095c8:	28 9a       	B[P5++] = R0;
ffa095ca:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa095cc:	28 9a       	B[P5++] = R0;
ffa095ce:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa095d0:	28 9a       	B[P5++] = R0;
ffa095d2:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa095d4:	28 9a       	B[P5++] = R0;
ffa095d6:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa095d8:	28 9a       	B[P5++] = R0;
ffa095da:	a8 60       	R0 = 0x15 (X);		/*		R0=0x15( 21) */
ffa095dc:	28 9a       	B[P5++] = R0;
ffa095de:	b0 60       	R0 = 0x16 (X);		/*		R0=0x16( 22) */
ffa095e0:	28 9a       	B[P5++] = R0;
ffa095e2:	b8 60       	R0 = 0x17 (X);		/*		R0=0x17( 23) */
ffa095e4:	28 9a       	B[P5++] = R0;
ffa095e6:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa095e8:	28 9a       	B[P5++] = R0;
ffa095ea:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa095ec:	28 9a       	B[P5++] = R0;
ffa095ee:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa095f0:	28 9a       	B[P5++] = R0;
ffa095f2:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa095f4:	28 9a       	B[P5++] = R0;
ffa095f6:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa095f8:	28 9a       	B[P5++] = R0;
ffa095fa:	20 e1 4d 00 	R0 = 0x4d (X);		/*		R0=0x4d( 77) */
ffa095fe:	28 9a       	B[P5++] = R0;
ffa09600:	20 e1 4e 00 	R0 = 0x4e (X);		/*		R0=0x4e( 78) */
ffa09604:	28 9a       	B[P5++] = R0;
ffa09606:	20 e1 4f 00 	R0 = 0x4f (X);		/*		R0=0x4f( 79) */
ffa0960a:	28 9a       	B[P5++] = R0;
ffa0960c:	c0 60       	R0 = 0x18 (X);		/*		R0=0x18( 24) */
ffa0960e:	28 9a       	B[P5++] = R0;
ffa09610:	c8 60       	R0 = 0x19 (X);		/*		R0=0x19( 25) */
ffa09612:	28 9a       	B[P5++] = R0;
ffa09614:	d0 60       	R0 = 0x1a (X);		/*		R0=0x1a( 26) */
ffa09616:	28 9a       	B[P5++] = R0;
ffa09618:	20 e1 52 00 	R0 = 0x52 (X);		/*		R0=0x52( 82) */
ffa0961c:	28 9a       	B[P5++] = R0;
ffa0961e:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa09622:	28 9a       	B[P5++] = R0;
ffa09624:	20 e1 53 00 	R0 = 0x53 (X);		/*		R0=0x53( 83) */
ffa09628:	28 9a       	B[P5++] = R0;
ffa0962a:	20 e1 54 00 	R0 = 0x54 (X);		/*		R0=0x54( 84) */
ffa0962e:	28 9a       	B[P5++] = R0;
ffa09630:	20 e1 55 00 	R0 = 0x55 (X);		/*		R0=0x55( 85) */
ffa09634:	28 9a       	B[P5++] = R0;
ffa09636:	20 e1 54 00 	R0 = 0x54 (X);		/*		R0=0x54( 84) */
ffa0963a:	28 9a       	B[P5++] = R0;
ffa0963c:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa09640:	28 9a       	B[P5++] = R0;
ffa09642:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa09646:	28 9a       	B[P5++] = R0;
ffa09648:	d8 60       	R0 = 0x1b (X);		/*		R0=0x1b( 27) */
ffa0964a:	28 9a       	B[P5++] = R0;
ffa0964c:	e0 60       	R0 = 0x1c (X);		/*		R0=0x1c( 28) */
ffa0964e:	28 9a       	B[P5++] = R0;
ffa09650:	e8 60       	R0 = 0x1d (X);		/*		R0=0x1d( 29) */
ffa09652:	28 9a       	B[P5++] = R0;
ffa09654:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa09658:	28 9a       	B[P5++] = R0;
ffa0965a:	20 e1 5a 00 	R0 = 0x5a (X);		/*		R0=0x5a( 90) */
ffa0965e:	28 9a       	B[P5++] = R0;
ffa09660:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa09664:	28 9a       	B[P5++] = R0;
ffa09666:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa0966a:	28 9a       	B[P5++] = R0;
ffa0966c:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa09670:	28 9a       	B[P5++] = R0;
ffa09672:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa09676:	28 9a       	B[P5++] = R0;
ffa09678:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa0967c:	28 9a       	B[P5++] = R0;
ffa0967e:	20 e1 5f 00 	R0 = 0x5f (X);		/*		R0=0x5f( 95) */
ffa09682:	28 9a       	B[P5++] = R0;
ffa09684:	f0 60       	R0 = 0x1e (X);		/*		R0=0x1e( 30) */
ffa09686:	28 9a       	B[P5++] = R0;
ffa09688:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa0968a:	28 9a       	B[P5++] = R0;
ffa0968c:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa0968e:	28 9a       	B[P5++] = R0;
ffa09690:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa09694:	28 9a       	B[P5++] = R0;
ffa09696:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa0969a:	28 9a       	B[P5++] = R0;
ffa0969c:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa096a0:	28 9a       	B[P5++] = R0;
ffa096a2:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa096a6:	28 9a       	B[P5++] = R0;
ffa096a8:	20 e1 62 00 	R0 = 0x62 (X);		/*		R0=0x62( 98) */
ffa096ac:	28 9a       	B[P5++] = R0;
ffa096ae:	20 e1 63 00 	R0 = 0x63 (X);		/*		R0=0x63( 99) */
ffa096b2:	28 9a       	B[P5++] = R0;
ffa096b4:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa096b8:	28 9a       	B[P5++] = R0;
ffa096ba:	20 e1 63 00 	R0 = 0x63 (X);		/*		R0=0x63( 99) */
ffa096be:	28 9a       	B[P5++] = R0;
ffa096c0:	08 61       	R0 = 0x21 (X);		/*		R0=0x21( 33) */
ffa096c2:	28 9a       	B[P5++] = R0;
ffa096c4:	10 61       	R0 = 0x22 (X);		/*		R0=0x22( 34) */
ffa096c6:	28 9a       	B[P5++] = R0;
ffa096c8:	18 61       	R0 = 0x23 (X);		/*		R0=0x23( 35) */
ffa096ca:	28 9a       	B[P5++] = R0;
ffa096cc:	20 e1 66 00 	R0 = 0x66 (X);		/*		R0=0x66(102) */
ffa096d0:	28 9a       	B[P5++] = R0;
ffa096d2:	20 e1 68 00 	R0 = 0x68 (X);		/*		R0=0x68(104) */
ffa096d6:	28 9a       	B[P5++] = R0;
ffa096d8:	20 e1 69 00 	R0 = 0x69 (X);		/*		R0=0x69(105) */
ffa096dc:	28 9a       	B[P5++] = R0;
ffa096de:	20 e1 6a 00 	R0 = 0x6a (X);		/*		R0=0x6a(106) */
ffa096e2:	28 9a       	B[P5++] = R0;
ffa096e4:	20 e1 69 00 	R0 = 0x69 (X);		/*		R0=0x69(105) */
ffa096e8:	28 9a       	B[P5++] = R0;
ffa096ea:	20 e1 65 00 	R0 = 0x65 (X);		/*		R0=0x65(101) */
ffa096ee:	28 9a       	B[P5++] = R0;
ffa096f0:	20 e1 66 00 	R0 = 0x66 (X);		/*		R0=0x66(102) */
ffa096f4:	28 9a       	B[P5++] = R0;
ffa096f6:	20 e1 67 00 	R0 = 0x67 (X);		/*		R0=0x67(103) */
ffa096fa:	28 9a       	B[P5++] = R0;
ffa096fc:	20 61       	R0 = 0x24 (X);		/*		R0=0x24( 36) */
ffa096fe:	28 9a       	B[P5++] = R0;
ffa09700:	28 61       	R0 = 0x25 (X);		/*		R0=0x25( 37) */
ffa09702:	28 9a       	B[P5++] = R0;
ffa09704:	30 61       	R0 = 0x26 (X);		/*		R0=0x26( 38) */
ffa09706:	28 9a       	B[P5++] = R0;
ffa09708:	20 e1 5a 00 	R0 = 0x5a (X);		/*		R0=0x5a( 90) */
ffa0970c:	28 9a       	B[P5++] = R0;
ffa0970e:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa09712:	28 9a       	B[P5++] = R0;
ffa09714:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa09718:	28 9a       	B[P5++] = R0;
ffa0971a:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa0971e:	28 9a       	B[P5++] = R0;
ffa09720:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa09724:	28 9a       	B[P5++] = R0;
ffa09726:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa0972a:	28 9a       	B[P5++] = R0;
ffa0972c:	20 e1 5f 00 	R0 = 0x5f (X);		/*		R0=0x5f( 95) */
ffa09730:	28 9a       	B[P5++] = R0;
ffa09732:	20 e1 60 00 	R0 = 0x60 (X);		/*		R0=0x60( 96) */
ffa09736:	28 9a       	B[P5++] = R0;
ffa09738:	38 61       	R0 = 0x27 (X);		/*		R0=0x27( 39) */
ffa0973a:	28 9a       	B[P5++] = R0;
ffa0973c:	40 61       	R0 = 0x28 (X);		/*		R0=0x28( 40) */
ffa0973e:	28 9a       	B[P5++] = R0;
ffa09740:	48 61       	R0 = 0x29 (X);		/*		R0=0x29( 41) */
ffa09742:	28 9a       	B[P5++] = R0;
ffa09744:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa09748:	28 9a       	B[P5++] = R0;
ffa0974a:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa0974e:	28 9a       	B[P5++] = R0;
ffa09750:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa09754:	28 9a       	B[P5++] = R0;
ffa09756:	0d e1 00 63 	P5.L = 0x6300;		/* (25344)	P5=0xff806300 */
ffa0975a:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff806300 */
ffa0975e:	00 e1 00 00 	R0.L = 0x0;		/* (  0)	R0=0x0(  0) */
ffa09762:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x0(  0) */
ffa09766:	28 92       	[P5++] = R0;
ffa09768:	00 e1 80 00 	R0.L = 0x80;		/* (128)	R0=0x80(128) */
ffa0976c:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x80(128) */
ffa09770:	28 92       	[P5++] = R0;
ffa09772:	00 e1 00 80 	R0.L = 0x8000;		/* (-32768)	R0=0x8000(32768) */
ffa09776:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x8000(32768) */
ffa0977a:	28 92       	[P5++] = R0;
ffa0977c:	00 e1 80 80 	R0.L = 0x8080;		/* (-32640)	R0=0x8080(32896) */
ffa09780:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x8080(32896) */
ffa09784:	28 92       	[P5++] = R0;
ffa09786:	00 e1 00 00 	R0.L = 0x0;		/* (  0)	R0=0x0(  0) */
ffa0978a:	40 e1 80 00 	R0.H = 0x80;		/* (128)	R0=0x800000(8388608) */
ffa0978e:	28 92       	[P5++] = R0;
ffa09790:	00 e1 80 00 	R0.L = 0x80;		/* (128)	R0=0x800080(8388736) */
ffa09794:	40 e1 80 00 	R0.H = 0x80;		/* (128)	R0=0x800080(8388736) */
ffa09798:	28 92       	[P5++] = R0;
ffa0979a:	00 e1 00 80 	R0.L = 0x8000;		/* (-32768)	R0=0x808000(8421376) */
ffa0979e:	40 e1 80 00 	R0.H = 0x80;		/* (128)	R0=0x808000(8421376) */
ffa097a2:	28 92       	[P5++] = R0;
ffa097a4:	00 e1 80 80 	R0.L = 0x8080;		/* (-32640)	R0=0x808080(8421504) */
ffa097a8:	40 e1 80 00 	R0.H = 0x80;		/* (128)	R0=0x808080(8421504) */
ffa097ac:	28 92       	[P5++] = R0;
ffa097ae:	00 e1 00 00 	R0.L = 0x0;		/* (  0)	R0=0x800000(8388608) */
ffa097b2:	40 e1 00 80 	R0.H = 0x8000;		/* (-32768)	R0=0x80000000(-2147483648) */
ffa097b6:	28 92       	[P5++] = R0;
ffa097b8:	00 e1 80 00 	R0.L = 0x80;		/* (128)	R0=0x80000080(-2147483520) */
ffa097bc:	40 e1 00 80 	R0.H = 0x8000;		/* (-32768)	R0=0x80000080(-2147483520) */
ffa097c0:	28 92       	[P5++] = R0;
ffa097c2:	00 e1 00 80 	R0.L = 0x8000;		/* (-32768)	R0=0x80008000(-2147450880) */
ffa097c6:	40 e1 00 80 	R0.H = 0x8000;		/* (-32768)	R0=0x80008000(-2147450880) */
ffa097ca:	28 92       	[P5++] = R0;
ffa097cc:	00 e1 80 80 	R0.L = 0x8080;		/* (-32640)	R0=0x80008080(-2147450752) */
ffa097d0:	40 e1 00 80 	R0.H = 0x8000;		/* (-32768)	R0=0x80008080(-2147450752) */
ffa097d4:	28 92       	[P5++] = R0;
ffa097d6:	00 e1 00 00 	R0.L = 0x0;		/* (  0)	R0=0x80000000(-2147483648) */
ffa097da:	40 e1 80 80 	R0.H = 0x8080;		/* (-32640)	R0=0x80800000(-2139095040) */
ffa097de:	28 92       	[P5++] = R0;
ffa097e0:	00 e1 80 00 	R0.L = 0x80;		/* (128)	R0=0x80800080(-2139094912) */
ffa097e4:	40 e1 80 80 	R0.H = 0x8080;		/* (-32640)	R0=0x80800080(-2139094912) */
ffa097e8:	28 92       	[P5++] = R0;
ffa097ea:	00 e1 00 80 	R0.L = 0x8000;		/* (-32768)	R0=0x80808000(-2139062272) */
ffa097ee:	40 e1 80 80 	R0.H = 0x8080;		/* (-32640)	R0=0x80808000(-2139062272) */
ffa097f2:	28 92       	[P5++] = R0;
ffa097f4:	00 e1 80 80 	R0.L = 0x8080;		/* (-32640)	R0=0x80808080(-2139062144) */
ffa097f8:	40 e1 80 80 	R0.H = 0x8080;		/* (-32640)	R0=0x80808080(-2139062144) */
ffa097fc:	28 92       	[P5++] = R0;
ffa097fe:	10 00       	RTS;

ffa09800 <___divsi3>:
ffa09800:	c8 58       	R3 = R0 ^ R1;
ffa09802:	07 c4 00 80 	R0 = ABS R0;
ffa09806:	18 03       	CC = V;
ffa09808:	82 c6 fb c7 	R3 = ROT R3 BY -0x1;
ffa0980c:	07 c4 08 82 	R1 = ABS R1;
ffa09810:	88 08       	CC = R0 < R1;
ffa09812:	76 18       	IF CC JUMP 0xffa098fe <___divsi3+0xfe>;
ffa09814:	82 c6 89 85 	R2 = R1 >> 0xf;
ffa09818:	0a 02       	CC = R2;
ffa0981a:	1e 18       	IF CC JUMP 0xffa09856 <___divsi3+0x56>;
ffa0981c:	82 c6 81 84 	R2 = R1 << 0x10;
ffa09820:	02 09       	CC = R2 <= R0;
ffa09822:	1a 18       	IF CC JUMP 0xffa09856 <___divsi3+0x56>;
ffa09824:	48 42       	DIVS (R0, R1);
ffa09826:	08 42       	DIVQ (R0, R1);
ffa09828:	08 42       	DIVQ (R0, R1);
ffa0982a:	08 42       	DIVQ (R0, R1);
ffa0982c:	08 42       	DIVQ (R0, R1);
ffa0982e:	08 42       	DIVQ (R0, R1);
ffa09830:	08 42       	DIVQ (R0, R1);
ffa09832:	08 42       	DIVQ (R0, R1);
ffa09834:	08 42       	DIVQ (R0, R1);
ffa09836:	08 42       	DIVQ (R0, R1);
ffa09838:	08 42       	DIVQ (R0, R1);
ffa0983a:	08 42       	DIVQ (R0, R1);
ffa0983c:	08 42       	DIVQ (R0, R1);
ffa0983e:	08 42       	DIVQ (R0, R1);
ffa09840:	08 42       	DIVQ (R0, R1);
ffa09842:	08 42       	DIVQ (R0, R1);
ffa09844:	08 42       	DIVQ (R0, R1);
ffa09846:	c0 42       	R0 = R0.L (Z);
ffa09848:	82 c6 0b 83 	R1 = R3 >> 0x1f;
ffa0984c:	08 50       	R0 = R0 + R1;
ffa0984e:	81 43       	R1 = -R0;
ffa09850:	f3 49       	CC = BITTST (R3, 0x1e);		/* bit 30 */
ffa09852:	01 07       	IF CC R0 = R1;
ffa09854:	10 00       	RTS;
ffa09856:	01 0c       	CC = R1 == 0x0;
ffa09858:	34 18       	IF CC JUMP 0xffa098c0 <___divsi3+0xc0>;
ffa0985a:	00 0c       	CC = R0 == 0x0;
ffa0985c:	3f 18       	IF CC JUMP 0xffa098da <___divsi3+0xda>;
ffa0985e:	08 08       	CC = R0 == R1;
ffa09860:	30 18       	IF CC JUMP 0xffa098c0 <___divsi3+0xc0>;
ffa09862:	09 0c       	CC = R1 == 0x1;
ffa09864:	2e 18       	IF CC JUMP 0xffa098c0 <___divsi3+0xc0>;
ffa09866:	06 c6 01 c4 	R2.L = ONES R1;
ffa0986a:	d2 42       	R2 = R2.L (Z);
ffa0986c:	0a 0c       	CC = R2 == 0x1;
ffa0986e:	37 18       	IF CC JUMP 0xffa098dc <___divsi3+0xdc>;
ffa09870:	f9 68       	P1 = 0x1f (X);		/*		P1=0x1f( 31) */
ffa09872:	68 05       	[--SP] = (R7:5);
ffa09874:	8a 43       	R2 = -R1;
ffa09876:	42 01       	[--SP] = R2;
ffa09878:	82 c6 08 84 	R2 = R0 << 0x1;
ffa0987c:	88 59       	R6 = R0 ^ R1;
ffa0987e:	82 c6 0e 8b 	R5 = R6 >> 0x1f;
ffa09882:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09884:	aa 56       	R2 = R2 | R5;
ffa09886:	88 59       	R6 = R0 ^ R1;
ffa09888:	a2 e0 12 10 	LSETUP(0xffa0988c <___divsi3+0x8c>, 0xffa098ac <___divsi3+0xac>) LC0 = P1;
ffa0988c:	82 c6 0a 8f 	R7 = R2 >> 0x1f;
ffa09890:	82 c6 0a 84 	R2 = R2 << 0x1;
ffa09894:	82 ce 08 80 	R0 = R0 << 0x1 || R5 = [SP] || NOP;
ffa09898:	35 91 00 00 
ffa0989c:	38 56       	R0 = R0 | R7;
ffa0989e:	86 0c       	CC = R6 < 0x0;
ffa098a0:	29 07       	IF CC R5 = R1;
ffa098a2:	28 50       	R0 = R0 + R5;
ffa098a4:	88 59       	R6 = R0 ^ R1;
ffa098a6:	82 c6 0e 8b 	R5 = R6 >> 0x1f;
ffa098aa:	05 4b       	BITTGL (R5, 0x0);		/* bit  0 */
ffa098ac:	aa 50       	R2 = R2 + R5;
ffa098ae:	82 c6 0b 83 	R1 = R3 >> 0x1f;
ffa098b2:	8a 50       	R2 = R2 + R1;
ffa098b4:	f3 49       	CC = BITTST (R3, 0x1e);		/* bit 30 */
ffa098b6:	90 43       	R0 = -R2;
ffa098b8:	02 06       	IF !CC R0 = R2;
ffa098ba:	26 6c       	SP += 0x4;		/* (  4) */
ffa098bc:	28 05       	(R7:5) = [SP++];
ffa098be:	10 00       	RTS;
ffa098c0:	01 0c       	CC = R1 == 0x0;
ffa098c2:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa098c4:	0a 4e       	R2 >>= 0x1;
ffa098c6:	06 18       	IF CC JUMP 0xffa098d2 <___divsi3+0xd2>;
ffa098c8:	08 08       	CC = R0 == R1;
ffa098ca:	82 e1 01 00 	R2 = 0x1 (Z);		/*		R2=0x1(  1) */
ffa098ce:	02 18       	IF CC JUMP 0xffa098d2 <___divsi3+0xd2>;
ffa098d0:	10 30       	R2 = R0;
ffa098d2:	02 30       	R0 = R2;
ffa098d4:	92 43       	R2 = -R2;
ffa098d6:	f3 49       	CC = BITTST (R3, 0x1e);		/* bit 30 */
ffa098d8:	02 07       	IF CC R0 = R2;
ffa098da:	10 00       	RTS;
ffa098dc:	82 c6 08 85 	R2 = R0 >> 0x1f;
ffa098e0:	81 0c       	CC = R1 < 0x0;
ffa098e2:	f8 1b       	IF CC JUMP 0xffa098d2 <___divsi3+0xd2>;
ffa098e4:	05 c6 01 02 	R1.L = SIGNBITS R1;
ffa098e8:	c9 42       	R1 = R1.L (Z);
ffa098ea:	11 67       	R1 += -0x1e;		/* (-30) */
ffa098ec:	02 c6 08 80 	R0 = SHIFT R0 BY R1.L;
ffa098f0:	82 c6 0b 83 	R1 = R3 >> 0x1f;
ffa098f4:	08 50       	R0 = R0 + R1;
ffa098f6:	82 43       	R2 = -R0;
ffa098f8:	f3 49       	CC = BITTST (R3, 0x1e);		/* bit 30 */
ffa098fa:	02 07       	IF CC R0 = R2;
ffa098fc:	10 00       	RTS;
ffa098fe:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09900:	10 00       	RTS;
	...

ffa09904 <_exception_report>:
ffa09904:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa09908:	b8 b0       	[FP + 0x8] = R0;
ffa0990a:	f9 b0       	[FP + 0xc] = R1;
ffa0990c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc07000(-4165632) */
ffa09910:	0a e1 00 07 	P2.L = 0x700;		/* (1792)	P2=0xffc00700(-4192512) */
ffa09914:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09916:	10 97       	W[P2] = R0;
ffa09918:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00700(-4192512) */
ffa0991c:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa09920:	20 e1 00 01 	R0 = 0x100 (X);		/*		R0=0x100(256) */
ffa09924:	10 97       	W[P2] = R0;
ffa09926:	24 00       	SSYNC;
ffa09928:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa0992c:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa09930:	20 e1 00 01 	R0 = 0x100 (X);		/*		R0=0x100(256) */
ffa09934:	10 97       	W[P2] = R0;
ffa09936:	24 00       	SSYNC;
ffa09938:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa0993a:	d0 bb       	[FP -0xc] = R0;
ffa0993c:	b8 a0       	R0 = [FP + 0x8];
ffa0993e:	e0 bb       	[FP -0x8] = R0;
ffa09940:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09942:	f0 bb       	[FP -0x4] = R0;
ffa09944:	27 20       	JUMP.S 0xffa09992 <_exception_report+0x8e>;
ffa09946:	d0 b9       	R0 = [FP -0xc];
ffa09948:	e1 b9       	R1 = [FP -0x8];
ffa0994a:	08 54       	R0 = R0 & R1;
ffa0994c:	00 0c       	CC = R0 == 0x0;
ffa0994e:	08 18       	IF CC JUMP 0xffa0995e <_exception_report+0x5a>;
ffa09950:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa09954:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa09958:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0995a:	10 97       	W[P2] = R0;
ffa0995c:	07 20       	JUMP.S 0xffa0996a <_exception_report+0x66>;
ffa0995e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa09962:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa09966:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09968:	10 97       	W[P2] = R0;
ffa0996a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0996e:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa09972:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09974:	10 97       	W[P2] = R0;
ffa09976:	24 00       	SSYNC;
ffa09978:	d0 b9       	R0 = [FP -0xc];
ffa0997a:	08 4e       	R0 >>= 0x1;
ffa0997c:	d0 bb       	[FP -0xc] = R0;
ffa0997e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa09982:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa09986:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09988:	10 97       	W[P2] = R0;
ffa0998a:	24 00       	SSYNC;
ffa0998c:	f0 b9       	R0 = [FP -0x4];
ffa0998e:	08 64       	R0 += 0x1;		/* (  1) */
ffa09990:	f0 bb       	[FP -0x4] = R0;
ffa09992:	f0 b9       	R0 = [FP -0x4];
ffa09994:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa09996:	08 09       	CC = R0 <= R1;
ffa09998:	d7 1b       	IF CC JUMP 0xffa09946 <_exception_report+0x42>;
ffa0999a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa0999e:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa099a2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa099a4:	10 97       	W[P2] = R0;
ffa099a6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa099a8:	f0 bb       	[FP -0x4] = R0;
ffa099aa:	06 20       	JUMP.S 0xffa099b6 <_exception_report+0xb2>;
ffa099ac:	00 00       	NOP;
ffa099ae:	00 00       	NOP;
ffa099b0:	f0 b9       	R0 = [FP -0x4];
ffa099b2:	08 64       	R0 += 0x1;		/* (  1) */
ffa099b4:	f0 bb       	[FP -0x4] = R0;
ffa099b6:	f0 b9       	R0 = [FP -0x4];
ffa099b8:	e9 60       	R1 = 0x1d (X);		/*		R1=0x1d( 29) */
ffa099ba:	08 09       	CC = R0 <= R1;
ffa099bc:	f8 1b       	IF CC JUMP 0xffa099ac <_exception_report+0xa8>;
ffa099be:	80 e1 00 80 	R0 = 0x8000 (Z);		/*		R0=0x8000(32768) */
ffa099c2:	d0 bb       	[FP -0xc] = R0;
ffa099c4:	f8 a0       	R0 = [FP + 0xc];
ffa099c6:	e0 bb       	[FP -0x8] = R0;
ffa099c8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa099ca:	f0 bb       	[FP -0x4] = R0;
ffa099cc:	44 20       	JUMP.S 0xffa09a54 <_exception_report+0x150>;
ffa099ce:	d0 b9       	R0 = [FP -0xc];
ffa099d0:	e1 b9       	R1 = [FP -0x8];
ffa099d2:	08 54       	R0 = R0 & R1;
ffa099d4:	00 0c       	CC = R0 == 0x0;
ffa099d6:	08 18       	IF CC JUMP 0xffa099e6 <_exception_report+0xe2>;
ffa099d8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa099dc:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa099e0:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa099e2:	10 97       	W[P2] = R0;
ffa099e4:	07 20       	JUMP.S 0xffa099f2 <_exception_report+0xee>;
ffa099e6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa099ea:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa099ee:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa099f0:	10 97       	W[P2] = R0;
ffa099f2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa099f6:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa099fa:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa099fc:	10 97       	W[P2] = R0;
ffa099fe:	24 00       	SSYNC;
ffa09a00:	d0 b9       	R0 = [FP -0xc];
ffa09a02:	08 4e       	R0 >>= 0x1;
ffa09a04:	d0 bb       	[FP -0xc] = R0;
ffa09a06:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa09a0a:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa09a0e:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09a10:	10 97       	W[P2] = R0;
ffa09a12:	24 00       	SSYNC;
ffa09a14:	f1 b9       	R1 = [FP -0x4];
ffa09a16:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa09a18:	01 54       	R0 = R1 & R0;
ffa09a1a:	18 0c       	CC = R0 == 0x3;
ffa09a1c:	19 10       	IF !CC JUMP 0xffa09a4e <_exception_report+0x14a>;
	...
ffa09a4e:	f0 b9       	R0 = [FP -0x4];
ffa09a50:	08 64       	R0 += 0x1;		/* (  1) */
ffa09a52:	f0 bb       	[FP -0x4] = R0;
ffa09a54:	f0 b9       	R0 = [FP -0x4];
ffa09a56:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa09a58:	08 09       	CC = R0 <= R1;
ffa09a5a:	ba 1b       	IF CC JUMP 0xffa099ce <_exception_report+0xca>;
ffa09a5c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa09a60:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa09a64:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09a66:	10 97       	W[P2] = R0;
ffa09a68:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09a6a:	f0 bb       	[FP -0x4] = R0;
ffa09a6c:	06 20       	JUMP.S 0xffa09a78 <_exception_report+0x174>;
ffa09a6e:	00 00       	NOP;
ffa09a70:	00 00       	NOP;
ffa09a72:	f0 b9       	R0 = [FP -0x4];
ffa09a74:	08 64       	R0 += 0x1;		/* (  1) */
ffa09a76:	f0 bb       	[FP -0x4] = R0;
ffa09a78:	f0 b9       	R0 = [FP -0x4];
ffa09a7a:	21 e1 2b 01 	R1 = 0x12b (X);		/*		R1=0x12b(299) */
ffa09a7e:	08 09       	CC = R0 <= R1;
ffa09a80:	f7 1b       	IF CC JUMP 0xffa09a6e <_exception_report+0x16a>;
ffa09a82:	4b 2f       	JUMP.S 0xffa09918 <_exception_report+0x14>;

ffa09a84 <_nmi_report>:
ffa09a84:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa09a88:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09a8a:	f0 bb       	[FP -0x4] = R0;
ffa09a8c:	06 20       	JUMP.S 0xffa09a98 <_nmi_report+0x14>;
ffa09a8e:	00 00       	NOP;
ffa09a90:	00 00       	NOP;
ffa09a92:	f0 b9       	R0 = [FP -0x4];
ffa09a94:	08 64       	R0 += 0x1;		/* (  1) */
ffa09a96:	f0 bb       	[FP -0x4] = R0;
ffa09a98:	f0 b9       	R0 = [FP -0x4];
ffa09a9a:	21 e1 2b 01 	R1 = 0x12b (X);		/*		R1=0x12b(299) */
ffa09a9e:	08 09       	CC = R0 <= R1;
ffa09aa0:	f7 1b       	IF CC JUMP 0xffa09a8e <_nmi_report+0xa>;
ffa09aa2:	01 e8 00 00 	UNLINK;
ffa09aa6:	10 00       	RTS;

ffa09aa8 <_main>:
ffa09aa8:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa09aac:	4a e1 e0 ff 	P2.H = 0xffe0;		/* (-32)	P2=0xffe00704(-2095356) */
ffa09ab0:	0a e1 04 10 	P2.L = 0x1004;		/* (4100)	P2=0xffe01004(-2093052) */
ffa09ab4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09ab6:	10 93       	[P2] = R0;
ffa09ab8:	23 00       	CSYNC;
ffa09aba:	4a e1 e0 ff 	P2.H = 0xffe0;		/* (-32)	P2=0xffe01004(-2093052) */
ffa09abe:	0a e1 04 00 	P2.L = 0x4;		/* (  4)	P2=0xffe00004(-2097148) */
ffa09ac2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09ac4:	10 93       	[P2] = R0;
ffa09ac6:	23 00       	CSYNC;
ffa09ac8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00004(-4194300) */
ffa09acc:	0a e1 40 07 	P2.L = 0x740;		/* (1856)	P2=0xffc00740(-4192448) */
ffa09ad0:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa09ad2:	10 97       	W[P2] = R0;
ffa09ad4:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc0001f(-4194273) */
ffa09ad8:	09 e1 30 07 	P1.L = 0x730;		/* (1840)	P1=0xffc00730(-4192464) */
ffa09adc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00740(-4192448) */
ffa09ae0:	0a e1 40 07 	P2.L = 0x740;		/* (1856)	P2=0xffc00740(-4192448) */
ffa09ae4:	50 95       	R0 = W[P2] (X);
ffa09ae6:	c0 43       	R0 =~ R0;
ffa09ae8:	08 97       	W[P1] = R0;
ffa09aea:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00740(-4192448) */
ffa09aee:	0a e1 00 07 	P2.L = 0x700;		/* (1792)	P2=0xffc00700(-4192512) */
ffa09af2:	20 e1 87 01 	R0 = 0x187 (X);		/*		R0=0x187(391) */
ffa09af6:	10 97       	W[P2] = R0;
ffa09af8:	20 e1 7c 00 	R0 = 0x7c (X);		/*		R0=0x7c(124) */
ffa09afc:	00 e3 6a 06 	CALL 0xffa0a7d0 <_radio_init>;
ffa09b00:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00700(-4192512) */
ffa09b04:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa09b08:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09b0a:	10 97       	W[P2] = R0;
ffa09b0c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa09b10:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa09b14:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa09b18:	10 97       	W[P2] = R0;
ffa09b1a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09b1c:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa09b20:	0a 20       	JUMP.S 0xffa09b34 <_main+0x8c>;
	...
ffa09b2a:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa09b2e:	08 64       	R0 += 0x1;		/* (  1) */
ffa09b30:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa09b34:	78 e4 fe ff 	R0 = W[FP + -0x4] (Z);
ffa09b38:	21 e1 e7 03 	R1 = 0x3e7 (X);		/*		R1=0x3e7(999) */
ffa09b3c:	08 0a       	CC = R0 <= R1 (IU);
ffa09b3e:	f2 1b       	IF CC JUMP 0xffa09b22 <_main+0x7a>;
ffa09b40:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa09b44:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa09b48:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa09b4c:	10 97       	W[P2] = R0;
ffa09b4e:	00 e3 f5 05 	CALL 0xffa0a738 <_radio_set_tx>;
ffa09b52:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa09b56:	0a e1 28 08 	P2.L = 0x828;		/* (2088)	P2=0xffc00828(-4192216) */
ffa09b5a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09b5c:	10 97       	W[P2] = R0;
ffa09b5e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00828(-4192216) */
ffa09b62:	0a e1 2c 08 	P2.L = 0x82c;		/* (2092)	P2=0xffc0082c(-4192212) */
ffa09b66:	98 60       	R0 = 0x13 (X);		/*		R0=0x13( 19) */
ffa09b68:	10 97       	W[P2] = R0;
ffa09b6a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0082c(-4192212) */
ffa09b6e:	0a e1 24 08 	P2.L = 0x824;		/* (2084)	P2=0xffc00824(-4192220) */
ffa09b72:	20 e1 0f 01 	R0 = 0x10f (X);		/*		R0=0x10f(271) */
ffa09b76:	10 97       	W[P2] = R0;
ffa09b78:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00824(-4192220) */
ffa09b7c:	0a e1 28 09 	P2.L = 0x928;		/* (2344)	P2=0xffc00928(-4191960) */
ffa09b80:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09b82:	10 97       	W[P2] = R0;
ffa09b84:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00928(-4191960) */
ffa09b88:	0a e1 2c 09 	P2.L = 0x92c;		/* (2348)	P2=0xffc0092c(-4191956) */
ffa09b8c:	98 60       	R0 = 0x13 (X);		/*		R0=0x13( 19) */
ffa09b8e:	10 97       	W[P2] = R0;
ffa09b90:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0092c(-4191956) */
ffa09b94:	0a e1 24 09 	P2.L = 0x924;		/* (2340)	P2=0xffc00924(-4191964) */
ffa09b98:	20 e1 0f 01 	R0 = 0x10f (X);		/*		R0=0x10f(271) */
ffa09b9c:	10 97       	W[P2] = R0;
ffa09b9e:	ff e3 a1 f3 	CALL 0xffa082e0 <_radio_bidi_asm>;
ffa09ba2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09ba4:	01 e8 00 00 	UNLINK;
ffa09ba8:	10 00       	RTS;
	...

ffa09bac <_div>:
ffa09bac:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa09bb0:	b8 b0       	[FP + 0x8] = R0;
ffa09bb2:	f9 b0       	[FP + 0xc] = R1;
ffa09bb4:	b8 a0       	R0 = [FP + 0x8];
ffa09bb6:	08 4f       	R0 <<= 0x1;
ffa09bb8:	b8 b0       	[FP + 0x8] = R0;
ffa09bba:	b9 a0       	R1 = [FP + 0x8];
ffa09bbc:	f8 a0       	R0 = [FP + 0xc];
ffa09bbe:	11 30       	R2 = R1;
ffa09bc0:	18 30       	R3 = R0;
ffa09bc2:	5a 42       	DIVS (R2, R3);
ffa09bc4:	0b 30       	R1 = R3;
ffa09bc6:	02 30       	R0 = R2;
ffa09bc8:	b8 b0       	[FP + 0x8] = R0;
ffa09bca:	f9 b0       	[FP + 0xc] = R1;
ffa09bcc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09bce:	f0 bb       	[FP -0x4] = R0;
ffa09bd0:	0d 20       	JUMP.S 0xffa09bea <_div+0x3e>;
ffa09bd2:	b9 a0       	R1 = [FP + 0x8];
ffa09bd4:	f8 a0       	R0 = [FP + 0xc];
ffa09bd6:	11 30       	R2 = R1;
ffa09bd8:	18 30       	R3 = R0;
ffa09bda:	1a 42       	DIVQ (R2, R3);
ffa09bdc:	0b 30       	R1 = R3;
ffa09bde:	02 30       	R0 = R2;
ffa09be0:	b8 b0       	[FP + 0x8] = R0;
ffa09be2:	f9 b0       	[FP + 0xc] = R1;
ffa09be4:	f0 b9       	R0 = [FP -0x4];
ffa09be6:	08 64       	R0 += 0x1;		/* (  1) */
ffa09be8:	f0 bb       	[FP -0x4] = R0;
ffa09bea:	f0 b9       	R0 = [FP -0x4];
ffa09bec:	71 60       	R1 = 0xe (X);		/*		R1=0xe( 14) */
ffa09bee:	08 09       	CC = R0 <= R1;
ffa09bf0:	f1 1b       	IF CC JUMP 0xffa09bd2 <_div+0x26>;
ffa09bf2:	b8 a0       	R0 = [FP + 0x8];
ffa09bf4:	80 42       	R0 = R0.L (X);
ffa09bf6:	b8 b0       	[FP + 0x8] = R0;
ffa09bf8:	b8 a0       	R0 = [FP + 0x8];
ffa09bfa:	01 e8 00 00 	UNLINK;
ffa09bfe:	10 00       	RTS;

ffa09c00 <_mod>:
ffa09c00:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa09c04:	b8 b0       	[FP + 0x8] = R0;
ffa09c06:	f9 b0       	[FP + 0xc] = R1;
ffa09c08:	f9 a0       	R1 = [FP + 0xc];
ffa09c0a:	b8 a0       	R0 = [FP + 0x8];
ffa09c0c:	ff e3 d0 ff 	CALL 0xffa09bac <_div>;
ffa09c10:	f0 bb       	[FP -0x4] = R0;
ffa09c12:	f1 b9       	R1 = [FP -0x4];
ffa09c14:	f8 a0       	R0 = [FP + 0xc];
ffa09c16:	c1 40       	R1 *= R0;
ffa09c18:	b8 a0       	R0 = [FP + 0x8];
ffa09c1a:	08 52       	R0 = R0 - R1;
ffa09c1c:	01 e8 00 00 	UNLINK;
ffa09c20:	10 00       	RTS;
	...

ffa09c24 <_memcpy_>:
ffa09c24:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa09c28:	b8 b0       	[FP + 0x8] = R0;
ffa09c2a:	f9 b0       	[FP + 0xc] = R1;
ffa09c2c:	3a b1       	[FP + 0x10] = R2;
ffa09c2e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09c30:	f0 bb       	[FP -0x4] = R0;
ffa09c32:	0e 20       	JUMP.S 0xffa09c4e <_memcpy_+0x2a>;
ffa09c34:	ba ac       	P2 = [FP + 0x8];
ffa09c36:	50 99       	R0 = B[P2] (X);
ffa09c38:	fa ac       	P2 = [FP + 0xc];
ffa09c3a:	10 9b       	B[P2] = R0;
ffa09c3c:	f8 a0       	R0 = [FP + 0xc];
ffa09c3e:	08 64       	R0 += 0x1;		/* (  1) */
ffa09c40:	f8 b0       	[FP + 0xc] = R0;
ffa09c42:	b8 a0       	R0 = [FP + 0x8];
ffa09c44:	08 64       	R0 += 0x1;		/* (  1) */
ffa09c46:	b8 b0       	[FP + 0x8] = R0;
ffa09c48:	f0 b9       	R0 = [FP -0x4];
ffa09c4a:	08 64       	R0 += 0x1;		/* (  1) */
ffa09c4c:	f0 bb       	[FP -0x4] = R0;
ffa09c4e:	f1 b9       	R1 = [FP -0x4];
ffa09c50:	38 a1       	R0 = [FP + 0x10];
ffa09c52:	81 08       	CC = R1 < R0;
ffa09c54:	f0 1b       	IF CC JUMP 0xffa09c34 <_memcpy_+0x10>;
ffa09c56:	01 e8 00 00 	UNLINK;
ffa09c5a:	10 00       	RTS;

ffa09c5c <_memset_>:
ffa09c5c:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa09c60:	b8 b0       	[FP + 0x8] = R0;
ffa09c62:	3a b1       	[FP + 0x10] = R2;
ffa09c64:	01 30       	R0 = R1;
ffa09c66:	b8 e6 0c 00 	B[FP + 0xc] = R0;
ffa09c6a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09c6c:	f0 bb       	[FP -0x4] = R0;
ffa09c6e:	0b 20       	JUMP.S 0xffa09c84 <_memset_+0x28>;
ffa09c70:	ba ac       	P2 = [FP + 0x8];
ffa09c72:	b8 e5 0c 00 	R0 = B[FP + 0xc] (X);
ffa09c76:	10 9b       	B[P2] = R0;
ffa09c78:	b8 a0       	R0 = [FP + 0x8];
ffa09c7a:	08 64       	R0 += 0x1;		/* (  1) */
ffa09c7c:	b8 b0       	[FP + 0x8] = R0;
ffa09c7e:	f0 b9       	R0 = [FP -0x4];
ffa09c80:	08 64       	R0 += 0x1;		/* (  1) */
ffa09c82:	f0 bb       	[FP -0x4] = R0;
ffa09c84:	f1 b9       	R1 = [FP -0x4];
ffa09c86:	38 a1       	R0 = [FP + 0x10];
ffa09c88:	81 08       	CC = R1 < R0;
ffa09c8a:	f3 1b       	IF CC JUMP 0xffa09c70 <_memset_+0x14>;
ffa09c8c:	01 e8 00 00 	UNLINK;
ffa09c90:	10 00       	RTS;
	...

ffa09c94 <_strlen_>:
ffa09c94:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa09c98:	b8 b0       	[FP + 0x8] = R0;
ffa09c9a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09c9c:	f0 bb       	[FP -0x4] = R0;
ffa09c9e:	10 20       	JUMP.S 0xffa09cbe <_strlen_+0x2a>;
ffa09ca0:	f0 b9       	R0 = [FP -0x4];
ffa09ca2:	08 30       	R1 = R0;
ffa09ca4:	b8 a0       	R0 = [FP + 0x8];
ffa09ca6:	41 50       	R1 = R1 + R0;
ffa09ca8:	11 32       	P2 = R1;
ffa09caa:	50 99       	R0 = B[P2] (X);
ffa09cac:	00 43       	R0 = R0.B (X);
ffa09cae:	00 0c       	CC = R0 == 0x0;
ffa09cb0:	04 10       	IF !CC JUMP 0xffa09cb8 <_strlen_+0x24>;
ffa09cb2:	f0 b9       	R0 = [FP -0x4];
ffa09cb4:	e0 bb       	[FP -0x8] = R0;
ffa09cb6:	0b 20       	JUMP.S 0xffa09ccc <_strlen_+0x38>;
ffa09cb8:	f0 b9       	R0 = [FP -0x4];
ffa09cba:	08 64       	R0 += 0x1;		/* (  1) */
ffa09cbc:	f0 bb       	[FP -0x4] = R0;
ffa09cbe:	f0 b9       	R0 = [FP -0x4];
ffa09cc0:	21 e1 ff 04 	R1 = 0x4ff (X);		/*		R1=0x4ff(1279) */
ffa09cc4:	08 09       	CC = R0 <= R1;
ffa09cc6:	ed 1b       	IF CC JUMP 0xffa09ca0 <_strlen_+0xc>;
ffa09cc8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09cca:	e0 bb       	[FP -0x8] = R0;
ffa09ccc:	e0 b9       	R0 = [FP -0x8];
ffa09cce:	01 e8 00 00 	UNLINK;
ffa09cd2:	10 00       	RTS;

ffa09cd4 <_strcpy_>:
ffa09cd4:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa09cd8:	b8 b0       	[FP + 0x8] = R0;
ffa09cda:	f9 b0       	[FP + 0xc] = R1;
ffa09cdc:	3a b1       	[FP + 0x10] = R2;
ffa09cde:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09ce0:	f0 bb       	[FP -0x4] = R0;
ffa09ce2:	0e 20       	JUMP.S 0xffa09cfe <_strcpy_+0x2a>;
ffa09ce4:	3a ad       	P2 = [FP + 0x10];
ffa09ce6:	50 99       	R0 = B[P2] (X);
ffa09ce8:	ba ac       	P2 = [FP + 0x8];
ffa09cea:	10 9b       	B[P2] = R0;
ffa09cec:	b8 a0       	R0 = [FP + 0x8];
ffa09cee:	08 64       	R0 += 0x1;		/* (  1) */
ffa09cf0:	b8 b0       	[FP + 0x8] = R0;
ffa09cf2:	38 a1       	R0 = [FP + 0x10];
ffa09cf4:	08 64       	R0 += 0x1;		/* (  1) */
ffa09cf6:	38 b1       	[FP + 0x10] = R0;
ffa09cf8:	f0 b9       	R0 = [FP -0x4];
ffa09cfa:	08 64       	R0 += 0x1;		/* (  1) */
ffa09cfc:	f0 bb       	[FP -0x4] = R0;
ffa09cfe:	3a ad       	P2 = [FP + 0x10];
ffa09d00:	50 99       	R0 = B[P2] (X);
ffa09d02:	00 43       	R0 = R0.B (X);
ffa09d04:	00 0c       	CC = R0 == 0x0;
ffa09d06:	08 18       	IF CC JUMP 0xffa09d16 <_strcpy_+0x42>;
ffa09d08:	f0 b9       	R0 = [FP -0x4];
ffa09d0a:	21 e1 ff 04 	R1 = 0x4ff (X);		/*		R1=0x4ff(1279) */
ffa09d0e:	08 09       	CC = R0 <= R1;
ffa09d10:	ea 1b       	IF CC JUMP 0xffa09ce4 <_strcpy_+0x10>;
ffa09d12:	00 00       	NOP;
ffa09d14:	00 00       	NOP;
ffa09d16:	fa ac       	P2 = [FP + 0xc];
ffa09d18:	11 91       	R1 = [P2];
ffa09d1a:	f0 b9       	R0 = [FP -0x4];
ffa09d1c:	01 50       	R0 = R1 + R0;
ffa09d1e:	fa ac       	P2 = [FP + 0xc];
ffa09d20:	10 93       	[P2] = R0;
ffa09d22:	b8 a0       	R0 = [FP + 0x8];
ffa09d24:	01 e8 00 00 	UNLINK;
ffa09d28:	10 00       	RTS;
	...

ffa09d2c <_strprepend>:
ffa09d2c:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa09d30:	b8 b0       	[FP + 0x8] = R0;
ffa09d32:	f9 b0       	[FP + 0xc] = R1;
ffa09d34:	3a b1       	[FP + 0x10] = R2;
ffa09d36:	38 a1       	R0 = [FP + 0x10];
ffa09d38:	ff e3 ae ff 	CALL 0xffa09c94 <_strlen_>;
ffa09d3c:	d0 bb       	[FP -0xc] = R0;
ffa09d3e:	fa ac       	P2 = [FP + 0xc];
ffa09d40:	10 91       	R0 = [P2];
ffa09d42:	08 30       	R1 = R0;
ffa09d44:	b8 a0       	R0 = [FP + 0x8];
ffa09d46:	08 52       	R0 = R0 - R1;
ffa09d48:	e0 bb       	[FP -0x8] = R0;
ffa09d4a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09d4c:	f0 bb       	[FP -0x4] = R0;
ffa09d4e:	0e 20       	JUMP.S 0xffa09d6a <_strprepend+0x3e>;
ffa09d50:	3a ad       	P2 = [FP + 0x10];
ffa09d52:	50 99       	R0 = B[P2] (X);
ffa09d54:	ea b9       	P2 = [FP -0x8];
ffa09d56:	10 9b       	B[P2] = R0;
ffa09d58:	e0 b9       	R0 = [FP -0x8];
ffa09d5a:	08 64       	R0 += 0x1;		/* (  1) */
ffa09d5c:	e0 bb       	[FP -0x8] = R0;
ffa09d5e:	38 a1       	R0 = [FP + 0x10];
ffa09d60:	08 64       	R0 += 0x1;		/* (  1) */
ffa09d62:	38 b1       	[FP + 0x10] = R0;
ffa09d64:	f0 b9       	R0 = [FP -0x4];
ffa09d66:	08 64       	R0 += 0x1;		/* (  1) */
ffa09d68:	f0 bb       	[FP -0x4] = R0;
ffa09d6a:	f1 b9       	R1 = [FP -0x4];
ffa09d6c:	d0 b9       	R0 = [FP -0xc];
ffa09d6e:	81 08       	CC = R1 < R0;
ffa09d70:	f0 1b       	IF CC JUMP 0xffa09d50 <_strprepend+0x24>;
ffa09d72:	00 00       	NOP;
ffa09d74:	00 00       	NOP;
ffa09d76:	fa ac       	P2 = [FP + 0xc];
ffa09d78:	10 91       	R0 = [P2];
ffa09d7a:	08 30       	R1 = R0;
ffa09d7c:	b8 a0       	R0 = [FP + 0x8];
ffa09d7e:	08 52       	R0 = R0 - R1;
ffa09d80:	01 e8 00 00 	UNLINK;
ffa09d84:	10 00       	RTS;
	...

ffa09d88 <_strcmp>:
ffa09d88:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa09d8c:	b8 b0       	[FP + 0x8] = R0;
ffa09d8e:	f9 b0       	[FP + 0xc] = R1;
ffa09d90:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09d92:	f0 bb       	[FP -0x4] = R0;
ffa09d94:	1a 20       	JUMP.S 0xffa09dc8 <_strcmp+0x40>;
ffa09d96:	ba ac       	P2 = [FP + 0x8];
ffa09d98:	51 99       	R1 = B[P2] (X);
ffa09d9a:	fa ac       	P2 = [FP + 0xc];
ffa09d9c:	50 99       	R0 = B[P2] (X);
ffa09d9e:	09 43       	R1 = R1.B (X);
ffa09da0:	00 43       	R0 = R0.B (X);
ffa09da2:	01 08       	CC = R1 == R0;
ffa09da4:	18 02       	CC = !CC;
ffa09da6:	00 02       	R0 = CC;
ffa09da8:	08 30       	R1 = R0;
ffa09daa:	b8 a0       	R0 = [FP + 0x8];
ffa09dac:	08 64       	R0 += 0x1;		/* (  1) */
ffa09dae:	b8 b0       	[FP + 0x8] = R0;
ffa09db0:	f8 a0       	R0 = [FP + 0xc];
ffa09db2:	08 64       	R0 += 0x1;		/* (  1) */
ffa09db4:	f8 b0       	[FP + 0xc] = R0;
ffa09db6:	48 43       	R0 = R1.B (Z);
ffa09db8:	00 0c       	CC = R0 == 0x0;
ffa09dba:	04 18       	IF CC JUMP 0xffa09dc2 <_strcmp+0x3a>;
ffa09dbc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09dbe:	e0 bb       	[FP -0x8] = R0;
ffa09dc0:	17 20       	JUMP.S 0xffa09dee <_strcmp+0x66>;
ffa09dc2:	f0 b9       	R0 = [FP -0x4];
ffa09dc4:	08 64       	R0 += 0x1;		/* (  1) */
ffa09dc6:	f0 bb       	[FP -0x4] = R0;
ffa09dc8:	ba ac       	P2 = [FP + 0x8];
ffa09dca:	50 99       	R0 = B[P2] (X);
ffa09dcc:	00 43       	R0 = R0.B (X);
ffa09dce:	00 0c       	CC = R0 == 0x0;
ffa09dd0:	0d 18       	IF CC JUMP 0xffa09dea <_strcmp+0x62>;
ffa09dd2:	00 00       	NOP;
ffa09dd4:	00 00       	NOP;
ffa09dd6:	fa ac       	P2 = [FP + 0xc];
ffa09dd8:	50 99       	R0 = B[P2] (X);
ffa09dda:	00 43       	R0 = R0.B (X);
ffa09ddc:	00 0c       	CC = R0 == 0x0;
ffa09dde:	06 18       	IF CC JUMP 0xffa09dea <_strcmp+0x62>;
ffa09de0:	f0 b9       	R0 = [FP -0x4];
ffa09de2:	21 e1 ff 04 	R1 = 0x4ff (X);		/*		R1=0x4ff(1279) */
ffa09de6:	08 09       	CC = R0 <= R1;
ffa09de8:	d7 1b       	IF CC JUMP 0xffa09d96 <_strcmp+0xe>;
ffa09dea:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09dec:	e0 bb       	[FP -0x8] = R0;
ffa09dee:	e0 b9       	R0 = [FP -0x8];
ffa09df0:	01 e8 00 00 	UNLINK;
ffa09df4:	10 00       	RTS;
	...

ffa09df8 <_substr>:
ffa09df8:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa09dfc:	b8 b0       	[FP + 0x8] = R0;
ffa09dfe:	f9 b0       	[FP + 0xc] = R1;
ffa09e00:	3a b1       	[FP + 0x10] = R2;
ffa09e02:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09e04:	e0 bb       	[FP -0x8] = R0;
ffa09e06:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09e08:	f0 bb       	[FP -0x4] = R0;
ffa09e0a:	39 20       	JUMP.S 0xffa09e7c <_substr+0x84>;
ffa09e0c:	ba ac       	P2 = [FP + 0x8];
ffa09e0e:	51 99       	R1 = B[P2] (X);
ffa09e10:	fa ac       	P2 = [FP + 0xc];
ffa09e12:	50 99       	R0 = B[P2] (X);
ffa09e14:	09 43       	R1 = R1.B (X);
ffa09e16:	00 43       	R0 = R0.B (X);
ffa09e18:	01 08       	CC = R1 == R0;
ffa09e1a:	2b 10       	IF !CC JUMP 0xffa09e70 <_substr+0x78>;
ffa09e1c:	b8 a0       	R0 = [FP + 0x8];
ffa09e1e:	08 64       	R0 += 0x1;		/* (  1) */
ffa09e20:	c0 bb       	[FP -0x10] = R0;
ffa09e22:	f8 a0       	R0 = [FP + 0xc];
ffa09e24:	08 64       	R0 += 0x1;		/* (  1) */
ffa09e26:	d0 bb       	[FP -0xc] = R0;
ffa09e28:	e0 b9       	R0 = [FP -0x8];
ffa09e2a:	08 64       	R0 += 0x1;		/* (  1) */
ffa09e2c:	f0 bb       	[FP -0x4] = R0;
ffa09e2e:	12 20       	JUMP.S 0xffa09e52 <_substr+0x5a>;
ffa09e30:	c0 b9       	R0 = [FP -0x10];
ffa09e32:	08 64       	R0 += 0x1;		/* (  1) */
ffa09e34:	c0 bb       	[FP -0x10] = R0;
ffa09e36:	d0 b9       	R0 = [FP -0xc];
ffa09e38:	08 64       	R0 += 0x1;		/* (  1) */
ffa09e3a:	d0 bb       	[FP -0xc] = R0;
ffa09e3c:	f0 b9       	R0 = [FP -0x4];
ffa09e3e:	08 64       	R0 += 0x1;		/* (  1) */
ffa09e40:	f0 bb       	[FP -0x4] = R0;
ffa09e42:	ca b9       	P2 = [FP -0x10];
ffa09e44:	50 99       	R0 = B[P2] (X);
ffa09e46:	00 43       	R0 = R0.B (X);
ffa09e48:	00 0c       	CC = R0 == 0x0;
ffa09e4a:	04 10       	IF !CC JUMP 0xffa09e52 <_substr+0x5a>;
ffa09e4c:	f0 b9       	R0 = [FP -0x4];
ffa09e4e:	b0 bb       	[FP -0x14] = R0;
ffa09e50:	28 20       	JUMP.S 0xffa09ea0 <_substr+0xa8>;
ffa09e52:	ca b9       	P2 = [FP -0x10];
ffa09e54:	51 99       	R1 = B[P2] (X);
ffa09e56:	da b9       	P2 = [FP -0xc];
ffa09e58:	50 99       	R0 = B[P2] (X);
ffa09e5a:	09 43       	R1 = R1.B (X);
ffa09e5c:	00 43       	R0 = R0.B (X);
ffa09e5e:	01 08       	CC = R1 == R0;
ffa09e60:	08 10       	IF !CC JUMP 0xffa09e70 <_substr+0x78>;
ffa09e62:	00 00       	NOP;
ffa09e64:	00 00       	NOP;
ffa09e66:	da b9       	P2 = [FP -0xc];
ffa09e68:	50 99       	R0 = B[P2] (X);
ffa09e6a:	00 43       	R0 = R0.B (X);
ffa09e6c:	00 0c       	CC = R0 == 0x0;
ffa09e6e:	e1 13       	IF !CC JUMP 0xffa09e30 <_substr+0x38>;
ffa09e70:	f8 a0       	R0 = [FP + 0xc];
ffa09e72:	08 64       	R0 += 0x1;		/* (  1) */
ffa09e74:	f8 b0       	[FP + 0xc] = R0;
ffa09e76:	e0 b9       	R0 = [FP -0x8];
ffa09e78:	08 64       	R0 += 0x1;		/* (  1) */
ffa09e7a:	e0 bb       	[FP -0x8] = R0;
ffa09e7c:	ba ac       	P2 = [FP + 0x8];
ffa09e7e:	50 99       	R0 = B[P2] (X);
ffa09e80:	00 43       	R0 = R0.B (X);
ffa09e82:	00 0c       	CC = R0 == 0x0;
ffa09e84:	0c 18       	IF CC JUMP 0xffa09e9c <_substr+0xa4>;
ffa09e86:	00 00       	NOP;
ffa09e88:	00 00       	NOP;
ffa09e8a:	fa ac       	P2 = [FP + 0xc];
ffa09e8c:	50 99       	R0 = B[P2] (X);
ffa09e8e:	00 43       	R0 = R0.B (X);
ffa09e90:	00 0c       	CC = R0 == 0x0;
ffa09e92:	05 18       	IF CC JUMP 0xffa09e9c <_substr+0xa4>;
ffa09e94:	e1 b9       	R1 = [FP -0x8];
ffa09e96:	38 a1       	R0 = [FP + 0x10];
ffa09e98:	81 08       	CC = R1 < R0;
ffa09e9a:	b9 1b       	IF CC JUMP 0xffa09e0c <_substr+0x14>;
ffa09e9c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09e9e:	b0 bb       	[FP -0x14] = R0;
ffa09ea0:	b0 b9       	R0 = [FP -0x14];
ffa09ea2:	01 e8 00 00 	UNLINK;
ffa09ea6:	10 00       	RTS;

ffa09ea8 <_sprintf_int>:
ffa09ea8:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa09eac:	b8 b0       	[FP + 0x8] = R0;
ffa09eae:	f9 b0       	[FP + 0xc] = R1;
ffa09eb0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09eb2:	c0 bb       	[FP -0x10] = R0;
ffa09eb4:	f8 a0       	R0 = [FP + 0xc];
ffa09eb6:	00 0c       	CC = R0 == 0x0;
ffa09eb8:	0b 10       	IF !CC JUMP 0xffa09ece <_sprintf_int+0x26>;
ffa09eba:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900924 */
ffa09ebe:	0a e1 80 70 	P2.L = 0x7080;		/* (28800)	P2=0xff907080 <_printf_temp> */
ffa09ec2:	52 91       	P2 = [P2];
ffa09ec4:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa09ec6:	10 9b       	B[P2] = R0;
ffa09ec8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09eca:	c0 bb       	[FP -0x10] = R0;
ffa09ecc:	90 20       	JUMP.S 0xffa09fec <_sprintf_int+0x144>;
ffa09ece:	f8 a0       	R0 = [FP + 0xc];
ffa09ed0:	00 0d       	CC = R0 <= 0x0;
ffa09ed2:	3c 18       	IF CC JUMP 0xffa09f4a <_sprintf_int+0xa2>;
ffa09ed4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09ed6:	c0 bb       	[FP -0x10] = R0;
ffa09ed8:	31 20       	JUMP.S 0xffa09f3a <_sprintf_int+0x92>;
ffa09eda:	f9 a0       	R1 = [FP + 0xc];
ffa09edc:	40 e1 66 66 	R0.H = 0x6666;		/* (26214)	R0=0x66660000(1717960704) */
ffa09ee0:	00 e1 67 66 	R0.L = 0x6667;		/* (26215)	R0=0x66666667(1717986919) */
ffa09ee4:	80 c0 08 18 	A1 = R1.L * R0.L (FU);
ffa09ee8:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa09eec:	11 c1 08 86 	A1 += R1.H * R0.L (M), A0 = R1.H * R0.H (IS);
ffa09ef0:	11 c1 01 98 	A1 += R0.H * R1.L (M, IS);
ffa09ef4:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa09ef8:	0b c4 00 00 	R0 = (A0 += A1);
ffa09efc:	82 c6 f0 05 	R2 = R0 >>> 0x2;
ffa09f00:	82 c6 09 01 	R0 = R1 >>> 0x1f;
ffa09f04:	02 52       	R0 = R2 - R0;
ffa09f06:	f0 bb       	[FP -0x4] = R0;
ffa09f08:	f1 b9       	R1 = [FP -0x4];
ffa09f0a:	01 30       	R0 = R1;
ffa09f0c:	10 4f       	R0 <<= 0x2;
ffa09f0e:	08 50       	R0 = R0 + R1;
ffa09f10:	08 4f       	R0 <<= 0x1;
ffa09f12:	08 30       	R1 = R0;
ffa09f14:	f8 a0       	R0 = [FP + 0xc];
ffa09f16:	08 52       	R0 = R0 - R1;
ffa09f18:	d0 bb       	[FP -0xc] = R0;
ffa09f1a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff907080 <_printf_temp> */
ffa09f1e:	0a e1 80 70 	P2.L = 0x7080;		/* (28800)	P2=0xff907080 <_printf_temp> */
ffa09f22:	11 91       	R1 = [P2];
ffa09f24:	c0 b9       	R0 = [FP -0x10];
ffa09f26:	41 50       	R1 = R1 + R0;
ffa09f28:	11 32       	P2 = R1;
ffa09f2a:	d0 b9       	R0 = [FP -0xc];
ffa09f2c:	80 65       	R0 += 0x30;		/* ( 48) */
ffa09f2e:	10 9b       	B[P2] = R0;
ffa09f30:	c0 b9       	R0 = [FP -0x10];
ffa09f32:	08 64       	R0 += 0x1;		/* (  1) */
ffa09f34:	c0 bb       	[FP -0x10] = R0;
ffa09f36:	f0 b9       	R0 = [FP -0x4];
ffa09f38:	f8 b0       	[FP + 0xc] = R0;
ffa09f3a:	f8 a0       	R0 = [FP + 0xc];
ffa09f3c:	00 0d       	CC = R0 <= 0x0;
ffa09f3e:	57 18       	IF CC JUMP 0xffa09fec <_sprintf_int+0x144>;
ffa09f40:	c0 b9       	R0 = [FP -0x10];
ffa09f42:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa09f44:	08 09       	CC = R0 <= R1;
ffa09f46:	ca 1b       	IF CC JUMP 0xffa09eda <_sprintf_int+0x32>;
ffa09f48:	52 20       	JUMP.S 0xffa09fec <_sprintf_int+0x144>;
ffa09f4a:	f8 a0       	R0 = [FP + 0xc];
ffa09f4c:	80 0c       	CC = R0 < 0x0;
ffa09f4e:	4f 10       	IF !CC JUMP 0xffa09fec <_sprintf_int+0x144>;
ffa09f50:	f8 a0       	R0 = [FP + 0xc];
ffa09f52:	08 30       	R1 = R0;
ffa09f54:	f9 4c       	BITCLR (R1, 0x1f);		/* bit 31 */
ffa09f56:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa09f58:	f8 4f       	R0 <<= 0x1f;
ffa09f5a:	08 52       	R0 = R0 - R1;
ffa09f5c:	f8 b0       	[FP + 0xc] = R0;
ffa09f5e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09f60:	c0 bb       	[FP -0x10] = R0;
ffa09f62:	31 20       	JUMP.S 0xffa09fc4 <_sprintf_int+0x11c>;
ffa09f64:	f9 a0       	R1 = [FP + 0xc];
ffa09f66:	40 e1 66 66 	R0.H = 0x6666;		/* (26214)	R0=0x66660000(1717960704) */
ffa09f6a:	00 e1 67 66 	R0.L = 0x6667;		/* (26215)	R0=0x66666667(1717986919) */
ffa09f6e:	80 c0 08 18 	A1 = R1.L * R0.L (FU);
ffa09f72:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa09f76:	11 c1 08 86 	A1 += R1.H * R0.L (M), A0 = R1.H * R0.H (IS);
ffa09f7a:	11 c1 01 98 	A1 += R0.H * R1.L (M, IS);
ffa09f7e:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa09f82:	0b c4 00 00 	R0 = (A0 += A1);
ffa09f86:	82 c6 f0 05 	R2 = R0 >>> 0x2;
ffa09f8a:	82 c6 09 01 	R0 = R1 >>> 0x1f;
ffa09f8e:	02 52       	R0 = R2 - R0;
ffa09f90:	f0 bb       	[FP -0x4] = R0;
ffa09f92:	f1 b9       	R1 = [FP -0x4];
ffa09f94:	01 30       	R0 = R1;
ffa09f96:	10 4f       	R0 <<= 0x2;
ffa09f98:	08 50       	R0 = R0 + R1;
ffa09f9a:	08 4f       	R0 <<= 0x1;
ffa09f9c:	08 30       	R1 = R0;
ffa09f9e:	f8 a0       	R0 = [FP + 0xc];
ffa09fa0:	08 52       	R0 = R0 - R1;
ffa09fa2:	d0 bb       	[FP -0xc] = R0;
ffa09fa4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff907080 <_printf_temp> */
ffa09fa8:	0a e1 80 70 	P2.L = 0x7080;		/* (28800)	P2=0xff907080 <_printf_temp> */
ffa09fac:	11 91       	R1 = [P2];
ffa09fae:	c0 b9       	R0 = [FP -0x10];
ffa09fb0:	41 50       	R1 = R1 + R0;
ffa09fb2:	11 32       	P2 = R1;
ffa09fb4:	d0 b9       	R0 = [FP -0xc];
ffa09fb6:	80 65       	R0 += 0x30;		/* ( 48) */
ffa09fb8:	10 9b       	B[P2] = R0;
ffa09fba:	c0 b9       	R0 = [FP -0x10];
ffa09fbc:	08 64       	R0 += 0x1;		/* (  1) */
ffa09fbe:	c0 bb       	[FP -0x10] = R0;
ffa09fc0:	f0 b9       	R0 = [FP -0x4];
ffa09fc2:	f8 b0       	[FP + 0xc] = R0;
ffa09fc4:	f8 a0       	R0 = [FP + 0xc];
ffa09fc6:	00 0d       	CC = R0 <= 0x0;
ffa09fc8:	05 18       	IF CC JUMP 0xffa09fd2 <_sprintf_int+0x12a>;
ffa09fca:	c0 b9       	R0 = [FP -0x10];
ffa09fcc:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa09fce:	08 09       	CC = R0 <= R1;
ffa09fd0:	ca 1b       	IF CC JUMP 0xffa09f64 <_sprintf_int+0xbc>;
ffa09fd2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff907080 <_printf_temp> */
ffa09fd6:	0a e1 80 70 	P2.L = 0x7080;		/* (28800)	P2=0xff907080 <_printf_temp> */
ffa09fda:	11 91       	R1 = [P2];
ffa09fdc:	c0 b9       	R0 = [FP -0x10];
ffa09fde:	41 50       	R1 = R1 + R0;
ffa09fe0:	11 32       	P2 = R1;
ffa09fe2:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa09fe4:	10 9b       	B[P2] = R0;
ffa09fe6:	c0 b9       	R0 = [FP -0x10];
ffa09fe8:	08 64       	R0 += 0x1;		/* (  1) */
ffa09fea:	c0 bb       	[FP -0x10] = R0;
ffa09fec:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09fee:	e0 bb       	[FP -0x8] = R0;
ffa09ff0:	16 20       	JUMP.S 0xffa0a01c <_sprintf_int+0x174>;
ffa09ff2:	e0 b9       	R0 = [FP -0x8];
ffa09ff4:	08 30       	R1 = R0;
ffa09ff6:	b8 a0       	R0 = [FP + 0x8];
ffa09ff8:	41 50       	R1 = R1 + R0;
ffa09ffa:	09 32       	P1 = R1;
ffa09ffc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff907080 <_printf_temp> */
ffa0a000:	0a e1 80 70 	P2.L = 0x7080;		/* (28800)	P2=0xff907080 <_printf_temp> */
ffa0a004:	12 91       	R2 = [P2];
ffa0a006:	c1 b9       	R1 = [FP -0x10];
ffa0a008:	e0 b9       	R0 = [FP -0x8];
ffa0a00a:	01 52       	R0 = R1 - R0;
ffa0a00c:	02 50       	R0 = R2 + R0;
ffa0a00e:	10 32       	P2 = R0;
ffa0a010:	fa 6f       	P2 += -0x1;		/* ( -1) */
ffa0a012:	50 99       	R0 = B[P2] (X);
ffa0a014:	08 9b       	B[P1] = R0;
ffa0a016:	e0 b9       	R0 = [FP -0x8];
ffa0a018:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a01a:	e0 bb       	[FP -0x8] = R0;
ffa0a01c:	e1 b9       	R1 = [FP -0x8];
ffa0a01e:	c0 b9       	R0 = [FP -0x10];
ffa0a020:	81 08       	CC = R1 < R0;
ffa0a022:	e8 1b       	IF CC JUMP 0xffa09ff2 <_sprintf_int+0x14a>;
ffa0a024:	c0 b9       	R0 = [FP -0x10];
ffa0a026:	01 e8 00 00 	UNLINK;
ffa0a02a:	10 00       	RTS;

ffa0a02c <_sprintf_hex>:
ffa0a02c:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0a030:	b8 b0       	[FP + 0x8] = R0;
ffa0a032:	f9 b0       	[FP + 0xc] = R1;
ffa0a034:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a036:	d0 bb       	[FP -0xc] = R0;
ffa0a038:	d0 b9       	R0 = [FP -0xc];
ffa0a03a:	08 30       	R1 = R0;
ffa0a03c:	b8 a0       	R0 = [FP + 0x8];
ffa0a03e:	41 50       	R1 = R1 + R0;
ffa0a040:	11 32       	P2 = R1;
ffa0a042:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa0a044:	10 9b       	B[P2] = R0;
ffa0a046:	d0 b9       	R0 = [FP -0xc];
ffa0a048:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a04a:	d0 bb       	[FP -0xc] = R0;
ffa0a04c:	d0 b9       	R0 = [FP -0xc];
ffa0a04e:	08 30       	R1 = R0;
ffa0a050:	b8 a0       	R0 = [FP + 0x8];
ffa0a052:	41 50       	R1 = R1 + R0;
ffa0a054:	11 32       	P2 = R1;
ffa0a056:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa0a05a:	10 9b       	B[P2] = R0;
ffa0a05c:	d0 b9       	R0 = [FP -0xc];
ffa0a05e:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a060:	d0 bb       	[FP -0xc] = R0;
ffa0a062:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a064:	c0 bb       	[FP -0x10] = R0;
ffa0a066:	2c 20       	JUMP.S 0xffa0a0be <_sprintf_hex+0x92>;
ffa0a068:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa0a06a:	c0 b9       	R0 = [FP -0x10];
ffa0a06c:	01 52       	R0 = R1 - R0;
ffa0a06e:	82 c6 10 82 	R1 = R0 << 0x2;
ffa0a072:	f8 a0       	R0 = [FP + 0xc];
ffa0a074:	08 40       	R0 >>>= R1;
ffa0a076:	e0 bb       	[FP -0x8] = R0;
ffa0a078:	e0 b9       	R0 = [FP -0x8];
ffa0a07a:	08 30       	R1 = R0;
ffa0a07c:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa0a07e:	01 54       	R0 = R1 & R0;
ffa0a080:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa0a084:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa0a088:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa0a08a:	08 09       	CC = R0 <= R1;
ffa0a08c:	07 18       	IF CC JUMP 0xffa0a09a <_sprintf_hex+0x6e>;
ffa0a08e:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa0a092:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa0a094:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa0a098:	06 20       	JUMP.S 0xffa0a0a4 <_sprintf_hex+0x78>;
ffa0a09a:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa0a09e:	80 65       	R0 += 0x30;		/* ( 48) */
ffa0a0a0:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa0a0a4:	d1 b9       	R1 = [FP -0xc];
ffa0a0a6:	c0 b9       	R0 = [FP -0x10];
ffa0a0a8:	01 50       	R0 = R1 + R0;
ffa0a0aa:	08 30       	R1 = R0;
ffa0a0ac:	b8 a0       	R0 = [FP + 0x8];
ffa0a0ae:	41 50       	R1 = R1 + R0;
ffa0a0b0:	11 32       	P2 = R1;
ffa0a0b2:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa0a0b6:	10 9b       	B[P2] = R0;
ffa0a0b8:	c0 b9       	R0 = [FP -0x10];
ffa0a0ba:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a0bc:	c0 bb       	[FP -0x10] = R0;
ffa0a0be:	c0 b9       	R0 = [FP -0x10];
ffa0a0c0:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa0a0c2:	08 09       	CC = R0 <= R1;
ffa0a0c4:	d2 1b       	IF CC JUMP 0xffa0a068 <_sprintf_hex+0x3c>;
ffa0a0c6:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa0a0c8:	01 e8 00 00 	UNLINK;
ffa0a0cc:	10 00       	RTS;
	...

ffa0a0d0 <_strprintf_int>:
ffa0a0d0:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0a0d4:	b8 b0       	[FP + 0x8] = R0;
ffa0a0d6:	f9 b0       	[FP + 0xc] = R1;
ffa0a0d8:	3a b1       	[FP + 0x10] = R2;
ffa0a0da:	39 a1       	R1 = [FP + 0x10];
ffa0a0dc:	b8 a0       	R0 = [FP + 0x8];
ffa0a0de:	ff e3 e5 fe 	CALL 0xffa09ea8 <_sprintf_int>;
ffa0a0e2:	f0 bb       	[FP -0x4] = R0;
ffa0a0e4:	fa ac       	P2 = [FP + 0xc];
ffa0a0e6:	11 91       	R1 = [P2];
ffa0a0e8:	f0 b9       	R0 = [FP -0x4];
ffa0a0ea:	01 50       	R0 = R1 + R0;
ffa0a0ec:	fa ac       	P2 = [FP + 0xc];
ffa0a0ee:	10 93       	[P2] = R0;
ffa0a0f0:	f0 b9       	R0 = [FP -0x4];
ffa0a0f2:	08 30       	R1 = R0;
ffa0a0f4:	b8 a0       	R0 = [FP + 0x8];
ffa0a0f6:	08 50       	R0 = R0 + R1;
ffa0a0f8:	b8 b0       	[FP + 0x8] = R0;
ffa0a0fa:	b8 a0       	R0 = [FP + 0x8];
ffa0a0fc:	01 e8 00 00 	UNLINK;
ffa0a100:	10 00       	RTS;
	...

ffa0a104 <_strprintf_hex>:
ffa0a104:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0a108:	b8 b0       	[FP + 0x8] = R0;
ffa0a10a:	f9 b0       	[FP + 0xc] = R1;
ffa0a10c:	3a b1       	[FP + 0x10] = R2;
ffa0a10e:	39 a1       	R1 = [FP + 0x10];
ffa0a110:	b8 a0       	R0 = [FP + 0x8];
ffa0a112:	ff e3 8d ff 	CALL 0xffa0a02c <_sprintf_hex>;
ffa0a116:	f0 bb       	[FP -0x4] = R0;
ffa0a118:	fa ac       	P2 = [FP + 0xc];
ffa0a11a:	11 91       	R1 = [P2];
ffa0a11c:	f0 b9       	R0 = [FP -0x4];
ffa0a11e:	01 50       	R0 = R1 + R0;
ffa0a120:	fa ac       	P2 = [FP + 0xc];
ffa0a122:	10 93       	[P2] = R0;
ffa0a124:	f0 b9       	R0 = [FP -0x4];
ffa0a126:	08 30       	R1 = R0;
ffa0a128:	b8 a0       	R0 = [FP + 0x8];
ffa0a12a:	08 50       	R0 = R0 + R1;
ffa0a12c:	b8 b0       	[FP + 0x8] = R0;
ffa0a12e:	b8 a0       	R0 = [FP + 0x8];
ffa0a130:	01 e8 00 00 	UNLINK;
ffa0a134:	10 00       	RTS;
	...

ffa0a138 <_atoi>:
ffa0a138:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a13c:	b8 b0       	[FP + 0x8] = R0;
ffa0a13e:	f9 b0       	[FP + 0xc] = R1;
ffa0a140:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a142:	d0 bb       	[FP -0xc] = R0;
ffa0a144:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a146:	e0 bb       	[FP -0x8] = R0;
ffa0a148:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a14a:	f0 bb       	[FP -0x4] = R0;
ffa0a14c:	ba ac       	P2 = [FP + 0x8];
ffa0a14e:	50 99       	R0 = B[P2] (X);
ffa0a150:	00 43       	R0 = R0.B (X);
ffa0a152:	69 61       	R1 = 0x2d (X);		/*		R1=0x2d( 45) */
ffa0a154:	08 08       	CC = R0 == R1;
ffa0a156:	2c 10       	IF !CC JUMP 0xffa0a1ae <_atoi+0x76>;
ffa0a158:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0a15a:	f0 bb       	[FP -0x4] = R0;
ffa0a15c:	b8 a0       	R0 = [FP + 0x8];
ffa0a15e:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a160:	b8 b0       	[FP + 0x8] = R0;
ffa0a162:	d0 b9       	R0 = [FP -0xc];
ffa0a164:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a166:	d0 bb       	[FP -0xc] = R0;
ffa0a168:	23 20       	JUMP.S 0xffa0a1ae <_atoi+0x76>;
ffa0a16a:	ba ac       	P2 = [FP + 0x8];
ffa0a16c:	50 99       	R0 = B[P2] (X);
ffa0a16e:	01 43       	R1 = R0.B (X);
ffa0a170:	e0 b9       	R0 = [FP -0x8];
ffa0a172:	01 50       	R0 = R1 + R0;
ffa0a174:	80 66       	R0 += -0x30;		/* (-48) */
ffa0a176:	e0 bb       	[FP -0x8] = R0;
ffa0a178:	b8 a0       	R0 = [FP + 0x8];
ffa0a17a:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a17c:	b8 b0       	[FP + 0x8] = R0;
ffa0a17e:	d0 b9       	R0 = [FP -0xc];
ffa0a180:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a182:	d0 bb       	[FP -0xc] = R0;
ffa0a184:	ba ac       	P2 = [FP + 0x8];
ffa0a186:	50 99       	R0 = B[P2] (X);
ffa0a188:	00 43       	R0 = R0.B (X);
ffa0a18a:	79 61       	R1 = 0x2f (X);		/*		R1=0x2f( 47) */
ffa0a18c:	08 09       	CC = R0 <= R1;
ffa0a18e:	10 18       	IF CC JUMP 0xffa0a1ae <_atoi+0x76>;
ffa0a190:	00 00       	NOP;
ffa0a192:	00 00       	NOP;
ffa0a194:	ba ac       	P2 = [FP + 0x8];
ffa0a196:	50 99       	R0 = B[P2] (X);
ffa0a198:	00 43       	R0 = R0.B (X);
ffa0a19a:	c9 61       	R1 = 0x39 (X);		/*		R1=0x39( 57) */
ffa0a19c:	08 09       	CC = R0 <= R1;
ffa0a19e:	08 10       	IF !CC JUMP 0xffa0a1ae <_atoi+0x76>;
ffa0a1a0:	e0 b9       	R0 = [FP -0x8];
ffa0a1a2:	08 30       	R1 = R0;
ffa0a1a4:	11 4f       	R1 <<= 0x2;
ffa0a1a6:	41 50       	R1 = R1 + R0;
ffa0a1a8:	82 c6 09 80 	R0 = R1 << 0x1;
ffa0a1ac:	e0 bb       	[FP -0x8] = R0;
ffa0a1ae:	ba ac       	P2 = [FP + 0x8];
ffa0a1b0:	50 99       	R0 = B[P2] (X);
ffa0a1b2:	00 43       	R0 = R0.B (X);
ffa0a1b4:	79 61       	R1 = 0x2f (X);		/*		R1=0x2f( 47) */
ffa0a1b6:	08 09       	CC = R0 <= R1;
ffa0a1b8:	0d 18       	IF CC JUMP 0xffa0a1d2 <_atoi+0x9a>;
ffa0a1ba:	00 00       	NOP;
ffa0a1bc:	00 00       	NOP;
ffa0a1be:	ba ac       	P2 = [FP + 0x8];
ffa0a1c0:	50 99       	R0 = B[P2] (X);
ffa0a1c2:	00 43       	R0 = R0.B (X);
ffa0a1c4:	c9 61       	R1 = 0x39 (X);		/*		R1=0x39( 57) */
ffa0a1c6:	08 09       	CC = R0 <= R1;
ffa0a1c8:	05 10       	IF !CC JUMP 0xffa0a1d2 <_atoi+0x9a>;
ffa0a1ca:	d1 b9       	R1 = [FP -0xc];
ffa0a1cc:	f8 a0       	R0 = [FP + 0xc];
ffa0a1ce:	81 08       	CC = R1 < R0;
ffa0a1d0:	cd 1b       	IF CC JUMP 0xffa0a16a <_atoi+0x32>;
ffa0a1d2:	e1 b9       	R1 = [FP -0x8];
ffa0a1d4:	f0 b9       	R0 = [FP -0x4];
ffa0a1d6:	c8 40       	R0 *= R1;
ffa0a1d8:	01 e8 00 00 	UNLINK;
ffa0a1dc:	10 00       	RTS;
	...

ffa0a1e0 <_udelay>:
ffa0a1e0:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa0a1e4:	b8 b0       	[FP + 0x8] = R0;
ffa0a1e6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a1e8:	e0 bb       	[FP -0x8] = R0;
ffa0a1ea:	10 20       	JUMP.S 0xffa0a20a <_udelay+0x2a>;
ffa0a1ec:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a1ee:	f0 bb       	[FP -0x4] = R0;
ffa0a1f0:	05 20       	JUMP.S 0xffa0a1fa <_udelay+0x1a>;
ffa0a1f2:	00 00       	NOP;
ffa0a1f4:	f0 b9       	R0 = [FP -0x4];
ffa0a1f6:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a1f8:	f0 bb       	[FP -0x4] = R0;
ffa0a1fa:	f0 b9       	R0 = [FP -0x4];
ffa0a1fc:	21 e1 9f 00 	R1 = 0x9f (X);		/*		R1=0x9f(159) */
ffa0a200:	08 09       	CC = R0 <= R1;
ffa0a202:	f8 1b       	IF CC JUMP 0xffa0a1f2 <_udelay+0x12>;
ffa0a204:	e0 b9       	R0 = [FP -0x8];
ffa0a206:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a208:	e0 bb       	[FP -0x8] = R0;
ffa0a20a:	e1 b9       	R1 = [FP -0x8];
ffa0a20c:	b8 a0       	R0 = [FP + 0x8];
ffa0a20e:	81 08       	CC = R1 < R0;
ffa0a210:	ee 1b       	IF CC JUMP 0xffa0a1ec <_udelay+0xc>;
ffa0a212:	01 e8 00 00 	UNLINK;
ffa0a216:	10 00       	RTS;

ffa0a218 <_spi_delay>:
ffa0a218:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa0a21c:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa0a21e:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa0a222:	08 20       	JUMP.S 0xffa0a232 <_spi_delay+0x1a>;
ffa0a224:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc07080(-4165504) */
ffa0a228:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0a22c:	50 95       	R0 = W[P2] (X);
ffa0a22e:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa0a232:	78 e4 fe ff 	R0 = W[FP + -0x4] (Z);
ffa0a236:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa0a238:	08 54       	R0 = R0 & R1;
ffa0a23a:	00 0c       	CC = R0 == 0x0;
ffa0a23c:	f4 13       	IF !CC JUMP 0xffa0a224 <_spi_delay+0xc>;
ffa0a23e:	08 20       	JUMP.S 0xffa0a24e <_spi_delay+0x36>;
ffa0a240:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0a244:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0a248:	50 95       	R0 = W[P2] (X);
ffa0a24a:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa0a24e:	78 e4 fe ff 	R0 = W[FP + -0x4] (Z);
ffa0a252:	00 49       	CC = BITTST (R0, 0x0);		/* bit  0 */
ffa0a254:	00 02       	R0 = CC;
ffa0a256:	00 0c       	CC = R0 == 0x0;
ffa0a258:	f4 1b       	IF CC JUMP 0xffa0a240 <_spi_delay+0x28>;
ffa0a25a:	01 e8 00 00 	UNLINK;
ffa0a25e:	10 00       	RTS;

ffa0a260 <_spi_write_register>:
ffa0a260:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a264:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a268:	01 30       	R0 = R1;
ffa0a26a:	b8 e6 0c 00 	B[FP + 0xc] = R0;
ffa0a26e:	b8 e5 08 00 	R0 = B[FP + 0x8] (X);
ffa0a272:	28 4a       	BITSET (R0, 0x5);		/* bit  5 */
ffa0a274:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a278:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0a27c:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a280:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a282:	10 97       	W[P2] = R0;
ffa0a284:	24 00       	SSYNC;
ffa0a286:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a28a:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a28e:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a292:	10 97       	W[P2] = R0;
ffa0a294:	ff e3 c2 ff 	CALL 0xffa0a218 <_spi_delay>;
ffa0a298:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a29c:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0a2a0:	50 95       	R0 = W[P2] (X);
ffa0a2a2:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a2a6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0a2aa:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a2ae:	b8 e4 0c 00 	R0 = B[FP + 0xc] (Z);
ffa0a2b2:	10 97       	W[P2] = R0;
ffa0a2b4:	ff e3 b2 ff 	CALL 0xffa0a218 <_spi_delay>;
ffa0a2b8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a2bc:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a2c0:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a2c2:	10 97       	W[P2] = R0;
ffa0a2c4:	24 00       	SSYNC;
ffa0a2c6:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a2ca:	01 e8 00 00 	UNLINK;
ffa0a2ce:	10 00       	RTS;

ffa0a2d0 <_spi_write_register_ver>:
ffa0a2d0:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0a2d4:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a2d8:	01 30       	R0 = R1;
ffa0a2da:	b8 e6 0c 00 	B[FP + 0xc] = R0;
ffa0a2de:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a2e2:	b9 e4 0c 00 	R1 = B[FP + 0xc] (Z);
ffa0a2e6:	ff e3 bd ff 	CALL 0xffa0a260 <_spi_write_register>;
ffa0a2ea:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a2ee:	00 e3 09 00 	CALL 0xffa0a300 <_spi_read_register>;
ffa0a2f2:	b8 e6 ff ff 	B[FP + -0x1] = R0;
ffa0a2f6:	b8 e4 ff ff 	R0 = B[FP + -0x1] (Z);
ffa0a2fa:	01 e8 00 00 	UNLINK;
ffa0a2fe:	10 00       	RTS;

ffa0a300 <_spi_read_register>:
ffa0a300:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a304:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a308:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a30c:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a310:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a312:	10 97       	W[P2] = R0;
ffa0a314:	24 00       	SSYNC;
ffa0a316:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a31a:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a31e:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a322:	10 97       	W[P2] = R0;
ffa0a324:	ff e3 7a ff 	CALL 0xffa0a218 <_spi_delay>;
ffa0a328:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a32c:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0a330:	50 95       	R0 = W[P2] (X);
ffa0a332:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a336:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0a33a:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a33e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a340:	10 97       	W[P2] = R0;
ffa0a342:	ff e3 6b ff 	CALL 0xffa0a218 <_spi_delay>;
ffa0a346:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a34a:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0a34e:	50 95       	R0 = W[P2] (X);
ffa0a350:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a354:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0a358:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a35c:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a35e:	10 97       	W[P2] = R0;
ffa0a360:	24 00       	SSYNC;
ffa0a362:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a366:	01 e8 00 00 	UNLINK;
ffa0a36a:	10 00       	RTS;

ffa0a36c <_spi_read_register_status>:
ffa0a36c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a370:	f9 b0       	[FP + 0xc] = R1;
ffa0a372:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a376:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a37a:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a37e:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a380:	10 97       	W[P2] = R0;
ffa0a382:	24 00       	SSYNC;
ffa0a384:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a388:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a38c:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a390:	10 97       	W[P2] = R0;
ffa0a392:	ff e3 43 ff 	CALL 0xffa0a218 <_spi_delay>;
ffa0a396:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a39a:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0a39e:	50 95       	R0 = W[P2] (X);
ffa0a3a0:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a3a4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0a3a8:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a3ac:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a3ae:	10 97       	W[P2] = R0;
ffa0a3b0:	ff e3 34 ff 	CALL 0xffa0a218 <_spi_delay>;
ffa0a3b4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a3b8:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0a3bc:	50 95       	R0 = W[P2] (X);
ffa0a3be:	fa ac       	P2 = [FP + 0xc];
ffa0a3c0:	10 9b       	B[P2] = R0;
ffa0a3c2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0a3c6:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a3ca:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a3cc:	10 97       	W[P2] = R0;
ffa0a3ce:	24 00       	SSYNC;
ffa0a3d0:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a3d4:	01 e8 00 00 	UNLINK;
ffa0a3d8:	10 00       	RTS;
	...

ffa0a3dc <_spi_write_byte>:
ffa0a3dc:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a3e0:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a3e4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a3e8:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a3ec:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a3ee:	10 97       	W[P2] = R0;
ffa0a3f0:	24 00       	SSYNC;
ffa0a3f2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a3f6:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a3fa:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a3fe:	10 97       	W[P2] = R0;
ffa0a400:	ff e3 0c ff 	CALL 0xffa0a218 <_spi_delay>;
ffa0a404:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a408:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0a40c:	50 95       	R0 = W[P2] (X);
ffa0a40e:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a412:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0a416:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a41a:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a41c:	10 97       	W[P2] = R0;
ffa0a41e:	24 00       	SSYNC;
ffa0a420:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a424:	01 e8 00 00 	UNLINK;
ffa0a428:	10 00       	RTS;
	...

ffa0a42c <_spi_write_packet>:
ffa0a42c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a430:	b8 b0       	[FP + 0x8] = R0;
ffa0a432:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a436:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a43a:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a43c:	10 97       	W[P2] = R0;
ffa0a43e:	24 00       	SSYNC;
ffa0a440:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a444:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a448:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa0a44c:	10 97       	W[P2] = R0;
ffa0a44e:	ff e3 e5 fe 	CALL 0xffa0a218 <_spi_delay>;
ffa0a452:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a456:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a45a:	20 e1 07 50 	R0 = 0x5007 (X);		/*		R0=0x5007(20487) */
ffa0a45e:	10 97       	W[P2] = R0;
ffa0a460:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a464:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xffc00d50(-4190896) */
ffa0a468:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa0a46a:	10 97       	W[P2] = R0;
ffa0a46c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d50(-4190896) */
ffa0a470:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xffc00d54(-4190892) */
ffa0a474:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a476:	10 97       	W[P2] = R0;
ffa0a478:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d54(-4190892) */
ffa0a47c:	0a e1 44 0d 	P2.L = 0xd44;		/* (3396)	P2=0xffc00d44(-4190908) */
ffa0a480:	b8 a0       	R0 = [FP + 0x8];
ffa0a482:	10 93       	[P2] = R0;
ffa0a484:	24 00       	SSYNC;
ffa0a486:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d44(-4190908) */
ffa0a48a:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa0a48e:	20 e1 81 00 	R0 = 0x81 (X);		/*		R0=0x81(129) */
ffa0a492:	10 97       	W[P2] = R0;
ffa0a494:	01 20       	JUMP.S 0xffa0a496 <_spi_write_packet+0x6a>;
	...
ffa0a49e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa0a4a2:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a4a6:	50 95       	R0 = W[P2] (X);
ffa0a4a8:	c0 42       	R0 = R0.L (Z);
ffa0a4aa:	00 49       	CC = BITTST (R0, 0x0);		/* bit  0 */
ffa0a4ac:	00 02       	R0 = CC;
ffa0a4ae:	00 0c       	CC = R0 == 0x0;
ffa0a4b0:	f3 1b       	IF CC JUMP 0xffa0a496 <_spi_write_packet+0x6a>;
ffa0a4b2:	00 00       	NOP;
ffa0a4b4:	00 00       	NOP;
ffa0a4b6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a4ba:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0a4be:	50 95       	R0 = W[P2] (X);
ffa0a4c0:	c1 42       	R1 = R0.L (Z);
ffa0a4c2:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa0a4c4:	01 54       	R0 = R1 & R0;
ffa0a4c6:	00 0c       	CC = R0 == 0x0;
ffa0a4c8:	e7 13       	IF !CC JUMP 0xffa0a496 <_spi_write_packet+0x6a>;
ffa0a4ca:	00 00       	NOP;
ffa0a4cc:	00 00       	NOP;
ffa0a4ce:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0a4d2:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a4d6:	50 95       	R0 = W[P2] (X);
ffa0a4d8:	c1 42       	R1 = R0.L (Z);
ffa0a4da:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa0a4dc:	01 54       	R0 = R1 & R0;
ffa0a4de:	00 0c       	CC = R0 == 0x0;
ffa0a4e0:	db 13       	IF !CC JUMP 0xffa0a496 <_spi_write_packet+0x6a>;
ffa0a4e2:	ff e3 9b fe 	CALL 0xffa0a218 <_spi_delay>;
ffa0a4e6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a4ea:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a4ee:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a4f0:	10 97       	W[P2] = R0;
ffa0a4f2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a4f6:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a4fa:	20 e1 0d 50 	R0 = 0x500d (X);		/*		R0=0x500d(20493) */
ffa0a4fe:	10 97       	W[P2] = R0;
ffa0a500:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a504:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa0a508:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a50a:	10 97       	W[P2] = R0;
ffa0a50c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa0a510:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a514:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a516:	10 97       	W[P2] = R0;
ffa0a518:	24 00       	SSYNC;
ffa0a51a:	01 e8 00 00 	UNLINK;
ffa0a51e:	10 00       	RTS;

ffa0a520 <_spi_write_packet_noDMA>:
ffa0a520:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa0a524:	b8 b0       	[FP + 0x8] = R0;
ffa0a526:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a52a:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a52e:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a530:	10 97       	W[P2] = R0;
ffa0a532:	24 00       	SSYNC;
ffa0a534:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a538:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a53c:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa0a540:	10 97       	W[P2] = R0;
ffa0a542:	ff e3 6b fe 	CALL 0xffa0a218 <_spi_delay>;
ffa0a546:	b8 a0       	R0 = [FP + 0x8];
ffa0a548:	f0 bb       	[FP -0x4] = R0;
ffa0a54a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a54c:	e0 bb       	[FP -0x8] = R0;
ffa0a54e:	11 20       	JUMP.S 0xffa0a570 <_spi_write_packet_noDMA+0x50>;
ffa0a550:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00730(-4192464) */
ffa0a554:	09 e1 0c 05 	P1.L = 0x50c;		/* (1292)	P1=0xffc0050c(-4193012) */
ffa0a558:	fa b9       	P2 = [FP -0x4];
ffa0a55a:	50 99       	R0 = B[P2] (X);
ffa0a55c:	00 43       	R0 = R0.B (X);
ffa0a55e:	08 97       	W[P1] = R0;
ffa0a560:	f0 b9       	R0 = [FP -0x4];
ffa0a562:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a564:	f0 bb       	[FP -0x4] = R0;
ffa0a566:	ff e3 59 fe 	CALL 0xffa0a218 <_spi_delay>;
ffa0a56a:	e0 b9       	R0 = [FP -0x8];
ffa0a56c:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a56e:	e0 bb       	[FP -0x8] = R0;
ffa0a570:	e0 b9       	R0 = [FP -0x8];
ffa0a572:	f9 60       	R1 = 0x1f (X);		/*		R1=0x1f( 31) */
ffa0a574:	08 09       	CC = R0 <= R1;
ffa0a576:	ed 1b       	IF CC JUMP 0xffa0a550 <_spi_write_packet_noDMA+0x30>;
ffa0a578:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a57c:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a580:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a582:	10 97       	W[P2] = R0;
ffa0a584:	24 00       	SSYNC;
ffa0a586:	01 e8 00 00 	UNLINK;
ffa0a58a:	10 00       	RTS;

ffa0a58c <_spi_read_packet>:
ffa0a58c:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa0a590:	b8 b0       	[FP + 0x8] = R0;
ffa0a592:	b8 a0       	R0 = [FP + 0x8];
ffa0a594:	f0 bb       	[FP -0x4] = R0;
ffa0a596:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0a598:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0a59c:	ff e3 62 fe 	CALL 0xffa0a260 <_spi_write_register>;
ffa0a5a0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a5a4:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a5a8:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a5aa:	10 97       	W[P2] = R0;
ffa0a5ac:	24 00       	SSYNC;
ffa0a5ae:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a5b2:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a5b6:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa0a5ba:	10 97       	W[P2] = R0;
ffa0a5bc:	ff e3 2e fe 	CALL 0xffa0a218 <_spi_delay>;
ffa0a5c0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a5c2:	b8 e6 fb ff 	B[FP + -0x5] = R0;
ffa0a5c6:	18 20       	JUMP.S 0xffa0a5f6 <_spi_read_packet+0x6a>;
ffa0a5c8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a5cc:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a5d0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a5d2:	10 97       	W[P2] = R0;
ffa0a5d4:	ff e3 22 fe 	CALL 0xffa0a218 <_spi_delay>;
ffa0a5d8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a5dc:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0a5e0:	50 95       	R0 = W[P2] (X);
ffa0a5e2:	fa b9       	P2 = [FP -0x4];
ffa0a5e4:	10 9b       	B[P2] = R0;
ffa0a5e6:	f0 b9       	R0 = [FP -0x4];
ffa0a5e8:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a5ea:	f0 bb       	[FP -0x4] = R0;
ffa0a5ec:	b8 e5 fb ff 	R0 = B[FP + -0x5] (X);
ffa0a5f0:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a5f2:	b8 e6 fb ff 	B[FP + -0x5] = R0;
ffa0a5f6:	b8 e4 fb ff 	R0 = B[FP + -0x5] (Z);
ffa0a5fa:	f9 60       	R1 = 0x1f (X);		/*		R1=0x1f( 31) */
ffa0a5fc:	08 0a       	CC = R0 <= R1 (IU);
ffa0a5fe:	e5 1b       	IF CC JUMP 0xffa0a5c8 <_spi_read_packet+0x3c>;
ffa0a600:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0a604:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a608:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a60a:	10 97       	W[P2] = R0;
ffa0a60c:	24 00       	SSYNC;
ffa0a60e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a610:	01 e8 00 00 	UNLINK;
ffa0a614:	10 00       	RTS;
	...

ffa0a618 <_spi_read_packet_nocheck>:
ffa0a618:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a61c:	b8 b0       	[FP + 0x8] = R0;
ffa0a61e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a622:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a626:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a628:	10 97       	W[P2] = R0;
ffa0a62a:	24 00       	SSYNC;
ffa0a62c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a630:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a634:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa0a638:	10 97       	W[P2] = R0;
ffa0a63a:	ff e3 ef fd 	CALL 0xffa0a218 <_spi_delay>;
ffa0a63e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a642:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a646:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a648:	10 97       	W[P2] = R0;
ffa0a64a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a64e:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xffc00d50(-4190896) */
ffa0a652:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa0a654:	10 97       	W[P2] = R0;
ffa0a656:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d50(-4190896) */
ffa0a65a:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xffc00d54(-4190892) */
ffa0a65e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a660:	10 97       	W[P2] = R0;
ffa0a662:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d54(-4190892) */
ffa0a666:	0a e1 44 0d 	P2.L = 0xd44;		/* (3396)	P2=0xffc00d44(-4190908) */
ffa0a66a:	b8 a0       	R0 = [FP + 0x8];
ffa0a66c:	10 93       	[P2] = R0;
ffa0a66e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d44(-4190908) */
ffa0a672:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa0a676:	20 e1 83 00 	R0 = 0x83 (X);		/*		R0=0x83(131) */
ffa0a67a:	10 97       	W[P2] = R0;
ffa0a67c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa0a680:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a684:	20 e1 06 50 	R0 = 0x5006 (X);		/*		R0=0x5006(20486) */
ffa0a688:	10 97       	W[P2] = R0;
	...
ffa0a692:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a696:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a69a:	50 95       	R0 = W[P2] (X);
ffa0a69c:	c0 42       	R0 = R0.L (Z);
ffa0a69e:	00 49       	CC = BITTST (R0, 0x0);		/* bit  0 */
ffa0a6a0:	00 02       	R0 = CC;
ffa0a6a2:	00 0c       	CC = R0 == 0x0;
ffa0a6a4:	f3 1b       	IF CC JUMP 0xffa0a68a <_spi_read_packet_nocheck+0x72>;
ffa0a6a6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a6aa:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa0a6ae:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a6b0:	10 97       	W[P2] = R0;
ffa0a6b2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa0a6b6:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a6ba:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a6bc:	10 97       	W[P2] = R0;
ffa0a6be:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a6c2:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a6c6:	20 e1 0d 50 	R0 = 0x500d (X);		/*		R0=0x500d(20493) */
ffa0a6ca:	10 97       	W[P2] = R0;
ffa0a6cc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a6d0:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a6d4:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a6d6:	10 97       	W[P2] = R0;
ffa0a6d8:	24 00       	SSYNC;
ffa0a6da:	01 e8 00 00 	UNLINK;
ffa0a6de:	10 00       	RTS;

ffa0a6e0 <_radio_set_rx>:
ffa0a6e0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a6e4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a6e8:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a6ec:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a6ee:	10 97       	W[P2] = R0;
ffa0a6f0:	24 00       	SSYNC;
ffa0a6f2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a6f4:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a6f6:	ff e3 b5 fd 	CALL 0xffa0a260 <_spi_write_register>;
ffa0a6fa:	20 e1 e2 00 	R0 = 0xe2 (X);		/*		R0=0xe2(226) */
ffa0a6fe:	ff e3 6f fe 	CALL 0xffa0a3dc <_spi_write_byte>;
ffa0a702:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a704:	f9 60       	R1 = 0x1f (X);		/*		R1=0x1f( 31) */
ffa0a706:	ff e3 ad fd 	CALL 0xffa0a260 <_spi_write_register>;
ffa0a70a:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0a70c:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0a710:	ff e3 a8 fd 	CALL 0xffa0a260 <_spi_write_register>;
ffa0a714:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a718:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a71c:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a71e:	10 97       	W[P2] = R0;
ffa0a720:	24 00       	SSYNC;
ffa0a722:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a726:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a72a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a72c:	10 97       	W[P2] = R0;
ffa0a72e:	24 00       	SSYNC;
ffa0a730:	01 e8 00 00 	UNLINK;
ffa0a734:	10 00       	RTS;
	...

ffa0a738 <_radio_set_tx>:
ffa0a738:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a73c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a740:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a744:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a746:	10 97       	W[P2] = R0;
ffa0a748:	24 00       	SSYNC;
ffa0a74a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a74c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a74e:	ff e3 89 fd 	CALL 0xffa0a260 <_spi_write_register>;
ffa0a752:	20 e1 e1 00 	R0 = 0xe1 (X);		/*		R0=0xe1(225) */
ffa0a756:	ff e3 43 fe 	CALL 0xffa0a3dc <_spi_write_byte>;
ffa0a75a:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0a75c:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0a760:	ff e3 80 fd 	CALL 0xffa0a260 <_spi_write_register>;
ffa0a764:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a766:	f1 60       	R1 = 0x1e (X);		/*		R1=0x1e( 30) */
ffa0a768:	ff e3 7c fd 	CALL 0xffa0a260 <_spi_write_register>;
ffa0a76c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a770:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a774:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a776:	10 97       	W[P2] = R0;
ffa0a778:	01 e8 00 00 	UNLINK;
ffa0a77c:	10 00       	RTS;
	...

ffa0a780 <_radio_wait_irq>:
ffa0a780:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0a784:	b8 b0       	[FP + 0x8] = R0;
ffa0a786:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a788:	f0 bb       	[FP -0x4] = R0;
ffa0a78a:	08 20       	JUMP.S 0xffa0a79a <_radio_wait_irq+0x1a>;
	...
ffa0a794:	f0 b9       	R0 = [FP -0x4];
ffa0a796:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a798:	f0 bb       	[FP -0x4] = R0;
ffa0a79a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a79e:	0a e1 00 07 	P2.L = 0x700;		/* (1792)	P2=0xffc00700(-4192512) */
ffa0a7a2:	50 95       	R0 = W[P2] (X);
ffa0a7a4:	c1 42       	R1 = R0.L (Z);
ffa0a7a6:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa0a7a8:	01 54       	R0 = R1 & R0;
ffa0a7aa:	00 0c       	CC = R0 == 0x0;
ffa0a7ac:	05 18       	IF CC JUMP 0xffa0a7b6 <_radio_wait_irq+0x36>;
ffa0a7ae:	f1 b9       	R1 = [FP -0x4];
ffa0a7b0:	b8 a0       	R0 = [FP + 0x8];
ffa0a7b2:	81 08       	CC = R1 < R0;
ffa0a7b4:	ec 1b       	IF CC JUMP 0xffa0a78c <_radio_wait_irq+0xc>;
ffa0a7b6:	f1 b9       	R1 = [FP -0x4];
ffa0a7b8:	b8 a0       	R0 = [FP + 0x8];
ffa0a7ba:	81 08       	CC = R1 < R0;
ffa0a7bc:	06 10       	IF !CC JUMP 0xffa0a7c8 <_radio_wait_irq+0x48>;
ffa0a7be:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0a7c0:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0a7c4:	ff e3 4e fd 	CALL 0xffa0a260 <_spi_write_register>;
ffa0a7c8:	f0 b9       	R0 = [FP -0x4];
ffa0a7ca:	01 e8 00 00 	UNLINK;
ffa0a7ce:	10 00       	RTS;

ffa0a7d0 <_radio_init>:
ffa0a7d0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a7d4:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a7d8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00700(-4192512) */
ffa0a7dc:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a7e0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a7e2:	10 97       	W[P2] = R0;
ffa0a7e4:	24 00       	SSYNC;
ffa0a7e6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a7ea:	0a e1 14 05 	P2.L = 0x514;		/* (1300)	P2=0xffc00514(-4193004) */
ffa0a7ee:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa0a7f0:	10 97       	W[P2] = R0;
ffa0a7f2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00514(-4193004) */
ffa0a7f6:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a7fa:	20 e1 2d 50 	R0 = 0x502d (X);		/*		R0=0x502d(20525) */
ffa0a7fe:	10 97       	W[P2] = R0;
ffa0a800:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a804:	0a e1 04 05 	P2.L = 0x504;		/* (1284)	P2=0xffc00504(-4193020) */
ffa0a808:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a80a:	10 97       	W[P2] = R0;
ffa0a80c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00504(-4193020) */
ffa0a810:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a814:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a816:	10 97       	W[P2] = R0;
ffa0a818:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc0050c(-4193012) */
ffa0a81c:	09 e1 40 07 	P1.L = 0x740;		/* (1856)	P1=0xffc00740(-4192448) */
ffa0a820:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a824:	0a e1 40 07 	P2.L = 0x740;		/* (1856)	P2=0xffc00740(-4192448) */
ffa0a828:	50 95       	R0 = W[P2] (X);
ffa0a82a:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa0a82c:	08 97       	W[P1] = R0;
ffa0a82e:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00740(-4192448) */
ffa0a832:	09 e1 30 07 	P1.L = 0x730;		/* (1840)	P1=0xffc00730(-4192464) */
ffa0a836:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00740(-4192448) */
ffa0a83a:	0a e1 30 07 	P2.L = 0x730;		/* (1840)	P2=0xffc00730(-4192464) */
ffa0a83e:	51 95       	R1 = W[P2] (X);
ffa0a840:	b8 63       	R0 = -0x9 (X);		/*		R0=0xfffffff7( -9) */
ffa0a842:	01 54       	R0 = R1 & R0;
ffa0a844:	08 97       	W[P1] = R0;
ffa0a846:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00730(-4192464) */
ffa0a84a:	09 e1 30 07 	P1.L = 0x730;		/* (1840)	P1=0xffc00730(-4192464) */
ffa0a84e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00730(-4192464) */
ffa0a852:	0a e1 30 07 	P2.L = 0x730;		/* (1840)	P2=0xffc00730(-4192464) */
ffa0a856:	51 95       	R1 = W[P2] (X);
ffa0a858:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a85a:	01 56       	R0 = R1 | R0;
ffa0a85c:	08 97       	W[P1] = R0;
ffa0a85e:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a862:	21 e1 7c 00 	R1 = 0x7c (X);		/*		R1=0x7c(124) */
ffa0a866:	08 0a       	CC = R0 <= R1 (IU);
ffa0a868:	05 18       	IF CC JUMP 0xffa0a872 <_radio_init+0xa2>;
ffa0a86a:	20 e1 7c 00 	R0 = 0x7c (X);		/*		R0=0x7c(124) */
ffa0a86e:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a872:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a874:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a876:	ff e3 f5 fc 	CALL 0xffa0a260 <_spi_write_register>;
ffa0a87a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a87c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a87e:	ff e3 29 fd 	CALL 0xffa0a2d0 <_spi_write_register_ver>;
ffa0a882:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a884:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa0a886:	ff e3 25 fd 	CALL 0xffa0a2d0 <_spi_write_register_ver>;
ffa0a88a:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a88c:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa0a88e:	ff e3 21 fd 	CALL 0xffa0a2d0 <_spi_write_register_ver>;
ffa0a892:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa0a894:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a896:	ff e3 1d fd 	CALL 0xffa0a2d0 <_spi_write_register_ver>;
ffa0a89a:	b9 e4 08 00 	R1 = B[FP + 0x8] (Z);
ffa0a89e:	28 60       	R0 = 0x5 (X);		/*		R0=0x5(  5) */
ffa0a8a0:	ff e3 18 fd 	CALL 0xffa0a2d0 <_spi_write_register_ver>;
ffa0a8a4:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa0a8a6:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa0a8a8:	ff e3 14 fd 	CALL 0xffa0a2d0 <_spi_write_register_ver>;
ffa0a8ac:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0a8ae:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0a8b2:	ff e3 0f fd 	CALL 0xffa0a2d0 <_spi_write_register_ver>;
ffa0a8b6:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa0a8b8:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa0a8ba:	ff e3 0b fd 	CALL 0xffa0a2d0 <_spi_write_register_ver>;
ffa0a8be:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00730(-4192464) */
ffa0a8c2:	0a e1 6c 0d 	P2.L = 0xd6c;		/* (3436)	P2=0xffc00d6c(-4190868) */
ffa0a8c6:	20 e1 00 50 	R0 = 0x5000 (X);		/*		R0=0x5000(20480) */
ffa0a8ca:	10 97       	W[P2] = R0;
ffa0a8cc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d6c(-4190868) */
ffa0a8d0:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a8d4:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a8d6:	10 97       	W[P2] = R0;
ffa0a8d8:	20 e1 e2 00 	R0 = 0xe2 (X);		/*		R0=0xe2(226) */
ffa0a8dc:	ff e3 80 fd 	CALL 0xffa0a3dc <_spi_write_byte>;
ffa0a8e0:	20 e1 e1 00 	R0 = 0xe1 (X);		/*		R0=0xe1(225) */
ffa0a8e4:	ff e3 7c fd 	CALL 0xffa0a3dc <_spi_write_byte>;
ffa0a8e8:	40 43       	R0 = R0.B (Z);
ffa0a8ea:	01 e8 00 00 	UNLINK;
ffa0a8ee:	10 00       	RTS;
