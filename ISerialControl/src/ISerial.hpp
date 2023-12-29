/** LUCIDWAVE
* @name Class XSerial 
* @Created: 19-12-2023
* @Author: Javier Collado RUiz
* @Devices: Xilinx MPSOC, Linux x86/amd64
* @Dependencies: 
* 
* Coments and Updates:
* 1.00 - File created
* 1.05 - added writeS and readS
* 1.10 - Lib comented
**/ 
#ifndef ISERIAL
#define ISERIAL

#define BUFFERSIZE 256

#include <stdio.h>
#include <string>       //string
#include <cstring> 
#include <fstream>      //file
#include <vector>       //buffer vector
#include <cerrno>       //error control
#include <errno.h>      //error control
#include <fcntl.h>      //device control
#include <termios.h>    //serial device
#include <sys/ioctl.h>
#include <unistd.h> 
#include <iostream>
#include <sstream>
using namespace std;

/// @brief Bitnum struct, possible bitnumber values 5,6,7,8 and unknown.
enum Bitnum {BN_B5,BN_B6,BN_B7,BN_B8,BN_UNK};
/// @brief Parity struct, possible parity values none,even,odd and unknown.
enum Parity {P_NONE,P_EVEN,P_ODD,P_UNK};
/// @brief Flow struct, possible flow configuration values none,Xon/Xoff,RTS/CTS,DSR/DTR and unknown.
enum Flow   {F_NONE,F_XONOFF,F_RTSCTS,F_DSRDTR,F_UNK};

/// @brief main iserial class body.
class iserial{
    private:
        termios tty;        // termios resoruce
        const char * dev;   // internal device
        Parity par;         // internal parity
        Bitnum btnum;       // internal bitnumber
        Flow flin;          // internal flow
        speed_t baud;       // internal baudrate
        int stopBits;       // internal stop bits
        int configured;     // number of configured parameters
        bool configFlag;    // configuration is done (all set force it to configured)
        bool setFlag;       // configuration is set on device (Any set will turn it to false)
        int echoC;          // echo conf
        int serial_port;    // the serial device
        std::vector<char> readBuffer; //read buffer

        void config(int id);      // check all configuration is don to config flag

    public:
        iserial();
        ~iserial();
        int writeS(const std::string&);
        int readS(std::string&);
        int readS2(std::vector<char> );
        int available();
        void flush();
        int readN();
        int connect();
        int connect(const char * devIn);
        int disconnect();
        int fromFile(string file);


        void setDevice(const char * devIn);
        const char * getDevice();
        void printDevice();

        void setBaudrate(speed_t baudIn);
        speed_t getBaudrate();
        void printBaudrate();

        void setParity(Parity par);
        Parity getParity();
        void printParity();

        void setStopBits(int stpB);
        int getStopBits();
        void printStopBits();

        void setBits(Bitnum bit);
        Bitnum getBits();
        void printBits();

        void setFlow(Flow fl);
        Flow getFlow();
        void printFlow();

        void setEcho(int ech);
        int getEcho();
        void printEcho();
};


#endif