///////////////////////////////////////////////////////////////////
// LSERIAL - TOP                                                 //
// Author: Javier Collado Ruiz                                   //
// Version: 0.1                                                  //
// Date: 26/12/2023                                              //
// Description: Top block of the symple sistem test for LSERIAL. //
//  															 //
//  															 //
///////////////////////////////////////////////////////////////////

module top_lserial(
///////	 BASIC SIGNALS
    input 		      sysclk,

    input  [ 3: 0]  sw,   			// control Switch
                                    // 0-1 -> Boot Config Option
                                    // 2-3 -> Boot Config Option
                                    // 4-5 -> Boot Config Option
                                    // 6-7 -> Boot Config Option
    input  [ 1: 0]  pb,   			// push Butons 0: Main Reset / 1: User
    output [ 7: 0]  led,  			// Led Controlled by serial
    //output [ 7: 0]  Seg0, 		// NOT PRESENT - 7-Seg representing State Machine Status
    //output [ 7: 0]  Seg1, 		// NOT PRESENT - 7-Seg representing Fault Code

    /////// I2C/SPI/MDIO interface
    input			      master_i2c_int,	// Master mode interrupt
    inout		        master_i2c_sda,	// Master mode i2c data
    output	        master_i2c_scl,	// Master mode i2c cloc

    //inout		    slave_i2c_sda,	// NOT PRESENT - Slave mode i2c data
    //inout		    slave_i2c_scl,	// NOT PRESENT - Slave mode i2c clock

    inout 		      spi_clk,		// Master mode SPI 
    inout 		      spi_miso,		// Master mode SPI 
    inout			      spi_mosi,		// Master mode SPI 

    input			      usb_uart_rx,    // Simple UART control Rx
    output			    usb_uart_tx);   // Simple UART control Tx

wire         sysrst;
wire         rstOutCall;
wire         rst;
wire [ 1: 0] pb;
wire [ 1: 0] pbE;
assign rst				=	sw[3];
assign led[7]     = sw[3];
assign sysrst     = rst | rstOutCall;

//! Push Button Edge Debounce 0
pbEdge pbE0(
	      .clk            (       sysclk),        //! Common Clock
	      .rst            (          rst),        //! Common Reset
	      .pb             (        pb[0]),        //! Pushbutton In
	      .prss           (       pbE[0]),        //! Pushbutton Edge Out
	      .rls            (             ));       //!
        
//! Push Button Edge Debounce 1
pbEdge pbE1(
	      .clk            (       sysclk),        //! Common Clock
	      .rst            (          rst),        //! Common Reset
	      .pb             (        pb[1]),        //! Pushbutton In
	      .prss           (       pbE[1]),        //! Pushbutton Edge Out
	      .rls            (             ));       //!

//! UART Receiver control instance
debCom  debCom_inst (
        .clk            (       sysclk),      //! Common Clock
        .rst            (       sysrst),      //! Common Reset
        .led            (     led[6:0]),      //! Output LED
        .sw             (           sw),      //! Input SW
        .dataIn         (       dataIn),      //! I2C control
        .dataOut        (      dataOut),      //! I2C control
        .addrOut        (      addrOut),      //! I2C control
        .devOut         (       devOut),      //! I2C control
        .cycle          (        cycle),      //! I2C control
        .rw             (           rw),      //! I2C control
        .req            (          req),      //! I2C control
        .bsy            (          bsy),      //! I2C control
        .ok             (           ok),      //! I2C control
        .rstOut         (   rstOutCall),      //! 
        .rxd            (  usb_uart_rx),      //! Com UART Rx
        .txd            (  usb_uart_tx)       //! Com UART Tx
  );

endmodule