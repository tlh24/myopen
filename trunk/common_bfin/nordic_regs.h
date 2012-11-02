//nordic nrf24L01 register map
#define NOR_CONFIG		0x00
#define NOR_EN_AA			0x01 //enchanced shock burst
#define NOR_EN_RXADDR	0x02 //enabled RX addresses
#define NOR_SETUP_AW		0x03 //setup address widths
#define NOR_SETUP_RETR	0x04 //automatic retransmission
#define NOR_RF_CH			0x05 //RF channel
#define NOR_RF_SETUP		0x06 // RF setup rate & power
#define NOR_STATUS		0x07 
#define NOR_OBSERVE_TX	0x08 //count lost/retransmitted packets
#define NOR_CD			0x09 //carrier detect
#define NOR_RX_ADDR_P0	0x0A
#define NOR_RX_ADDR_P1	0x0B
#define NOR_RX_ADDR_P2	0x0C
#define NOR_RX_ADDR_P3	0x0D
#define NOR_RX_ADDR_P4	0x0E
#define NOR_RX_ADDR_P5	0x0F
#define NOR_TX_ADDR		0x10 //transmit address
#define NOR_RX_PW_P0		0x11 //rx payload size pipe 0
#define NOR_RX_PW_P1		0x12 //rx payload size pipe 1
#define NOR_RX_PW_P2		0x13 //rx payload size pipe 2
#define NOR_RX_PW_P3		0x14 //rx payload size pipe 3
#define NOR_RX_PW_P4		0x15 //rx payload size pipe 4
#define NOR_RX_PW_P5		0x16 //rx payload size pipe 5
#define NOR_FIFO_STATUS	0x17 //tx/rx fifo full/empty
#define NOR_DYNPD		0x1C //dynamic payload length
#define NOR_FEATURE		0x1D //feature


//config register
#define NOR_MASK_RX_DR	0x40 //mask off RX data recieved interrupt
#define NOR_MASK_TX_DS	0x20 //mask off TX data sent interrupt
#define NOR_MASK_MAX_RT	0x10 //mask off maximum # retries interrupt
#define NOR_EN_CRC		0x08 //enable CRC
#define NOR_CRC0			0x04 //enable 2-byte CRC
#define NOR_PWR_UP		0x02 //power up!
#define NOR_PRIM_RX		0x01 //recieve data
#define NOR_PRIM_TX		0x00 //just to be absolutely transparent..

//status register
#define NOR_RX_DR			0x40 // RX data ready intr
#define NOR_TX_DS			0x20 // TX data sent intr
#define NOR_MAX_RT		0x10 //maximum retries intr
#define NOR_RX_P_NO		0x0e //what pipe the RX data is * 2
#define NOR_TX_FULL		0x01 //transmit fifo full -- probably the same as below.

// fifo status register
#define NOR_RXFIFO_EMPTY	0x01
#define NOR_RXFIFO_FULL	0x02
#define NOR_TXFIFO_EMPTY	0x10
#define NOR_TXFIFO_FULL	0x20
#define NOR_TX_REUSE		0x40 //this bit is read/write.

// commands
#define NOR_FLUSH_TX		0xE1
#define NOR_FLUSH_RX		0xE2
