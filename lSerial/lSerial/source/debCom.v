///////////////////////////////////////////////////////////////////
// PACE CAP BOOT - TOP                                           //
// Author: Javier Collado Ruiz                                   //
// Center: IFIC - CSIC // ETSE - UV                              //
// Version: 0.9                                                  //
// Date: 21/10/2020                                              //
// Description: debCom UART comunication module.   				 //
//  															 //
//  															 //
///////////////////////////////////////////////////////////////////


module debCom(
	input 				  clk,
	input 				  rst,
	
	output reg [ 7:0]	  led,

	input	   [ 3:0]      sw, //read the sw status
	
	input	   [31:0]   dataIn,	//To local Reg
	output reg [31:0]  dataOut,	//To local Reg
	output reg [ 7:0]  addrOut, /* syn_romstyle = "EBR" */ //To local Reg 
	output reg [ 7:0]   devOut, //device in I2C
	output reg [ 2:0]    cycle, //Cycle in I2C
	output reg 			    rw,	//To local Reg
	output reg			   req, // request call
	input				   bsy, //system is busy
	input					ok, //ok from I2C

	input      [45:0]   status,

	output reg      	rstOut,

	input 				   rxd,	//To UART
	output 				   txd);//To UART

parameter COM_IDLE = 3'h0;
parameter COM_SEND = 3'h1;
parameter COM_WAIT = 3'h2;
parameter COM_READ = 3'h3;

reg		   uartConf;

reg  [7:0]   txSend;
reg			   send;
wire [7:0]  txSendR;
wire		  sendR;
wire [7:0]   rxRecv;
wire 		   recv;
wire		 txDone;
wire		  txAct;
wire [7:0]SOMtxSend;
wire		SOMsend;
wire [7:0]SOMrxRecv;
wire 		SOMrecv;
wire	  SOMtxDone;
wire	   SOMtxAct;

reg 		highRead;

//parameter UART_SPEED = 12  // 1000000
//parameter UART_SPEED = 120 // 100000
//parameter UART_SPEED = 104 // 115200
parameter UART_SPEED = 104;  // 115200

uart #(.CLKS_PER_BIT(UART_SPEED)) URT ( //115200
	.clk	(			clk),
	.rst	(			rst),

	.rxd	(			rxd),
	.txd	(			txd),

	.rxData	(		 rxRecv),	// Received data
	.rxRecv	(		   recv), 	// Received flag
	.txData	(		txSendR),	// Transmit data
	.txSend	(		  sendR),	// Start transmision
	.txAct  (		  txAct),
	.txDone	(		 txDone));	// Transmission done


reg  [ 7:0] recBuf	 [12:0];	// receiver Buffer
reg  [ 7:0] bufferL1 [12:0];/* syn_ramstyle = "Block_ RAM" */	//Send Buffer line 1
reg  [ 7:0] bufferL2 [12:0];/* syn_ramstyle = "Block_ RAM" */	//Send Buffer line 2
reg	 [ 4:0]	recCte;				//receiver counter
reg	 	   	flag;				//received command, send
reg  [7 :0] stm;				//sender state machine
reg	 		tick;				//wait to send ready
reg	 		lns;				//number of lines to send
reg 		rem;
reg			rstOut0;			//delay rstout
reg	 [ 2:0]	cmd;				//command STM
reg  [15:0] cteRd;				//read counter
reg  [31:0] dataLog;
reg			okLog;

reg  [ 7:0] preAddress;
reg  [ 7:0] preVal;
reg  [31:0] preFullVal;

wire [ 7:0] rxConv;

assign txSendR		= (1'b0)? SOMrxRecv:	txSend;
assign sendR  		= (1'b0)?   SOMrecv:	  send;
assign SOMsend		= (1'b0)?      recv:	   'b0;
assign SOMtxSend	= (1'b0)?    rxRecv:	   'b0;

assign rxConv=(rxRecv[4])? rxRecv[3:0]:(4'h9+rxRecv[3:0]);




always @(posedge clk or negedge rst)
	begin
		if(!rst)begin
			uartConf		<='b0;
			txSend	 		<='b0;
			send	 		<='b0;
			bufferL1[ 0]	<='h6C; 
			bufferL1[ 1]	<='h53;
			bufferL1[ 2]	<='h65;
			bufferL1[ 3]	<='h72;
			bufferL1[ 4]	<='h3E;
			bufferL1[ 5]	<='h20;
			bufferL1[ 6]	<='h20;
			bufferL1[ 7]	<='h20;
			bufferL1[ 8]	<='h20;
			bufferL1[ 9]	<='h20;
			bufferL1[10]	<='h20;
			bufferL1[11]	<='h0A;
			
			bufferL2[ 0]	<='h20;
			bufferL2[ 1]	<='h20;
			bufferL2[ 2]	<='h20;
			bufferL2[ 3]	<='h20;
			bufferL2[ 4]	<='h20;
			bufferL2[ 5]	<='h20;
			bufferL2[ 6]	<='h20;
			bufferL2[ 7]	<='h20;
			bufferL2[ 8]	<='h20;
			bufferL2[ 9]	<='h20;
			bufferL2[10]	<='h20;
			bufferL2[11]	<='h0D;
			
			lns			<='h0;
			recCte	 	<='h0;
			recBuf[0]	<='h20;
			recBuf[1]	<='h20;
			recBuf[2]	<='h20;
			recBuf[3]	<='h20;
			recBuf[4]	<='h20;
			recBuf[5]	<='h20;
			recBuf[6]	<='h20;
			recBuf[7]	<='h20;
			recBuf[8]	<='h20;
			recBuf[9]	<='h20;
			recBuf[10]	<='h20;
			recBuf[11]	<='h20;
			
			flag	 	<=1'b0;
			stm	     	<=8'hFF;
			led		 	<=1'b0;
			tick	 	<=1'b0;
			req			<='b1;
			devOut		<='b0;
			cmd			<= COM_IDLE;
			cteRd		<='b0;
			cycle		<='b0;
			rstOut		<=12'b101100000000;
			okLog		<='b0;
			highRead	<='b0;
			rem         <='b0;
			rstOut0		<='b0;
			rstOut		<='b1;
		end else begin
			bufferL1[11]	<='h0A;
			bufferL2[11]	<='h0D;
			if(req)begin
				req		<='b0;
			end
			case(cmd)
				COM_SEND: begin //command received
					recBuf[0]	<='h20;
					recBuf[1]	<='h20;
					recBuf[2]	<='h20;
					recBuf[3]	<='h20;
					recBuf[4]	<='h20;
					recBuf[5]	<='h20;
					recBuf[6]	<='h20;
					recBuf[7]	<='h20;
					recBuf[8]	<='h20;
					recBuf[9]	<='h20;
					cteRd		<='b0;
					case(recBuf[0])
						8'h72:begin //r
							bufferL2[ 6]	<=8'h4C;  // 'L'
							bufferL2[ 7]	<=8'h56;  // 'V'
							bufferL2[ 8]	<=8'h4C;  // 'L'
							bufferL2[ 9]	<=8'h20;  // ' '
							bufferL2[10]	<=8'h30;  // '0'
							rw				<='b1;
							flag			<='b1;
							lns				<='b1;
							rstOut0			<='b1;
							bufferL2[ 0]	<=8'h52;  // 'R'
							bufferL2[ 1]	<=8'h65;  // 'e'
							bufferL2[ 2]	<=8'h73;  // 's'
							bufferL2[ 3]	<=8'h65;  // 'e'
							bufferL2[ 4]	<=8'h74;  // 't'
							bufferL2[ 5]	<=8'h20;  // ' '
							cmd				<=COM_IDLE;
				    end	8'h4C:begin //L Led
							rw				<='b1;
							flag			<='b1;
							lns				<='b1;
							led				<= preAddress;
							cmd  			<= COM_WAIT;
					end	8'h53:begin //L Led
							bufferL2[ 6]	<=8'h20;  // ' '
							bufferL2[ 7]	<=8'h20;  // ' '
							bufferL2[ 8]	<=8'h20;  // ' '
							bufferL2[ 9]	<=8'h20;  // ' '
							bufferL2[10]	<=8'h30;  // '0'
							bufferL2[ 0]	<=8'h3e;  // '>'
							bufferL2[ 1]	<=8'h57;  // 'S'
							bufferL2[ 2]	<=8'h57;  // 'W'
							bufferL2[ 3]	<=8'h3a;  // ':'
							bufferL2[ 4]	<=8'h20;  // ' '
							bufferL2[ 5]	<={4'b0,sw};  	  // 'data'
							rw				<='b1;
							flag			<='b1;
							lns				<='b1;
							rstOut0			<='b1;
							cmd				<=COM_IDLE;
					end	8'h52:begin //R Read
							req				<= 'b1;
							highRead		<= 'b1;
							rw		    	<= 'b1;
							cycle			<= 3'h1;
							addrOut			<= preAddress;
							cmd  			<= COM_WAIT;
					end	8'h4F:begin //O big Read
							rem				<='b0;
							req				<='b1;
							rw				<='b1;
							cycle			<=3'h4;
							highRead		<='b1;
							addrOut			<= preAddress;
							cmd		 		<= COM_WAIT;
					end	8'h42:begin //B Big Write 32Bit AGATA Pace Protocol
							req				<='b1;
							rw				<='b0;
							cycle			<=3'h4;
							addrOut			<= preAddress;
							dataOut			<= preFullVal;
							flag			<='b1;
							lns				<='b1;
							bufferL2[ 0]	<=8'h57;  // 'W'
							bufferL2[ 1]	<=8'h72;  // 'r'
							bufferL2[ 2]	<=8'h69;  // 'i'
							bufferL2[ 3]	<=8'h74;  // 't'
							bufferL2[ 4]	<=8'h65;  // 'e'
							bufferL2[ 5]	<=8'h20;  // ' '
							bufferL2[ 6]	<=preAddress;
							bufferL2[ 7]	<=preFullVal[31:24];
							bufferL2[ 8]	<=preFullVal[23:16];
							bufferL2[ 9]	<=preFullVal[15: 8];
							bufferL2[10]	<=preFullVal[ 7: 0];
							cmd				<=COM_IDLE;
					end	8'h41:begin //A Address
							devOut			<=preAddress;
							flag			<='b1;
							lns				<='b1;
							bufferL2[ 0]	<=8'h44;  // 'D'
							bufferL2[ 1]	<=8'h65;  // 'e'
							bufferL2[ 2]	<=8'h76;  // 'v'
							bufferL2[ 3]	<=8'h69;  // 'i'
							bufferL2[ 4]	<=8'h63;  // 'c'
							bufferL2[ 5]	<=8'h65;  // 'e'
							bufferL2[ 6]	<=8'h3A;  // ':'
							bufferL2[ 7]	<=8'h20;  // ' '
							bufferL2[ 8]	<=devOut;
							bufferL2[ 9]	<=8'h20;  // ' '
							bufferL2[10]	<=preAddress;  // ' '
							cmd				<=COM_IDLE;
					end	default:begin
							rw				<='b0;
							flag			<='b1;
							lns				<='b1;
							bufferL2[ 0]	<=8'h4E;  // 'N'
							bufferL2[ 1]	<=8'h6F;  // 'o'
							bufferL2[ 2]	<=8'h74;  // 't'
							bufferL2[ 3]	<=8'h20;  // ' '
							bufferL2[ 4]	<=8'h63;  // 'c'
							bufferL2[ 5]	<=8'h6F;  // 'o'
							bufferL2[ 6]	<=8'h6D;  // 'm'
							bufferL2[ 7]	<=8'h6D;  // 'm'
							bufferL2[ 8]	<=8'h61;  // 'a'
							bufferL2[ 9]	<=8'h6E;  // 'n'
							bufferL2[10]	<=8'h64;  // 'd'
							cmd				<=COM_IDLE;
					end
					endcase
			end COM_WAIT: begin
					if(rem)begin 
						if (cteRd[6])begin
							cmd		<= COM_READ;
							dataLog	<= dataIn;
						end else begin
							cteRd	<= cteRd+'b1;
						end
					end else begin								
						if(!bsy)begin
							cmd		<= COM_READ;
							dataLog	<= dataIn;
							okLog	<= ok;
						end else begin
							if(cteRd[10])begin
								cteRd	<= 'b0;
								cmd		<= COM_IDLE;
								bufferL2[ 0]	<=8'h4E;  // 'N';
								bufferL2[ 1]	<=8'h6F;  // 'o';
								bufferL2[ 2]	<=8'h20;  // ' ';
								bufferL2[ 3]	<=8'h73;  // 's';
								bufferL2[ 4]	<=8'h69;  // 'i';
								bufferL2[ 5]	<=8'h67;  // 'g';
								bufferL2[ 6]	<=8'h6E;  // 'n';
								bufferL2[ 7]	<=8'h61;  // 'a';
								bufferL2[ 8]	<=8'h6C;  // 'l';
								bufferL2[ 9]	<=8'h20;  // ' ';
								bufferL2[10]	<=8'h20;  // ' ';
							end else begin
								cteRd	<= cteRd+'b1;
							end
						end
					end
			end COM_READ: begin
				if(highRead)begin 
					bufferL2[0]<=8'h4F;
					case(dataLog[19:16])
						4'h0:begin 	bufferL2[4]<=8'h30; end
						4'h1:begin 	bufferL2[4]<=8'h31; end
						4'h2:begin 	bufferL2[4]<=8'h32; end
						4'h3:begin 	bufferL2[4]<=8'h33; end
						4'h4:begin 	bufferL2[4]<=8'h34; end
						4'h5:begin 	bufferL2[4]<=8'h35; end
						4'h6:begin 	bufferL2[4]<=8'h36; end
						4'h7:begin 	bufferL2[4]<=8'h37; end
						4'h8:begin 	bufferL2[4]<=8'h38; end
						4'h9:begin 	bufferL2[4]<=8'h39; end
						4'hA:begin 	bufferL2[4]<=8'h41; end
						4'hB:begin 	bufferL2[4]<=8'h42; end
						4'hC:begin 	bufferL2[4]<=8'h43; end
						4'hD:begin 	bufferL2[4]<=8'h44; end
						4'hE:begin 	bufferL2[4]<=8'h45; end
						4'hF:begin 	bufferL2[4]<=8'h46; end
					endcase
					case(dataLog[23:20])
						4'h0:begin 	bufferL2[3]<=8'h30; end
						4'h1:begin 	bufferL2[3]<=8'h31; end
						4'h2:begin 	bufferL2[3]<=8'h32; end
						4'h3:begin 	bufferL2[3]<=8'h33; end
						4'h4:begin 	bufferL2[3]<=8'h34; end
						4'h5:begin 	bufferL2[3]<=8'h35; end
						4'h6:begin 	bufferL2[3]<=8'h36; end
						4'h7:begin 	bufferL2[3]<=8'h37; end
						4'h8:begin 	bufferL2[3]<=8'h38; end
						4'h9:begin 	bufferL2[3]<=8'h39; end
						4'hA:begin 	bufferL2[3]<=8'h41; end
						4'hB:begin 	bufferL2[3]<=8'h42; end
						4'hC:begin 	bufferL2[3]<=8'h43; end
						4'hD:begin 	bufferL2[3]<=8'h44; end
						4'hE:begin 	bufferL2[3]<=8'h45; end
						4'hF:begin 	bufferL2[3]<=8'h46; end
					endcase
					case(dataLog[27:24])
						4'h0:begin 	bufferL2[2]<=8'h30; end
						4'h1:begin 	bufferL2[2]<=8'h31; end
						4'h2:begin 	bufferL2[2]<=8'h32; end
						4'h3:begin 	bufferL2[2]<=8'h33; end
						4'h4:begin 	bufferL2[2]<=8'h34; end
						4'h5:begin 	bufferL2[2]<=8'h35; end
						4'h6:begin 	bufferL2[2]<=8'h36; end
						4'h7:begin 	bufferL2[2]<=8'h37; end
						4'h8:begin 	bufferL2[2]<=8'h38; end
						4'h9:begin 	bufferL2[2]<=8'h39; end
						4'hA:begin 	bufferL2[2]<=8'h41; end
						4'hB:begin 	bufferL2[2]<=8'h42; end
						4'hC:begin 	bufferL2[2]<=8'h43; end
						4'hD:begin 	bufferL2[2]<=8'h44; end
						4'hE:begin 	bufferL2[2]<=8'h45; end
						4'hF:begin 	bufferL2[2]<=8'h46; end
					endcase
					case(dataLog[31:28])
						4'h0:begin 	bufferL2[1]<=8'h30; end
						4'h1:begin 	bufferL2[1]<=8'h31; end
						4'h2:begin 	bufferL2[1]<=8'h32; end
						4'h3:begin 	bufferL2[1]<=8'h33; end
						4'h4:begin 	bufferL2[1]<=8'h34; end
						4'h5:begin 	bufferL2[1]<=8'h35; end
						4'h6:begin 	bufferL2[1]<=8'h36; end
						4'h7:begin 	bufferL2[1]<=8'h37; end
						4'h8:begin 	bufferL2[1]<=8'h38; end
						4'h9:begin 	bufferL2[1]<=8'h39; end
						4'hA:begin 	bufferL2[1]<=8'h41; end
						4'hB:begin 	bufferL2[1]<=8'h42; end
						4'hC:begin 	bufferL2[1]<=8'h43; end
						4'hD:begin 	bufferL2[1]<=8'h44; end
						4'hE:begin 	bufferL2[1]<=8'h45; end
						4'hF:begin 	bufferL2[1]<=8'h46; end
					endcase							
					case(dataLog[ 3: 0])
						4'h0:begin 	bufferL2[8]<=8'h30; end
						4'h1:begin 	bufferL2[8]<=8'h31; end
						4'h2:begin 	bufferL2[8]<=8'h32; end
						4'h3:begin 	bufferL2[8]<=8'h33; end
						4'h4:begin 	bufferL2[8]<=8'h34; end
						4'h5:begin 	bufferL2[8]<=8'h35; end
						4'h6:begin 	bufferL2[8]<=8'h36; end
						4'h7:begin 	bufferL2[8]<=8'h37; end
						4'h8:begin 	bufferL2[8]<=8'h38; end
						4'h9:begin 	bufferL2[8]<=8'h39; end
						4'hA:begin 	bufferL2[8]<=8'h41; end
						4'hB:begin 	bufferL2[8]<=8'h42; end
						4'hC:begin 	bufferL2[8]<=8'h43; end
						4'hD:begin 	bufferL2[8]<=8'h44; end
						4'hE:begin 	bufferL2[8]<=8'h45; end
						4'hF:begin 	bufferL2[8]<=8'h46; end
					endcase
					case(dataLog[ 7: 4])
						4'h0:begin 	bufferL2[7]<=8'h30; end
						4'h1:begin 	bufferL2[7]<=8'h31; end
						4'h2:begin 	bufferL2[7]<=8'h32; end
						4'h3:begin 	bufferL2[7]<=8'h33; end
						4'h4:begin 	bufferL2[7]<=8'h34; end
						4'h5:begin 	bufferL2[7]<=8'h35; end
						4'h6:begin 	bufferL2[7]<=8'h36; end
						4'h7:begin 	bufferL2[7]<=8'h37; end
						4'h8:begin 	bufferL2[7]<=8'h38; end
						4'h9:begin 	bufferL2[7]<=8'h39; end
						4'hA:begin 	bufferL2[7]<=8'h41; end
						4'hB:begin 	bufferL2[7]<=8'h42; end
						4'hC:begin 	bufferL2[7]<=8'h43; end
						4'hD:begin 	bufferL2[7]<=8'h44; end
						4'hE:begin 	bufferL2[7]<=8'h45; end
						4'hF:begin 	bufferL2[7]<=8'h46; end
					endcase
					case(dataLog[11: 8])
						4'h0:begin 	bufferL2[6]<=8'h30; end
						4'h1:begin 	bufferL2[6]<=8'h31; end
						4'h2:begin 	bufferL2[6]<=8'h32; end
						4'h3:begin 	bufferL2[6]<=8'h33; end
						4'h4:begin 	bufferL2[6]<=8'h34; end
						4'h5:begin 	bufferL2[6]<=8'h35; end
						4'h6:begin 	bufferL2[6]<=8'h36; end
						4'h7:begin 	bufferL2[6]<=8'h37; end
						4'h8:begin 	bufferL2[6]<=8'h38; end
						4'h9:begin 	bufferL2[6]<=8'h39; end
						4'hA:begin 	bufferL2[6]<=8'h41; end
						4'hB:begin 	bufferL2[6]<=8'h42; end
						4'hC:begin 	bufferL2[6]<=8'h43; end
						4'hD:begin 	bufferL2[6]<=8'h44; end
						4'hE:begin 	bufferL2[6]<=8'h45; end
						4'hF:begin 	bufferL2[6]<=8'h46; end
					endcase
					case(dataLog[15:12])
						4'h0:begin 	bufferL2[5]<=8'h30; end
						4'h1:begin 	bufferL2[5]<=8'h31; end
						4'h2:begin 	bufferL2[5]<=8'h32; end
						4'h3:begin 	bufferL2[5]<=8'h33; end
						4'h4:begin 	bufferL2[5]<=8'h34; end
						4'h5:begin 	bufferL2[5]<=8'h35; end
						4'h6:begin 	bufferL2[5]<=8'h36; end
						4'h7:begin 	bufferL2[5]<=8'h37; end
						4'h8:begin 	bufferL2[5]<=8'h38; end
						4'h9:begin 	bufferL2[5]<=8'h39; end
						4'hA:begin 	bufferL2[5]<=8'h41; end
						4'hB:begin 	bufferL2[5]<=8'h42; end
						4'hC:begin 	bufferL2[5]<=8'h43; end
						4'hD:begin 	bufferL2[5]<=8'h44; end
						4'hE:begin 	bufferL2[5]<=8'h45; end
						4'hF:begin 	bufferL2[5]<=8'h46; end
					endcase
				end 
				if(okLog)begin
					bufferL2[ 9]	<=8'h4F;  // 'O';
					bufferL2[10]	<=8'h6B;  // 'k';
				end else begin
					bufferL2[ 9]	<=8'h20;  // ' ';
					bufferL2[10]	<=8'h20;  // ' ';
				end
				okLog				<='b0;
				flag				<='b1;
				lns					<='b1;
				cmd					<=COM_IDLE;
			end COM_IDLE: begin
				if(rstOut0)begin
					rstOut		<='b0;
				end
			end
			endcase
			if(recv)begin
				if(rxRecv==8'h0D)begin //end line received
					recCte			<=	 'b0;
					cmd				<= 	COM_SEND;
					led				<=	~led;
					lns				<=  'b1;
					bufferL1[ 0]	<='h50; 
					bufferL1[ 1]	<='h41;
					bufferL1[ 2]	<='h43;
					bufferL1[ 3]	<='h45;
					bufferL1[ 4]	<='h3E;
					bufferL1[ 5]	<= recBuf[0];
					bufferL1[ 6]	<= recBuf[1];
					bufferL1[ 7]	<= recBuf[2];
					bufferL1[ 8]	<= recBuf[3];
					bufferL1[ 9]	<= recBuf[4];
					bufferL1[10]	<= recBuf[5];
				end else begin		
					recBuf[recCte]	<=	rxRecv; //update receiver buffer
					txSend			<=  rxRecv;
					case(recCte[3:0])
							4'h2:begin
								preAddress[ 7: 4] 	<= rxConv;
						end	4'h3:begin
								preAddress[ 3: 0] 	<= rxConv;
						end	4'h4:begin
								preFullVal[31:28] 	<= rxConv;
						end	4'h5:begin
								preFullVal[27:24] 	<= rxConv;
								preVal	  [ 7: 4]	<= rxConv;
						end 4'h6:begin
								preFullVal[23:20] 	<= rxConv;
								preVal	  [ 3: 0]	<= rxConv;
						end 4'h7:begin
								preFullVal[19:16] 	<= rxConv;
						end 4'h8:begin
								preFullVal[15:12] 	<= rxConv;
						end 4'h9:begin
								preFullVal[11: 8] 	<= rxConv;
						end 4'hA:begin
								preFullVal[ 7: 4] 	<= rxConv;
						end 4'hB:begin
								preFullVal[ 3: 0] 	<= rxConv;
						end 4'hC:begin
						end
					endcase
					if(recCte>4'hB)begin 		//overflow character number
						recCte			<= 'b0;
						lns				<= 'b0;
						flag			<= 'b1;
						led				<= ~led;
						bufferL1[ 0]	<='h50; 
						bufferL1[ 1]	<='h41;
						bufferL1[ 2]	<='h43;
						bufferL1[ 3]	<='h45;
						bufferL1[ 4]	<='h3E;
						bufferL1[ 5]	<= 8'h54;  // 'T';
						bufferL1[ 6]	<= 8'h6F;  // 'o';
						bufferL1[ 7]	<= 8'h6F;  // 'o';
						bufferL1[ 8]	<= 8'h4C;  // 'L';
						bufferL1[ 9]	<= 8'h6E;  // 'n'
						bufferL1[10]	<= 8'h67;  // 'g'
						recBuf[0]		<= 8'h20;
						recBuf[1]		<= 8'h20;
						recBuf[2]		<= 8'h20;
						recBuf[3]		<= 8'h20;
						recBuf[4]		<= 8'h20;
						recBuf[5]		<= 8'h20;
						recBuf[6]		<= 8'h20;
						recBuf[7]		<= 8'h20;
						recBuf[8]		<= 8'h20;
						recBuf[9]		<= 8'h20;
						recBuf[10]		<= 8'h20;
						recBuf[11]		<= 8'h20;
					end else begin
						recCte			<= recCte	+	'b1;
					end
				end
			end
			if(stm==8'hFF)begin//IDLE STATE 		
					if(flag)begin //Send Buffer
						stm	<='b0;
					end
			end else begin
					if(!txAct)begin
						if(stm<8'h0C)begin //SENDING BUFFER
							if(!tick)begin
								if(lns)begin
									txSend	<=bufferL2[stm];
								end else begin
									txSend	<=bufferL1[stm];
								end
								send	<='b1;
								tick	<='b1;
							end else begin
								if(lns)begin
									txSend	<=bufferL2[stm];
								end else begin
									txSend	<=bufferL1[stm];
								end
								send	<='b0;
								if(txDone)begin
										tick	<='b0;
										stm		<=stm+'b1;
								end
							end
						end else begin //TO IDLE
							if(lns)begin
								lns	 <= 1'b0;
								stm	 <='b0;
							end else begin
								stm	 <= 8'hFF;
								flag <= 1'b0;
								send <= 'b0;
							end
						end
					end else begin
						send	<='b0;
					end
			end
		end
	end 
	
endmodule