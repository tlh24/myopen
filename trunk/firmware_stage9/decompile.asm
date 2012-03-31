
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
ffa08050:	00 e1 88 81 	R0.L = 0x8188;		/* (-32376)	R0=0x8188(33160) */
ffa08054:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa08188 <_NHANDLER>(-6258296) */
ffa08058:	00 92       	[P0++] = R0;
ffa0805a:	00 e1 8e 81 	R0.L = 0x818e;		/* (-32370)	R0=0xffa0818e <EXC_HANDLER>(-6258290) */
ffa0805e:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa0818e <EXC_HANDLER>(-6258290) */
ffa08062:	00 92       	[P0++] = R0;
ffa08064:	00 92       	[P0++] = R0;
ffa08066:	00 e1 86 81 	R0.L = 0x8186;		/* (-32378)	R0=0xffa08186 <_HWHANDLER>(-6258298) */
ffa0806a:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa08186 <_HWHANDLER>(-6258298) */
ffa0806e:	00 92       	[P0++] = R0;
ffa08070:	00 e1 08 82 	R0.L = 0x8208;		/* (-32248)	R0=0xffa08208 <_THANDLER>(-6258168) */
ffa08074:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa08208 <_THANDLER>(-6258168) */
ffa08078:	00 92       	[P0++] = R0;
ffa0807a:	00 e1 24 82 	R0.L = 0x8224;		/* (-32220)	R0=0xffa08224 <_RTCHANDLER>(-6258140) */
ffa0807e:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa08224 <_RTCHANDLER>(-6258140) */
ffa08082:	00 92       	[P0++] = R0;
ffa08084:	00 e1 2a 82 	R0.L = 0x822a;		/* (-32214)	R0=0xffa0822a <_I8HANDLER>(-6258134) */
ffa08088:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa0822a <_I8HANDLER>(-6258134) */
ffa0808c:	00 92       	[P0++] = R0;
ffa0808e:	00 e1 30 82 	R0.L = 0x8230;		/* (-32208)	R0=0xffa08230 <_I9HANDLER>(-6258128) */
ffa08092:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa08230 <_I9HANDLER>(-6258128) */
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
ffa08148:	08 e1 88 95 	P0.L = 0x9588;		/* (-27256)	P0=0xffa09588 <_main> */
ffa0814c:	48 e1 a0 ff 	P0.H = 0xffa0;		/* (-96)	P0=0xffa09588 <_main> */
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
ffa08180:	00 e3 32 09 	CALL 0xffa093e4 <_exception_report>;
ffa08184:	12 00       	RTX;

ffa08186 <_HWHANDLER>:
ffa08186:	11 00       	RTI;

ffa08188 <_NHANDLER>:
ffa08188:	00 e3 ee 09 	CALL 0xffa09564 <_nmi_report>;
ffa0818c:	12 00       	RTX;

ffa0818e <EXC_HANDLER>:
ffa0818e:	c1 31       	R0 = SEQSTAT;
ffa08190:	cc 31       	R1 = RETX;
ffa08192:	fe 2f       	JUMP.S 0xffa0818e <EXC_HANDLER>;
ffa08194:	4d 01       	[--SP] = P5;
ffa08196:	0d e1 04 70 	P5.L = 0x7004;		/* (28676)	P5=0x7004 */
ffa0819a:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff907004 <_g_excregs> */
ffa0819e:	28 92       	[P5++] = R0;
ffa081a0:	29 92       	[P5++] = R1;
ffa081a2:	2a 92       	[P5++] = R2;
ffa081a4:	2b 92       	[P5++] = R3;
ffa081a6:	2c 92       	[P5++] = R4;
ffa081a8:	2d 92       	[P5++] = R5;
ffa081aa:	2e 92       	[P5++] = R6;
ffa081ac:	2f 92       	[P5++] = R7;
ffa081ae:	68 92       	[P5++] = P0;
ffa081b0:	69 92       	[P5++] = P1;
ffa081b2:	6a 92       	[P5++] = P2;
ffa081b4:	6b 92       	[P5++] = P3;
ffa081b6:	6c 92       	[P5++] = P4;
ffa081b8:	65 32       	P4 = P5;
ffa081ba:	75 90       	P5 = [SP++];
ffa081bc:	65 92       	[P4++] = P5;
ffa081be:	80 30       	R0 = I0;
ffa081c0:	20 92       	[P4++] = R0;
ffa081c2:	c0 30       	R0 = B0;
ffa081c4:	20 92       	[P4++] = R0;
ffa081c6:	c4 30       	R0 = L0;
ffa081c8:	20 92       	[P4++] = R0;
ffa081ca:	81 30       	R0 = I1;
ffa081cc:	20 92       	[P4++] = R0;
ffa081ce:	c1 30       	R0 = B1;
ffa081d0:	20 92       	[P4++] = R0;
ffa081d2:	c5 30       	R0 = L1;
ffa081d4:	20 92       	[P4++] = R0;
ffa081d6:	82 30       	R0 = I2;
ffa081d8:	20 92       	[P4++] = R0;
ffa081da:	c2 30       	R0 = B2;
ffa081dc:	20 92       	[P4++] = R0;
ffa081de:	c6 30       	R0 = L2;
ffa081e0:	20 92       	[P4++] = R0;
ffa081e2:	83 30       	R0 = I3;
ffa081e4:	20 92       	[P4++] = R0;
ffa081e6:	c3 30       	R0 = B3;
ffa081e8:	20 92       	[P4++] = R0;
ffa081ea:	c7 30       	R0 = L3;
ffa081ec:	20 92       	[P4++] = R0;
ffa081ee:	84 30       	R0 = M0;
ffa081f0:	20 92       	[P4++] = R0;
ffa081f2:	85 30       	R0 = M1;
ffa081f4:	20 92       	[P4++] = R0;
ffa081f6:	86 30       	R0 = M2;
ffa081f8:	20 92       	[P4++] = R0;
ffa081fa:	87 30       	R0 = M3;
ffa081fc:	20 92       	[P4++] = R0;
ffa081fe:	c1 31       	R0 = SEQSTAT;
ffa08200:	cc 31       	R1 = RETX;
ffa08202:	00 e3 f1 08 	CALL 0xffa093e4 <_exception_report>;
ffa08206:	12 00       	RTX;

ffa08208 <_THANDLER>:
ffa08208:	4a 01       	[--SP] = P2;
ffa0820a:	40 01       	[--SP] = R0;
ffa0820c:	41 01       	[--SP] = R1;
ffa0820e:	66 01       	[--SP] = ASTAT;
ffa08210:	10 91       	R0 = [P2];
ffa08212:	81 e1 01 00 	R1 = 0x1 (Z);		/*		R1=0x1(  1) */
ffa08216:	08 50       	R0 = R0 + R1;
ffa08218:	10 93       	[P2] = R0;
ffa0821a:	26 01       	ASTAT = [SP++];
ffa0821c:	31 90       	R1 = [SP++];
ffa0821e:	30 90       	R0 = [SP++];
ffa08220:	72 90       	P2 = [SP++];
ffa08222:	11 00       	RTI;

ffa08224 <_RTCHANDLER>:
ffa08224:	00 e1 07 00 	R0.L = 0x7;		/* (  7)	R0=0xffa00007(-6291449) */
ffa08228:	aa 2f       	JUMP.S 0xffa0817c <display_fail>;

ffa0822a <_I8HANDLER>:
ffa0822a:	00 e1 08 00 	R0.L = 0x8;		/* (  8)	R0=0xffa00008(-6291448) */
ffa0822e:	a7 2f       	JUMP.S 0xffa0817c <display_fail>;

ffa08230 <_I9HANDLER>:
ffa08230:	00 e1 09 00 	R0.L = 0x9;		/* (  9)	R0=0xffa00009(-6291447) */
ffa08234:	a4 2f       	JUMP.S 0xffa0817c <display_fail>;

ffa08236 <_atexit>:
ffa08236:	10 00       	RTS;

ffa08238 <_get_asm>:
ffa08238:	68 b9       	P0 = [FP -0x28];
ffa0823a:	27 e1 00 01 	R7 = 0x100 (X);		/*		R7=0x100(256) */
ffa0823e:	8f b4       	W[P1 + 0x4] = R7;
ffa08240:	27 e1 80 00 	R7 = 0x80 (X);		/*		R7=0x80(128) */
ffa08244:	0f b5       	W[P1 + 0x8] = R7;

ffa08246 <wait_samples>:
ffa08246:	03 a7       	R3 = W[P0 + 0x18] (Z);
ffa08248:	03 48       	CC = !BITTST (R3, 0x0);		/* bit  0 */
ffa0824a:	fe 1b       	IF CC JUMP 0xffa08246 <wait_samples>;
ffa0824c:	00 95       	R0 = W[P0] (Z);
ffa0824e:	01 95       	R1 = W[P0] (Z);
ffa08250:	d2 b8       	R2 = [FP -0x4c];
ffa08252:	81 4f       	R1 <<= 0x10;
ffa08254:	08 56       	R0 = R0 | R1;
ffa08256:	90 54       	R2 = R0 & R2;
ffa08258:	07 9c       	R7 = [I0++];
ffa0825a:	8f b5       	W[P1 + 0xc] = R7;
ffa0825c:	00 00       	NOP;
ffa0825e:	00 00       	NOP;
ffa08260:	81 ce 0a 84 	R2 = R2 << 0x1 (V) || R5 = [I0++] || NOP;
ffa08264:	05 9c 00 00 
ffa08268:	00 c8 15 80 	A1 = R2.H * R5.L, A0 = R2.L * R5.L || R1 = [I1++] || R6 = [I0++];
ffa0826c:	09 9c 06 9c 
ffa08270:	25 c8 0d ea 	R0.H = (A1 += R1.H * R5.H), R0.L = (A0 += R1.L * R5.H) (S2RND) || NOP || NOP;
ffa08274:	00 00 00 00 
ffa08278:	00 c8 0e 80 	A1 = R1.H * R6.L, A0 = R1.L * R6.L || I1 += M0 || NOP;
ffa0827c:	61 9e 00 00 
ffa08280:	25 c8 86 ea 	R2.H = (A1 += R0.H * R6.H), R2.L = (A0 += R0.L * R6.H) (S2RND) || R1 = [I1 ++ M0] || NOP;
ffa08284:	89 9d 00 00 
ffa08288:	81 ce 38 4e 	R7 = R0 << 0x7 (V, S) || R2 = [I0++] || [I2++] = R2;
ffa0828c:	02 9c 12 9e 
ffa08290:	00 c8 0a c0 	A1 = R1.H * R2.H, A0 = R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08294:	89 9d 02 9c 
ffa08298:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa0829c:	89 9d 02 9c 
ffa082a0:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa082a4:	89 9d 02 9c 
ffa082a8:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa082ac:	89 9d 02 9c 
ffa082b0:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa082b4:	89 9d 02 9c 
ffa082b8:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa082bc:	89 9d 02 9c 
ffa082c0:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa082c4:	89 9d 02 9c 
ffa082c8:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa082cc:	89 9d 02 9c 
ffa082d0:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa082d4:	89 9d 02 9c 
ffa082d8:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa082dc:	89 9d 02 9c 
ffa082e0:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa082e4:	89 9d 02 9c 
ffa082e8:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa082ec:	89 9d 02 9c 
ffa082f0:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa082f4:	89 9d 02 9c 
ffa082f8:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa082fc:	89 9d 02 9c 
ffa08300:	05 c8 8a e9 	R6.H = (A1 += R1.H * R2.H), R6.L = (A0 += R1.L * R2.L) || R1 = [I1++] || R5 = [I0++];
ffa08304:	09 9c 05 9c 
ffa08308:	00 cc 06 e0 	R0 = R0 -|- R6 (S) || I0 -= M1 || [I2++] = R0;
ffa0830c:	74 9e 10 9e 
ffa08310:	81 ce 38 4c 	R6 = R0 << 0x7 (V, S) || I1 += M2 || [I2++] = R7;
ffa08314:	69 9e 17 9e 
ffa08318:	81 ce 96 4d 	R6 = R6 >>> 0xe (V) || R1 = [I1++] || R2 = [I0];
ffa0831c:	09 9c 02 9d 
ffa08320:	00 c8 0e c0 	A1 = R1.H * R6.H, A0 = R1.L * R6.L || NOP || NOP;
ffa08324:	00 00 00 00 
ffa08328:	05 c8 15 e9 	R4.H = (A1 += R2.H * R5.H), R4.L = (A0 += R2.L * R5.L) || I1 -= M2 || NOP;
ffa0832c:	79 9e 00 00 
ffa08330:	03 c8 00 18 	MNOP || R5 = [I1++] || [I0 ++ M1] = R4;
ffa08334:	0d 9c a4 9f 
ffa08338:	00 c0 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L;
ffa0833c:	83 c6 40 00 	A0 = A0 << 0x8;
ffa08340:	83 c6 40 10 	A1 = A1 << 0x8;
ffa08344:	07 c0 c0 39 	R7.H = A1, R7.L = A0;
ffa08348:	10 cc 00 c0 	A1 = ABS A0, A0 = ABS A0 || R6 = [I0++] || NOP;
ffa0834c:	06 9c 00 00 
ffa08350:	06 c9 36 f1 	R4.H = (A1 -= R6.H * R6.H), R4.L = (A0 -= R6.L * R6.L) (IS) || R6 = [I0++] || NOP;
ffa08354:	06 9c 00 00 
ffa08358:	00 c8 2e 80 	A1 = R5.H * R6.L, A0 = R5.L * R6.L || NOP || NOP;
ffa0835c:	00 00 00 00 
ffa08360:	26 c8 e6 f2 	R3.H = (A1 -= R4.H * R6.H), R3.L = (A0 -= R4.L * R6.H) (S2RND) || NOP || NOP;
ffa08364:	00 00 00 00 
ffa08368:	06 cc 18 86 	R3 = ABS R3 (V) || R5 = [I0++] || R1 = [I1++];
ffa0836c:	05 9c 09 9c 
ffa08370:	03 c8 00 18 	MNOP || [I2++] = R3 || NOP;
ffa08374:	13 9e 00 00 
ffa08378:	00 c8 3d c0 	A1 = R7.H * R5.H, A0 = R7.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa0837c:	05 9c 0a 9c 
ffa08380:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || R3 = [I1++];
ffa08384:	05 9c 0b 9c 
ffa08388:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R5 = [I0++] || R4 = [I1++];
ffa0838c:	05 9c 0c 9c 
ffa08390:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || [I2++] = R7;
ffa08394:	05 9c 17 9e 
ffa08398:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || [I2++] = R1 || NOP;
ffa0839c:	11 9e 00 00 
ffa083a0:	03 c8 00 18 	MNOP || R5 = [I0++] || [I2++] = R0;
ffa083a4:	05 9c 10 9e 
ffa083a8:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || R5 = [I0++] || [I2++] = R3;
ffa083ac:	05 9c 13 9e 
ffa083b0:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || R1 = [I1++];
ffa083b4:	05 9c 09 9c 
ffa083b8:	01 c8 25 c8 	A1 += R4.H * R5.H, A0 += R4.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa083bc:	05 9c 0a 9c 
ffa083c0:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || NOP;
ffa083c4:	05 9c 00 00 
ffa083c8:	25 c8 15 e8 	R0.H = (A1 += R2.H * R5.H), R0.L = (A0 += R2.L * R5.L) (S2RND) || R5 = [I0++] || NOP;
ffa083cc:	05 9c 00 00 
ffa083d0:	00 cc 05 20 	R0 = R0 +|+ R5 (S) || [I2++] = R0 || NOP;
ffa083d4:	10 9e 00 00 
ffa083d8:	81 ce 88 0d 	R6 = R0 >>> 0xf (V) || [I2++] = R1 || NOP;
ffa083dc:	11 9e 00 00 
ffa083e0:	03 c8 00 18 	MNOP || R5 = [I0++] || R1 = [I1++];
ffa083e4:	05 9c 09 9c 
ffa083e8:	00 c8 3d c0 	A1 = R7.H * R5.H, A0 = R7.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa083ec:	05 9c 0a 9c 
ffa083f0:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || R3 = [I1++];
ffa083f4:	05 9c 0b 9c 
ffa083f8:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R5 = [I0++] || R4 = [I1++];
ffa083fc:	05 9c 0c 9c 
ffa08400:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || [I2++] = R7;
ffa08404:	05 9c 17 9e 
ffa08408:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || [I2++] = R1 || NOP;
ffa0840c:	11 9e 00 00 
ffa08410:	03 c8 00 18 	MNOP || R5 = [I0++] || [I2++] = R0;
ffa08414:	05 9c 10 9e 
ffa08418:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || R5 = [I0++] || [I2++] = R3;
ffa0841c:	05 9c 13 9e 
ffa08420:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || R1 = [I1++];
ffa08424:	05 9c 09 9c 
ffa08428:	01 c8 25 c8 	A1 += R4.H * R5.H, A0 += R4.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa0842c:	05 9c 0a 9c 
ffa08430:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || NOP;
ffa08434:	05 9c 00 00 
ffa08438:	25 c8 15 e8 	R0.H = (A1 += R2.H * R5.H), R0.L = (A0 += R2.L * R5.L) (S2RND) || R5 = [I0++] || NOP;
ffa0843c:	05 9c 00 00 
ffa08440:	00 cc 05 20 	R0 = R0 +|+ R5 (S) || R7 = [I0++] || [I2++] = R0;
ffa08444:	07 9c 10 9e 
ffa08448:	81 ce 88 41 	R0 = R0 >>> 0xf (V) || R5 = [I0++] || [I2++] = R1;
ffa0844c:	05 9c 11 9e 
ffa08450:	be 55       	R6 = R6 & R7;
ffa08452:	28 54       	R0 = R0 & R5;
ffa08454:	86 57       	R6 = R6 | R0;
ffa08456:	76 bb       	[FP -0x24] = R6;
ffa08458:	00 95       	R0 = W[P0] (Z);
ffa0845a:	01 95       	R1 = W[P0] (Z);
ffa0845c:	d2 b8       	R2 = [FP -0x4c];
ffa0845e:	81 4f       	R1 <<= 0x10;
ffa08460:	08 56       	R0 = R0 | R1;
ffa08462:	90 54       	R2 = R0 & R2;
ffa08464:	81 c6 0a 84 	R2 = R2 << 0x1 (V);
ffa08468:	05 9c       	R5 = [I0++];
ffa0846a:	00 00       	NOP;
ffa0846c:	00 00       	NOP;
ffa0846e:	00 00       	NOP;
ffa08470:	00 c8 15 80 	A1 = R2.H * R5.L, A0 = R2.L * R5.L || R1 = [I1++] || R6 = [I0++];
ffa08474:	09 9c 06 9c 
ffa08478:	25 c8 0d ea 	R0.H = (A1 += R1.H * R5.H), R0.L = (A0 += R1.L * R5.H) (S2RND) || NOP || NOP;
ffa0847c:	00 00 00 00 
ffa08480:	00 c8 0e 80 	A1 = R1.H * R6.L, A0 = R1.L * R6.L || I1 += M0 || NOP;
ffa08484:	61 9e 00 00 
ffa08488:	25 c8 86 ea 	R2.H = (A1 += R0.H * R6.H), R2.L = (A0 += R0.L * R6.H) (S2RND) || R1 = [I1 ++ M0] || NOP;
ffa0848c:	89 9d 00 00 
ffa08490:	81 ce 38 4e 	R7 = R0 << 0x7 (V, S) || R2 = [I0++] || [I2++] = R2;
ffa08494:	02 9c 12 9e 
ffa08498:	00 c8 0a c0 	A1 = R1.H * R2.H, A0 = R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa0849c:	89 9d 02 9c 
ffa084a0:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa084a4:	89 9d 02 9c 
ffa084a8:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa084ac:	89 9d 02 9c 
ffa084b0:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa084b4:	89 9d 02 9c 
ffa084b8:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa084bc:	89 9d 02 9c 
ffa084c0:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa084c4:	89 9d 02 9c 
ffa084c8:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa084cc:	89 9d 02 9c 
ffa084d0:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa084d4:	89 9d 02 9c 
ffa084d8:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa084dc:	89 9d 02 9c 
ffa084e0:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa084e4:	89 9d 02 9c 
ffa084e8:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa084ec:	89 9d 02 9c 
ffa084f0:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa084f4:	89 9d 02 9c 
ffa084f8:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa084fc:	89 9d 02 9c 
ffa08500:	01 c8 0a c8 	A1 += R1.H * R2.H, A0 += R1.L * R2.L || R1 = [I1 ++ M0] || R2 = [I0++];
ffa08504:	89 9d 02 9c 
ffa08508:	05 c8 8a e9 	R6.H = (A1 += R1.H * R2.H), R6.L = (A0 += R1.L * R2.L) || R1 = [I1++] || R5 = [I0++];
ffa0850c:	09 9c 05 9c 
ffa08510:	00 cc 06 e0 	R0 = R0 -|- R6 (S) || I0 -= M1 || [I2++] = R0;
ffa08514:	74 9e 10 9e 
ffa08518:	81 ce 38 4c 	R6 = R0 << 0x7 (V, S) || I1 += M2 || [I2++] = R7;
ffa0851c:	69 9e 17 9e 
ffa08520:	81 ce 96 4d 	R6 = R6 >>> 0xe (V) || R1 = [I1++] || R2 = [I0];
ffa08524:	09 9c 02 9d 
ffa08528:	00 c8 0e c0 	A1 = R1.H * R6.H, A0 = R1.L * R6.L || NOP || NOP;
ffa0852c:	00 00 00 00 
ffa08530:	05 c8 15 e9 	R4.H = (A1 += R2.H * R5.H), R4.L = (A0 += R2.L * R5.L) || I1 -= M2 || NOP;
ffa08534:	79 9e 00 00 
ffa08538:	03 c8 00 18 	MNOP || R5 = [I1++] || [I0 ++ M1] = R4;
ffa0853c:	0d 9c a4 9f 
ffa08540:	00 c0 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L;
ffa08544:	83 c6 40 00 	A0 = A0 << 0x8;
ffa08548:	83 c6 40 10 	A1 = A1 << 0x8;
ffa0854c:	07 c0 c0 39 	R7.H = A1, R7.L = A0;
ffa08550:	10 cc 00 c0 	A1 = ABS A0, A0 = ABS A0 || R6 = [I0++] || NOP;
ffa08554:	06 9c 00 00 
ffa08558:	06 c9 36 f1 	R4.H = (A1 -= R6.H * R6.H), R4.L = (A0 -= R6.L * R6.L) (IS) || R6 = [I0++] || NOP;
ffa0855c:	06 9c 00 00 
ffa08560:	00 c8 2e 80 	A1 = R5.H * R6.L, A0 = R5.L * R6.L || NOP || NOP;
ffa08564:	00 00 00 00 
ffa08568:	26 c8 e6 f2 	R3.H = (A1 -= R4.H * R6.H), R3.L = (A0 -= R4.L * R6.H) (S2RND) || NOP || NOP;
ffa0856c:	00 00 00 00 
ffa08570:	06 cc 18 86 	R3 = ABS R3 (V) || R5 = [I0++] || R1 = [I1++];
ffa08574:	05 9c 09 9c 
ffa08578:	03 c8 00 18 	MNOP || [I2++] = R3 || NOP;
ffa0857c:	13 9e 00 00 
ffa08580:	00 c8 3d c0 	A1 = R7.H * R5.H, A0 = R7.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa08584:	05 9c 0a 9c 
ffa08588:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || R3 = [I1++];
ffa0858c:	05 9c 0b 9c 
ffa08590:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R5 = [I0++] || R4 = [I1++];
ffa08594:	05 9c 0c 9c 
ffa08598:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || [I2++] = R7;
ffa0859c:	05 9c 17 9e 
ffa085a0:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || [I2++] = R1 || NOP;
ffa085a4:	11 9e 00 00 
ffa085a8:	03 c8 00 18 	MNOP || R5 = [I0++] || [I2++] = R0;
ffa085ac:	05 9c 10 9e 
ffa085b0:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || R5 = [I0++] || [I2++] = R3;
ffa085b4:	05 9c 13 9e 
ffa085b8:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || R1 = [I1++];
ffa085bc:	05 9c 09 9c 
ffa085c0:	01 c8 25 c8 	A1 += R4.H * R5.H, A0 += R4.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa085c4:	05 9c 0a 9c 
ffa085c8:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || NOP;
ffa085cc:	05 9c 00 00 
ffa085d0:	25 c8 15 e8 	R0.H = (A1 += R2.H * R5.H), R0.L = (A0 += R2.L * R5.L) (S2RND) || R5 = [I0++] || NOP;
ffa085d4:	05 9c 00 00 
ffa085d8:	00 cc 05 20 	R0 = R0 +|+ R5 (S) || [I2++] = R0 || NOP;
ffa085dc:	10 9e 00 00 
ffa085e0:	81 ce 88 0d 	R6 = R0 >>> 0xf (V) || [I2++] = R1 || NOP;
ffa085e4:	11 9e 00 00 
ffa085e8:	03 c8 00 18 	MNOP || R5 = [I0++] || R1 = [I1++];
ffa085ec:	05 9c 09 9c 
ffa085f0:	00 c8 3d c0 	A1 = R7.H * R5.H, A0 = R7.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa085f4:	05 9c 0a 9c 
ffa085f8:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || R3 = [I1++];
ffa085fc:	05 9c 0b 9c 
ffa08600:	01 c8 15 c8 	A1 += R2.H * R5.H, A0 += R2.L * R5.L || R5 = [I0++] || R4 = [I1++];
ffa08604:	05 9c 0c 9c 
ffa08608:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || [I2++] = R7;
ffa0860c:	05 9c 17 9e 
ffa08610:	25 c8 25 e8 	R0.H = (A1 += R4.H * R5.H), R0.L = (A0 += R4.L * R5.L) (S2RND) || [I2++] = R1 || NOP;
ffa08614:	11 9e 00 00 
ffa08618:	03 c8 00 18 	MNOP || R5 = [I0++] || [I2++] = R0;
ffa0861c:	05 9c 10 9e 
ffa08620:	00 c8 05 c0 	A1 = R0.H * R5.H, A0 = R0.L * R5.L || R5 = [I0++] || [I2++] = R3;
ffa08624:	05 9c 13 9e 
ffa08628:	01 c8 1d c8 	A1 += R3.H * R5.H, A0 += R3.L * R5.L || R5 = [I0++] || R1 = [I1++];
ffa0862c:	05 9c 09 9c 
ffa08630:	01 c8 25 c8 	A1 += R4.H * R5.H, A0 += R4.L * R5.L || R5 = [I0++] || R2 = [I1++];
ffa08634:	05 9c 0a 9c 
ffa08638:	01 c8 0d c8 	A1 += R1.H * R5.H, A0 += R1.L * R5.L || R5 = [I0++] || NOP;
ffa0863c:	05 9c 00 00 
ffa08640:	25 c8 15 e8 	R0.H = (A1 += R2.H * R5.H), R0.L = (A0 += R2.L * R5.L) (S2RND) || R5 = [I0++] || NOP;
ffa08644:	05 9c 00 00 
ffa08648:	00 cc 05 20 	R0 = R0 +|+ R5 (S) || R7 = [I0++] || [I2++] = R0;
ffa0864c:	07 9c 10 9e 
ffa08650:	81 ce 88 41 	R0 = R0 >>> 0xf (V) || R5 = [I0++] || [I2++] = R1;
ffa08654:	05 9c 11 9e 
ffa08658:	be 55       	R6 = R6 & R7;
ffa0865a:	28 54       	R0 = R0 & R5;
ffa0865c:	86 57       	R6 = R6 | R0;
ffa0865e:	77 b9       	R7 = [FP -0x24];
ffa08660:	37 56       	R0 = R7 | R6;
ffa08662:	06 9c       	R6 = [I0++];
ffa08664:	06 32       	P0 = R6;
ffa08666:	3d b9       	P5 = [FP -0x34];
ffa08668:	19 b9       	P1 = [FP -0x3c];
ffa0866a:	80 c6 20 b0 	R0.H = R0.H << 0x4;
ffa0866e:	02 c4 00 40 	R0.L = R0.L + R0.H (NS);
ffa08672:	45 5b       	P5 = P5 + P0;
ffa08674:	29 99       	R1 = B[P5] (Z);
ffa08676:	41 56       	R1 = R1 | R0;
ffa08678:	01 32       	P0 = R1;
ffa0867a:	29 9b       	B[P5] = R1;
ffa0867c:	03 69       	P3 = 0x20 (X);		/*		P3=0x20( 32) */
ffa0867e:	5d 5b       	P5 = P5 + P3;
ffa08680:	41 5a       	P1 = P1 + P0;
ffa08682:	0a 99       	R2 = B[P1] (Z);
ffa08684:	2a 9b       	B[P5] = R2;
ffa08686:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa08688:	06 08       	CC = R6 == R0;
ffa0868a:	33 14       	IF !CC JUMP 0xffa086f0 <end_txchan> (BP);
ffa0868c:	98 b9       	P0 = [FP -0x1c];
ffa0868e:	00 00       	NOP;
ffa08690:	03 c8 00 18 	MNOP || P1 = [FP -0x18] || R0 = [I3++];
ffa08694:	a9 b9 18 9c 
ffa08698:	03 c8 00 18 	MNOP || P3 = [FP -0x14] || R1 = [I3++];
ffa0869c:	bb b9 19 9c 
ffa086a0:	03 c8 00 18 	MNOP || P5 = [FP -0x10] || R4 = [I3++];
ffa086a4:	cd b9 1c 9c 
ffa086a8:	28 34       	M1 = R0;
ffa086aa:	31 34       	M2 = R1;
ffa086ac:	00 99       	R0 = B[P0] (Z);
ffa086ae:	09 99       	R1 = B[P1] (Z);
ffa086b0:	1a 99       	R2 = B[P3] (Z);
ffa086b2:	2b 99       	R3 = B[P5] (Z);
ffa086b4:	20 9a       	B[P4++] = R0;
ffa086b6:	21 9a       	B[P4++] = R1;
ffa086b8:	22 9a       	B[P4++] = R2;
ffa086ba:	23 9a       	B[P4++] = R3;
ffa086bc:	2f 60       	R7 = 0x5 (X);		/*		R7=0x5(  5) */
ffa086be:	3c 08       	CC = R4 == R7;
ffa086c0:	13 14       	IF !CC JUMP 0xffa086e6 <end_txchan_qs> (BP);
ffa086c2:	1f 9c       	R7 = [I3++];
ffa086c4:	1e 9c       	R6 = [I3++];
ffa086c6:	2e 32       	P5 = R6;
ffa086c8:	f5 b9       	R5 = [FP -0x4];
ffa086ca:	0d 64       	R5 += 0x1;		/* (  1) */
ffa086cc:	f5 bb       	[FP -0x4] = R5;
ffa086ce:	f5 b8       	R5 = [FP -0x44];
ffa086d0:	28 90       	R0 = [P5++];
ffa086d2:	29 90       	R1 = [P5++];
ffa086d4:	38 56       	R0 = R0 | R7;
ffa086d6:	69 56       	R1 = R1 | R5;
ffa086d8:	e0 6a       	P0 = -0x24 (X);		/*		P0=0xffffffdc(-36) */
ffa086da:	45 5b       	P5 = P5 + P0;
ffa086dc:	20 92       	[P4++] = R0;
ffa086de:	21 92       	[P4++] = R1;
ffa086e0:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa086e2:	ac 92       	[P5--] = R4;
ffa086e4:	ac 92       	[P5--] = R4;

ffa086e6 <end_txchan_qs>:
ffa086e6:	49 b9       	P1 = [FP -0x30];
ffa086e8:	5b b9       	P3 = [FP -0x2c];
ffa086ea:	7c 30       	R7 = P4;
ffa086ec:	57 4c       	BITCLR (R7, 0xa);		/* bit 10 */
ffa086ee:	27 32       	P4 = R7;

ffa086f0 <end_txchan>:
ffa086f0:	10 00       	RTS;
ffa086f2:	00 00       	NOP;
ffa086f4:	00 00       	NOP;
	...

ffa086f8 <_clearirq_asm>:
ffa086f8:	67 01       	[--SP] = RETS;
ffa086fa:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa086fc:	8f b4       	W[P1 + 0x4] = R7;
ffa086fe:	ff e3 9d fd 	CALL 0xffa08238 <_get_asm>;
ffa08702:	3e 61       	R6 = 0x27 (X);		/*		R6=0x27( 39) */
ffa08704:	1e 97       	W[P3] = R6;
ffa08706:	ff e3 99 fd 	CALL 0xffa08238 <_get_asm>;
ffa0870a:	26 e1 70 00 	R6 = 0x70 (X);		/*		R6=0x70(112) */
ffa0870e:	1e 97       	W[P3] = R6;
ffa08710:	ff e3 94 fd 	CALL 0xffa08238 <_get_asm>;
ffa08714:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa08716:	0f b5       	W[P1 + 0x8] = R7;
ffa08718:	ff e3 90 fd 	CALL 0xffa08238 <_get_asm>;
ffa0871c:	27 01       	RETS = [SP++];
ffa0871e:	10 00       	RTS;

ffa08720 <_waitirq_asm>:
ffa08720:	67 01       	[--SP] = RETS;
ffa08722:	27 e1 b6 00 	R7 = 0xb6 (X);		/*		R7=0xb6(182) */
ffa08726:	87 bb       	[FP -0x20] = R7;

ffa08728 <waitirq_loop>:
ffa08728:	0e 95       	R6 = W[P1] (Z);
ffa0872a:	1e 49       	CC = BITTST (R6, 0x3);		/* bit  3 */
ffa0872c:	0c 10       	IF !CC JUMP 0xffa08744 <waitirq_end>;
ffa0872e:	ff e3 85 fd 	CALL 0xffa08238 <_get_asm>;
ffa08732:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa08734:	87 b9       	R7 = [FP -0x20];
ffa08736:	3e 08       	CC = R6 == R7;
ffa08738:	06 18       	IF CC JUMP 0xffa08744 <waitirq_end>;
ffa0873a:	ff 67       	R7 += -0x1;		/* ( -1) */
ffa0873c:	87 bb       	[FP -0x20] = R7;
ffa0873e:	ff e3 7d fd 	CALL 0xffa08238 <_get_asm>;
ffa08742:	f3 2f       	JUMP.S 0xffa08728 <waitirq_loop>;

ffa08744 <waitirq_end>:
ffa08744:	ff e3 7a fd 	CALL 0xffa08238 <_get_asm>;
ffa08748:	27 01       	RETS = [SP++];
ffa0874a:	10 00       	RTS;
ffa0874c:	00 00       	NOP;
	...

ffa08750 <_clearfifos_asm>:
ffa08750:	67 01       	[--SP] = RETS;
ffa08752:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa08754:	8f b4       	W[P1 + 0x4] = R7;
ffa08756:	ff e3 71 fd 	CALL 0xffa08238 <_get_asm>;
ffa0875a:	26 e1 e2 00 	R6 = 0xe2 (X);		/*		R6=0xe2(226) */
ffa0875e:	1e 97       	W[P3] = R6;
ffa08760:	ff e3 6c fd 	CALL 0xffa08238 <_get_asm>;
ffa08764:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa08766:	0f b5       	W[P1 + 0x8] = R7;
ffa08768:	ff e3 68 fd 	CALL 0xffa08238 <_get_asm>;
ffa0876c:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa0876e:	8f b4       	W[P1 + 0x4] = R7;
ffa08770:	ff e3 64 fd 	CALL 0xffa08238 <_get_asm>;
ffa08774:	26 e1 e1 00 	R6 = 0xe1 (X);		/*		R6=0xe1(225) */
ffa08778:	1e 97       	W[P3] = R6;
ffa0877a:	ff e3 5f fd 	CALL 0xffa08238 <_get_asm>;
ffa0877e:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa08780:	0f b5       	W[P1 + 0x8] = R7;
ffa08782:	ff e3 5b fd 	CALL 0xffa08238 <_get_asm>;
ffa08786:	27 01       	RETS = [SP++];
ffa08788:	10 00       	RTS;
ffa0878a:	00 00       	NOP;
ffa0878c:	00 00       	NOP;
	...

ffa08790 <_radio_bidi_asm>:
ffa08790:	0d e1 14 05 	P5.L = 0x514;		/* (1300)	P5=0xff900514 */
ffa08794:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00514(-4193004) */
ffa08798:	80 e1 04 00 	R0 = 0x4 (Z);		/*		R0=0x4(  4) */
ffa0879c:	28 97       	W[P5] = R0;
ffa0879e:	0f e1 00 6f 	FP.L = 0x6f00;		/* (28416)	FP=0x6f00 */
ffa087a2:	4f e1 90 ff 	FP.H = 0xff90;		/* (-112)	FP=0xff906f00 */
ffa087a6:	08 e1 18 08 	P0.L = 0x818;		/* (2072)	P0=0xffff0818(-63464) */
ffa087aa:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00818(-4192232) */
ffa087ae:	68 bb       	[FP -0x28] = P0;
ffa087b0:	09 e1 00 07 	P1.L = 0x700;		/* (1792)	P1=0xffc00700(-4192512) */
ffa087b4:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00700(-4192512) */
ffa087b8:	49 bb       	[FP -0x30] = P1;
ffa087ba:	0a e1 00 70 	P2.L = 0x7000;		/* (28672)	P2=0x7000 */
ffa087be:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff807000 */
ffa087c2:	0b e1 0c 05 	P3.L = 0x50c;		/* (1292)	P3=0x50c */
ffa087c6:	4b e1 c0 ff 	P3.H = 0xffc0;		/* (-64)	P3=0xffc0050c(-4193012) */
ffa087ca:	5b bb       	[FP -0x2c] = P3;
ffa087cc:	0c e1 00 70 	P4.L = 0x7000;		/* (28672)	P4=0x7000 */
ffa087d0:	4c e1 80 ff 	P4.H = 0xff80;		/* (-128)	P4=0xff807000 */
ffa087d4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa087d6:	f0 bb       	[FP -0x4] = R0;
ffa087d8:	f0 ba       	[FP -0x44] = R0;
ffa087da:	e0 bb       	[FP -0x8] = R0;
ffa087dc:	d0 bb       	[FP -0xc] = R0;
ffa087de:	00 e1 00 60 	R0.L = 0x6000;		/* (24576)	R0=0x6000(24576) */
ffa087e2:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff806000(-8364032) */
ffa087e6:	30 bb       	[FP -0x34] = R0;
ffa087e8:	00 e1 20 60 	R0.L = 0x6020;		/* (24608)	R0=0xff806020(-8364000) */
ffa087ec:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff806020(-8364000) */
ffa087f0:	20 bb       	[FP -0x38] = R0;
ffa087f2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa087f4:	e0 ba       	[FP -0x48] = R0;
ffa087f6:	00 e1 00 61 	R0.L = 0x6100;		/* (24832)	R0=0x6100(24832) */
ffa087fa:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff806100(-8363776) */
ffa087fe:	10 bb       	[FP -0x3c] = R0;
ffa08800:	00 e1 00 62 	R0.L = 0x6200;		/* (25088)	R0=0xff806200(-8363520) */
ffa08804:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff806200(-8363520) */
ffa08808:	82 c6 f0 81 	R0 = R0 >> 0x2;
ffa0880c:	00 bb       	[FP -0x40] = R0;
ffa0880e:	00 e1 ff 0f 	R0.L = 0xfff;		/* (4095)	R0=0xff800fff(-8384513) */
ffa08812:	40 e1 ff 0f 	R0.H = 0xfff;		/* (4095)	R0=0xfff0fff(268374015) */
ffa08816:	d0 ba       	[FP -0x4c] = R0;
ffa08818:	00 e1 15 40 	R0.L = 0x4015;		/* (16405)	R0=0xfff4015(268386325) */
ffa0881c:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff804015(-8372203) */
ffa08820:	90 bb       	[FP -0x1c] = R0;
ffa08822:	00 e1 17 40 	R0.L = 0x4017;		/* (16407)	R0=0xff804017(-8372201) */
ffa08826:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff804017(-8372201) */
ffa0882a:	a0 bb       	[FP -0x18] = R0;
ffa0882c:	00 e1 55 40 	R0.L = 0x4055;		/* (16469)	R0=0xff804055(-8372139) */
ffa08830:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff804055(-8372139) */
ffa08834:	b0 bb       	[FP -0x14] = R0;
ffa08836:	00 e1 57 40 	R0.L = 0x4057;		/* (16471)	R0=0xff804057(-8372137) */
ffa0883a:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff804057(-8372137) */
ffa0883e:	c0 bb       	[FP -0x10] = R0;
ffa08840:	20 e1 93 01 	R0 = 0x193 (X);		/*		R0=0x193(403) */
ffa08844:	48 e6 18 00 	W[P1 + 0x30] = R0;
ffa08848:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa0884a:	48 e6 20 00 	W[P1 + 0x40] = R0;
ffa0884e:	27 e1 00 01 	R7 = 0x100 (X);		/*		R7=0x100(256) */
ffa08852:	0f b5       	W[P1 + 0x8] = R7;
ffa08854:	24 00       	SSYNC;
ffa08856:	27 e1 80 00 	R7 = 0x80 (X);		/*		R7=0x80(128) */
ffa0885a:	8f b4       	W[P1 + 0x4] = R7;
ffa0885c:	24 00       	SSYNC;
ffa0885e:	00 e3 29 01 	CALL 0xffa08ab0 <_init6>;
ffa08862:	0d e1 00 60 	P5.L = 0x6000;		/* (24576)	P5=0xffc06000(-4169728) */
ffa08866:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff806000 */
ffa0886a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0886c:	28 92       	[P5++] = R0;
ffa0886e:	28 92       	[P5++] = R0;
ffa08870:	28 92       	[P5++] = R0;
ffa08872:	28 92       	[P5++] = R0;
ffa08874:	28 92       	[P5++] = R0;
ffa08876:	28 92       	[P5++] = R0;
ffa08878:	28 92       	[P5++] = R0;
ffa0887a:	28 92       	[P5++] = R0;
ffa0887c:	00 e3 42 02 	CALL 0xffa08d00 <_enc_create>;
ffa08880:	0d e1 04 02 	P5.L = 0x204;		/* (516)	P5=0xff800204 */
ffa08884:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00204(-4193788) */
ffa08888:	40 e1 0c 00 	R0.H = 0xc;		/* ( 12)	R0=0xc0000(786432) */
ffa0888c:	00 e1 00 35 	R0.L = 0x3500;		/* (13568)	R0=0xc3500(800000) */
ffa08890:	a8 92       	[P5--] = R0;
ffa08892:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa08894:	28 97       	W[P5] = R0;
ffa08896:	27 e1 80 00 	R7 = 0x80 (X);		/*		R7=0x80(128) */
ffa0889a:	0f b5       	W[P1 + 0x8] = R7;
ffa0889c:	24 00       	SSYNC;
ffa0889e:	0d e1 20 09 	P5.L = 0x920;		/* (2336)	P5=0xffc00920(-4191968) */
ffa088a2:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00920(-4191968) */
ffa088a6:	00 e1 01 04 	R0.L = 0x401;		/* (1025)	R0=0x401(1025) */
ffa088aa:	28 97       	W[P5] = R0;
ffa088ac:	0d e1 20 08 	P5.L = 0x820;		/* (2080)	P5=0xffc00820(-4192224) */
ffa088b0:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00820(-4192224) */
ffa088b4:	00 e1 03 06 	R0.L = 0x603;		/* (1539)	R0=0x603(1539) */
ffa088b8:	28 97       	W[P5] = R0;

ffa088ba <radio_loop>:
ffa088ba:	ff e3 bf fc 	CALL 0xffa08238 <_get_asm>;
ffa088be:	f5 b9       	R5 = [FP -0x4];
ffa088c0:	25 49       	CC = BITTST (R5, 0x4);		/* bit  4 */
ffa088c2:	fc 13       	IF !CC JUMP 0xffa088ba <radio_loop>;
ffa088c4:	ff e3 ba fc 	CALL 0xffa08238 <_get_asm>;
ffa088c8:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa088ca:	f5 bb       	[FP -0x4] = R5;
ffa088cc:	ff e3 42 ff 	CALL 0xffa08750 <_clearfifos_asm>;
ffa088d0:	ff e3 14 ff 	CALL 0xffa086f8 <_clearirq_asm>;
ffa088d4:	85 68       	P5 = 0x10 (X);		/*		P5=0x10( 16) */
ffa088d6:	a2 e0 24 50 	LSETUP(0xffa088da <wp_top>, 0xffa0891e <wp_bot>) LC0 = P5;

ffa088da <wp_top>:
ffa088da:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa088dc:	8f b4       	W[P1 + 0x4] = R7;
ffa088de:	ff e3 ad fc 	CALL 0xffa08238 <_get_asm>;
ffa088e2:	26 e1 a0 00 	R6 = 0xa0 (X);		/*		R6=0xa0(160) */
ffa088e6:	1e 97       	W[P3] = R6;
ffa088e8:	ff e3 a8 fc 	CALL 0xffa08238 <_get_asm>;
ffa088ec:	05 69       	P5 = 0x20 (X);		/*		P5=0x20( 32) */
ffa088ee:	b2 e0 06 50 	LSETUP(0xffa088f2 <pb_top>, 0xffa088fa <pb_bot>) LC1 = P5;

ffa088f2 <pb_top>:
ffa088f2:	16 98       	R6 = B[P2++] (Z);
ffa088f4:	1e 97       	W[P3] = R6;
ffa088f6:	ff e3 a1 fc 	CALL 0xffa08238 <_get_asm>;

ffa088fa <pb_bot>:
ffa088fa:	00 00       	NOP;
ffa088fc:	7a 30       	R7 = P2;
ffa088fe:	57 4c       	BITCLR (R7, 0xa);		/* bit 10 */
ffa08900:	17 32       	P2 = R7;
ffa08902:	ff e3 9b fc 	CALL 0xffa08238 <_get_asm>;
ffa08906:	1f 60       	R7 = 0x3 (X);		/*		R7=0x3(  3) */
ffa08908:	0f b5       	W[P1 + 0x8] = R7;
ffa0890a:	ff e3 97 fc 	CALL 0xffa08238 <_get_asm>;
ffa0890e:	87 60       	R7 = 0x10 (X);		/*		R7=0x10( 16) */
ffa08910:	b0 31       	R6 = LC0;
ffa08912:	37 08       	CC = R7 == R6;
ffa08914:	05 18       	IF CC JUMP 0xffa0891e <wp_bot>;
ffa08916:	ff e3 05 ff 	CALL 0xffa08720 <_waitirq_asm>;
ffa0891a:	ff e3 ef fe 	CALL 0xffa086f8 <_clearirq_asm>;

ffa0891e <wp_bot>:
ffa0891e:	00 00       	NOP;
ffa08920:	ff e3 00 ff 	CALL 0xffa08720 <_waitirq_asm>;
ffa08924:	ff e3 ea fe 	CALL 0xffa086f8 <_clearirq_asm>;
ffa08928:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa0892a:	8f b4       	W[P1 + 0x4] = R7;
ffa0892c:	ff e3 86 fc 	CALL 0xffa08238 <_get_asm>;
ffa08930:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa08932:	8f b4       	W[P1 + 0x4] = R7;
ffa08934:	ff e3 82 fc 	CALL 0xffa08238 <_get_asm>;
ffa08938:	26 e1 e2 00 	R6 = 0xe2 (X);		/*		R6=0xe2(226) */
ffa0893c:	1e 97       	W[P3] = R6;
ffa0893e:	ff e3 7d fc 	CALL 0xffa08238 <_get_asm>;
ffa08942:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa08944:	0f b5       	W[P1 + 0x8] = R7;
ffa08946:	ff e3 79 fc 	CALL 0xffa08238 <_get_asm>;
ffa0894a:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa0894c:	8f b4       	W[P1 + 0x4] = R7;
ffa0894e:	ff e3 75 fc 	CALL 0xffa08238 <_get_asm>;
ffa08952:	06 61       	R6 = 0x20 (X);		/*		R6=0x20( 32) */
ffa08954:	1e 97       	W[P3] = R6;
ffa08956:	ff e3 71 fc 	CALL 0xffa08238 <_get_asm>;
ffa0895a:	fe 60       	R6 = 0x1f (X);		/*		R6=0x1f( 31) */
ffa0895c:	1e 97       	W[P3] = R6;
ffa0895e:	ff e3 6d fc 	CALL 0xffa08238 <_get_asm>;
ffa08962:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa08964:	0f b5       	W[P1 + 0x8] = R7;
ffa08966:	ff e3 69 fc 	CALL 0xffa08238 <_get_asm>;
ffa0896a:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa0896c:	0f b5       	W[P1 + 0x8] = R7;
ffa0896e:	ff e3 65 fc 	CALL 0xffa08238 <_get_asm>;
ffa08972:	ff e3 d7 fe 	CALL 0xffa08720 <_waitirq_asm>;
ffa08976:	0f 95       	R7 = W[P1] (Z);
ffa08978:	1f 49       	CC = BITTST (R7, 0x3);		/* bit  3 */
ffa0897a:	63 18       	IF CC JUMP 0xffa08a40 <no_rxpacket>;
ffa0897c:	ff e3 be fe 	CALL 0xffa086f8 <_clearirq_asm>;
ffa08980:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa08982:	8f b4       	W[P1 + 0x4] = R7;
ffa08984:	ff e3 5a fc 	CALL 0xffa08238 <_get_asm>;
ffa08988:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa0898a:	8f b4       	W[P1 + 0x4] = R7;
ffa0898c:	ff e3 56 fc 	CALL 0xffa08238 <_get_asm>;
ffa08990:	26 e1 61 00 	R6 = 0x61 (X);		/*		R6=0x61( 97) */
ffa08994:	1e 97       	W[P3] = R6;
ffa08996:	ff e3 51 fc 	CALL 0xffa08238 <_get_asm>;
ffa0899a:	25 68       	P5 = 0x4 (X);		/*		P5=0x4(  4) */
ffa0899c:	a2 e0 4b 50 	LSETUP(0xffa089a0 <rp_top>, 0xffa08a32 <rp_bot>) LC0 = P5;

ffa089a0 <rp_top>:
ffa089a0:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa089a2:	e7 bb       	[FP -0x8] = R7;
ffa089a4:	d7 bb       	[FP -0xc] = R7;
ffa089a6:	ff e3 49 fc 	CALL 0xffa08238 <_get_asm>;
ffa089aa:	25 68       	P5 = 0x4 (X);		/*		P5=0x4(  4) */
ffa089ac:	b2 e0 0e 50 	LSETUP(0xffa089b0 <a32_top>, 0xffa089c8 <a32_bot>) LC1 = P5;

ffa089b0 <a32_top>:
ffa089b0:	1f 97       	W[P3] = R7;
ffa089b2:	ff e3 43 fc 	CALL 0xffa08238 <_get_asm>;
ffa089b6:	9f a5       	R7 = W[P3 + 0xc] (Z);
ffa089b8:	26 e1 ff 00 	R6 = 0xff (X);		/*		R6=0xff(255) */
ffa089bc:	f7 55       	R7 = R7 & R6;
ffa089be:	e6 b9       	R6 = [FP -0x8];
ffa089c0:	82 c6 46 8c 	R6 = R6 << 0x8;
ffa089c4:	be 51       	R6 = R6 + R7;
ffa089c6:	e6 bb       	[FP -0x8] = R6;

ffa089c8 <a32_bot>:
ffa089c8:	00 00       	NOP;
ffa089ca:	ff e3 37 fc 	CALL 0xffa08238 <_get_asm>;
ffa089ce:	25 68       	P5 = 0x4 (X);		/*		P5=0x4(  4) */
ffa089d0:	b2 e0 0e 50 	LSETUP(0xffa089d4 <v32_top>, 0xffa089ec <v32_bot>) LC1 = P5;

ffa089d4 <v32_top>:
ffa089d4:	1f 97       	W[P3] = R7;
ffa089d6:	ff e3 31 fc 	CALL 0xffa08238 <_get_asm>;
ffa089da:	9f a5       	R7 = W[P3 + 0xc] (Z);
ffa089dc:	26 e1 ff 00 	R6 = 0xff (X);		/*		R6=0xff(255) */
ffa089e0:	f7 55       	R7 = R7 & R6;
ffa089e2:	d6 b9       	R6 = [FP -0xc];
ffa089e4:	82 c6 46 8c 	R6 = R6 << 0x8;
ffa089e8:	be 51       	R6 = R6 + R7;
ffa089ea:	d6 bb       	[FP -0xc] = R6;

ffa089ec <v32_bot>:
ffa089ec:	00 00       	NOP;
ffa089ee:	ff e3 25 fc 	CALL 0xffa08238 <_get_asm>;
ffa089f2:	e7 b9       	R7 = [FP -0x8];
ffa089f4:	82 c6 27 8d 	R6 = R7 >> 0x1c;
ffa089f8:	06 32       	P0 = R6;
ffa089fa:	0d b9       	P5 = [FP -0x40];
ffa089fc:	7e 60       	R6 = 0xf (X);		/*		R6=0xf( 15) */
ffa089fe:	82 c6 e6 8c 	R6 = R6 << 0x1c;
ffa08a02:	f7 57       	R7 = R7 | R6;
ffa08a04:	e7 bb       	[FP -0x8] = R7;
ffa08a06:	c5 45       	P5 = (P5 + P0) << 0x2;
ffa08a08:	2f 91       	R7 = [P5];
ffa08a0a:	f7 ba       	[FP -0x44] = R7;
ffa08a0c:	ff e3 16 fc 	CALL 0xffa08238 <_get_asm>;
ffa08a10:	e7 b9       	R7 = [FP -0x8];
ffa08a12:	46 e1 ef ff 	R6.H = 0xffef;		/* (-17)	R6=0xffef000f(-1114097) */
ffa08a16:	06 e1 03 c0 	R6.L = 0xc003;		/* (-16381)	R6=0xffefc003(-1064957) */
ffa08a1a:	77 55       	R5 = R7 & R6;
ffa08a1c:	46 e1 80 ff 	R6.H = 0xff80;		/* (-128)	R6=0xff80c003(-8339453) */
ffa08a20:	06 e1 00 40 	R6.L = 0x4000;		/* (16384)	R6=0xff804000(-8372224) */
ffa08a24:	35 08       	CC = R5 == R6;
ffa08a26:	04 10       	IF !CC JUMP 0xffa08a2e <invalid>;
ffa08a28:	2f 32       	P5 = R7;
ffa08a2a:	d6 b9       	R6 = [FP -0xc];
ffa08a2c:	2e 93       	[P5] = R6;

ffa08a2e <invalid>:
ffa08a2e:	ff e3 05 fc 	CALL 0xffa08238 <_get_asm>;

ffa08a32 <rp_bot>:
ffa08a32:	00 00       	NOP;
ffa08a34:	ff e3 02 fc 	CALL 0xffa08238 <_get_asm>;
ffa08a38:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa08a3a:	0f b5       	W[P1 + 0x8] = R7;
ffa08a3c:	ff e3 fe fb 	CALL 0xffa08238 <_get_asm>;

ffa08a40 <no_rxpacket>:
ffa08a40:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa08a42:	8f b4       	W[P1 + 0x4] = R7;
ffa08a44:	ff e3 fa fb 	CALL 0xffa08238 <_get_asm>;
ffa08a48:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa08a4a:	8f b4       	W[P1 + 0x4] = R7;
ffa08a4c:	ff e3 f6 fb 	CALL 0xffa08238 <_get_asm>;
ffa08a50:	26 e1 e1 00 	R6 = 0xe1 (X);		/*		R6=0xe1(225) */
ffa08a54:	1e 97       	W[P3] = R6;
ffa08a56:	ff e3 f1 fb 	CALL 0xffa08238 <_get_asm>;
ffa08a5a:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa08a5c:	0f b5       	W[P1 + 0x8] = R7;
ffa08a5e:	ff e3 ed fb 	CALL 0xffa08238 <_get_asm>;
ffa08a62:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa08a64:	8f b4       	W[P1 + 0x4] = R7;
ffa08a66:	ff e3 e9 fb 	CALL 0xffa08238 <_get_asm>;
ffa08a6a:	06 61       	R6 = 0x20 (X);		/*		R6=0x20( 32) */
ffa08a6c:	1e 97       	W[P3] = R6;
ffa08a6e:	ff e3 e5 fb 	CALL 0xffa08238 <_get_asm>;
ffa08a72:	f6 60       	R6 = 0x1e (X);		/*		R6=0x1e( 30) */
ffa08a74:	1e 97       	W[P3] = R6;
ffa08a76:	ff e3 e1 fb 	CALL 0xffa08238 <_get_asm>;
ffa08a7a:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa08a7c:	0f b5       	W[P1 + 0x8] = R7;
ffa08a7e:	ff e3 dd fb 	CALL 0xffa08238 <_get_asm>;
ffa08a82:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00004(-4194300) */
ffa08a86:	0d e1 08 02 	P5.L = 0x208;		/* (520)	P5=0xffc00208(-4193784) */
ffa08a8a:	2f 93       	[P5] = R7;
ffa08a8c:	ff e3 d6 fb 	CALL 0xffa08238 <_get_asm>;
ffa08a90:	87 60       	R7 = 0x10 (X);		/*		R7=0x10( 16) */
ffa08a92:	8f b4       	W[P1 + 0x4] = R7;
ffa08a94:	ff e3 d2 fb 	CALL 0xffa08238 <_get_asm>;
ffa08a98:	e7 b8       	R7 = [FP -0x48];
ffa08a9a:	86 e1 01 00 	R6 = 0x1 (Z);		/*		R6=0x1(  1) */
ffa08a9e:	f7 51       	R7 = R7 + R6;
ffa08aa0:	82 c6 e7 8d 	R6 = R7 >> 0x4;
ffa08aa4:	0e b5       	W[P1 + 0x8] = R6;
ffa08aa6:	47 4c       	BITCLR (R7, 0x8);		/* bit  8 */
ffa08aa8:	e7 ba       	[FP -0x48] = R7;
ffa08aaa:	ff e3 c7 fb 	CALL 0xffa08238 <_get_asm>;
ffa08aae:	06 2f       	JUMP.S 0xffa088ba <radio_loop>;

ffa08ab0 <_init6>:
ffa08ab0:	10 e1 00 40 	I0.L = 0x4000;		/* (16384)	I0=0x4000(16384) */
ffa08ab4:	50 e1 90 ff 	I0.H = 0xff90;		/* (-112)	I0=0xff904000(-7323648) */
ffa08ab8:	80 36       	B0 = I0;
ffa08aba:	1c e1 00 2d 	L0.L = 0x2d00;		/* (11520)	L0=0x2d00(11520) */
ffa08abe:	5c e1 00 00 	L0.H = 0x0;		/* (  0)	L0=0x2d00(11520) */
ffa08ac2:	14 e1 00 01 	M0.L = 0x100;		/* (256)	M0=0x100(256) */
ffa08ac6:	54 e1 00 00 	M0.H = 0x0;		/* (  0)	M0=0x100(256) */
ffa08aca:	05 69       	P5 = 0x20 (X);		/*		P5=0x20( 32) */
ffa08acc:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa08ace:	a2 e0 9e 50 	LSETUP(0xffa08ad2 <lt_top>, 0xffa08c0a <lt_bot>) LC0 = P5;

ffa08ad2 <lt_top>:
ffa08ad2:	20 e1 00 01 	R0 = 0x100 (X);		/*		R0=0x100(256) */
ffa08ad6:	00 9e       	[I0++] = R0;
ffa08ad8:	15 68       	P5 = 0x2 (X);		/*		P5=0x2(  2) */
ffa08ada:	b2 e0 8a 50 	LSETUP(0xffa08ade <lt2_top>, 0xffa08bee <lt2_bot>) LC1 = P5;

ffa08ade <lt2_top>:
ffa08ade:	00 e1 00 7d 	R0.L = 0x7d00;		/* (32000)	R0=0x7d00(32000) */
ffa08ae2:	40 e1 00 c0 	R0.H = 0xc000;		/* (-16384)	R0=0xc0007d00(-1073709824) */
ffa08ae6:	00 9e       	[I0++] = R0;
ffa08ae8:	00 e1 00 40 	R0.L = 0x4000;		/* (16384)	R0=0xc0004000(-1073725440) */
ffa08aec:	40 e1 84 03 	R0.H = 0x384;		/* (900)	R0=0x3844000(58998784) */
ffa08af0:	00 9e       	[I0++] = R0;
ffa08af2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa08af4:	00 9e       	[I0++] = R0;
ffa08af6:	00 9e       	[I0++] = R0;
ffa08af8:	00 9e       	[I0++] = R0;
ffa08afa:	00 9e       	[I0++] = R0;
ffa08afc:	00 9e       	[I0++] = R0;
ffa08afe:	00 9e       	[I0++] = R0;
ffa08b00:	00 9e       	[I0++] = R0;
ffa08b02:	00 9e       	[I0++] = R0;
ffa08b04:	00 9e       	[I0++] = R0;
ffa08b06:	00 9e       	[I0++] = R0;
ffa08b08:	00 9e       	[I0++] = R0;
ffa08b0a:	00 9e       	[I0++] = R0;
ffa08b0c:	00 9e       	[I0++] = R0;
ffa08b0e:	00 9e       	[I0++] = R0;
ffa08b10:	00 9e       	[I0++] = R0;
ffa08b12:	00 e1 ff 7f 	R0.L = 0x7fff;		/* (32767)	R0=0x7fff(32767) */
ffa08b16:	20 9e       	W[I0++] = R0.L;
ffa08b18:	20 9e       	W[I0++] = R0.L;
ffa08b1a:	00 e1 bb 26 	R0.L = 0x26bb;		/* (9915)	R0=0x26bb(9915) */
ffa08b1e:	40 e1 bb 26 	R0.H = 0x26bb;		/* (9915)	R0=0x26bb26bb(649799355) */
ffa08b22:	00 9e       	[I0++] = R0;
ffa08b24:	00 e1 00 40 	R0.L = 0x4000;		/* (16384)	R0=0x26bb4000(649805824) */
ffa08b28:	40 e1 01 00 	R0.H = 0x1;		/* (  1)	R0=0x14000(81920) */
ffa08b2c:	00 9e       	[I0++] = R0;
ffa08b2e:	20 e1 d4 1e 	R0 = 0x1ed4 (X);		/*		R0=0x1ed4(7892) */
ffa08b32:	20 9e       	W[I0++] = R0.L;
ffa08b34:	20 9e       	W[I0++] = R0.L;
ffa08b36:	20 e1 a9 3d 	R0 = 0x3da9 (X);		/*		R0=0x3da9(15785) */
ffa08b3a:	20 9e       	W[I0++] = R0.L;
ffa08b3c:	20 9e       	W[I0++] = R0.L;
ffa08b3e:	20 e1 d4 1e 	R0 = 0x1ed4 (X);		/*		R0=0x1ed4(7892) */
ffa08b42:	20 9e       	W[I0++] = R0.L;
ffa08b44:	20 9e       	W[I0++] = R0.L;
ffa08b46:	20 e1 ad 14 	R0 = 0x14ad (X);		/*		R0=0x14ad(5293) */
ffa08b4a:	20 9e       	W[I0++] = R0.L;
ffa08b4c:	20 9e       	W[I0++] = R0.L;
ffa08b4e:	20 e1 c9 e2 	R0 = -0x1d37 (X);		/*		R0=0xffffe2c9(-7479) */
ffa08b52:	20 9e       	W[I0++] = R0.L;
ffa08b54:	20 9e       	W[I0++] = R0.L;
ffa08b56:	20 e1 ee 3b 	R0 = 0x3bee (X);		/*		R0=0x3bee(15342) */
ffa08b5a:	20 9e       	W[I0++] = R0.L;
ffa08b5c:	20 9e       	W[I0++] = R0.L;
ffa08b5e:	20 e1 21 88 	R0 = -0x77df (X);		/*		R0=0xffff8821(-30687) */
ffa08b62:	20 9e       	W[I0++] = R0.L;
ffa08b64:	20 9e       	W[I0++] = R0.L;
ffa08b66:	20 e1 ee 3b 	R0 = 0x3bee (X);		/*		R0=0x3bee(15342) */
ffa08b6a:	20 9e       	W[I0++] = R0.L;
ffa08b6c:	20 9e       	W[I0++] = R0.L;
ffa08b6e:	20 e1 a5 7a 	R0 = 0x7aa5 (X);		/*		R0=0x7aa5(31397) */
ffa08b72:	20 9e       	W[I0++] = R0.L;
ffa08b74:	20 9e       	W[I0++] = R0.L;
ffa08b76:	20 e1 bc c4 	R0 = -0x3b44 (X);		/*		R0=0xffffc4bc(-15172) */
ffa08b7a:	20 9e       	W[I0++] = R0.L;
ffa08b7c:	20 9e       	W[I0++] = R0.L;
ffa08b7e:	20 e1 10 27 	R0 = 0x2710 (X);		/*		R0=0x2710(10000) */
ffa08b82:	20 9e       	W[I0++] = R0.L;
ffa08b84:	20 9e       	W[I0++] = R0.L;
ffa08b86:	20 e1 d4 1e 	R0 = 0x1ed4 (X);		/*		R0=0x1ed4(7892) */
ffa08b8a:	20 9e       	W[I0++] = R0.L;
ffa08b8c:	20 9e       	W[I0++] = R0.L;
ffa08b8e:	20 e1 a6 3d 	R0 = 0x3da6 (X);		/*		R0=0x3da6(15782) */
ffa08b92:	20 9e       	W[I0++] = R0.L;
ffa08b94:	20 9e       	W[I0++] = R0.L;
ffa08b96:	20 e1 d4 1e 	R0 = 0x1ed4 (X);		/*		R0=0x1ed4(7892) */
ffa08b9a:	20 9e       	W[I0++] = R0.L;
ffa08b9c:	20 9e       	W[I0++] = R0.L;
ffa08b9e:	20 e1 f0 0e 	R0 = 0xef0 (X);		/*		R0=0xef0(3824) */
ffa08ba2:	20 9e       	W[I0++] = R0.L;
ffa08ba4:	20 9e       	W[I0++] = R0.L;
ffa08ba6:	20 e1 aa fc 	R0 = -0x356 (X);		/*		R0=0xfffffcaa(-854) */
ffa08baa:	20 9e       	W[I0++] = R0.L;
ffa08bac:	20 9e       	W[I0++] = R0.L;
ffa08bae:	20 e1 ee 3b 	R0 = 0x3bee (X);		/*		R0=0x3bee(15342) */
ffa08bb2:	20 9e       	W[I0++] = R0.L;
ffa08bb4:	20 9e       	W[I0++] = R0.L;
ffa08bb6:	20 e1 27 88 	R0 = -0x77d9 (X);		/*		R0=0xffff8827(-30681) */
ffa08bba:	20 9e       	W[I0++] = R0.L;
ffa08bbc:	20 9e       	W[I0++] = R0.L;
ffa08bbe:	20 e1 ee 3b 	R0 = 0x3bee (X);		/*		R0=0x3bee(15342) */
ffa08bc2:	20 9e       	W[I0++] = R0.L;
ffa08bc4:	20 9e       	W[I0++] = R0.L;
ffa08bc6:	20 e1 8c 74 	R0 = 0x748c (X);		/*		R0=0x748c(29836) */
ffa08bca:	20 9e       	W[I0++] = R0.L;
ffa08bcc:	20 9e       	W[I0++] = R0.L;
ffa08bce:	20 e1 dd ca 	R0 = -0x3523 (X);		/*		R0=0xffffcadd(-13603) */
ffa08bd2:	20 9e       	W[I0++] = R0.L;
ffa08bd4:	20 9e       	W[I0++] = R0.L;
ffa08bd6:	20 e1 10 27 	R0 = 0x2710 (X);		/*		R0=0x2710(10000) */
ffa08bda:	20 9e       	W[I0++] = R0.L;
ffa08bdc:	20 9e       	W[I0++] = R0.L;
ffa08bde:	00 e1 01 00 	R0.L = 0x1;		/* (  1)	R0=0x1(  1) */
ffa08be2:	20 9e       	W[I0++] = R0.L;
ffa08be4:	20 9e       	W[I0++] = R0.L;
ffa08be6:	00 e1 02 00 	R0.L = 0x2;		/* (  2)	R0=0x2(  2) */
ffa08bea:	20 9e       	W[I0++] = R0.L;
ffa08bec:	20 9e       	W[I0++] = R0.L;

ffa08bee <lt2_bot>:
ffa08bee:	37 e1 08 00 	M3 = 0x8 (X);		/*		M3=0x8(  8) */
ffa08bf2:	7c 9e       	I0 -= M3;
ffa08bf4:	00 e1 04 00 	R0.L = 0x4;		/* (  4)	R0=0x4(  4) */
ffa08bf8:	20 9e       	W[I0++] = R0.L;
ffa08bfa:	20 9e       	W[I0++] = R0.L;
ffa08bfc:	00 e1 08 00 	R0.L = 0x8;		/* (  8)	R0=0x8(  8) */
ffa08c00:	20 9e       	W[I0++] = R0.L;
ffa08c02:	20 9e       	W[I0++] = R0.L;
ffa08c04:	01 9e       	[I0++] = R1;
ffa08c06:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa08c08:	41 50       	R1 = R1 + R0;

ffa08c0a <lt_bot>:
ffa08c0a:	08 e1 c8 28 	P0.L = 0x28c8;		/* (10440)	P0=0xffc028c8(-4183864) */
ffa08c0e:	48 e1 00 00 	P0.H = 0x0;		/* (  0)	P0=0x28c8 */
ffa08c12:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa08c16:	00 93       	[P0] = R0;
ffa08c18:	11 e1 00 40 	I1.L = 0x4000;		/* (16384)	I1=0x4000(16384) */
ffa08c1c:	51 e1 80 ff 	I1.H = 0xff80;		/* (-128)	I1=0xff804000(-8372224) */
ffa08c20:	1d e1 00 10 	L1.L = 0x1000;		/* (4096)	L1=0x1000(4096) */
ffa08c24:	5d e1 00 00 	L1.H = 0x0;		/* (  0)	L1=0x1000(4096) */
ffa08c28:	91 34       	I2 = I1;
ffa08c2a:	89 36       	B1 = I1;
ffa08c2c:	92 36       	B2 = I2;
ffa08c2e:	f5 36       	L2 = L1;
ffa08c30:	35 e1 40 00 	M1 = 0x40 (X);		/*		M1=0x40( 64) */
ffa08c34:	b4 34       	M2 = M0;
ffa08c36:	0c e1 00 40 	P4.L = 0x4000;		/* (16384)	P4=0xff804000 */
ffa08c3a:	4c e1 80 ff 	P4.H = 0xff80;		/* (-128)	P4=0xff804000 */
ffa08c3e:	0d e1 00 04 	P5.L = 0x400;		/* (1024)	P5=0x400 */
ffa08c42:	4d e1 00 00 	P5.H = 0x0;		/* (  0)	P5=0x400 */
ffa08c46:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa08c48:	a2 e0 04 50 	LSETUP(0xffa08c4c <lt3_top>, 0xffa08c50 <lt3_bot>) LC0 = P5;

ffa08c4c <lt3_top>:
ffa08c4c:	00 00       	NOP;
ffa08c4e:	20 92       	[P4++] = R0;

ffa08c50 <lt3_bot>:
ffa08c50:	00 00       	NOP;
ffa08c52:	13 e1 00 50 	I3.L = 0x5000;		/* (20480)	I3=0x5000(20480) */
ffa08c56:	53 e1 80 ff 	I3.H = 0xff80;		/* (-128)	I3=0xff805000(-8368128) */
ffa08c5a:	1f e1 00 0f 	L3.L = 0xf00;		/* (3840)	L3=0xf00(3840) */
ffa08c5e:	5f e1 00 00 	L3.H = 0x0;		/* (  0)	L3=0xf00(3840) */
ffa08c62:	9b 36       	B3 = I3;
ffa08c64:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa08c66:	8c 30       	R1 = M0;
ffa08c68:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa08c6a:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa08c6c:	85 69       	P5 = 0x30 (X);		/*		P5=0x30( 48) */
ffa08c6e:	a2 e0 46 50 	LSETUP(0xffa08c72 <lt4_top>, 0xffa08cfa <lt4_bot>) LC0 = P5;

ffa08c72 <lt4_top>:
ffa08c72:	00 00       	NOP;
ffa08c74:	35 68       	P5 = 0x6 (X);		/*		P5=0x6(  6) */
ffa08c76:	b2 e0 18 50 	LSETUP(0xffa08c7a <lt5_top>, 0xffa08ca6 <lt5_bot>) LC1 = P5;

ffa08c7a <lt5_top>:
ffa08c7a:	84 60       	R4 = 0x10 (X);		/*		R4=0x10( 16) */
ffa08c7c:	c4 52       	R3 = R4 - R0;
ffa08c7e:	24 60       	R4 = 0x4 (X);		/*		R4=0x4(  4) */
ffa08c80:	e3 40       	R3 *= R4;
ffa08c82:	1b 9e       	[I3++] = R3;
ffa08c84:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa08c86:	e0 50       	R3 = R0 + R4;
ffa08c88:	cb 40       	R3 *= R1;
ffa08c8a:	1b 9e       	[I3++] = R3;
ffa08c8c:	1f 9e       	[I3++] = R7;
ffa08c8e:	20 50       	R0 = R0 + R4;
ffa08c90:	e7 51       	R7 = R7 + R4;
ffa08c92:	7c 60       	R4 = 0xf (X);		/*		R4=0xf( 15) */
ffa08c94:	20 08       	CC = R0 == R4;
ffa08c96:	02 10       	IF !CC JUMP 0xffa08c9a <no_rollover>;
ffa08c98:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */

ffa08c9a <no_rollover>:
ffa08c9a:	00 00       	NOP;
ffa08c9c:	34 60       	R4 = 0x6 (X);		/*		R4=0x6(  6) */
ffa08c9e:	27 08       	CC = R7 == R4;
ffa08ca0:	02 10       	IF !CC JUMP 0xffa08ca4 <no_rollover2>;
ffa08ca2:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */

ffa08ca4 <no_rollover2>:
	...

ffa08ca6 <lt5_bot>:
ffa08ca6:	00 00       	NOP;
ffa08ca8:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa08caa:	82 c6 e2 86 	R3 = R2 << 0x1c;
ffa08cae:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa08cb0:	82 c6 fc 88 	R4 = R4 << 0x1f;
ffa08cb4:	e3 54       	R3 = R3 & R4;
ffa08cb6:	5d 57       	R5 = R5 | R3;
ffa08cb8:	82 c6 aa 86 	R3 = R2 << 0x15;
ffa08cbc:	82 c6 c4 89 	R4 = R4 >> 0x8;
ffa08cc0:	e3 54       	R3 = R3 & R4;
ffa08cc2:	5d 57       	R5 = R5 | R3;
ffa08cc4:	82 c6 72 86 	R3 = R2 << 0xe;
ffa08cc8:	82 c6 c4 89 	R4 = R4 >> 0x8;
ffa08ccc:	e3 54       	R3 = R3 & R4;
ffa08cce:	5d 57       	R5 = R5 | R3;
ffa08cd0:	82 c6 3a 86 	R3 = R2 << 0x7;
ffa08cd4:	82 c6 c4 89 	R4 = R4 >> 0x8;
ffa08cd8:	e3 54       	R3 = R3 & R4;
ffa08cda:	5d 57       	R5 = R5 | R3;
ffa08cdc:	1d 9e       	[I3++] = R5;
ffa08cde:	03 e1 20 60 	R3.L = 0x6020;		/* (24608)	R3=0x6020(24608) */
ffa08ce2:	43 e1 80 ff 	R3.H = 0xff80;		/* (-128)	R3=0xff806020(-8364000) */
ffa08ce6:	1c 60       	R4 = 0x3 (X);		/*		R4=0x3(  3) */
ffa08ce8:	62 55       	R5 = R2 & R4;
ffa08cea:	82 c6 1d 8a 	R5 = R5 << 0x3;
ffa08cee:	5d 51       	R5 = R5 + R3;
ffa08cf0:	1d 9e       	[I3++] = R5;
ffa08cf2:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa08cf4:	a2 50       	R2 = R2 + R4;
ffa08cf6:	7c 60       	R4 = 0xf (X);		/*		R4=0xf( 15) */
ffa08cf8:	a2 54       	R2 = R2 & R4;

ffa08cfa <lt4_bot>:
ffa08cfa:	00 00       	NOP;
ffa08cfc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa08cfe:	10 00       	RTS;

ffa08d00 <_enc_create>:
ffa08d00:	0d e1 00 61 	P5.L = 0x6100;		/* (24832)	P5=0x6100 */
ffa08d04:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff806100 */
ffa08d08:	50 61       	R0 = 0x2a (X);		/*		R0=0x2a( 42) */
ffa08d0a:	28 9a       	B[P5++] = R0;
ffa08d0c:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa08d0e:	28 9a       	B[P5++] = R0;
ffa08d10:	60 61       	R0 = 0x2c (X);		/*		R0=0x2c( 44) */
ffa08d12:	28 9a       	B[P5++] = R0;
ffa08d14:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa08d16:	28 9a       	B[P5++] = R0;
ffa08d18:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa08d1a:	28 9a       	B[P5++] = R0;
ffa08d1c:	70 61       	R0 = 0x2e (X);		/*		R0=0x2e( 46) */
ffa08d1e:	28 9a       	B[P5++] = R0;
ffa08d20:	78 61       	R0 = 0x2f (X);		/*		R0=0x2f( 47) */
ffa08d22:	28 9a       	B[P5++] = R0;
ffa08d24:	70 61       	R0 = 0x2e (X);		/*		R0=0x2e( 46) */
ffa08d26:	28 9a       	B[P5++] = R0;
ffa08d28:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa08d2a:	28 9a       	B[P5++] = R0;
ffa08d2c:	88 61       	R0 = 0x31 (X);		/*		R0=0x31( 49) */
ffa08d2e:	28 9a       	B[P5++] = R0;
ffa08d30:	90 61       	R0 = 0x32 (X);		/*		R0=0x32( 50) */
ffa08d32:	28 9a       	B[P5++] = R0;
ffa08d34:	88 61       	R0 = 0x31 (X);		/*		R0=0x31( 49) */
ffa08d36:	28 9a       	B[P5++] = R0;
ffa08d38:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa08d3a:	28 9a       	B[P5++] = R0;
ffa08d3c:	70 61       	R0 = 0x2e (X);		/*		R0=0x2e( 46) */
ffa08d3e:	28 9a       	B[P5++] = R0;
ffa08d40:	78 61       	R0 = 0x2f (X);		/*		R0=0x2f( 47) */
ffa08d42:	28 9a       	B[P5++] = R0;
ffa08d44:	70 61       	R0 = 0x2e (X);		/*		R0=0x2e( 46) */
ffa08d46:	28 9a       	B[P5++] = R0;
ffa08d48:	98 61       	R0 = 0x33 (X);		/*		R0=0x33( 51) */
ffa08d4a:	28 9a       	B[P5++] = R0;
ffa08d4c:	a0 61       	R0 = 0x34 (X);		/*		R0=0x34( 52) */
ffa08d4e:	28 9a       	B[P5++] = R0;
ffa08d50:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa08d52:	28 9a       	B[P5++] = R0;
ffa08d54:	b0 61       	R0 = 0x36 (X);		/*		R0=0x36( 54) */
ffa08d56:	28 9a       	B[P5++] = R0;
ffa08d58:	b8 61       	R0 = 0x37 (X);		/*		R0=0x37( 55) */
ffa08d5a:	28 9a       	B[P5++] = R0;
ffa08d5c:	c0 61       	R0 = 0x38 (X);		/*		R0=0x38( 56) */
ffa08d5e:	28 9a       	B[P5++] = R0;
ffa08d60:	c8 61       	R0 = 0x39 (X);		/*		R0=0x39( 57) */
ffa08d62:	28 9a       	B[P5++] = R0;
ffa08d64:	c0 61       	R0 = 0x38 (X);		/*		R0=0x38( 56) */
ffa08d66:	28 9a       	B[P5++] = R0;
ffa08d68:	d0 61       	R0 = 0x3a (X);		/*		R0=0x3a( 58) */
ffa08d6a:	28 9a       	B[P5++] = R0;
ffa08d6c:	d8 61       	R0 = 0x3b (X);		/*		R0=0x3b( 59) */
ffa08d6e:	28 9a       	B[P5++] = R0;
ffa08d70:	e0 61       	R0 = 0x3c (X);		/*		R0=0x3c( 60) */
ffa08d72:	28 9a       	B[P5++] = R0;
ffa08d74:	d8 61       	R0 = 0x3b (X);		/*		R0=0x3b( 59) */
ffa08d76:	28 9a       	B[P5++] = R0;
ffa08d78:	b8 61       	R0 = 0x37 (X);		/*		R0=0x37( 55) */
ffa08d7a:	28 9a       	B[P5++] = R0;
ffa08d7c:	c0 61       	R0 = 0x38 (X);		/*		R0=0x38( 56) */
ffa08d7e:	28 9a       	B[P5++] = R0;
ffa08d80:	e8 61       	R0 = 0x3d (X);		/*		R0=0x3d( 61) */
ffa08d82:	28 9a       	B[P5++] = R0;
ffa08d84:	f0 61       	R0 = 0x3e (X);		/*		R0=0x3e( 62) */
ffa08d86:	28 9a       	B[P5++] = R0;
ffa08d88:	f8 61       	R0 = 0x3f (X);		/*		R0=0x3f( 63) */
ffa08d8a:	28 9a       	B[P5++] = R0;
ffa08d8c:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa08d90:	28 9a       	B[P5++] = R0;
ffa08d92:	20 e1 41 00 	R0 = 0x41 (X);		/*		R0=0x41( 65) */
ffa08d96:	28 9a       	B[P5++] = R0;
ffa08d98:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa08d9c:	28 9a       	B[P5++] = R0;
ffa08d9e:	20 e1 42 00 	R0 = 0x42 (X);		/*		R0=0x42( 66) */
ffa08da2:	28 9a       	B[P5++] = R0;
ffa08da4:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa08da8:	28 9a       	B[P5++] = R0;
ffa08daa:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa08dae:	28 9a       	B[P5++] = R0;
ffa08db0:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa08db4:	28 9a       	B[P5++] = R0;
ffa08db6:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa08dba:	28 9a       	B[P5++] = R0;
ffa08dbc:	20 e1 46 00 	R0 = 0x46 (X);		/*		R0=0x46( 70) */
ffa08dc0:	28 9a       	B[P5++] = R0;
ffa08dc2:	20 e1 47 00 	R0 = 0x47 (X);		/*		R0=0x47( 71) */
ffa08dc6:	28 9a       	B[P5++] = R0;
ffa08dc8:	20 e1 48 00 	R0 = 0x48 (X);		/*		R0=0x48( 72) */
ffa08dcc:	28 9a       	B[P5++] = R0;
ffa08dce:	20 e1 42 00 	R0 = 0x42 (X);		/*		R0=0x42( 66) */
ffa08dd2:	28 9a       	B[P5++] = R0;
ffa08dd4:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa08dd8:	28 9a       	B[P5++] = R0;
ffa08dda:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa08dde:	28 9a       	B[P5++] = R0;
ffa08de0:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa08de4:	28 9a       	B[P5++] = R0;
ffa08de6:	98 61       	R0 = 0x33 (X);		/*		R0=0x33( 51) */
ffa08de8:	28 9a       	B[P5++] = R0;
ffa08dea:	a0 61       	R0 = 0x34 (X);		/*		R0=0x34( 52) */
ffa08dec:	28 9a       	B[P5++] = R0;
ffa08dee:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa08df0:	28 9a       	B[P5++] = R0;
ffa08df2:	a0 61       	R0 = 0x34 (X);		/*		R0=0x34( 52) */
ffa08df4:	28 9a       	B[P5++] = R0;
ffa08df6:	20 e1 49 00 	R0 = 0x49 (X);		/*		R0=0x49( 73) */
ffa08dfa:	28 9a       	B[P5++] = R0;
ffa08dfc:	20 e1 4a 00 	R0 = 0x4a (X);		/*		R0=0x4a( 74) */
ffa08e00:	28 9a       	B[P5++] = R0;
ffa08e02:	20 e1 4b 00 	R0 = 0x4b (X);		/*		R0=0x4b( 75) */
ffa08e06:	28 9a       	B[P5++] = R0;
ffa08e08:	c0 61       	R0 = 0x38 (X);		/*		R0=0x38( 56) */
ffa08e0a:	28 9a       	B[P5++] = R0;
ffa08e0c:	d0 61       	R0 = 0x3a (X);		/*		R0=0x3a( 58) */
ffa08e0e:	28 9a       	B[P5++] = R0;
ffa08e10:	d8 61       	R0 = 0x3b (X);		/*		R0=0x3b( 59) */
ffa08e12:	28 9a       	B[P5++] = R0;
ffa08e14:	e0 61       	R0 = 0x3c (X);		/*		R0=0x3c( 60) */
ffa08e16:	28 9a       	B[P5++] = R0;
ffa08e18:	d8 61       	R0 = 0x3b (X);		/*		R0=0x3b( 59) */
ffa08e1a:	28 9a       	B[P5++] = R0;
ffa08e1c:	b8 61       	R0 = 0x37 (X);		/*		R0=0x37( 55) */
ffa08e1e:	28 9a       	B[P5++] = R0;
ffa08e20:	c0 61       	R0 = 0x38 (X);		/*		R0=0x38( 56) */
ffa08e22:	28 9a       	B[P5++] = R0;
ffa08e24:	c8 61       	R0 = 0x39 (X);		/*		R0=0x39( 57) */
ffa08e26:	28 9a       	B[P5++] = R0;
ffa08e28:	20 e1 4c 00 	R0 = 0x4c (X);		/*		R0=0x4c( 76) */
ffa08e2c:	28 9a       	B[P5++] = R0;
ffa08e2e:	20 e1 4d 00 	R0 = 0x4d (X);		/*		R0=0x4d( 77) */
ffa08e32:	28 9a       	B[P5++] = R0;
ffa08e34:	20 e1 4e 00 	R0 = 0x4e (X);		/*		R0=0x4e( 78) */
ffa08e38:	28 9a       	B[P5++] = R0;
ffa08e3a:	20 e1 4f 00 	R0 = 0x4f (X);		/*		R0=0x4f( 79) */
ffa08e3e:	28 9a       	B[P5++] = R0;
ffa08e40:	20 e1 4e 00 	R0 = 0x4e (X);		/*		R0=0x4e( 78) */
ffa08e44:	28 9a       	B[P5++] = R0;
ffa08e46:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa08e4a:	28 9a       	B[P5++] = R0;
ffa08e4c:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa08e50:	28 9a       	B[P5++] = R0;
ffa08e52:	20 e1 52 00 	R0 = 0x52 (X);		/*		R0=0x52( 82) */
ffa08e56:	28 9a       	B[P5++] = R0;
ffa08e58:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa08e5c:	28 9a       	B[P5++] = R0;
ffa08e5e:	20 e1 53 00 	R0 = 0x53 (X);		/*		R0=0x53( 83) */
ffa08e62:	28 9a       	B[P5++] = R0;
ffa08e64:	20 e1 54 00 	R0 = 0x54 (X);		/*		R0=0x54( 84) */
ffa08e68:	28 9a       	B[P5++] = R0;
ffa08e6a:	20 e1 55 00 	R0 = 0x55 (X);		/*		R0=0x55( 85) */
ffa08e6e:	28 9a       	B[P5++] = R0;
ffa08e70:	20 e1 56 00 	R0 = 0x56 (X);		/*		R0=0x56( 86) */
ffa08e74:	28 9a       	B[P5++] = R0;
ffa08e76:	20 e1 57 00 	R0 = 0x57 (X);		/*		R0=0x57( 87) */
ffa08e7a:	28 9a       	B[P5++] = R0;
ffa08e7c:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa08e80:	28 9a       	B[P5++] = R0;
ffa08e82:	20 e1 52 00 	R0 = 0x52 (X);		/*		R0=0x52( 82) */
ffa08e86:	28 9a       	B[P5++] = R0;
ffa08e88:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa08e8c:	28 9a       	B[P5++] = R0;
ffa08e8e:	20 e1 58 00 	R0 = 0x58 (X);		/*		R0=0x58( 88) */
ffa08e92:	28 9a       	B[P5++] = R0;
ffa08e94:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa08e98:	28 9a       	B[P5++] = R0;
ffa08e9a:	20 e1 5a 00 	R0 = 0x5a (X);		/*		R0=0x5a( 90) */
ffa08e9e:	28 9a       	B[P5++] = R0;
ffa08ea0:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa08ea4:	28 9a       	B[P5++] = R0;
ffa08ea6:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa08eaa:	28 9a       	B[P5++] = R0;
ffa08eac:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa08eb0:	28 9a       	B[P5++] = R0;
ffa08eb2:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa08eb6:	28 9a       	B[P5++] = R0;
ffa08eb8:	20 e1 5e 00 	R0 = 0x5e (X);		/*		R0=0x5e( 94) */
ffa08ebc:	28 9a       	B[P5++] = R0;
ffa08ebe:	20 e1 5f 00 	R0 = 0x5f (X);		/*		R0=0x5f( 95) */
ffa08ec2:	28 9a       	B[P5++] = R0;
ffa08ec4:	20 e1 60 00 	R0 = 0x60 (X);		/*		R0=0x60( 96) */
ffa08ec8:	28 9a       	B[P5++] = R0;
ffa08eca:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa08ece:	28 9a       	B[P5++] = R0;
ffa08ed0:	20 e1 60 00 	R0 = 0x60 (X);		/*		R0=0x60( 96) */
ffa08ed4:	28 9a       	B[P5++] = R0;
ffa08ed6:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa08eda:	28 9a       	B[P5++] = R0;
ffa08edc:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa08ee0:	28 9a       	B[P5++] = R0;
ffa08ee2:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa08ee6:	28 9a       	B[P5++] = R0;
ffa08ee8:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa08eec:	28 9a       	B[P5++] = R0;
ffa08eee:	20 e1 62 00 	R0 = 0x62 (X);		/*		R0=0x62( 98) */
ffa08ef2:	28 9a       	B[P5++] = R0;
ffa08ef4:	20 e1 63 00 	R0 = 0x63 (X);		/*		R0=0x63( 99) */
ffa08ef8:	28 9a       	B[P5++] = R0;
ffa08efa:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa08efe:	28 9a       	B[P5++] = R0;
ffa08f00:	20 e1 63 00 	R0 = 0x63 (X);		/*		R0=0x63( 99) */
ffa08f04:	28 9a       	B[P5++] = R0;
ffa08f06:	20 e1 65 00 	R0 = 0x65 (X);		/*		R0=0x65(101) */
ffa08f0a:	28 9a       	B[P5++] = R0;
ffa08f0c:	20 e1 66 00 	R0 = 0x66 (X);		/*		R0=0x66(102) */
ffa08f10:	28 9a       	B[P5++] = R0;
ffa08f12:	20 e1 67 00 	R0 = 0x67 (X);		/*		R0=0x67(103) */
ffa08f16:	28 9a       	B[P5++] = R0;
ffa08f18:	20 e1 66 00 	R0 = 0x66 (X);		/*		R0=0x66(102) */
ffa08f1c:	28 9a       	B[P5++] = R0;
ffa08f1e:	20 e1 68 00 	R0 = 0x68 (X);		/*		R0=0x68(104) */
ffa08f22:	28 9a       	B[P5++] = R0;
ffa08f24:	20 e1 69 00 	R0 = 0x69 (X);		/*		R0=0x69(105) */
ffa08f28:	28 9a       	B[P5++] = R0;
ffa08f2a:	20 e1 6a 00 	R0 = 0x6a (X);		/*		R0=0x6a(106) */
ffa08f2e:	28 9a       	B[P5++] = R0;
ffa08f30:	20 e1 6b 00 	R0 = 0x6b (X);		/*		R0=0x6b(107) */
ffa08f34:	28 9a       	B[P5++] = R0;
ffa08f36:	20 e1 6c 00 	R0 = 0x6c (X);		/*		R0=0x6c(108) */
ffa08f3a:	28 9a       	B[P5++] = R0;
ffa08f3c:	20 e1 6d 00 	R0 = 0x6d (X);		/*		R0=0x6d(109) */
ffa08f40:	28 9a       	B[P5++] = R0;
ffa08f42:	20 e1 67 00 	R0 = 0x67 (X);		/*		R0=0x67(103) */
ffa08f46:	28 9a       	B[P5++] = R0;
ffa08f48:	20 e1 66 00 	R0 = 0x66 (X);		/*		R0=0x66(102) */
ffa08f4c:	28 9a       	B[P5++] = R0;
ffa08f4e:	20 e1 58 00 	R0 = 0x58 (X);		/*		R0=0x58( 88) */
ffa08f52:	28 9a       	B[P5++] = R0;
ffa08f54:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa08f58:	28 9a       	B[P5++] = R0;
ffa08f5a:	20 e1 5a 00 	R0 = 0x5a (X);		/*		R0=0x5a( 90) */
ffa08f5e:	28 9a       	B[P5++] = R0;
ffa08f60:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa08f64:	28 9a       	B[P5++] = R0;
ffa08f66:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa08f6a:	28 9a       	B[P5++] = R0;
ffa08f6c:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa08f70:	28 9a       	B[P5++] = R0;
ffa08f72:	20 e1 6e 00 	R0 = 0x6e (X);		/*		R0=0x6e(110) */
ffa08f76:	28 9a       	B[P5++] = R0;
ffa08f78:	20 e1 6f 00 	R0 = 0x6f (X);		/*		R0=0x6f(111) */
ffa08f7c:	28 9a       	B[P5++] = R0;
ffa08f7e:	20 e1 70 00 	R0 = 0x70 (X);		/*		R0=0x70(112) */
ffa08f82:	28 9a       	B[P5++] = R0;
ffa08f84:	20 e1 60 00 	R0 = 0x60 (X);		/*		R0=0x60( 96) */
ffa08f88:	28 9a       	B[P5++] = R0;
ffa08f8a:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa08f8e:	28 9a       	B[P5++] = R0;
ffa08f90:	20 e1 60 00 	R0 = 0x60 (X);		/*		R0=0x60( 96) */
ffa08f94:	28 9a       	B[P5++] = R0;
ffa08f96:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa08f9a:	28 9a       	B[P5++] = R0;
ffa08f9c:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa08fa0:	28 9a       	B[P5++] = R0;
ffa08fa2:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa08fa6:	28 9a       	B[P5++] = R0;
ffa08fa8:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa08fac:	28 9a       	B[P5++] = R0;
ffa08fae:	20 e1 71 00 	R0 = 0x71 (X);		/*		R0=0x71(113) */
ffa08fb2:	28 9a       	B[P5++] = R0;
ffa08fb4:	20 e1 72 00 	R0 = 0x72 (X);		/*		R0=0x72(114) */
ffa08fb8:	28 9a       	B[P5++] = R0;
ffa08fba:	20 e1 73 00 	R0 = 0x73 (X);		/*		R0=0x73(115) */
ffa08fbe:	28 9a       	B[P5++] = R0;
ffa08fc0:	20 e1 74 00 	R0 = 0x74 (X);		/*		R0=0x74(116) */
ffa08fc4:	28 9a       	B[P5++] = R0;
ffa08fc6:	20 e1 75 00 	R0 = 0x75 (X);		/*		R0=0x75(117) */
ffa08fca:	28 9a       	B[P5++] = R0;
ffa08fcc:	20 e1 76 00 	R0 = 0x76 (X);		/*		R0=0x76(118) */
ffa08fd0:	28 9a       	B[P5++] = R0;
ffa08fd2:	20 e1 77 00 	R0 = 0x77 (X);		/*		R0=0x77(119) */
ffa08fd6:	28 9a       	B[P5++] = R0;
ffa08fd8:	20 e1 76 00 	R0 = 0x76 (X);		/*		R0=0x76(118) */
ffa08fdc:	28 9a       	B[P5++] = R0;
ffa08fde:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa08fe2:	28 9a       	B[P5++] = R0;
ffa08fe4:	20 e1 79 00 	R0 = 0x79 (X);		/*		R0=0x79(121) */
ffa08fe8:	28 9a       	B[P5++] = R0;
ffa08fea:	20 e1 7a 00 	R0 = 0x7a (X);		/*		R0=0x7a(122) */
ffa08fee:	28 9a       	B[P5++] = R0;
ffa08ff0:	20 e1 79 00 	R0 = 0x79 (X);		/*		R0=0x79(121) */
ffa08ff4:	28 9a       	B[P5++] = R0;
ffa08ff6:	20 e1 7b 00 	R0 = 0x7b (X);		/*		R0=0x7b(123) */
ffa08ffa:	28 9a       	B[P5++] = R0;
ffa08ffc:	20 e1 7c 00 	R0 = 0x7c (X);		/*		R0=0x7c(124) */
ffa09000:	28 9a       	B[P5++] = R0;
ffa09002:	20 e1 7d 00 	R0 = 0x7d (X);		/*		R0=0x7d(125) */
ffa09006:	28 9a       	B[P5++] = R0;
ffa09008:	20 e1 76 00 	R0 = 0x76 (X);		/*		R0=0x76(118) */
ffa0900c:	28 9a       	B[P5++] = R0;
ffa0900e:	20 e1 7e 00 	R0 = 0x7e (X);		/*		R0=0x7e(126) */
ffa09012:	28 9a       	B[P5++] = R0;
ffa09014:	20 e1 7f 00 	R0 = 0x7f (X);		/*		R0=0x7f(127) */
ffa09018:	28 9a       	B[P5++] = R0;
ffa0901a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0901c:	28 9a       	B[P5++] = R0;
ffa0901e:	20 e1 7f 00 	R0 = 0x7f (X);		/*		R0=0x7f(127) */
ffa09022:	28 9a       	B[P5++] = R0;
ffa09024:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09026:	28 9a       	B[P5++] = R0;
ffa09028:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0902a:	28 9a       	B[P5++] = R0;
ffa0902c:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0902e:	28 9a       	B[P5++] = R0;
ffa09030:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa09032:	28 9a       	B[P5++] = R0;
ffa09034:	28 60       	R0 = 0x5 (X);		/*		R0=0x5(  5) */
ffa09036:	28 9a       	B[P5++] = R0;
ffa09038:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa0903a:	28 9a       	B[P5++] = R0;
ffa0903c:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0903e:	28 9a       	B[P5++] = R0;
ffa09040:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa09042:	28 9a       	B[P5++] = R0;
ffa09044:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09046:	28 9a       	B[P5++] = R0;
ffa09048:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0904a:	28 9a       	B[P5++] = R0;
ffa0904c:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0904e:	28 9a       	B[P5++] = R0;
ffa09050:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09052:	28 9a       	B[P5++] = R0;
ffa09054:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa09056:	28 9a       	B[P5++] = R0;
ffa09058:	48 60       	R0 = 0x9 (X);		/*		R0=0x9(  9) */
ffa0905a:	28 9a       	B[P5++] = R0;
ffa0905c:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa0905e:	28 9a       	B[P5++] = R0;
ffa09060:	58 60       	R0 = 0xb (X);		/*		R0=0xb( 11) */
ffa09062:	28 9a       	B[P5++] = R0;
ffa09064:	60 60       	R0 = 0xc (X);		/*		R0=0xc( 12) */
ffa09066:	28 9a       	B[P5++] = R0;
ffa09068:	68 60       	R0 = 0xd (X);		/*		R0=0xd( 13) */
ffa0906a:	28 9a       	B[P5++] = R0;
ffa0906c:	70 60       	R0 = 0xe (X);		/*		R0=0xe( 14) */
ffa0906e:	28 9a       	B[P5++] = R0;
ffa09070:	68 60       	R0 = 0xd (X);		/*		R0=0xd( 13) */
ffa09072:	28 9a       	B[P5++] = R0;
ffa09074:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa09076:	28 9a       	B[P5++] = R0;
ffa09078:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa0907a:	28 9a       	B[P5++] = R0;
ffa0907c:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa0907e:	28 9a       	B[P5++] = R0;
ffa09080:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa09082:	28 9a       	B[P5++] = R0;
ffa09084:	60 60       	R0 = 0xc (X);		/*		R0=0xc( 12) */
ffa09086:	28 9a       	B[P5++] = R0;
ffa09088:	90 60       	R0 = 0x12 (X);		/*		R0=0x12( 18) */
ffa0908a:	28 9a       	B[P5++] = R0;
ffa0908c:	98 60       	R0 = 0x13 (X);		/*		R0=0x13( 19) */
ffa0908e:	28 9a       	B[P5++] = R0;
ffa09090:	a0 60       	R0 = 0x14 (X);		/*		R0=0x14( 20) */
ffa09092:	28 9a       	B[P5++] = R0;
ffa09094:	20 e1 7e 00 	R0 = 0x7e (X);		/*		R0=0x7e(126) */
ffa09098:	28 9a       	B[P5++] = R0;
ffa0909a:	20 e1 7f 00 	R0 = 0x7f (X);		/*		R0=0x7f(127) */
ffa0909e:	28 9a       	B[P5++] = R0;
ffa090a0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa090a2:	28 9a       	B[P5++] = R0;
ffa090a4:	20 e1 7f 00 	R0 = 0x7f (X);		/*		R0=0x7f(127) */
ffa090a8:	28 9a       	B[P5++] = R0;
ffa090aa:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa090ac:	28 9a       	B[P5++] = R0;
ffa090ae:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa090b0:	28 9a       	B[P5++] = R0;
ffa090b2:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa090b4:	28 9a       	B[P5++] = R0;
ffa090b6:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa090b8:	28 9a       	B[P5++] = R0;
ffa090ba:	a8 60       	R0 = 0x15 (X);		/*		R0=0x15( 21) */
ffa090bc:	28 9a       	B[P5++] = R0;
ffa090be:	b0 60       	R0 = 0x16 (X);		/*		R0=0x16( 22) */
ffa090c0:	28 9a       	B[P5++] = R0;
ffa090c2:	b8 60       	R0 = 0x17 (X);		/*		R0=0x17( 23) */
ffa090c4:	28 9a       	B[P5++] = R0;
ffa090c6:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa090c8:	28 9a       	B[P5++] = R0;
ffa090ca:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa090cc:	28 9a       	B[P5++] = R0;
ffa090ce:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa090d0:	28 9a       	B[P5++] = R0;
ffa090d2:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa090d4:	28 9a       	B[P5++] = R0;
ffa090d6:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa090d8:	28 9a       	B[P5++] = R0;
ffa090da:	20 e1 4d 00 	R0 = 0x4d (X);		/*		R0=0x4d( 77) */
ffa090de:	28 9a       	B[P5++] = R0;
ffa090e0:	20 e1 4e 00 	R0 = 0x4e (X);		/*		R0=0x4e( 78) */
ffa090e4:	28 9a       	B[P5++] = R0;
ffa090e6:	20 e1 4f 00 	R0 = 0x4f (X);		/*		R0=0x4f( 79) */
ffa090ea:	28 9a       	B[P5++] = R0;
ffa090ec:	c0 60       	R0 = 0x18 (X);		/*		R0=0x18( 24) */
ffa090ee:	28 9a       	B[P5++] = R0;
ffa090f0:	c8 60       	R0 = 0x19 (X);		/*		R0=0x19( 25) */
ffa090f2:	28 9a       	B[P5++] = R0;
ffa090f4:	d0 60       	R0 = 0x1a (X);		/*		R0=0x1a( 26) */
ffa090f6:	28 9a       	B[P5++] = R0;
ffa090f8:	20 e1 52 00 	R0 = 0x52 (X);		/*		R0=0x52( 82) */
ffa090fc:	28 9a       	B[P5++] = R0;
ffa090fe:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa09102:	28 9a       	B[P5++] = R0;
ffa09104:	20 e1 53 00 	R0 = 0x53 (X);		/*		R0=0x53( 83) */
ffa09108:	28 9a       	B[P5++] = R0;
ffa0910a:	20 e1 54 00 	R0 = 0x54 (X);		/*		R0=0x54( 84) */
ffa0910e:	28 9a       	B[P5++] = R0;
ffa09110:	20 e1 55 00 	R0 = 0x55 (X);		/*		R0=0x55( 85) */
ffa09114:	28 9a       	B[P5++] = R0;
ffa09116:	20 e1 54 00 	R0 = 0x54 (X);		/*		R0=0x54( 84) */
ffa0911a:	28 9a       	B[P5++] = R0;
ffa0911c:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa09120:	28 9a       	B[P5++] = R0;
ffa09122:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa09126:	28 9a       	B[P5++] = R0;
ffa09128:	d8 60       	R0 = 0x1b (X);		/*		R0=0x1b( 27) */
ffa0912a:	28 9a       	B[P5++] = R0;
ffa0912c:	e0 60       	R0 = 0x1c (X);		/*		R0=0x1c( 28) */
ffa0912e:	28 9a       	B[P5++] = R0;
ffa09130:	e8 60       	R0 = 0x1d (X);		/*		R0=0x1d( 29) */
ffa09132:	28 9a       	B[P5++] = R0;
ffa09134:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa09138:	28 9a       	B[P5++] = R0;
ffa0913a:	20 e1 5a 00 	R0 = 0x5a (X);		/*		R0=0x5a( 90) */
ffa0913e:	28 9a       	B[P5++] = R0;
ffa09140:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa09144:	28 9a       	B[P5++] = R0;
ffa09146:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa0914a:	28 9a       	B[P5++] = R0;
ffa0914c:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa09150:	28 9a       	B[P5++] = R0;
ffa09152:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa09156:	28 9a       	B[P5++] = R0;
ffa09158:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa0915c:	28 9a       	B[P5++] = R0;
ffa0915e:	20 e1 5f 00 	R0 = 0x5f (X);		/*		R0=0x5f( 95) */
ffa09162:	28 9a       	B[P5++] = R0;
ffa09164:	f0 60       	R0 = 0x1e (X);		/*		R0=0x1e( 30) */
ffa09166:	28 9a       	B[P5++] = R0;
ffa09168:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa0916a:	28 9a       	B[P5++] = R0;
ffa0916c:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa0916e:	28 9a       	B[P5++] = R0;
ffa09170:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa09174:	28 9a       	B[P5++] = R0;
ffa09176:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa0917a:	28 9a       	B[P5++] = R0;
ffa0917c:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa09180:	28 9a       	B[P5++] = R0;
ffa09182:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa09186:	28 9a       	B[P5++] = R0;
ffa09188:	20 e1 62 00 	R0 = 0x62 (X);		/*		R0=0x62( 98) */
ffa0918c:	28 9a       	B[P5++] = R0;
ffa0918e:	20 e1 63 00 	R0 = 0x63 (X);		/*		R0=0x63( 99) */
ffa09192:	28 9a       	B[P5++] = R0;
ffa09194:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa09198:	28 9a       	B[P5++] = R0;
ffa0919a:	20 e1 63 00 	R0 = 0x63 (X);		/*		R0=0x63( 99) */
ffa0919e:	28 9a       	B[P5++] = R0;
ffa091a0:	08 61       	R0 = 0x21 (X);		/*		R0=0x21( 33) */
ffa091a2:	28 9a       	B[P5++] = R0;
ffa091a4:	10 61       	R0 = 0x22 (X);		/*		R0=0x22( 34) */
ffa091a6:	28 9a       	B[P5++] = R0;
ffa091a8:	18 61       	R0 = 0x23 (X);		/*		R0=0x23( 35) */
ffa091aa:	28 9a       	B[P5++] = R0;
ffa091ac:	20 e1 66 00 	R0 = 0x66 (X);		/*		R0=0x66(102) */
ffa091b0:	28 9a       	B[P5++] = R0;
ffa091b2:	20 e1 68 00 	R0 = 0x68 (X);		/*		R0=0x68(104) */
ffa091b6:	28 9a       	B[P5++] = R0;
ffa091b8:	20 e1 69 00 	R0 = 0x69 (X);		/*		R0=0x69(105) */
ffa091bc:	28 9a       	B[P5++] = R0;
ffa091be:	20 e1 6a 00 	R0 = 0x6a (X);		/*		R0=0x6a(106) */
ffa091c2:	28 9a       	B[P5++] = R0;
ffa091c4:	20 e1 69 00 	R0 = 0x69 (X);		/*		R0=0x69(105) */
ffa091c8:	28 9a       	B[P5++] = R0;
ffa091ca:	20 e1 65 00 	R0 = 0x65 (X);		/*		R0=0x65(101) */
ffa091ce:	28 9a       	B[P5++] = R0;
ffa091d0:	20 e1 66 00 	R0 = 0x66 (X);		/*		R0=0x66(102) */
ffa091d4:	28 9a       	B[P5++] = R0;
ffa091d6:	20 e1 67 00 	R0 = 0x67 (X);		/*		R0=0x67(103) */
ffa091da:	28 9a       	B[P5++] = R0;
ffa091dc:	20 61       	R0 = 0x24 (X);		/*		R0=0x24( 36) */
ffa091de:	28 9a       	B[P5++] = R0;
ffa091e0:	28 61       	R0 = 0x25 (X);		/*		R0=0x25( 37) */
ffa091e2:	28 9a       	B[P5++] = R0;
ffa091e4:	30 61       	R0 = 0x26 (X);		/*		R0=0x26( 38) */
ffa091e6:	28 9a       	B[P5++] = R0;
ffa091e8:	20 e1 5a 00 	R0 = 0x5a (X);		/*		R0=0x5a( 90) */
ffa091ec:	28 9a       	B[P5++] = R0;
ffa091ee:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa091f2:	28 9a       	B[P5++] = R0;
ffa091f4:	20 e1 5b 00 	R0 = 0x5b (X);		/*		R0=0x5b( 91) */
ffa091f8:	28 9a       	B[P5++] = R0;
ffa091fa:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa091fe:	28 9a       	B[P5++] = R0;
ffa09200:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa09204:	28 9a       	B[P5++] = R0;
ffa09206:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa0920a:	28 9a       	B[P5++] = R0;
ffa0920c:	20 e1 5f 00 	R0 = 0x5f (X);		/*		R0=0x5f( 95) */
ffa09210:	28 9a       	B[P5++] = R0;
ffa09212:	20 e1 60 00 	R0 = 0x60 (X);		/*		R0=0x60( 96) */
ffa09216:	28 9a       	B[P5++] = R0;
ffa09218:	38 61       	R0 = 0x27 (X);		/*		R0=0x27( 39) */
ffa0921a:	28 9a       	B[P5++] = R0;
ffa0921c:	40 61       	R0 = 0x28 (X);		/*		R0=0x28( 40) */
ffa0921e:	28 9a       	B[P5++] = R0;
ffa09220:	48 61       	R0 = 0x29 (X);		/*		R0=0x29( 41) */
ffa09222:	28 9a       	B[P5++] = R0;
ffa09224:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa09228:	28 9a       	B[P5++] = R0;
ffa0922a:	20 e1 5d 00 	R0 = 0x5d (X);		/*		R0=0x5d( 93) */
ffa0922e:	28 9a       	B[P5++] = R0;
ffa09230:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
ffa09234:	28 9a       	B[P5++] = R0;
ffa09236:	0d e1 00 62 	P5.L = 0x6200;		/* (25088)	P5=0xff806200 */
ffa0923a:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff806200 */
ffa0923e:	00 e1 00 00 	R0.L = 0x0;		/* (  0)	R0=0x0(  0) */
ffa09242:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x0(  0) */
ffa09246:	28 92       	[P5++] = R0;
ffa09248:	00 e1 80 00 	R0.L = 0x80;		/* (128)	R0=0x80(128) */
ffa0924c:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x80(128) */
ffa09250:	28 92       	[P5++] = R0;
ffa09252:	00 e1 00 80 	R0.L = 0x8000;		/* (-32768)	R0=0x8000(32768) */
ffa09256:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x8000(32768) */
ffa0925a:	28 92       	[P5++] = R0;
ffa0925c:	00 e1 80 80 	R0.L = 0x8080;		/* (-32640)	R0=0x8080(32896) */
ffa09260:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x8080(32896) */
ffa09264:	28 92       	[P5++] = R0;
ffa09266:	00 e1 00 00 	R0.L = 0x0;		/* (  0)	R0=0x0(  0) */
ffa0926a:	40 e1 80 00 	R0.H = 0x80;		/* (128)	R0=0x800000(8388608) */
ffa0926e:	28 92       	[P5++] = R0;
ffa09270:	00 e1 80 00 	R0.L = 0x80;		/* (128)	R0=0x800080(8388736) */
ffa09274:	40 e1 80 00 	R0.H = 0x80;		/* (128)	R0=0x800080(8388736) */
ffa09278:	28 92       	[P5++] = R0;
ffa0927a:	00 e1 00 80 	R0.L = 0x8000;		/* (-32768)	R0=0x808000(8421376) */
ffa0927e:	40 e1 80 00 	R0.H = 0x80;		/* (128)	R0=0x808000(8421376) */
ffa09282:	28 92       	[P5++] = R0;
ffa09284:	00 e1 80 80 	R0.L = 0x8080;		/* (-32640)	R0=0x808080(8421504) */
ffa09288:	40 e1 80 00 	R0.H = 0x80;		/* (128)	R0=0x808080(8421504) */
ffa0928c:	28 92       	[P5++] = R0;
ffa0928e:	00 e1 00 00 	R0.L = 0x0;		/* (  0)	R0=0x800000(8388608) */
ffa09292:	40 e1 00 80 	R0.H = 0x8000;		/* (-32768)	R0=0x80000000(-2147483648) */
ffa09296:	28 92       	[P5++] = R0;
ffa09298:	00 e1 80 00 	R0.L = 0x80;		/* (128)	R0=0x80000080(-2147483520) */
ffa0929c:	40 e1 00 80 	R0.H = 0x8000;		/* (-32768)	R0=0x80000080(-2147483520) */
ffa092a0:	28 92       	[P5++] = R0;
ffa092a2:	00 e1 00 80 	R0.L = 0x8000;		/* (-32768)	R0=0x80008000(-2147450880) */
ffa092a6:	40 e1 00 80 	R0.H = 0x8000;		/* (-32768)	R0=0x80008000(-2147450880) */
ffa092aa:	28 92       	[P5++] = R0;
ffa092ac:	00 e1 80 80 	R0.L = 0x8080;		/* (-32640)	R0=0x80008080(-2147450752) */
ffa092b0:	40 e1 00 80 	R0.H = 0x8000;		/* (-32768)	R0=0x80008080(-2147450752) */
ffa092b4:	28 92       	[P5++] = R0;
ffa092b6:	00 e1 00 00 	R0.L = 0x0;		/* (  0)	R0=0x80000000(-2147483648) */
ffa092ba:	40 e1 80 80 	R0.H = 0x8080;		/* (-32640)	R0=0x80800000(-2139095040) */
ffa092be:	28 92       	[P5++] = R0;
ffa092c0:	00 e1 80 00 	R0.L = 0x80;		/* (128)	R0=0x80800080(-2139094912) */
ffa092c4:	40 e1 80 80 	R0.H = 0x8080;		/* (-32640)	R0=0x80800080(-2139094912) */
ffa092c8:	28 92       	[P5++] = R0;
ffa092ca:	00 e1 00 80 	R0.L = 0x8000;		/* (-32768)	R0=0x80808000(-2139062272) */
ffa092ce:	40 e1 80 80 	R0.H = 0x8080;		/* (-32640)	R0=0x80808000(-2139062272) */
ffa092d2:	28 92       	[P5++] = R0;
ffa092d4:	00 e1 80 80 	R0.L = 0x8080;		/* (-32640)	R0=0x80808080(-2139062144) */
ffa092d8:	40 e1 80 80 	R0.H = 0x8080;		/* (-32640)	R0=0x80808080(-2139062144) */
ffa092dc:	28 92       	[P5++] = R0;
ffa092de:	10 00       	RTS;

ffa092e0 <___divsi3>:
ffa092e0:	c8 58       	R3 = R0 ^ R1;
ffa092e2:	07 c4 00 80 	R0 = ABS R0;
ffa092e6:	18 03       	CC = V;
ffa092e8:	82 c6 fb c7 	R3 = ROT R3 BY -0x1;
ffa092ec:	07 c4 08 82 	R1 = ABS R1;
ffa092f0:	88 08       	CC = R0 < R1;
ffa092f2:	76 18       	IF CC JUMP 0xffa093de <___divsi3+0xfe>;
ffa092f4:	82 c6 89 85 	R2 = R1 >> 0xf;
ffa092f8:	0a 02       	CC = R2;
ffa092fa:	1e 18       	IF CC JUMP 0xffa09336 <___divsi3+0x56>;
ffa092fc:	82 c6 81 84 	R2 = R1 << 0x10;
ffa09300:	02 09       	CC = R2 <= R0;
ffa09302:	1a 18       	IF CC JUMP 0xffa09336 <___divsi3+0x56>;
ffa09304:	48 42       	DIVS (R0, R1);
ffa09306:	08 42       	DIVQ (R0, R1);
ffa09308:	08 42       	DIVQ (R0, R1);
ffa0930a:	08 42       	DIVQ (R0, R1);
ffa0930c:	08 42       	DIVQ (R0, R1);
ffa0930e:	08 42       	DIVQ (R0, R1);
ffa09310:	08 42       	DIVQ (R0, R1);
ffa09312:	08 42       	DIVQ (R0, R1);
ffa09314:	08 42       	DIVQ (R0, R1);
ffa09316:	08 42       	DIVQ (R0, R1);
ffa09318:	08 42       	DIVQ (R0, R1);
ffa0931a:	08 42       	DIVQ (R0, R1);
ffa0931c:	08 42       	DIVQ (R0, R1);
ffa0931e:	08 42       	DIVQ (R0, R1);
ffa09320:	08 42       	DIVQ (R0, R1);
ffa09322:	08 42       	DIVQ (R0, R1);
ffa09324:	08 42       	DIVQ (R0, R1);
ffa09326:	c0 42       	R0 = R0.L (Z);
ffa09328:	82 c6 0b 83 	R1 = R3 >> 0x1f;
ffa0932c:	08 50       	R0 = R0 + R1;
ffa0932e:	81 43       	R1 = -R0;
ffa09330:	f3 49       	CC = BITTST (R3, 0x1e);		/* bit 30 */
ffa09332:	01 07       	IF CC R0 = R1;
ffa09334:	10 00       	RTS;
ffa09336:	01 0c       	CC = R1 == 0x0;
ffa09338:	34 18       	IF CC JUMP 0xffa093a0 <___divsi3+0xc0>;
ffa0933a:	00 0c       	CC = R0 == 0x0;
ffa0933c:	3f 18       	IF CC JUMP 0xffa093ba <___divsi3+0xda>;
ffa0933e:	08 08       	CC = R0 == R1;
ffa09340:	30 18       	IF CC JUMP 0xffa093a0 <___divsi3+0xc0>;
ffa09342:	09 0c       	CC = R1 == 0x1;
ffa09344:	2e 18       	IF CC JUMP 0xffa093a0 <___divsi3+0xc0>;
ffa09346:	06 c6 01 c4 	R2.L = ONES R1;
ffa0934a:	d2 42       	R2 = R2.L (Z);
ffa0934c:	0a 0c       	CC = R2 == 0x1;
ffa0934e:	37 18       	IF CC JUMP 0xffa093bc <___divsi3+0xdc>;
ffa09350:	f9 68       	P1 = 0x1f (X);		/*		P1=0x1f( 31) */
ffa09352:	68 05       	[--SP] = (R7:5);
ffa09354:	8a 43       	R2 = -R1;
ffa09356:	42 01       	[--SP] = R2;
ffa09358:	82 c6 08 84 	R2 = R0 << 0x1;
ffa0935c:	88 59       	R6 = R0 ^ R1;
ffa0935e:	82 c6 0e 8b 	R5 = R6 >> 0x1f;
ffa09362:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09364:	aa 56       	R2 = R2 | R5;
ffa09366:	88 59       	R6 = R0 ^ R1;
ffa09368:	a2 e0 12 10 	LSETUP(0xffa0936c <___divsi3+0x8c>, 0xffa0938c <___divsi3+0xac>) LC0 = P1;
ffa0936c:	82 c6 0a 8f 	R7 = R2 >> 0x1f;
ffa09370:	82 c6 0a 84 	R2 = R2 << 0x1;
ffa09374:	82 ce 08 80 	R0 = R0 << 0x1 || R5 = [SP] || NOP;
ffa09378:	35 91 00 00 
ffa0937c:	38 56       	R0 = R0 | R7;
ffa0937e:	86 0c       	CC = R6 < 0x0;
ffa09380:	29 07       	IF CC R5 = R1;
ffa09382:	28 50       	R0 = R0 + R5;
ffa09384:	88 59       	R6 = R0 ^ R1;
ffa09386:	82 c6 0e 8b 	R5 = R6 >> 0x1f;
ffa0938a:	05 4b       	BITTGL (R5, 0x0);		/* bit  0 */
ffa0938c:	aa 50       	R2 = R2 + R5;
ffa0938e:	82 c6 0b 83 	R1 = R3 >> 0x1f;
ffa09392:	8a 50       	R2 = R2 + R1;
ffa09394:	f3 49       	CC = BITTST (R3, 0x1e);		/* bit 30 */
ffa09396:	90 43       	R0 = -R2;
ffa09398:	02 06       	IF !CC R0 = R2;
ffa0939a:	26 6c       	SP += 0x4;		/* (  4) */
ffa0939c:	28 05       	(R7:5) = [SP++];
ffa0939e:	10 00       	RTS;
ffa093a0:	01 0c       	CC = R1 == 0x0;
ffa093a2:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa093a4:	0a 4e       	R2 >>= 0x1;
ffa093a6:	06 18       	IF CC JUMP 0xffa093b2 <___divsi3+0xd2>;
ffa093a8:	08 08       	CC = R0 == R1;
ffa093aa:	82 e1 01 00 	R2 = 0x1 (Z);		/*		R2=0x1(  1) */
ffa093ae:	02 18       	IF CC JUMP 0xffa093b2 <___divsi3+0xd2>;
ffa093b0:	10 30       	R2 = R0;
ffa093b2:	02 30       	R0 = R2;
ffa093b4:	92 43       	R2 = -R2;
ffa093b6:	f3 49       	CC = BITTST (R3, 0x1e);		/* bit 30 */
ffa093b8:	02 07       	IF CC R0 = R2;
ffa093ba:	10 00       	RTS;
ffa093bc:	82 c6 08 85 	R2 = R0 >> 0x1f;
ffa093c0:	81 0c       	CC = R1 < 0x0;
ffa093c2:	f8 1b       	IF CC JUMP 0xffa093b2 <___divsi3+0xd2>;
ffa093c4:	05 c6 01 02 	R1.L = SIGNBITS R1;
ffa093c8:	c9 42       	R1 = R1.L (Z);
ffa093ca:	11 67       	R1 += -0x1e;		/* (-30) */
ffa093cc:	02 c6 08 80 	R0 = SHIFT R0 BY R1.L;
ffa093d0:	82 c6 0b 83 	R1 = R3 >> 0x1f;
ffa093d4:	08 50       	R0 = R0 + R1;
ffa093d6:	82 43       	R2 = -R0;
ffa093d8:	f3 49       	CC = BITTST (R3, 0x1e);		/* bit 30 */
ffa093da:	02 07       	IF CC R0 = R2;
ffa093dc:	10 00       	RTS;
ffa093de:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa093e0:	10 00       	RTS;
	...

ffa093e4 <_exception_report>:
ffa093e4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa093e8:	b8 b0       	[FP + 0x8] = R0;
ffa093ea:	f9 b0       	[FP + 0xc] = R1;
ffa093ec:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc07000(-4165632) */
ffa093f0:	0a e1 00 07 	P2.L = 0x700;		/* (1792)	P2=0xffc00700(-4192512) */
ffa093f4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa093f6:	10 97       	W[P2] = R0;
ffa093f8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00700(-4192512) */
ffa093fc:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa09400:	20 e1 00 01 	R0 = 0x100 (X);		/*		R0=0x100(256) */
ffa09404:	10 97       	W[P2] = R0;
ffa09406:	24 00       	SSYNC;
ffa09408:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa0940c:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa09410:	20 e1 00 01 	R0 = 0x100 (X);		/*		R0=0x100(256) */
ffa09414:	10 97       	W[P2] = R0;
ffa09416:	24 00       	SSYNC;
ffa09418:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa0941a:	d0 bb       	[FP -0xc] = R0;
ffa0941c:	b8 a0       	R0 = [FP + 0x8];
ffa0941e:	e0 bb       	[FP -0x8] = R0;
ffa09420:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09422:	f0 bb       	[FP -0x4] = R0;
ffa09424:	27 20       	JUMP.S 0xffa09472 <_exception_report+0x8e>;
ffa09426:	d0 b9       	R0 = [FP -0xc];
ffa09428:	e1 b9       	R1 = [FP -0x8];
ffa0942a:	08 54       	R0 = R0 & R1;
ffa0942c:	00 0c       	CC = R0 == 0x0;
ffa0942e:	08 18       	IF CC JUMP 0xffa0943e <_exception_report+0x5a>;
ffa09430:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa09434:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa09438:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0943a:	10 97       	W[P2] = R0;
ffa0943c:	07 20       	JUMP.S 0xffa0944a <_exception_report+0x66>;
ffa0943e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa09442:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa09446:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09448:	10 97       	W[P2] = R0;
ffa0944a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0944e:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa09452:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09454:	10 97       	W[P2] = R0;
ffa09456:	24 00       	SSYNC;
ffa09458:	d0 b9       	R0 = [FP -0xc];
ffa0945a:	08 4e       	R0 >>= 0x1;
ffa0945c:	d0 bb       	[FP -0xc] = R0;
ffa0945e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa09462:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa09466:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09468:	10 97       	W[P2] = R0;
ffa0946a:	24 00       	SSYNC;
ffa0946c:	f0 b9       	R0 = [FP -0x4];
ffa0946e:	08 64       	R0 += 0x1;		/* (  1) */
ffa09470:	f0 bb       	[FP -0x4] = R0;
ffa09472:	f0 b9       	R0 = [FP -0x4];
ffa09474:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa09476:	08 09       	CC = R0 <= R1;
ffa09478:	d7 1b       	IF CC JUMP 0xffa09426 <_exception_report+0x42>;
ffa0947a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa0947e:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa09482:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09484:	10 97       	W[P2] = R0;
ffa09486:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09488:	f0 bb       	[FP -0x4] = R0;
ffa0948a:	06 20       	JUMP.S 0xffa09496 <_exception_report+0xb2>;
ffa0948c:	00 00       	NOP;
ffa0948e:	00 00       	NOP;
ffa09490:	f0 b9       	R0 = [FP -0x4];
ffa09492:	08 64       	R0 += 0x1;		/* (  1) */
ffa09494:	f0 bb       	[FP -0x4] = R0;
ffa09496:	f0 b9       	R0 = [FP -0x4];
ffa09498:	e9 60       	R1 = 0x1d (X);		/*		R1=0x1d( 29) */
ffa0949a:	08 09       	CC = R0 <= R1;
ffa0949c:	f8 1b       	IF CC JUMP 0xffa0948c <_exception_report+0xa8>;
ffa0949e:	80 e1 00 80 	R0 = 0x8000 (Z);		/*		R0=0x8000(32768) */
ffa094a2:	d0 bb       	[FP -0xc] = R0;
ffa094a4:	f8 a0       	R0 = [FP + 0xc];
ffa094a6:	e0 bb       	[FP -0x8] = R0;
ffa094a8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa094aa:	f0 bb       	[FP -0x4] = R0;
ffa094ac:	44 20       	JUMP.S 0xffa09534 <_exception_report+0x150>;
ffa094ae:	d0 b9       	R0 = [FP -0xc];
ffa094b0:	e1 b9       	R1 = [FP -0x8];
ffa094b2:	08 54       	R0 = R0 & R1;
ffa094b4:	00 0c       	CC = R0 == 0x0;
ffa094b6:	08 18       	IF CC JUMP 0xffa094c6 <_exception_report+0xe2>;
ffa094b8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa094bc:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa094c0:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa094c2:	10 97       	W[P2] = R0;
ffa094c4:	07 20       	JUMP.S 0xffa094d2 <_exception_report+0xee>;
ffa094c6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa094ca:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa094ce:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa094d0:	10 97       	W[P2] = R0;
ffa094d2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa094d6:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa094da:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa094dc:	10 97       	W[P2] = R0;
ffa094de:	24 00       	SSYNC;
ffa094e0:	d0 b9       	R0 = [FP -0xc];
ffa094e2:	08 4e       	R0 >>= 0x1;
ffa094e4:	d0 bb       	[FP -0xc] = R0;
ffa094e6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa094ea:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa094ee:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa094f0:	10 97       	W[P2] = R0;
ffa094f2:	24 00       	SSYNC;
ffa094f4:	f1 b9       	R1 = [FP -0x4];
ffa094f6:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa094f8:	01 54       	R0 = R1 & R0;
ffa094fa:	18 0c       	CC = R0 == 0x3;
ffa094fc:	19 10       	IF !CC JUMP 0xffa0952e <_exception_report+0x14a>;
	...
ffa0952e:	f0 b9       	R0 = [FP -0x4];
ffa09530:	08 64       	R0 += 0x1;		/* (  1) */
ffa09532:	f0 bb       	[FP -0x4] = R0;
ffa09534:	f0 b9       	R0 = [FP -0x4];
ffa09536:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa09538:	08 09       	CC = R0 <= R1;
ffa0953a:	ba 1b       	IF CC JUMP 0xffa094ae <_exception_report+0xca>;
ffa0953c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa09540:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa09544:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09546:	10 97       	W[P2] = R0;
ffa09548:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0954a:	f0 bb       	[FP -0x4] = R0;
ffa0954c:	06 20       	JUMP.S 0xffa09558 <_exception_report+0x174>;
ffa0954e:	00 00       	NOP;
ffa09550:	00 00       	NOP;
ffa09552:	f0 b9       	R0 = [FP -0x4];
ffa09554:	08 64       	R0 += 0x1;		/* (  1) */
ffa09556:	f0 bb       	[FP -0x4] = R0;
ffa09558:	f0 b9       	R0 = [FP -0x4];
ffa0955a:	21 e1 2b 01 	R1 = 0x12b (X);		/*		R1=0x12b(299) */
ffa0955e:	08 09       	CC = R0 <= R1;
ffa09560:	f7 1b       	IF CC JUMP 0xffa0954e <_exception_report+0x16a>;
ffa09562:	4b 2f       	JUMP.S 0xffa093f8 <_exception_report+0x14>;

ffa09564 <_nmi_report>:
ffa09564:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa09568:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0956a:	f0 bb       	[FP -0x4] = R0;
ffa0956c:	06 20       	JUMP.S 0xffa09578 <_nmi_report+0x14>;
ffa0956e:	00 00       	NOP;
ffa09570:	00 00       	NOP;
ffa09572:	f0 b9       	R0 = [FP -0x4];
ffa09574:	08 64       	R0 += 0x1;		/* (  1) */
ffa09576:	f0 bb       	[FP -0x4] = R0;
ffa09578:	f0 b9       	R0 = [FP -0x4];
ffa0957a:	21 e1 2b 01 	R1 = 0x12b (X);		/*		R1=0x12b(299) */
ffa0957e:	08 09       	CC = R0 <= R1;
ffa09580:	f7 1b       	IF CC JUMP 0xffa0956e <_nmi_report+0xa>;
ffa09582:	01 e8 00 00 	UNLINK;
ffa09586:	10 00       	RTS;

ffa09588 <_main>:
ffa09588:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0958c:	4a e1 e0 ff 	P2.H = 0xffe0;		/* (-32)	P2=0xffe00704(-2095356) */
ffa09590:	0a e1 04 10 	P2.L = 0x1004;		/* (4100)	P2=0xffe01004(-2093052) */
ffa09594:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09596:	10 93       	[P2] = R0;
ffa09598:	23 00       	CSYNC;
ffa0959a:	4a e1 e0 ff 	P2.H = 0xffe0;		/* (-32)	P2=0xffe01004(-2093052) */
ffa0959e:	0a e1 04 00 	P2.L = 0x4;		/* (  4)	P2=0xffe00004(-2097148) */
ffa095a2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa095a4:	10 93       	[P2] = R0;
ffa095a6:	23 00       	CSYNC;
ffa095a8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00004(-4194300) */
ffa095ac:	0a e1 40 07 	P2.L = 0x740;		/* (1856)	P2=0xffc00740(-4192448) */
ffa095b0:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa095b2:	10 97       	W[P2] = R0;
ffa095b4:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc0001f(-4194273) */
ffa095b8:	09 e1 30 07 	P1.L = 0x730;		/* (1840)	P1=0xffc00730(-4192464) */
ffa095bc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00740(-4192448) */
ffa095c0:	0a e1 40 07 	P2.L = 0x740;		/* (1856)	P2=0xffc00740(-4192448) */
ffa095c4:	50 95       	R0 = W[P2] (X);
ffa095c6:	c0 43       	R0 =~ R0;
ffa095c8:	08 97       	W[P1] = R0;
ffa095ca:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00740(-4192448) */
ffa095ce:	0a e1 00 07 	P2.L = 0x700;		/* (1792)	P2=0xffc00700(-4192512) */
ffa095d2:	20 e1 87 01 	R0 = 0x187 (X);		/*		R0=0x187(391) */
ffa095d6:	10 97       	W[P2] = R0;
ffa095d8:	20 e1 7c 00 	R0 = 0x7c (X);		/*		R0=0x7c(124) */
ffa095dc:	00 e3 6a 06 	CALL 0xffa0a2b0 <_radio_init>;
ffa095e0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00700(-4192512) */
ffa095e4:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa095e8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa095ea:	10 97       	W[P2] = R0;
ffa095ec:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa095f0:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa095f4:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa095f8:	10 97       	W[P2] = R0;
ffa095fa:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa095fc:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa09600:	0a 20       	JUMP.S 0xffa09614 <_main+0x8c>;
	...
ffa0960a:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa0960e:	08 64       	R0 += 0x1;		/* (  1) */
ffa09610:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa09614:	78 e4 fe ff 	R0 = W[FP + -0x4] (Z);
ffa09618:	21 e1 e7 03 	R1 = 0x3e7 (X);		/*		R1=0x3e7(999) */
ffa0961c:	08 0a       	CC = R0 <= R1 (IU);
ffa0961e:	f2 1b       	IF CC JUMP 0xffa09602 <_main+0x7a>;
ffa09620:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa09624:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa09628:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa0962c:	10 97       	W[P2] = R0;
ffa0962e:	00 e3 f5 05 	CALL 0xffa0a218 <_radio_set_tx>;
ffa09632:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa09636:	0a e1 28 08 	P2.L = 0x828;		/* (2088)	P2=0xffc00828(-4192216) */
ffa0963a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0963c:	10 97       	W[P2] = R0;
ffa0963e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00828(-4192216) */
ffa09642:	0a e1 2c 08 	P2.L = 0x82c;		/* (2092)	P2=0xffc0082c(-4192212) */
ffa09646:	98 60       	R0 = 0x13 (X);		/*		R0=0x13( 19) */
ffa09648:	10 97       	W[P2] = R0;
ffa0964a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0082c(-4192212) */
ffa0964e:	0a e1 24 08 	P2.L = 0x824;		/* (2084)	P2=0xffc00824(-4192220) */
ffa09652:	20 e1 0f 01 	R0 = 0x10f (X);		/*		R0=0x10f(271) */
ffa09656:	10 97       	W[P2] = R0;
ffa09658:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00824(-4192220) */
ffa0965c:	0a e1 28 09 	P2.L = 0x928;		/* (2344)	P2=0xffc00928(-4191960) */
ffa09660:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09662:	10 97       	W[P2] = R0;
ffa09664:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00928(-4191960) */
ffa09668:	0a e1 2c 09 	P2.L = 0x92c;		/* (2348)	P2=0xffc0092c(-4191956) */
ffa0966c:	98 60       	R0 = 0x13 (X);		/*		R0=0x13( 19) */
ffa0966e:	10 97       	W[P2] = R0;
ffa09670:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0092c(-4191956) */
ffa09674:	0a e1 24 09 	P2.L = 0x924;		/* (2340)	P2=0xffc00924(-4191964) */
ffa09678:	20 e1 0f 01 	R0 = 0x10f (X);		/*		R0=0x10f(271) */
ffa0967c:	10 97       	W[P2] = R0;
ffa0967e:	ff e3 89 f8 	CALL 0xffa08790 <_radio_bidi_asm>;
ffa09682:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09684:	01 e8 00 00 	UNLINK;
ffa09688:	10 00       	RTS;
	...

ffa0968c <_div>:
ffa0968c:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa09690:	b8 b0       	[FP + 0x8] = R0;
ffa09692:	f9 b0       	[FP + 0xc] = R1;
ffa09694:	b8 a0       	R0 = [FP + 0x8];
ffa09696:	08 4f       	R0 <<= 0x1;
ffa09698:	b8 b0       	[FP + 0x8] = R0;
ffa0969a:	b9 a0       	R1 = [FP + 0x8];
ffa0969c:	f8 a0       	R0 = [FP + 0xc];
ffa0969e:	11 30       	R2 = R1;
ffa096a0:	18 30       	R3 = R0;
ffa096a2:	5a 42       	DIVS (R2, R3);
ffa096a4:	0b 30       	R1 = R3;
ffa096a6:	02 30       	R0 = R2;
ffa096a8:	b8 b0       	[FP + 0x8] = R0;
ffa096aa:	f9 b0       	[FP + 0xc] = R1;
ffa096ac:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa096ae:	f0 bb       	[FP -0x4] = R0;
ffa096b0:	0d 20       	JUMP.S 0xffa096ca <_div+0x3e>;
ffa096b2:	b9 a0       	R1 = [FP + 0x8];
ffa096b4:	f8 a0       	R0 = [FP + 0xc];
ffa096b6:	11 30       	R2 = R1;
ffa096b8:	18 30       	R3 = R0;
ffa096ba:	1a 42       	DIVQ (R2, R3);
ffa096bc:	0b 30       	R1 = R3;
ffa096be:	02 30       	R0 = R2;
ffa096c0:	b8 b0       	[FP + 0x8] = R0;
ffa096c2:	f9 b0       	[FP + 0xc] = R1;
ffa096c4:	f0 b9       	R0 = [FP -0x4];
ffa096c6:	08 64       	R0 += 0x1;		/* (  1) */
ffa096c8:	f0 bb       	[FP -0x4] = R0;
ffa096ca:	f0 b9       	R0 = [FP -0x4];
ffa096cc:	71 60       	R1 = 0xe (X);		/*		R1=0xe( 14) */
ffa096ce:	08 09       	CC = R0 <= R1;
ffa096d0:	f1 1b       	IF CC JUMP 0xffa096b2 <_div+0x26>;
ffa096d2:	b8 a0       	R0 = [FP + 0x8];
ffa096d4:	80 42       	R0 = R0.L (X);
ffa096d6:	b8 b0       	[FP + 0x8] = R0;
ffa096d8:	b8 a0       	R0 = [FP + 0x8];
ffa096da:	01 e8 00 00 	UNLINK;
ffa096de:	10 00       	RTS;

ffa096e0 <_mod>:
ffa096e0:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa096e4:	b8 b0       	[FP + 0x8] = R0;
ffa096e6:	f9 b0       	[FP + 0xc] = R1;
ffa096e8:	f9 a0       	R1 = [FP + 0xc];
ffa096ea:	b8 a0       	R0 = [FP + 0x8];
ffa096ec:	ff e3 d0 ff 	CALL 0xffa0968c <_div>;
ffa096f0:	f0 bb       	[FP -0x4] = R0;
ffa096f2:	f1 b9       	R1 = [FP -0x4];
ffa096f4:	f8 a0       	R0 = [FP + 0xc];
ffa096f6:	c1 40       	R1 *= R0;
ffa096f8:	b8 a0       	R0 = [FP + 0x8];
ffa096fa:	08 52       	R0 = R0 - R1;
ffa096fc:	01 e8 00 00 	UNLINK;
ffa09700:	10 00       	RTS;
	...

ffa09704 <_memcpy_>:
ffa09704:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa09708:	b8 b0       	[FP + 0x8] = R0;
ffa0970a:	f9 b0       	[FP + 0xc] = R1;
ffa0970c:	3a b1       	[FP + 0x10] = R2;
ffa0970e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09710:	f0 bb       	[FP -0x4] = R0;
ffa09712:	0e 20       	JUMP.S 0xffa0972e <_memcpy_+0x2a>;
ffa09714:	ba ac       	P2 = [FP + 0x8];
ffa09716:	50 99       	R0 = B[P2] (X);
ffa09718:	fa ac       	P2 = [FP + 0xc];
ffa0971a:	10 9b       	B[P2] = R0;
ffa0971c:	f8 a0       	R0 = [FP + 0xc];
ffa0971e:	08 64       	R0 += 0x1;		/* (  1) */
ffa09720:	f8 b0       	[FP + 0xc] = R0;
ffa09722:	b8 a0       	R0 = [FP + 0x8];
ffa09724:	08 64       	R0 += 0x1;		/* (  1) */
ffa09726:	b8 b0       	[FP + 0x8] = R0;
ffa09728:	f0 b9       	R0 = [FP -0x4];
ffa0972a:	08 64       	R0 += 0x1;		/* (  1) */
ffa0972c:	f0 bb       	[FP -0x4] = R0;
ffa0972e:	f1 b9       	R1 = [FP -0x4];
ffa09730:	38 a1       	R0 = [FP + 0x10];
ffa09732:	81 08       	CC = R1 < R0;
ffa09734:	f0 1b       	IF CC JUMP 0xffa09714 <_memcpy_+0x10>;
ffa09736:	01 e8 00 00 	UNLINK;
ffa0973a:	10 00       	RTS;

ffa0973c <_memset_>:
ffa0973c:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa09740:	b8 b0       	[FP + 0x8] = R0;
ffa09742:	3a b1       	[FP + 0x10] = R2;
ffa09744:	01 30       	R0 = R1;
ffa09746:	b8 e6 0c 00 	B[FP + 0xc] = R0;
ffa0974a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0974c:	f0 bb       	[FP -0x4] = R0;
ffa0974e:	0b 20       	JUMP.S 0xffa09764 <_memset_+0x28>;
ffa09750:	ba ac       	P2 = [FP + 0x8];
ffa09752:	b8 e5 0c 00 	R0 = B[FP + 0xc] (X);
ffa09756:	10 9b       	B[P2] = R0;
ffa09758:	b8 a0       	R0 = [FP + 0x8];
ffa0975a:	08 64       	R0 += 0x1;		/* (  1) */
ffa0975c:	b8 b0       	[FP + 0x8] = R0;
ffa0975e:	f0 b9       	R0 = [FP -0x4];
ffa09760:	08 64       	R0 += 0x1;		/* (  1) */
ffa09762:	f0 bb       	[FP -0x4] = R0;
ffa09764:	f1 b9       	R1 = [FP -0x4];
ffa09766:	38 a1       	R0 = [FP + 0x10];
ffa09768:	81 08       	CC = R1 < R0;
ffa0976a:	f3 1b       	IF CC JUMP 0xffa09750 <_memset_+0x14>;
ffa0976c:	01 e8 00 00 	UNLINK;
ffa09770:	10 00       	RTS;
	...

ffa09774 <_strlen_>:
ffa09774:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa09778:	b8 b0       	[FP + 0x8] = R0;
ffa0977a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0977c:	f0 bb       	[FP -0x4] = R0;
ffa0977e:	10 20       	JUMP.S 0xffa0979e <_strlen_+0x2a>;
ffa09780:	f0 b9       	R0 = [FP -0x4];
ffa09782:	08 30       	R1 = R0;
ffa09784:	b8 a0       	R0 = [FP + 0x8];
ffa09786:	41 50       	R1 = R1 + R0;
ffa09788:	11 32       	P2 = R1;
ffa0978a:	50 99       	R0 = B[P2] (X);
ffa0978c:	00 43       	R0 = R0.B (X);
ffa0978e:	00 0c       	CC = R0 == 0x0;
ffa09790:	04 10       	IF !CC JUMP 0xffa09798 <_strlen_+0x24>;
ffa09792:	f0 b9       	R0 = [FP -0x4];
ffa09794:	e0 bb       	[FP -0x8] = R0;
ffa09796:	0b 20       	JUMP.S 0xffa097ac <_strlen_+0x38>;
ffa09798:	f0 b9       	R0 = [FP -0x4];
ffa0979a:	08 64       	R0 += 0x1;		/* (  1) */
ffa0979c:	f0 bb       	[FP -0x4] = R0;
ffa0979e:	f0 b9       	R0 = [FP -0x4];
ffa097a0:	21 e1 ff 04 	R1 = 0x4ff (X);		/*		R1=0x4ff(1279) */
ffa097a4:	08 09       	CC = R0 <= R1;
ffa097a6:	ed 1b       	IF CC JUMP 0xffa09780 <_strlen_+0xc>;
ffa097a8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa097aa:	e0 bb       	[FP -0x8] = R0;
ffa097ac:	e0 b9       	R0 = [FP -0x8];
ffa097ae:	01 e8 00 00 	UNLINK;
ffa097b2:	10 00       	RTS;

ffa097b4 <_strcpy_>:
ffa097b4:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa097b8:	b8 b0       	[FP + 0x8] = R0;
ffa097ba:	f9 b0       	[FP + 0xc] = R1;
ffa097bc:	3a b1       	[FP + 0x10] = R2;
ffa097be:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa097c0:	f0 bb       	[FP -0x4] = R0;
ffa097c2:	0e 20       	JUMP.S 0xffa097de <_strcpy_+0x2a>;
ffa097c4:	3a ad       	P2 = [FP + 0x10];
ffa097c6:	50 99       	R0 = B[P2] (X);
ffa097c8:	ba ac       	P2 = [FP + 0x8];
ffa097ca:	10 9b       	B[P2] = R0;
ffa097cc:	b8 a0       	R0 = [FP + 0x8];
ffa097ce:	08 64       	R0 += 0x1;		/* (  1) */
ffa097d0:	b8 b0       	[FP + 0x8] = R0;
ffa097d2:	38 a1       	R0 = [FP + 0x10];
ffa097d4:	08 64       	R0 += 0x1;		/* (  1) */
ffa097d6:	38 b1       	[FP + 0x10] = R0;
ffa097d8:	f0 b9       	R0 = [FP -0x4];
ffa097da:	08 64       	R0 += 0x1;		/* (  1) */
ffa097dc:	f0 bb       	[FP -0x4] = R0;
ffa097de:	3a ad       	P2 = [FP + 0x10];
ffa097e0:	50 99       	R0 = B[P2] (X);
ffa097e2:	00 43       	R0 = R0.B (X);
ffa097e4:	00 0c       	CC = R0 == 0x0;
ffa097e6:	08 18       	IF CC JUMP 0xffa097f6 <_strcpy_+0x42>;
ffa097e8:	f0 b9       	R0 = [FP -0x4];
ffa097ea:	21 e1 ff 04 	R1 = 0x4ff (X);		/*		R1=0x4ff(1279) */
ffa097ee:	08 09       	CC = R0 <= R1;
ffa097f0:	ea 1b       	IF CC JUMP 0xffa097c4 <_strcpy_+0x10>;
ffa097f2:	00 00       	NOP;
ffa097f4:	00 00       	NOP;
ffa097f6:	fa ac       	P2 = [FP + 0xc];
ffa097f8:	11 91       	R1 = [P2];
ffa097fa:	f0 b9       	R0 = [FP -0x4];
ffa097fc:	01 50       	R0 = R1 + R0;
ffa097fe:	fa ac       	P2 = [FP + 0xc];
ffa09800:	10 93       	[P2] = R0;
ffa09802:	b8 a0       	R0 = [FP + 0x8];
ffa09804:	01 e8 00 00 	UNLINK;
ffa09808:	10 00       	RTS;
	...

ffa0980c <_strprepend>:
ffa0980c:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa09810:	b8 b0       	[FP + 0x8] = R0;
ffa09812:	f9 b0       	[FP + 0xc] = R1;
ffa09814:	3a b1       	[FP + 0x10] = R2;
ffa09816:	38 a1       	R0 = [FP + 0x10];
ffa09818:	ff e3 ae ff 	CALL 0xffa09774 <_strlen_>;
ffa0981c:	d0 bb       	[FP -0xc] = R0;
ffa0981e:	fa ac       	P2 = [FP + 0xc];
ffa09820:	10 91       	R0 = [P2];
ffa09822:	08 30       	R1 = R0;
ffa09824:	b8 a0       	R0 = [FP + 0x8];
ffa09826:	08 52       	R0 = R0 - R1;
ffa09828:	e0 bb       	[FP -0x8] = R0;
ffa0982a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0982c:	f0 bb       	[FP -0x4] = R0;
ffa0982e:	0e 20       	JUMP.S 0xffa0984a <_strprepend+0x3e>;
ffa09830:	3a ad       	P2 = [FP + 0x10];
ffa09832:	50 99       	R0 = B[P2] (X);
ffa09834:	ea b9       	P2 = [FP -0x8];
ffa09836:	10 9b       	B[P2] = R0;
ffa09838:	e0 b9       	R0 = [FP -0x8];
ffa0983a:	08 64       	R0 += 0x1;		/* (  1) */
ffa0983c:	e0 bb       	[FP -0x8] = R0;
ffa0983e:	38 a1       	R0 = [FP + 0x10];
ffa09840:	08 64       	R0 += 0x1;		/* (  1) */
ffa09842:	38 b1       	[FP + 0x10] = R0;
ffa09844:	f0 b9       	R0 = [FP -0x4];
ffa09846:	08 64       	R0 += 0x1;		/* (  1) */
ffa09848:	f0 bb       	[FP -0x4] = R0;
ffa0984a:	f1 b9       	R1 = [FP -0x4];
ffa0984c:	d0 b9       	R0 = [FP -0xc];
ffa0984e:	81 08       	CC = R1 < R0;
ffa09850:	f0 1b       	IF CC JUMP 0xffa09830 <_strprepend+0x24>;
ffa09852:	00 00       	NOP;
ffa09854:	00 00       	NOP;
ffa09856:	fa ac       	P2 = [FP + 0xc];
ffa09858:	10 91       	R0 = [P2];
ffa0985a:	08 30       	R1 = R0;
ffa0985c:	b8 a0       	R0 = [FP + 0x8];
ffa0985e:	08 52       	R0 = R0 - R1;
ffa09860:	01 e8 00 00 	UNLINK;
ffa09864:	10 00       	RTS;
	...

ffa09868 <_strcmp>:
ffa09868:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa0986c:	b8 b0       	[FP + 0x8] = R0;
ffa0986e:	f9 b0       	[FP + 0xc] = R1;
ffa09870:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09872:	f0 bb       	[FP -0x4] = R0;
ffa09874:	1a 20       	JUMP.S 0xffa098a8 <_strcmp+0x40>;
ffa09876:	ba ac       	P2 = [FP + 0x8];
ffa09878:	51 99       	R1 = B[P2] (X);
ffa0987a:	fa ac       	P2 = [FP + 0xc];
ffa0987c:	50 99       	R0 = B[P2] (X);
ffa0987e:	09 43       	R1 = R1.B (X);
ffa09880:	00 43       	R0 = R0.B (X);
ffa09882:	01 08       	CC = R1 == R0;
ffa09884:	18 02       	CC = !CC;
ffa09886:	00 02       	R0 = CC;
ffa09888:	08 30       	R1 = R0;
ffa0988a:	b8 a0       	R0 = [FP + 0x8];
ffa0988c:	08 64       	R0 += 0x1;		/* (  1) */
ffa0988e:	b8 b0       	[FP + 0x8] = R0;
ffa09890:	f8 a0       	R0 = [FP + 0xc];
ffa09892:	08 64       	R0 += 0x1;		/* (  1) */
ffa09894:	f8 b0       	[FP + 0xc] = R0;
ffa09896:	48 43       	R0 = R1.B (Z);
ffa09898:	00 0c       	CC = R0 == 0x0;
ffa0989a:	04 18       	IF CC JUMP 0xffa098a2 <_strcmp+0x3a>;
ffa0989c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0989e:	e0 bb       	[FP -0x8] = R0;
ffa098a0:	17 20       	JUMP.S 0xffa098ce <_strcmp+0x66>;
ffa098a2:	f0 b9       	R0 = [FP -0x4];
ffa098a4:	08 64       	R0 += 0x1;		/* (  1) */
ffa098a6:	f0 bb       	[FP -0x4] = R0;
ffa098a8:	ba ac       	P2 = [FP + 0x8];
ffa098aa:	50 99       	R0 = B[P2] (X);
ffa098ac:	00 43       	R0 = R0.B (X);
ffa098ae:	00 0c       	CC = R0 == 0x0;
ffa098b0:	0d 18       	IF CC JUMP 0xffa098ca <_strcmp+0x62>;
ffa098b2:	00 00       	NOP;
ffa098b4:	00 00       	NOP;
ffa098b6:	fa ac       	P2 = [FP + 0xc];
ffa098b8:	50 99       	R0 = B[P2] (X);
ffa098ba:	00 43       	R0 = R0.B (X);
ffa098bc:	00 0c       	CC = R0 == 0x0;
ffa098be:	06 18       	IF CC JUMP 0xffa098ca <_strcmp+0x62>;
ffa098c0:	f0 b9       	R0 = [FP -0x4];
ffa098c2:	21 e1 ff 04 	R1 = 0x4ff (X);		/*		R1=0x4ff(1279) */
ffa098c6:	08 09       	CC = R0 <= R1;
ffa098c8:	d7 1b       	IF CC JUMP 0xffa09876 <_strcmp+0xe>;
ffa098ca:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa098cc:	e0 bb       	[FP -0x8] = R0;
ffa098ce:	e0 b9       	R0 = [FP -0x8];
ffa098d0:	01 e8 00 00 	UNLINK;
ffa098d4:	10 00       	RTS;
	...

ffa098d8 <_substr>:
ffa098d8:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa098dc:	b8 b0       	[FP + 0x8] = R0;
ffa098de:	f9 b0       	[FP + 0xc] = R1;
ffa098e0:	3a b1       	[FP + 0x10] = R2;
ffa098e2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa098e4:	e0 bb       	[FP -0x8] = R0;
ffa098e6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa098e8:	f0 bb       	[FP -0x4] = R0;
ffa098ea:	39 20       	JUMP.S 0xffa0995c <_substr+0x84>;
ffa098ec:	ba ac       	P2 = [FP + 0x8];
ffa098ee:	51 99       	R1 = B[P2] (X);
ffa098f0:	fa ac       	P2 = [FP + 0xc];
ffa098f2:	50 99       	R0 = B[P2] (X);
ffa098f4:	09 43       	R1 = R1.B (X);
ffa098f6:	00 43       	R0 = R0.B (X);
ffa098f8:	01 08       	CC = R1 == R0;
ffa098fa:	2b 10       	IF !CC JUMP 0xffa09950 <_substr+0x78>;
ffa098fc:	b8 a0       	R0 = [FP + 0x8];
ffa098fe:	08 64       	R0 += 0x1;		/* (  1) */
ffa09900:	c0 bb       	[FP -0x10] = R0;
ffa09902:	f8 a0       	R0 = [FP + 0xc];
ffa09904:	08 64       	R0 += 0x1;		/* (  1) */
ffa09906:	d0 bb       	[FP -0xc] = R0;
ffa09908:	e0 b9       	R0 = [FP -0x8];
ffa0990a:	08 64       	R0 += 0x1;		/* (  1) */
ffa0990c:	f0 bb       	[FP -0x4] = R0;
ffa0990e:	12 20       	JUMP.S 0xffa09932 <_substr+0x5a>;
ffa09910:	c0 b9       	R0 = [FP -0x10];
ffa09912:	08 64       	R0 += 0x1;		/* (  1) */
ffa09914:	c0 bb       	[FP -0x10] = R0;
ffa09916:	d0 b9       	R0 = [FP -0xc];
ffa09918:	08 64       	R0 += 0x1;		/* (  1) */
ffa0991a:	d0 bb       	[FP -0xc] = R0;
ffa0991c:	f0 b9       	R0 = [FP -0x4];
ffa0991e:	08 64       	R0 += 0x1;		/* (  1) */
ffa09920:	f0 bb       	[FP -0x4] = R0;
ffa09922:	ca b9       	P2 = [FP -0x10];
ffa09924:	50 99       	R0 = B[P2] (X);
ffa09926:	00 43       	R0 = R0.B (X);
ffa09928:	00 0c       	CC = R0 == 0x0;
ffa0992a:	04 10       	IF !CC JUMP 0xffa09932 <_substr+0x5a>;
ffa0992c:	f0 b9       	R0 = [FP -0x4];
ffa0992e:	b0 bb       	[FP -0x14] = R0;
ffa09930:	28 20       	JUMP.S 0xffa09980 <_substr+0xa8>;
ffa09932:	ca b9       	P2 = [FP -0x10];
ffa09934:	51 99       	R1 = B[P2] (X);
ffa09936:	da b9       	P2 = [FP -0xc];
ffa09938:	50 99       	R0 = B[P2] (X);
ffa0993a:	09 43       	R1 = R1.B (X);
ffa0993c:	00 43       	R0 = R0.B (X);
ffa0993e:	01 08       	CC = R1 == R0;
ffa09940:	08 10       	IF !CC JUMP 0xffa09950 <_substr+0x78>;
ffa09942:	00 00       	NOP;
ffa09944:	00 00       	NOP;
ffa09946:	da b9       	P2 = [FP -0xc];
ffa09948:	50 99       	R0 = B[P2] (X);
ffa0994a:	00 43       	R0 = R0.B (X);
ffa0994c:	00 0c       	CC = R0 == 0x0;
ffa0994e:	e1 13       	IF !CC JUMP 0xffa09910 <_substr+0x38>;
ffa09950:	f8 a0       	R0 = [FP + 0xc];
ffa09952:	08 64       	R0 += 0x1;		/* (  1) */
ffa09954:	f8 b0       	[FP + 0xc] = R0;
ffa09956:	e0 b9       	R0 = [FP -0x8];
ffa09958:	08 64       	R0 += 0x1;		/* (  1) */
ffa0995a:	e0 bb       	[FP -0x8] = R0;
ffa0995c:	ba ac       	P2 = [FP + 0x8];
ffa0995e:	50 99       	R0 = B[P2] (X);
ffa09960:	00 43       	R0 = R0.B (X);
ffa09962:	00 0c       	CC = R0 == 0x0;
ffa09964:	0c 18       	IF CC JUMP 0xffa0997c <_substr+0xa4>;
ffa09966:	00 00       	NOP;
ffa09968:	00 00       	NOP;
ffa0996a:	fa ac       	P2 = [FP + 0xc];
ffa0996c:	50 99       	R0 = B[P2] (X);
ffa0996e:	00 43       	R0 = R0.B (X);
ffa09970:	00 0c       	CC = R0 == 0x0;
ffa09972:	05 18       	IF CC JUMP 0xffa0997c <_substr+0xa4>;
ffa09974:	e1 b9       	R1 = [FP -0x8];
ffa09976:	38 a1       	R0 = [FP + 0x10];
ffa09978:	81 08       	CC = R1 < R0;
ffa0997a:	b9 1b       	IF CC JUMP 0xffa098ec <_substr+0x14>;
ffa0997c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0997e:	b0 bb       	[FP -0x14] = R0;
ffa09980:	b0 b9       	R0 = [FP -0x14];
ffa09982:	01 e8 00 00 	UNLINK;
ffa09986:	10 00       	RTS;

ffa09988 <_sprintf_int>:
ffa09988:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0998c:	b8 b0       	[FP + 0x8] = R0;
ffa0998e:	f9 b0       	[FP + 0xc] = R1;
ffa09990:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09992:	c0 bb       	[FP -0x10] = R0;
ffa09994:	f8 a0       	R0 = [FP + 0xc];
ffa09996:	00 0c       	CC = R0 == 0x0;
ffa09998:	0b 10       	IF !CC JUMP 0xffa099ae <_sprintf_int+0x26>;
ffa0999a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900924 */
ffa0999e:	0a e1 80 70 	P2.L = 0x7080;		/* (28800)	P2=0xff907080 <_printf_temp> */
ffa099a2:	52 91       	P2 = [P2];
ffa099a4:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa099a6:	10 9b       	B[P2] = R0;
ffa099a8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa099aa:	c0 bb       	[FP -0x10] = R0;
ffa099ac:	90 20       	JUMP.S 0xffa09acc <_sprintf_int+0x144>;
ffa099ae:	f8 a0       	R0 = [FP + 0xc];
ffa099b0:	00 0d       	CC = R0 <= 0x0;
ffa099b2:	3c 18       	IF CC JUMP 0xffa09a2a <_sprintf_int+0xa2>;
ffa099b4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa099b6:	c0 bb       	[FP -0x10] = R0;
ffa099b8:	31 20       	JUMP.S 0xffa09a1a <_sprintf_int+0x92>;
ffa099ba:	f9 a0       	R1 = [FP + 0xc];
ffa099bc:	40 e1 66 66 	R0.H = 0x6666;		/* (26214)	R0=0x66660000(1717960704) */
ffa099c0:	00 e1 67 66 	R0.L = 0x6667;		/* (26215)	R0=0x66666667(1717986919) */
ffa099c4:	80 c0 08 18 	A1 = R1.L * R0.L (FU);
ffa099c8:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa099cc:	11 c1 08 86 	A1 += R1.H * R0.L (M), A0 = R1.H * R0.H (IS);
ffa099d0:	11 c1 01 98 	A1 += R0.H * R1.L (M, IS);
ffa099d4:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa099d8:	0b c4 00 00 	R0 = (A0 += A1);
ffa099dc:	82 c6 f0 05 	R2 = R0 >>> 0x2;
ffa099e0:	82 c6 09 01 	R0 = R1 >>> 0x1f;
ffa099e4:	02 52       	R0 = R2 - R0;
ffa099e6:	f0 bb       	[FP -0x4] = R0;
ffa099e8:	f1 b9       	R1 = [FP -0x4];
ffa099ea:	01 30       	R0 = R1;
ffa099ec:	10 4f       	R0 <<= 0x2;
ffa099ee:	08 50       	R0 = R0 + R1;
ffa099f0:	08 4f       	R0 <<= 0x1;
ffa099f2:	08 30       	R1 = R0;
ffa099f4:	f8 a0       	R0 = [FP + 0xc];
ffa099f6:	08 52       	R0 = R0 - R1;
ffa099f8:	d0 bb       	[FP -0xc] = R0;
ffa099fa:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff907080 <_printf_temp> */
ffa099fe:	0a e1 80 70 	P2.L = 0x7080;		/* (28800)	P2=0xff907080 <_printf_temp> */
ffa09a02:	11 91       	R1 = [P2];
ffa09a04:	c0 b9       	R0 = [FP -0x10];
ffa09a06:	41 50       	R1 = R1 + R0;
ffa09a08:	11 32       	P2 = R1;
ffa09a0a:	d0 b9       	R0 = [FP -0xc];
ffa09a0c:	80 65       	R0 += 0x30;		/* ( 48) */
ffa09a0e:	10 9b       	B[P2] = R0;
ffa09a10:	c0 b9       	R0 = [FP -0x10];
ffa09a12:	08 64       	R0 += 0x1;		/* (  1) */
ffa09a14:	c0 bb       	[FP -0x10] = R0;
ffa09a16:	f0 b9       	R0 = [FP -0x4];
ffa09a18:	f8 b0       	[FP + 0xc] = R0;
ffa09a1a:	f8 a0       	R0 = [FP + 0xc];
ffa09a1c:	00 0d       	CC = R0 <= 0x0;
ffa09a1e:	57 18       	IF CC JUMP 0xffa09acc <_sprintf_int+0x144>;
ffa09a20:	c0 b9       	R0 = [FP -0x10];
ffa09a22:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa09a24:	08 09       	CC = R0 <= R1;
ffa09a26:	ca 1b       	IF CC JUMP 0xffa099ba <_sprintf_int+0x32>;
ffa09a28:	52 20       	JUMP.S 0xffa09acc <_sprintf_int+0x144>;
ffa09a2a:	f8 a0       	R0 = [FP + 0xc];
ffa09a2c:	80 0c       	CC = R0 < 0x0;
ffa09a2e:	4f 10       	IF !CC JUMP 0xffa09acc <_sprintf_int+0x144>;
ffa09a30:	f8 a0       	R0 = [FP + 0xc];
ffa09a32:	08 30       	R1 = R0;
ffa09a34:	f9 4c       	BITCLR (R1, 0x1f);		/* bit 31 */
ffa09a36:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa09a38:	f8 4f       	R0 <<= 0x1f;
ffa09a3a:	08 52       	R0 = R0 - R1;
ffa09a3c:	f8 b0       	[FP + 0xc] = R0;
ffa09a3e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09a40:	c0 bb       	[FP -0x10] = R0;
ffa09a42:	31 20       	JUMP.S 0xffa09aa4 <_sprintf_int+0x11c>;
ffa09a44:	f9 a0       	R1 = [FP + 0xc];
ffa09a46:	40 e1 66 66 	R0.H = 0x6666;		/* (26214)	R0=0x66660000(1717960704) */
ffa09a4a:	00 e1 67 66 	R0.L = 0x6667;		/* (26215)	R0=0x66666667(1717986919) */
ffa09a4e:	80 c0 08 18 	A1 = R1.L * R0.L (FU);
ffa09a52:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa09a56:	11 c1 08 86 	A1 += R1.H * R0.L (M), A0 = R1.H * R0.H (IS);
ffa09a5a:	11 c1 01 98 	A1 += R0.H * R1.L (M, IS);
ffa09a5e:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa09a62:	0b c4 00 00 	R0 = (A0 += A1);
ffa09a66:	82 c6 f0 05 	R2 = R0 >>> 0x2;
ffa09a6a:	82 c6 09 01 	R0 = R1 >>> 0x1f;
ffa09a6e:	02 52       	R0 = R2 - R0;
ffa09a70:	f0 bb       	[FP -0x4] = R0;
ffa09a72:	f1 b9       	R1 = [FP -0x4];
ffa09a74:	01 30       	R0 = R1;
ffa09a76:	10 4f       	R0 <<= 0x2;
ffa09a78:	08 50       	R0 = R0 + R1;
ffa09a7a:	08 4f       	R0 <<= 0x1;
ffa09a7c:	08 30       	R1 = R0;
ffa09a7e:	f8 a0       	R0 = [FP + 0xc];
ffa09a80:	08 52       	R0 = R0 - R1;
ffa09a82:	d0 bb       	[FP -0xc] = R0;
ffa09a84:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff907080 <_printf_temp> */
ffa09a88:	0a e1 80 70 	P2.L = 0x7080;		/* (28800)	P2=0xff907080 <_printf_temp> */
ffa09a8c:	11 91       	R1 = [P2];
ffa09a8e:	c0 b9       	R0 = [FP -0x10];
ffa09a90:	41 50       	R1 = R1 + R0;
ffa09a92:	11 32       	P2 = R1;
ffa09a94:	d0 b9       	R0 = [FP -0xc];
ffa09a96:	80 65       	R0 += 0x30;		/* ( 48) */
ffa09a98:	10 9b       	B[P2] = R0;
ffa09a9a:	c0 b9       	R0 = [FP -0x10];
ffa09a9c:	08 64       	R0 += 0x1;		/* (  1) */
ffa09a9e:	c0 bb       	[FP -0x10] = R0;
ffa09aa0:	f0 b9       	R0 = [FP -0x4];
ffa09aa2:	f8 b0       	[FP + 0xc] = R0;
ffa09aa4:	f8 a0       	R0 = [FP + 0xc];
ffa09aa6:	00 0d       	CC = R0 <= 0x0;
ffa09aa8:	05 18       	IF CC JUMP 0xffa09ab2 <_sprintf_int+0x12a>;
ffa09aaa:	c0 b9       	R0 = [FP -0x10];
ffa09aac:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa09aae:	08 09       	CC = R0 <= R1;
ffa09ab0:	ca 1b       	IF CC JUMP 0xffa09a44 <_sprintf_int+0xbc>;
ffa09ab2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff907080 <_printf_temp> */
ffa09ab6:	0a e1 80 70 	P2.L = 0x7080;		/* (28800)	P2=0xff907080 <_printf_temp> */
ffa09aba:	11 91       	R1 = [P2];
ffa09abc:	c0 b9       	R0 = [FP -0x10];
ffa09abe:	41 50       	R1 = R1 + R0;
ffa09ac0:	11 32       	P2 = R1;
ffa09ac2:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa09ac4:	10 9b       	B[P2] = R0;
ffa09ac6:	c0 b9       	R0 = [FP -0x10];
ffa09ac8:	08 64       	R0 += 0x1;		/* (  1) */
ffa09aca:	c0 bb       	[FP -0x10] = R0;
ffa09acc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09ace:	e0 bb       	[FP -0x8] = R0;
ffa09ad0:	16 20       	JUMP.S 0xffa09afc <_sprintf_int+0x174>;
ffa09ad2:	e0 b9       	R0 = [FP -0x8];
ffa09ad4:	08 30       	R1 = R0;
ffa09ad6:	b8 a0       	R0 = [FP + 0x8];
ffa09ad8:	41 50       	R1 = R1 + R0;
ffa09ada:	09 32       	P1 = R1;
ffa09adc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff907080 <_printf_temp> */
ffa09ae0:	0a e1 80 70 	P2.L = 0x7080;		/* (28800)	P2=0xff907080 <_printf_temp> */
ffa09ae4:	12 91       	R2 = [P2];
ffa09ae6:	c1 b9       	R1 = [FP -0x10];
ffa09ae8:	e0 b9       	R0 = [FP -0x8];
ffa09aea:	01 52       	R0 = R1 - R0;
ffa09aec:	02 50       	R0 = R2 + R0;
ffa09aee:	10 32       	P2 = R0;
ffa09af0:	fa 6f       	P2 += -0x1;		/* ( -1) */
ffa09af2:	50 99       	R0 = B[P2] (X);
ffa09af4:	08 9b       	B[P1] = R0;
ffa09af6:	e0 b9       	R0 = [FP -0x8];
ffa09af8:	08 64       	R0 += 0x1;		/* (  1) */
ffa09afa:	e0 bb       	[FP -0x8] = R0;
ffa09afc:	e1 b9       	R1 = [FP -0x8];
ffa09afe:	c0 b9       	R0 = [FP -0x10];
ffa09b00:	81 08       	CC = R1 < R0;
ffa09b02:	e8 1b       	IF CC JUMP 0xffa09ad2 <_sprintf_int+0x14a>;
ffa09b04:	c0 b9       	R0 = [FP -0x10];
ffa09b06:	01 e8 00 00 	UNLINK;
ffa09b0a:	10 00       	RTS;

ffa09b0c <_sprintf_hex>:
ffa09b0c:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa09b10:	b8 b0       	[FP + 0x8] = R0;
ffa09b12:	f9 b0       	[FP + 0xc] = R1;
ffa09b14:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09b16:	d0 bb       	[FP -0xc] = R0;
ffa09b18:	d0 b9       	R0 = [FP -0xc];
ffa09b1a:	08 30       	R1 = R0;
ffa09b1c:	b8 a0       	R0 = [FP + 0x8];
ffa09b1e:	41 50       	R1 = R1 + R0;
ffa09b20:	11 32       	P2 = R1;
ffa09b22:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa09b24:	10 9b       	B[P2] = R0;
ffa09b26:	d0 b9       	R0 = [FP -0xc];
ffa09b28:	08 64       	R0 += 0x1;		/* (  1) */
ffa09b2a:	d0 bb       	[FP -0xc] = R0;
ffa09b2c:	d0 b9       	R0 = [FP -0xc];
ffa09b2e:	08 30       	R1 = R0;
ffa09b30:	b8 a0       	R0 = [FP + 0x8];
ffa09b32:	41 50       	R1 = R1 + R0;
ffa09b34:	11 32       	P2 = R1;
ffa09b36:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa09b3a:	10 9b       	B[P2] = R0;
ffa09b3c:	d0 b9       	R0 = [FP -0xc];
ffa09b3e:	08 64       	R0 += 0x1;		/* (  1) */
ffa09b40:	d0 bb       	[FP -0xc] = R0;
ffa09b42:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09b44:	c0 bb       	[FP -0x10] = R0;
ffa09b46:	2c 20       	JUMP.S 0xffa09b9e <_sprintf_hex+0x92>;
ffa09b48:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa09b4a:	c0 b9       	R0 = [FP -0x10];
ffa09b4c:	01 52       	R0 = R1 - R0;
ffa09b4e:	82 c6 10 82 	R1 = R0 << 0x2;
ffa09b52:	f8 a0       	R0 = [FP + 0xc];
ffa09b54:	08 40       	R0 >>>= R1;
ffa09b56:	e0 bb       	[FP -0x8] = R0;
ffa09b58:	e0 b9       	R0 = [FP -0x8];
ffa09b5a:	08 30       	R1 = R0;
ffa09b5c:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa09b5e:	01 54       	R0 = R1 & R0;
ffa09b60:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa09b64:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa09b68:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa09b6a:	08 09       	CC = R0 <= R1;
ffa09b6c:	07 18       	IF CC JUMP 0xffa09b7a <_sprintf_hex+0x6e>;
ffa09b6e:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa09b72:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa09b74:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa09b78:	06 20       	JUMP.S 0xffa09b84 <_sprintf_hex+0x78>;
ffa09b7a:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa09b7e:	80 65       	R0 += 0x30;		/* ( 48) */
ffa09b80:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa09b84:	d1 b9       	R1 = [FP -0xc];
ffa09b86:	c0 b9       	R0 = [FP -0x10];
ffa09b88:	01 50       	R0 = R1 + R0;
ffa09b8a:	08 30       	R1 = R0;
ffa09b8c:	b8 a0       	R0 = [FP + 0x8];
ffa09b8e:	41 50       	R1 = R1 + R0;
ffa09b90:	11 32       	P2 = R1;
ffa09b92:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa09b96:	10 9b       	B[P2] = R0;
ffa09b98:	c0 b9       	R0 = [FP -0x10];
ffa09b9a:	08 64       	R0 += 0x1;		/* (  1) */
ffa09b9c:	c0 bb       	[FP -0x10] = R0;
ffa09b9e:	c0 b9       	R0 = [FP -0x10];
ffa09ba0:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa09ba2:	08 09       	CC = R0 <= R1;
ffa09ba4:	d2 1b       	IF CC JUMP 0xffa09b48 <_sprintf_hex+0x3c>;
ffa09ba6:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa09ba8:	01 e8 00 00 	UNLINK;
ffa09bac:	10 00       	RTS;
	...

ffa09bb0 <_strprintf_int>:
ffa09bb0:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa09bb4:	b8 b0       	[FP + 0x8] = R0;
ffa09bb6:	f9 b0       	[FP + 0xc] = R1;
ffa09bb8:	3a b1       	[FP + 0x10] = R2;
ffa09bba:	39 a1       	R1 = [FP + 0x10];
ffa09bbc:	b8 a0       	R0 = [FP + 0x8];
ffa09bbe:	ff e3 e5 fe 	CALL 0xffa09988 <_sprintf_int>;
ffa09bc2:	f0 bb       	[FP -0x4] = R0;
ffa09bc4:	fa ac       	P2 = [FP + 0xc];
ffa09bc6:	11 91       	R1 = [P2];
ffa09bc8:	f0 b9       	R0 = [FP -0x4];
ffa09bca:	01 50       	R0 = R1 + R0;
ffa09bcc:	fa ac       	P2 = [FP + 0xc];
ffa09bce:	10 93       	[P2] = R0;
ffa09bd0:	f0 b9       	R0 = [FP -0x4];
ffa09bd2:	08 30       	R1 = R0;
ffa09bd4:	b8 a0       	R0 = [FP + 0x8];
ffa09bd6:	08 50       	R0 = R0 + R1;
ffa09bd8:	b8 b0       	[FP + 0x8] = R0;
ffa09bda:	b8 a0       	R0 = [FP + 0x8];
ffa09bdc:	01 e8 00 00 	UNLINK;
ffa09be0:	10 00       	RTS;
	...

ffa09be4 <_strprintf_hex>:
ffa09be4:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa09be8:	b8 b0       	[FP + 0x8] = R0;
ffa09bea:	f9 b0       	[FP + 0xc] = R1;
ffa09bec:	3a b1       	[FP + 0x10] = R2;
ffa09bee:	39 a1       	R1 = [FP + 0x10];
ffa09bf0:	b8 a0       	R0 = [FP + 0x8];
ffa09bf2:	ff e3 8d ff 	CALL 0xffa09b0c <_sprintf_hex>;
ffa09bf6:	f0 bb       	[FP -0x4] = R0;
ffa09bf8:	fa ac       	P2 = [FP + 0xc];
ffa09bfa:	11 91       	R1 = [P2];
ffa09bfc:	f0 b9       	R0 = [FP -0x4];
ffa09bfe:	01 50       	R0 = R1 + R0;
ffa09c00:	fa ac       	P2 = [FP + 0xc];
ffa09c02:	10 93       	[P2] = R0;
ffa09c04:	f0 b9       	R0 = [FP -0x4];
ffa09c06:	08 30       	R1 = R0;
ffa09c08:	b8 a0       	R0 = [FP + 0x8];
ffa09c0a:	08 50       	R0 = R0 + R1;
ffa09c0c:	b8 b0       	[FP + 0x8] = R0;
ffa09c0e:	b8 a0       	R0 = [FP + 0x8];
ffa09c10:	01 e8 00 00 	UNLINK;
ffa09c14:	10 00       	RTS;
	...

ffa09c18 <_atoi>:
ffa09c18:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa09c1c:	b8 b0       	[FP + 0x8] = R0;
ffa09c1e:	f9 b0       	[FP + 0xc] = R1;
ffa09c20:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09c22:	d0 bb       	[FP -0xc] = R0;
ffa09c24:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09c26:	e0 bb       	[FP -0x8] = R0;
ffa09c28:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09c2a:	f0 bb       	[FP -0x4] = R0;
ffa09c2c:	ba ac       	P2 = [FP + 0x8];
ffa09c2e:	50 99       	R0 = B[P2] (X);
ffa09c30:	00 43       	R0 = R0.B (X);
ffa09c32:	69 61       	R1 = 0x2d (X);		/*		R1=0x2d( 45) */
ffa09c34:	08 08       	CC = R0 == R1;
ffa09c36:	2c 10       	IF !CC JUMP 0xffa09c8e <_atoi+0x76>;
ffa09c38:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa09c3a:	f0 bb       	[FP -0x4] = R0;
ffa09c3c:	b8 a0       	R0 = [FP + 0x8];
ffa09c3e:	08 64       	R0 += 0x1;		/* (  1) */
ffa09c40:	b8 b0       	[FP + 0x8] = R0;
ffa09c42:	d0 b9       	R0 = [FP -0xc];
ffa09c44:	08 64       	R0 += 0x1;		/* (  1) */
ffa09c46:	d0 bb       	[FP -0xc] = R0;
ffa09c48:	23 20       	JUMP.S 0xffa09c8e <_atoi+0x76>;
ffa09c4a:	ba ac       	P2 = [FP + 0x8];
ffa09c4c:	50 99       	R0 = B[P2] (X);
ffa09c4e:	01 43       	R1 = R0.B (X);
ffa09c50:	e0 b9       	R0 = [FP -0x8];
ffa09c52:	01 50       	R0 = R1 + R0;
ffa09c54:	80 66       	R0 += -0x30;		/* (-48) */
ffa09c56:	e0 bb       	[FP -0x8] = R0;
ffa09c58:	b8 a0       	R0 = [FP + 0x8];
ffa09c5a:	08 64       	R0 += 0x1;		/* (  1) */
ffa09c5c:	b8 b0       	[FP + 0x8] = R0;
ffa09c5e:	d0 b9       	R0 = [FP -0xc];
ffa09c60:	08 64       	R0 += 0x1;		/* (  1) */
ffa09c62:	d0 bb       	[FP -0xc] = R0;
ffa09c64:	ba ac       	P2 = [FP + 0x8];
ffa09c66:	50 99       	R0 = B[P2] (X);
ffa09c68:	00 43       	R0 = R0.B (X);
ffa09c6a:	79 61       	R1 = 0x2f (X);		/*		R1=0x2f( 47) */
ffa09c6c:	08 09       	CC = R0 <= R1;
ffa09c6e:	10 18       	IF CC JUMP 0xffa09c8e <_atoi+0x76>;
ffa09c70:	00 00       	NOP;
ffa09c72:	00 00       	NOP;
ffa09c74:	ba ac       	P2 = [FP + 0x8];
ffa09c76:	50 99       	R0 = B[P2] (X);
ffa09c78:	00 43       	R0 = R0.B (X);
ffa09c7a:	c9 61       	R1 = 0x39 (X);		/*		R1=0x39( 57) */
ffa09c7c:	08 09       	CC = R0 <= R1;
ffa09c7e:	08 10       	IF !CC JUMP 0xffa09c8e <_atoi+0x76>;
ffa09c80:	e0 b9       	R0 = [FP -0x8];
ffa09c82:	08 30       	R1 = R0;
ffa09c84:	11 4f       	R1 <<= 0x2;
ffa09c86:	41 50       	R1 = R1 + R0;
ffa09c88:	82 c6 09 80 	R0 = R1 << 0x1;
ffa09c8c:	e0 bb       	[FP -0x8] = R0;
ffa09c8e:	ba ac       	P2 = [FP + 0x8];
ffa09c90:	50 99       	R0 = B[P2] (X);
ffa09c92:	00 43       	R0 = R0.B (X);
ffa09c94:	79 61       	R1 = 0x2f (X);		/*		R1=0x2f( 47) */
ffa09c96:	08 09       	CC = R0 <= R1;
ffa09c98:	0d 18       	IF CC JUMP 0xffa09cb2 <_atoi+0x9a>;
ffa09c9a:	00 00       	NOP;
ffa09c9c:	00 00       	NOP;
ffa09c9e:	ba ac       	P2 = [FP + 0x8];
ffa09ca0:	50 99       	R0 = B[P2] (X);
ffa09ca2:	00 43       	R0 = R0.B (X);
ffa09ca4:	c9 61       	R1 = 0x39 (X);		/*		R1=0x39( 57) */
ffa09ca6:	08 09       	CC = R0 <= R1;
ffa09ca8:	05 10       	IF !CC JUMP 0xffa09cb2 <_atoi+0x9a>;
ffa09caa:	d1 b9       	R1 = [FP -0xc];
ffa09cac:	f8 a0       	R0 = [FP + 0xc];
ffa09cae:	81 08       	CC = R1 < R0;
ffa09cb0:	cd 1b       	IF CC JUMP 0xffa09c4a <_atoi+0x32>;
ffa09cb2:	e1 b9       	R1 = [FP -0x8];
ffa09cb4:	f0 b9       	R0 = [FP -0x4];
ffa09cb6:	c8 40       	R0 *= R1;
ffa09cb8:	01 e8 00 00 	UNLINK;
ffa09cbc:	10 00       	RTS;
	...

ffa09cc0 <_udelay>:
ffa09cc0:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa09cc4:	b8 b0       	[FP + 0x8] = R0;
ffa09cc6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09cc8:	e0 bb       	[FP -0x8] = R0;
ffa09cca:	10 20       	JUMP.S 0xffa09cea <_udelay+0x2a>;
ffa09ccc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09cce:	f0 bb       	[FP -0x4] = R0;
ffa09cd0:	05 20       	JUMP.S 0xffa09cda <_udelay+0x1a>;
ffa09cd2:	00 00       	NOP;
ffa09cd4:	f0 b9       	R0 = [FP -0x4];
ffa09cd6:	08 64       	R0 += 0x1;		/* (  1) */
ffa09cd8:	f0 bb       	[FP -0x4] = R0;
ffa09cda:	f0 b9       	R0 = [FP -0x4];
ffa09cdc:	21 e1 9f 00 	R1 = 0x9f (X);		/*		R1=0x9f(159) */
ffa09ce0:	08 09       	CC = R0 <= R1;
ffa09ce2:	f8 1b       	IF CC JUMP 0xffa09cd2 <_udelay+0x12>;
ffa09ce4:	e0 b9       	R0 = [FP -0x8];
ffa09ce6:	08 64       	R0 += 0x1;		/* (  1) */
ffa09ce8:	e0 bb       	[FP -0x8] = R0;
ffa09cea:	e1 b9       	R1 = [FP -0x8];
ffa09cec:	b8 a0       	R0 = [FP + 0x8];
ffa09cee:	81 08       	CC = R1 < R0;
ffa09cf0:	ee 1b       	IF CC JUMP 0xffa09ccc <_udelay+0xc>;
ffa09cf2:	01 e8 00 00 	UNLINK;
ffa09cf6:	10 00       	RTS;

ffa09cf8 <_spi_delay>:
ffa09cf8:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa09cfc:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa09cfe:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa09d02:	08 20       	JUMP.S 0xffa09d12 <_spi_delay+0x1a>;
ffa09d04:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc07080(-4165504) */
ffa09d08:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa09d0c:	50 95       	R0 = W[P2] (X);
ffa09d0e:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa09d12:	78 e4 fe ff 	R0 = W[FP + -0x4] (Z);
ffa09d16:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa09d18:	08 54       	R0 = R0 & R1;
ffa09d1a:	00 0c       	CC = R0 == 0x0;
ffa09d1c:	f4 13       	IF !CC JUMP 0xffa09d04 <_spi_delay+0xc>;
ffa09d1e:	08 20       	JUMP.S 0xffa09d2e <_spi_delay+0x36>;
ffa09d20:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa09d24:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa09d28:	50 95       	R0 = W[P2] (X);
ffa09d2a:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa09d2e:	78 e4 fe ff 	R0 = W[FP + -0x4] (Z);
ffa09d32:	00 49       	CC = BITTST (R0, 0x0);		/* bit  0 */
ffa09d34:	00 02       	R0 = CC;
ffa09d36:	00 0c       	CC = R0 == 0x0;
ffa09d38:	f4 1b       	IF CC JUMP 0xffa09d20 <_spi_delay+0x28>;
ffa09d3a:	01 e8 00 00 	UNLINK;
ffa09d3e:	10 00       	RTS;

ffa09d40 <_spi_write_register>:
ffa09d40:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa09d44:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa09d48:	01 30       	R0 = R1;
ffa09d4a:	b8 e6 0c 00 	B[FP + 0xc] = R0;
ffa09d4e:	b8 e5 08 00 	R0 = B[FP + 0x8] (X);
ffa09d52:	28 4a       	BITSET (R0, 0x5);		/* bit  5 */
ffa09d54:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa09d58:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa09d5c:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa09d60:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09d62:	10 97       	W[P2] = R0;
ffa09d64:	24 00       	SSYNC;
ffa09d66:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa09d6a:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa09d6e:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa09d72:	10 97       	W[P2] = R0;
ffa09d74:	ff e3 c2 ff 	CALL 0xffa09cf8 <_spi_delay>;
ffa09d78:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa09d7c:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa09d80:	50 95       	R0 = W[P2] (X);
ffa09d82:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa09d86:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa09d8a:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa09d8e:	b8 e4 0c 00 	R0 = B[FP + 0xc] (Z);
ffa09d92:	10 97       	W[P2] = R0;
ffa09d94:	ff e3 b2 ff 	CALL 0xffa09cf8 <_spi_delay>;
ffa09d98:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa09d9c:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa09da0:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09da2:	10 97       	W[P2] = R0;
ffa09da4:	24 00       	SSYNC;
ffa09da6:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa09daa:	01 e8 00 00 	UNLINK;
ffa09dae:	10 00       	RTS;

ffa09db0 <_spi_write_register_ver>:
ffa09db0:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa09db4:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa09db8:	01 30       	R0 = R1;
ffa09dba:	b8 e6 0c 00 	B[FP + 0xc] = R0;
ffa09dbe:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa09dc2:	b9 e4 0c 00 	R1 = B[FP + 0xc] (Z);
ffa09dc6:	ff e3 bd ff 	CALL 0xffa09d40 <_spi_write_register>;
ffa09dca:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa09dce:	00 e3 09 00 	CALL 0xffa09de0 <_spi_read_register>;
ffa09dd2:	b8 e6 ff ff 	B[FP + -0x1] = R0;
ffa09dd6:	b8 e4 ff ff 	R0 = B[FP + -0x1] (Z);
ffa09dda:	01 e8 00 00 	UNLINK;
ffa09dde:	10 00       	RTS;

ffa09de0 <_spi_read_register>:
ffa09de0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa09de4:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa09de8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa09dec:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa09df0:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09df2:	10 97       	W[P2] = R0;
ffa09df4:	24 00       	SSYNC;
ffa09df6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa09dfa:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa09dfe:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa09e02:	10 97       	W[P2] = R0;
ffa09e04:	ff e3 7a ff 	CALL 0xffa09cf8 <_spi_delay>;
ffa09e08:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa09e0c:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa09e10:	50 95       	R0 = W[P2] (X);
ffa09e12:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa09e16:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa09e1a:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa09e1e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09e20:	10 97       	W[P2] = R0;
ffa09e22:	ff e3 6b ff 	CALL 0xffa09cf8 <_spi_delay>;
ffa09e26:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa09e2a:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa09e2e:	50 95       	R0 = W[P2] (X);
ffa09e30:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa09e34:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa09e38:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa09e3c:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09e3e:	10 97       	W[P2] = R0;
ffa09e40:	24 00       	SSYNC;
ffa09e42:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa09e46:	01 e8 00 00 	UNLINK;
ffa09e4a:	10 00       	RTS;

ffa09e4c <_spi_read_register_status>:
ffa09e4c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa09e50:	f9 b0       	[FP + 0xc] = R1;
ffa09e52:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa09e56:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa09e5a:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa09e5e:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09e60:	10 97       	W[P2] = R0;
ffa09e62:	24 00       	SSYNC;
ffa09e64:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa09e68:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa09e6c:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa09e70:	10 97       	W[P2] = R0;
ffa09e72:	ff e3 43 ff 	CALL 0xffa09cf8 <_spi_delay>;
ffa09e76:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa09e7a:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa09e7e:	50 95       	R0 = W[P2] (X);
ffa09e80:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa09e84:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa09e88:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa09e8c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09e8e:	10 97       	W[P2] = R0;
ffa09e90:	ff e3 34 ff 	CALL 0xffa09cf8 <_spi_delay>;
ffa09e94:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa09e98:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa09e9c:	50 95       	R0 = W[P2] (X);
ffa09e9e:	fa ac       	P2 = [FP + 0xc];
ffa09ea0:	10 9b       	B[P2] = R0;
ffa09ea2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa09ea6:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa09eaa:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09eac:	10 97       	W[P2] = R0;
ffa09eae:	24 00       	SSYNC;
ffa09eb0:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa09eb4:	01 e8 00 00 	UNLINK;
ffa09eb8:	10 00       	RTS;
	...

ffa09ebc <_spi_write_byte>:
ffa09ebc:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa09ec0:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa09ec4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa09ec8:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa09ecc:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09ece:	10 97       	W[P2] = R0;
ffa09ed0:	24 00       	SSYNC;
ffa09ed2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa09ed6:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa09eda:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa09ede:	10 97       	W[P2] = R0;
ffa09ee0:	ff e3 0c ff 	CALL 0xffa09cf8 <_spi_delay>;
ffa09ee4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa09ee8:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa09eec:	50 95       	R0 = W[P2] (X);
ffa09eee:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa09ef2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa09ef6:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa09efa:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09efc:	10 97       	W[P2] = R0;
ffa09efe:	24 00       	SSYNC;
ffa09f00:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa09f04:	01 e8 00 00 	UNLINK;
ffa09f08:	10 00       	RTS;
	...

ffa09f0c <_spi_write_packet>:
ffa09f0c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa09f10:	b8 b0       	[FP + 0x8] = R0;
ffa09f12:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa09f16:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa09f1a:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09f1c:	10 97       	W[P2] = R0;
ffa09f1e:	24 00       	SSYNC;
ffa09f20:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa09f24:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa09f28:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa09f2c:	10 97       	W[P2] = R0;
ffa09f2e:	ff e3 e5 fe 	CALL 0xffa09cf8 <_spi_delay>;
ffa09f32:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa09f36:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa09f3a:	20 e1 07 50 	R0 = 0x5007 (X);		/*		R0=0x5007(20487) */
ffa09f3e:	10 97       	W[P2] = R0;
ffa09f40:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa09f44:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xffc00d50(-4190896) */
ffa09f48:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa09f4a:	10 97       	W[P2] = R0;
ffa09f4c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d50(-4190896) */
ffa09f50:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xffc00d54(-4190892) */
ffa09f54:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa09f56:	10 97       	W[P2] = R0;
ffa09f58:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d54(-4190892) */
ffa09f5c:	0a e1 44 0d 	P2.L = 0xd44;		/* (3396)	P2=0xffc00d44(-4190908) */
ffa09f60:	b8 a0       	R0 = [FP + 0x8];
ffa09f62:	10 93       	[P2] = R0;
ffa09f64:	24 00       	SSYNC;
ffa09f66:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d44(-4190908) */
ffa09f6a:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa09f6e:	20 e1 81 00 	R0 = 0x81 (X);		/*		R0=0x81(129) */
ffa09f72:	10 97       	W[P2] = R0;
ffa09f74:	01 20       	JUMP.S 0xffa09f76 <_spi_write_packet+0x6a>;
	...
ffa09f7e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa09f82:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa09f86:	50 95       	R0 = W[P2] (X);
ffa09f88:	c0 42       	R0 = R0.L (Z);
ffa09f8a:	00 49       	CC = BITTST (R0, 0x0);		/* bit  0 */
ffa09f8c:	00 02       	R0 = CC;
ffa09f8e:	00 0c       	CC = R0 == 0x0;
ffa09f90:	f3 1b       	IF CC JUMP 0xffa09f76 <_spi_write_packet+0x6a>;
ffa09f92:	00 00       	NOP;
ffa09f94:	00 00       	NOP;
ffa09f96:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa09f9a:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa09f9e:	50 95       	R0 = W[P2] (X);
ffa09fa0:	c1 42       	R1 = R0.L (Z);
ffa09fa2:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa09fa4:	01 54       	R0 = R1 & R0;
ffa09fa6:	00 0c       	CC = R0 == 0x0;
ffa09fa8:	e7 13       	IF !CC JUMP 0xffa09f76 <_spi_write_packet+0x6a>;
ffa09faa:	00 00       	NOP;
ffa09fac:	00 00       	NOP;
ffa09fae:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa09fb2:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa09fb6:	50 95       	R0 = W[P2] (X);
ffa09fb8:	c1 42       	R1 = R0.L (Z);
ffa09fba:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa09fbc:	01 54       	R0 = R1 & R0;
ffa09fbe:	00 0c       	CC = R0 == 0x0;
ffa09fc0:	db 13       	IF !CC JUMP 0xffa09f76 <_spi_write_packet+0x6a>;
ffa09fc2:	ff e3 9b fe 	CALL 0xffa09cf8 <_spi_delay>;
ffa09fc6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa09fca:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa09fce:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa09fd0:	10 97       	W[P2] = R0;
ffa09fd2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa09fd6:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa09fda:	20 e1 0d 50 	R0 = 0x500d (X);		/*		R0=0x500d(20493) */
ffa09fde:	10 97       	W[P2] = R0;
ffa09fe0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa09fe4:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa09fe8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa09fea:	10 97       	W[P2] = R0;
ffa09fec:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa09ff0:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa09ff4:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa09ff6:	10 97       	W[P2] = R0;
ffa09ff8:	24 00       	SSYNC;
ffa09ffa:	01 e8 00 00 	UNLINK;
ffa09ffe:	10 00       	RTS;

ffa0a000 <_spi_write_packet_noDMA>:
ffa0a000:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa0a004:	b8 b0       	[FP + 0x8] = R0;
ffa0a006:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a00a:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a00e:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a010:	10 97       	W[P2] = R0;
ffa0a012:	24 00       	SSYNC;
ffa0a014:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a018:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a01c:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa0a020:	10 97       	W[P2] = R0;
ffa0a022:	ff e3 6b fe 	CALL 0xffa09cf8 <_spi_delay>;
ffa0a026:	b8 a0       	R0 = [FP + 0x8];
ffa0a028:	f0 bb       	[FP -0x4] = R0;
ffa0a02a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a02c:	e0 bb       	[FP -0x8] = R0;
ffa0a02e:	11 20       	JUMP.S 0xffa0a050 <_spi_write_packet_noDMA+0x50>;
ffa0a030:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00730(-4192464) */
ffa0a034:	09 e1 0c 05 	P1.L = 0x50c;		/* (1292)	P1=0xffc0050c(-4193012) */
ffa0a038:	fa b9       	P2 = [FP -0x4];
ffa0a03a:	50 99       	R0 = B[P2] (X);
ffa0a03c:	00 43       	R0 = R0.B (X);
ffa0a03e:	08 97       	W[P1] = R0;
ffa0a040:	f0 b9       	R0 = [FP -0x4];
ffa0a042:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a044:	f0 bb       	[FP -0x4] = R0;
ffa0a046:	ff e3 59 fe 	CALL 0xffa09cf8 <_spi_delay>;
ffa0a04a:	e0 b9       	R0 = [FP -0x8];
ffa0a04c:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a04e:	e0 bb       	[FP -0x8] = R0;
ffa0a050:	e0 b9       	R0 = [FP -0x8];
ffa0a052:	f9 60       	R1 = 0x1f (X);		/*		R1=0x1f( 31) */
ffa0a054:	08 09       	CC = R0 <= R1;
ffa0a056:	ed 1b       	IF CC JUMP 0xffa0a030 <_spi_write_packet_noDMA+0x30>;
ffa0a058:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a05c:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a060:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a062:	10 97       	W[P2] = R0;
ffa0a064:	24 00       	SSYNC;
ffa0a066:	01 e8 00 00 	UNLINK;
ffa0a06a:	10 00       	RTS;

ffa0a06c <_spi_read_packet>:
ffa0a06c:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa0a070:	b8 b0       	[FP + 0x8] = R0;
ffa0a072:	b8 a0       	R0 = [FP + 0x8];
ffa0a074:	f0 bb       	[FP -0x4] = R0;
ffa0a076:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0a078:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0a07c:	ff e3 62 fe 	CALL 0xffa09d40 <_spi_write_register>;
ffa0a080:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a084:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a088:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a08a:	10 97       	W[P2] = R0;
ffa0a08c:	24 00       	SSYNC;
ffa0a08e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a092:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a096:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa0a09a:	10 97       	W[P2] = R0;
ffa0a09c:	ff e3 2e fe 	CALL 0xffa09cf8 <_spi_delay>;
ffa0a0a0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a0a2:	b8 e6 fb ff 	B[FP + -0x5] = R0;
ffa0a0a6:	18 20       	JUMP.S 0xffa0a0d6 <_spi_read_packet+0x6a>;
ffa0a0a8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a0ac:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a0b0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a0b2:	10 97       	W[P2] = R0;
ffa0a0b4:	ff e3 22 fe 	CALL 0xffa09cf8 <_spi_delay>;
ffa0a0b8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a0bc:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0a0c0:	50 95       	R0 = W[P2] (X);
ffa0a0c2:	fa b9       	P2 = [FP -0x4];
ffa0a0c4:	10 9b       	B[P2] = R0;
ffa0a0c6:	f0 b9       	R0 = [FP -0x4];
ffa0a0c8:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a0ca:	f0 bb       	[FP -0x4] = R0;
ffa0a0cc:	b8 e5 fb ff 	R0 = B[FP + -0x5] (X);
ffa0a0d0:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a0d2:	b8 e6 fb ff 	B[FP + -0x5] = R0;
ffa0a0d6:	b8 e4 fb ff 	R0 = B[FP + -0x5] (Z);
ffa0a0da:	f9 60       	R1 = 0x1f (X);		/*		R1=0x1f( 31) */
ffa0a0dc:	08 0a       	CC = R0 <= R1 (IU);
ffa0a0de:	e5 1b       	IF CC JUMP 0xffa0a0a8 <_spi_read_packet+0x3c>;
ffa0a0e0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0a0e4:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a0e8:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a0ea:	10 97       	W[P2] = R0;
ffa0a0ec:	24 00       	SSYNC;
ffa0a0ee:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a0f0:	01 e8 00 00 	UNLINK;
ffa0a0f4:	10 00       	RTS;
	...

ffa0a0f8 <_spi_read_packet_nocheck>:
ffa0a0f8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a0fc:	b8 b0       	[FP + 0x8] = R0;
ffa0a0fe:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a102:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a106:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a108:	10 97       	W[P2] = R0;
ffa0a10a:	24 00       	SSYNC;
ffa0a10c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a110:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0a114:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa0a118:	10 97       	W[P2] = R0;
ffa0a11a:	ff e3 ef fd 	CALL 0xffa09cf8 <_spi_delay>;
ffa0a11e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0a122:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a126:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a128:	10 97       	W[P2] = R0;
ffa0a12a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a12e:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xffc00d50(-4190896) */
ffa0a132:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa0a134:	10 97       	W[P2] = R0;
ffa0a136:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d50(-4190896) */
ffa0a13a:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xffc00d54(-4190892) */
ffa0a13e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a140:	10 97       	W[P2] = R0;
ffa0a142:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d54(-4190892) */
ffa0a146:	0a e1 44 0d 	P2.L = 0xd44;		/* (3396)	P2=0xffc00d44(-4190908) */
ffa0a14a:	b8 a0       	R0 = [FP + 0x8];
ffa0a14c:	10 93       	[P2] = R0;
ffa0a14e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d44(-4190908) */
ffa0a152:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa0a156:	20 e1 83 00 	R0 = 0x83 (X);		/*		R0=0x83(131) */
ffa0a15a:	10 97       	W[P2] = R0;
ffa0a15c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa0a160:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a164:	20 e1 06 50 	R0 = 0x5006 (X);		/*		R0=0x5006(20486) */
ffa0a168:	10 97       	W[P2] = R0;
	...
ffa0a172:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a176:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a17a:	50 95       	R0 = W[P2] (X);
ffa0a17c:	c0 42       	R0 = R0.L (Z);
ffa0a17e:	00 49       	CC = BITTST (R0, 0x0);		/* bit  0 */
ffa0a180:	00 02       	R0 = CC;
ffa0a182:	00 0c       	CC = R0 == 0x0;
ffa0a184:	f3 1b       	IF CC JUMP 0xffa0a16a <_spi_read_packet_nocheck+0x72>;
ffa0a186:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a18a:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa0a18e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a190:	10 97       	W[P2] = R0;
ffa0a192:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa0a196:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a19a:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a19c:	10 97       	W[P2] = R0;
ffa0a19e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a1a2:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a1a6:	20 e1 0d 50 	R0 = 0x500d (X);		/*		R0=0x500d(20493) */
ffa0a1aa:	10 97       	W[P2] = R0;
ffa0a1ac:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a1b0:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a1b4:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a1b6:	10 97       	W[P2] = R0;
ffa0a1b8:	24 00       	SSYNC;
ffa0a1ba:	01 e8 00 00 	UNLINK;
ffa0a1be:	10 00       	RTS;

ffa0a1c0 <_radio_set_rx>:
ffa0a1c0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a1c4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a1c8:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a1cc:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a1ce:	10 97       	W[P2] = R0;
ffa0a1d0:	24 00       	SSYNC;
ffa0a1d2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a1d4:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a1d6:	ff e3 b5 fd 	CALL 0xffa09d40 <_spi_write_register>;
ffa0a1da:	20 e1 e2 00 	R0 = 0xe2 (X);		/*		R0=0xe2(226) */
ffa0a1de:	ff e3 6f fe 	CALL 0xffa09ebc <_spi_write_byte>;
ffa0a1e2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a1e4:	f9 60       	R1 = 0x1f (X);		/*		R1=0x1f( 31) */
ffa0a1e6:	ff e3 ad fd 	CALL 0xffa09d40 <_spi_write_register>;
ffa0a1ea:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0a1ec:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0a1f0:	ff e3 a8 fd 	CALL 0xffa09d40 <_spi_write_register>;
ffa0a1f4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a1f8:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a1fc:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a1fe:	10 97       	W[P2] = R0;
ffa0a200:	24 00       	SSYNC;
ffa0a202:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a206:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a20a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a20c:	10 97       	W[P2] = R0;
ffa0a20e:	24 00       	SSYNC;
ffa0a210:	01 e8 00 00 	UNLINK;
ffa0a214:	10 00       	RTS;
	...

ffa0a218 <_radio_set_tx>:
ffa0a218:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a21c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a220:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0a224:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a226:	10 97       	W[P2] = R0;
ffa0a228:	24 00       	SSYNC;
ffa0a22a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a22c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a22e:	ff e3 89 fd 	CALL 0xffa09d40 <_spi_write_register>;
ffa0a232:	20 e1 e1 00 	R0 = 0xe1 (X);		/*		R0=0xe1(225) */
ffa0a236:	ff e3 43 fe 	CALL 0xffa09ebc <_spi_write_byte>;
ffa0a23a:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0a23c:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0a240:	ff e3 80 fd 	CALL 0xffa09d40 <_spi_write_register>;
ffa0a244:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a246:	f1 60       	R1 = 0x1e (X);		/*		R1=0x1e( 30) */
ffa0a248:	ff e3 7c fd 	CALL 0xffa09d40 <_spi_write_register>;
ffa0a24c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0a250:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a254:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a256:	10 97       	W[P2] = R0;
ffa0a258:	01 e8 00 00 	UNLINK;
ffa0a25c:	10 00       	RTS;
	...

ffa0a260 <_radio_wait_irq>:
ffa0a260:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0a264:	b8 b0       	[FP + 0x8] = R0;
ffa0a266:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a268:	f0 bb       	[FP -0x4] = R0;
ffa0a26a:	08 20       	JUMP.S 0xffa0a27a <_radio_wait_irq+0x1a>;
	...
ffa0a274:	f0 b9       	R0 = [FP -0x4];
ffa0a276:	08 64       	R0 += 0x1;		/* (  1) */
ffa0a278:	f0 bb       	[FP -0x4] = R0;
ffa0a27a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0a27e:	0a e1 00 07 	P2.L = 0x700;		/* (1792)	P2=0xffc00700(-4192512) */
ffa0a282:	50 95       	R0 = W[P2] (X);
ffa0a284:	c1 42       	R1 = R0.L (Z);
ffa0a286:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa0a288:	01 54       	R0 = R1 & R0;
ffa0a28a:	00 0c       	CC = R0 == 0x0;
ffa0a28c:	05 18       	IF CC JUMP 0xffa0a296 <_radio_wait_irq+0x36>;
ffa0a28e:	f1 b9       	R1 = [FP -0x4];
ffa0a290:	b8 a0       	R0 = [FP + 0x8];
ffa0a292:	81 08       	CC = R1 < R0;
ffa0a294:	ec 1b       	IF CC JUMP 0xffa0a26c <_radio_wait_irq+0xc>;
ffa0a296:	f1 b9       	R1 = [FP -0x4];
ffa0a298:	b8 a0       	R0 = [FP + 0x8];
ffa0a29a:	81 08       	CC = R1 < R0;
ffa0a29c:	06 10       	IF !CC JUMP 0xffa0a2a8 <_radio_wait_irq+0x48>;
ffa0a29e:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0a2a0:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0a2a4:	ff e3 4e fd 	CALL 0xffa09d40 <_spi_write_register>;
ffa0a2a8:	f0 b9       	R0 = [FP -0x4];
ffa0a2aa:	01 e8 00 00 	UNLINK;
ffa0a2ae:	10 00       	RTS;

ffa0a2b0 <_radio_init>:
ffa0a2b0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0a2b4:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a2b8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00700(-4192512) */
ffa0a2bc:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a2c0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a2c2:	10 97       	W[P2] = R0;
ffa0a2c4:	24 00       	SSYNC;
ffa0a2c6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a2ca:	0a e1 14 05 	P2.L = 0x514;		/* (1300)	P2=0xffc00514(-4193004) */
ffa0a2ce:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa0a2d0:	10 97       	W[P2] = R0;
ffa0a2d2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00514(-4193004) */
ffa0a2d6:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0a2da:	20 e1 2d 50 	R0 = 0x502d (X);		/*		R0=0x502d(20525) */
ffa0a2de:	10 97       	W[P2] = R0;
ffa0a2e0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0a2e4:	0a e1 04 05 	P2.L = 0x504;		/* (1284)	P2=0xffc00504(-4193020) */
ffa0a2e8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a2ea:	10 97       	W[P2] = R0;
ffa0a2ec:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00504(-4193020) */
ffa0a2f0:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0a2f4:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a2f6:	10 97       	W[P2] = R0;
ffa0a2f8:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc0050c(-4193012) */
ffa0a2fc:	09 e1 40 07 	P1.L = 0x740;		/* (1856)	P1=0xffc00740(-4192448) */
ffa0a300:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0a304:	0a e1 40 07 	P2.L = 0x740;		/* (1856)	P2=0xffc00740(-4192448) */
ffa0a308:	50 95       	R0 = W[P2] (X);
ffa0a30a:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa0a30c:	08 97       	W[P1] = R0;
ffa0a30e:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00740(-4192448) */
ffa0a312:	09 e1 30 07 	P1.L = 0x730;		/* (1840)	P1=0xffc00730(-4192464) */
ffa0a316:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00740(-4192448) */
ffa0a31a:	0a e1 30 07 	P2.L = 0x730;		/* (1840)	P2=0xffc00730(-4192464) */
ffa0a31e:	51 95       	R1 = W[P2] (X);
ffa0a320:	b8 63       	R0 = -0x9 (X);		/*		R0=0xfffffff7( -9) */
ffa0a322:	01 54       	R0 = R1 & R0;
ffa0a324:	08 97       	W[P1] = R0;
ffa0a326:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00730(-4192464) */
ffa0a32a:	09 e1 30 07 	P1.L = 0x730;		/* (1840)	P1=0xffc00730(-4192464) */
ffa0a32e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00730(-4192464) */
ffa0a332:	0a e1 30 07 	P2.L = 0x730;		/* (1840)	P2=0xffc00730(-4192464) */
ffa0a336:	51 95       	R1 = W[P2] (X);
ffa0a338:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a33a:	01 56       	R0 = R1 | R0;
ffa0a33c:	08 97       	W[P1] = R0;
ffa0a33e:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0a342:	21 e1 7c 00 	R1 = 0x7c (X);		/*		R1=0x7c(124) */
ffa0a346:	08 0a       	CC = R0 <= R1 (IU);
ffa0a348:	05 18       	IF CC JUMP 0xffa0a352 <_radio_init+0xa2>;
ffa0a34a:	20 e1 7c 00 	R0 = 0x7c (X);		/*		R0=0x7c(124) */
ffa0a34e:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0a352:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0a354:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a356:	ff e3 f5 fc 	CALL 0xffa09d40 <_spi_write_register>;
ffa0a35a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0a35c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a35e:	ff e3 29 fd 	CALL 0xffa09db0 <_spi_write_register_ver>;
ffa0a362:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0a364:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa0a366:	ff e3 25 fd 	CALL 0xffa09db0 <_spi_write_register_ver>;
ffa0a36a:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a36c:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa0a36e:	ff e3 21 fd 	CALL 0xffa09db0 <_spi_write_register_ver>;
ffa0a372:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa0a374:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0a376:	ff e3 1d fd 	CALL 0xffa09db0 <_spi_write_register_ver>;
ffa0a37a:	b9 e4 08 00 	R1 = B[FP + 0x8] (Z);
ffa0a37e:	28 60       	R0 = 0x5 (X);		/*		R0=0x5(  5) */
ffa0a380:	ff e3 18 fd 	CALL 0xffa09db0 <_spi_write_register_ver>;
ffa0a384:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa0a386:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa0a388:	ff e3 14 fd 	CALL 0xffa09db0 <_spi_write_register_ver>;
ffa0a38c:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0a38e:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0a392:	ff e3 0f fd 	CALL 0xffa09db0 <_spi_write_register_ver>;
ffa0a396:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa0a398:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa0a39a:	ff e3 0b fd 	CALL 0xffa09db0 <_spi_write_register_ver>;
ffa0a39e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00730(-4192464) */
ffa0a3a2:	0a e1 6c 0d 	P2.L = 0xd6c;		/* (3436)	P2=0xffc00d6c(-4190868) */
ffa0a3a6:	20 e1 00 50 	R0 = 0x5000 (X);		/*		R0=0x5000(20480) */
ffa0a3aa:	10 97       	W[P2] = R0;
ffa0a3ac:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d6c(-4190868) */
ffa0a3b0:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0a3b4:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0a3b6:	10 97       	W[P2] = R0;
ffa0a3b8:	20 e1 e2 00 	R0 = 0xe2 (X);		/*		R0=0xe2(226) */
ffa0a3bc:	ff e3 80 fd 	CALL 0xffa09ebc <_spi_write_byte>;
ffa0a3c0:	20 e1 e1 00 	R0 = 0xe1 (X);		/*		R0=0xe1(225) */
ffa0a3c4:	ff e3 7c fd 	CALL 0xffa09ebc <_spi_write_byte>;
ffa0a3c8:	40 43       	R0 = R0.B (Z);
ffa0a3ca:	01 e8 00 00 	UNLINK;
ffa0a3ce:	10 00       	RTS;
