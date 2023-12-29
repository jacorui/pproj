#include "ISerial.hpp"


/// @brief internal all set flag calculator 3F means all parameters are configured.
/// @param id value to add or substract to the flag calculator.
void iserial::config(int id){
    this->configured=this->configured+id;
    if(this->configured==0x3F){
        this->configFlag=true;
    }
}

/// @brief Basic constructor, not configured status initialization.
iserial::iserial(){
    //create the configuration and buffer
    this->configFlag = false;
    this->setFlag =false;
    this->baud=B0;
    this->stopBits=-1;
    this->par=P_UNK;
    this->btnum=BN_UNK;
    this->flin=F_UNK;
    this->configured=0;
    this->readBuffer.reserve(BUFFERSIZE);
}

/// @brief Basic destructor, disconect in case of failure.
iserial::~iserial(){
    //delete the configuration and buffer
    try {
        disconnect(); //just in case
    } catch(...) {
    }
}

/// @brief Basic write to the UART serial.
/// @param data Data string to write.
/// @return Status 0: ok.
int iserial::writeS(const std::string& data)
{
    if(this->setFlag){
        int err = write(this->serial_port, data.c_str(), data.size());
        if(err<0){
            throw std::runtime_error("Write error");
        }
        return 0;
    }else{
        throw std::runtime_error("Device not connected");
    }
}

/// @brief Basic read from the UART serial Buffer. use string.
/// @param data string with the buffer data from the UART.
/// @return Status 0: ok 1: not.
int iserial::readS(std::string& data)
{
    if(this->setFlag){
        int stat = read(this->serial_port, &(readBuffer[0]), BUFFERSIZE);
        if(stat<0){
            throw std::runtime_error("Write error");
        }
        else if(stat==0){
            return 0; // high probability: EOF
        }
        else if(stat>0){
            std::copy(this->readBuffer.begin(), this->readBuffer.begin() + stat, back_inserter(data)); //copy recv to buffer
        }
        return 0;
    }else{
        throw std::runtime_error("Device not connected");
    }
}

/// @brief Basic read from the UART serial Buffer. Use vector.
/// @param data string with the buffer data from the UART.
/// @return Status 0: ok 1: not.
int iserial::readS2(std::vector<char> data)
{
    if(this->setFlag){
        int stat = read(this->serial_port, &(readBuffer[0]), BUFFERSIZE);
        if(stat<0){
            throw std::runtime_error("Write error");
        }
        else if(stat==0){
            return 0; // high probability: EOF
        }
        data=readBuffer;
        return 0;
    }else{
        throw std::runtime_error("Device not connected");
    }
}

/// @brief Constant read, not implemented yet.
/// @return status.
int iserial::readN()
{
    return 0;
}

/// @brief check the buffer and read to local buffer.
/// @return status and buffer data size.
int iserial::available()
{
    int bytes;
    ioctl(this->serial_port, FIONREAD, &bytes);
    return bytes;
}

void iserial::flush(){
    tcflush(this->serial_port, TCIFLUSH);
}

/// @brief Set connection to Serial device in case of proper configuration.
/// @return status 0: ok 1: not ok.
int iserial::connect()
{
    if(this->dev[0]=='N'){  //abort if no device is configured
        throw std::runtime_error("Attempt to connect without a defined Device"+ errno);
    }
    this->serial_port = open(this->dev, O_RDWR| O_NONBLOCK | O_NDELAY);
    // Check for errors
    if (this->serial_port < 0) {
        throw std::runtime_error("Selected serial port is not available: "+to_string(this->serial_port));
    }
    //If configuration is not set, read configuration
    if(this->configFlag==0){
        printf("Configuration not found, reading device status");
        if(tcgetattr(this->serial_port, &this->tty) != 0) {
            throw std::runtime_error("Impossible to get device attributes");
        }
        this->baud=cfgetispeed(&this->tty);
    }else{
        //set configuration
        cfsetispeed(&this->tty, this->baud);
        cfsetospeed(&this->tty, this->baud);
        if (tcsetattr(this->serial_port, TCSANOW, &tty) != 0) {
            throw std::runtime_error("Error writing serial configuration");
        }
        this->setFlag=true;
        printf("Device connected\n");
    }
    return 0;
}

/// @brief Set connection to Serial device in case of proper configuration. Set device when connecting
/// @param devIn set the device when connecting.
/// @return status 0: ok 1: not ok.
int iserial::connect(const char * devIn)
{
    if(this->dev[0]=='N'){  //abort if no device is configured
        throw std::runtime_error("Attempt to connect without a defined Device"+ errno);
    }
    this->serial_port = open(devIn, O_RDWR| O_NONBLOCK | O_NDELAY);
    // Check for errors
    if (this->serial_port < 0) {
        throw std::runtime_error("Selected serial port is not available: "+to_string(this->serial_port));
    }
    //If configuration is not set, read configuration
    if(this->configFlag==0){
        printf("Configuration not found, reading device status");
        if(tcgetattr(this->serial_port, &this->tty) != 0) {
            throw std::runtime_error("Impossible to get device attributes");
        }
        this->baud=cfgetispeed(&this->tty);
    }else{
        //set configuration
        cfsetispeed(&this->tty, this->baud);
        cfsetospeed(&this->tty, this->baud);
        if (tcsetattr(this->serial_port, TCSANOW, &tty) != 0) {
            throw std::runtime_error("Error writing serial configuration");
        }
        this->setFlag=true;
        printf("Device connected\n");
    }
    return 0;
}

/// @brief Set connection to Serial device in case of proper configuration.
/// @return status 0: ok 1: not ok.
int iserial::disconnect()
{
    if(this->setFlag){//check if active
        int stat = close(this->serial_port);
        if(stat != 0){
            throw std::runtime_error("Serial port not closed, error found.");
        }
        this->serial_port = -1;
    }else{
        throw std::runtime_error("Device is not active");
    }
    return 0;
}

/// @brief read configuration from file.
/// @param file selected file on the same folder as the main program.
/// @return status 0: ok 1: not ok.
int iserial::fromFile(string file)
{
    ifstream confile (file);    // open the configuration file
    string line;
    stringstream ss;
    string temp = "";
    if (confile.is_open()){
        while ( getline (confile,line) ) {  // parse from = to #
            ss.str(line);
            getline(ss, temp, '=');
            if(temp=="dev"){// configure port
                getline(ss, temp, '#');
                this->setDevice(temp.c_str());
                this->printDevice();          
            }            
            if(temp=="parity"){// configure port
                getline(ss, temp, '#');
                if((temp[0]=='o') | (temp[0]=='O')){
                    this->setParity(P_ODD);
                }else{
                if((temp[0]=='e') | (temp[0]=='E')){
                    this->setParity(P_EVEN);
                }else{
                if((temp[0]=='n') | (temp[0]=='N')){
                    this->setParity(P_NONE); 
                }else{
                    this->setParity(P_UNK); 
                    this->config(-0x4);
                }}}
                this->printParity();
            }          
            if(temp=="bitnum"){// configure port
                getline(ss, temp, '#');
                if(temp[0]=='5'){
                    this->setBits(BN_B5); 
                }else{
                if(temp[0]=='6'){
                    this->setBits(BN_B6); 
                }else{
                if(temp[0]=='7'){
                    this->setBits(BN_B7); 
                }else{
                if(temp[0]=='8'){
                    this->setBits(BN_B8); 
                }else{
                    this->setBits(BN_UNK); 
                    configFlag = false;
                    this->config(-0x10);
                }}}} 
                this->printBits();
            }
            if(temp=="baud"){// configure port
                getline(ss, temp, '#');
               switch(stoi(temp)){
                    case 0:
                        this->setBaudrate(B0);
                        break;
                    case 50:
                        this->setBaudrate(B50);
                        break;
                    case 75:
                        this->setBaudrate(B75);
                        break;
                    case 110:
                        this->setBaudrate(B110);
                        break;
                    case 134:
                        this->setBaudrate(B134);
                        break;
                    case 150:
                        this->setBaudrate(B150);
                        break;
                    case 200:
                        this->setBaudrate(B200);
                        break;
                    case 300:
                        this->setBaudrate(B300);
                        break;
                    case 600:
                        this->setBaudrate(B600);
                        break;
                    case 1200:
                        this->setBaudrate(B1200);
                        break;
                    case 1800:
                        this->setBaudrate(B1800);
                        break;
                    case 2400:
                        this->setBaudrate(B2400);
                        break;
                    case 4800:
                        this->setBaudrate(B4800);
                        break;
                    case 9600:
                        this->setBaudrate(B9600);
                        break;
                    case 19200:
                        this->setBaudrate(B19200);
                        break;
                    case 38400:
                        this->setBaudrate(B38400);
                        break;
                    case 57600:
                        this->setBaudrate(B57600);
                        break;
                    case 115200:
                        this->setBaudrate(B115200);
                        break;
                    case 230400:
                        this->setBaudrate(B230400);
                        break;
                    case 460800:
                        this->setBaudrate(B460800);
                        break;
                    default:
                        this->setBaudrate(B0);
                        break;
                        this->config(-0x2);
                        cout<<"Attemting to set a not recomended baudrate "<<errno;
                }
                this->printBaudrate();
            }
            if(temp=="stopbit"){// configure port
                getline(ss, temp, '#');
                this->setStopBits(stoi(temp));
                this->printStopBits();
            }          
            if(temp=="flow"){// configure port
                getline(ss, temp, '#');
                if(temp[0]=='n'){
                    this->setFlow(F_NONE); 
                }else{
                if(temp[0]=='x'){
                    this->setFlow(F_XONOFF); 
                }else{
                if(temp[0]=='r'){
                    this->setFlow(F_RTSCTS); 
                }else{
                if(temp[0]=='d'){
                    this->setFlow(F_DSRDTR); 
                }else{
                    this->setFlow(F_UNK); 
                    this->config(-0x20);
                    configFlag = false;
                }}}} 
                this->printFlow();
            } 
            if(temp=="echo"){// configure port
                getline(ss, temp, '#');
                if(temp[1]=='n'){
                    this->setEcho(1); 
                }else{
                if(temp[1]=='f'){
                    this->setEcho(0); 
                }else{
                    configFlag = false;
                }}
                this->printEcho();
            }
        }
        confile.close();
        return 0;
    }else{
        cerr << "serial configuration file not valid\n";
        return 1;
        configFlag = false;
    }
    return 0;
}

/// @brief device string value setter /dev/ttyX.
/// @param device string value.
void iserial::setDevice(const char * devIn){
    this->dev=devIn;
    this->setFlag =false;
    this->config(0x1);
}
/// @brief device string value getter.
/// @return device constant char * value.
const char * iserial::getDevice(){
    if(this->configFlag){
        return this->dev;
    }else{
        return "None";
    }
}
/// @brief print device string value.
void iserial::printDevice(){ cout << "Device: " << this->dev << "\n";}

/// @brief speed baudrate value setter.
/// @param baudIn is a speed_t struct with the available values for the OS.
void iserial::setBaudrate(speed_t baudIn){
    this->baud=baudIn;
    this->setFlag =false;
    this->config(0x2);
}

/// @brief speed baudrate value getter.
/// @return speed_t struct with the available values for the OS.
speed_t iserial::getBaudrate()
{
    if(this->configFlag){
        return this->baud;
    }else{
        return 0;
    }
}
/// @brief print the baudrate
void iserial::printBaudrate(){ 
    int realBr;
    switch(this->baud){
        case B0:
            realBr=0;
            break;
        case B50:
            realBr=50;
            break;
        case B75:
            realBr=75;
            break;
        case B110:
            realBr=110;
            break;
        case B134:
            realBr=134;
            break;
        case B150:
            realBr=150;
            break;
        case B200:
            realBr=200;
            break;
        case B300:
            realBr=300;
            break;
        case B600:
            realBr=600;
            break;
        case B1200:
            realBr=1200;
            break;
        case B1800:
            realBr=1800;
            break;
        case B2400:
            realBr=2400;
            break;
        case B4800:
            realBr=4800;
            break;
        case B9600:
            realBr=9600;
            break;
        case B19200:
            realBr=19200;
            break;
        case B38400:
            realBr=38400;
            break;
        case B57600:
            realBr=57600;
            break;
        case B115200:
            realBr=115200;
            break;
        case B230400:
            realBr=230400;
            break;
        case B460800:
            realBr=460800;
            break;
        default:
            realBr=0;
            break;
    }
    
    cout << "Baudrate: " << realBr << "\n";}

/// @brief parity configuration setter. Only none and any is available (ODD,EVEN will return to parity on).
/// @param parIn Parity struct with the possible parities to configure.
void iserial::setParity(Parity parIn){
    this->par=parIn;
    if(parIn==P_NONE){
        this->tty.c_cflag &= ~PARENB; 
    }else{
        this->tty.c_cflag |= PARENB;
    }
    this->setFlag =false;
    this->config(0x4);
}
/// @brief parity configuration getter. 
/// @return parity struct with the possible parities to configure.
Parity iserial::getParity()
{
    if(this->configFlag){
        return this->par;
    }else{
        return P_UNK;
    }
}
/// @brief print parity configuration. 
void iserial::printParity(){ 
    cout << "Parity: ";
    if(this->par==P_NONE)
        cout<<"none";
    if(this->par==P_EVEN)
        cout<<"even";
    if(this->par==P_ODD)
        cout<<"odd";
    if(this->par==P_UNK)
        cout<<"not configured";
    cout<< "\n";
}

/// @brief StopBit number configuration setter.
/// @param stbIn integer with two possible values 0: 1 bit, rest: 2 bit.
void iserial::setStopBits(int stbIn){
    this->stopBits=stbIn;
    if(stbIn==0){
        this->tty.c_cflag &= ~CSTOPB;
    }else{
        this->tty.c_cflag |= CSTOPB;
    }
    this->setFlag =false;
    this->config(0x8);
}
/// @brief StopBit number configuration getter.
/// @return integer with two possible values 0: 1 bit, rest: 2 bit.
int iserial::getStopBits()
{
    if(this->configFlag){
        return this->stopBits;
    }else{
        return -1;
    }
}
/// @brief Print stop bit nubmer value.
void iserial::printStopBits(){ cout << "Stop Bits: " << this->stopBits << "\n";}

/// @brief number of transfer bits setter.
/// @param btIn struct Bitnum with the posible bitwidth available and none B5,B6,B7,B8, not conf.
void iserial::setBits(Bitnum btIn){
    this->btnum=btIn;
    if(btIn==BN_B5){
        this->tty.c_cflag |= CS5;
    }else{
    if(btIn==BN_B6){
        this->tty.c_cflag |= CS6;
    }else{
    if(btIn==BN_B7){
        this->tty.c_cflag |= CS7;
    }else{
    if(btIn==BN_B8){
        this->tty.c_cflag |= CS8;
    }else{
        this->tty.c_cflag &= ~CSIZE;
    }}}}
    this->setFlag =false;
    this->config(0x10);
}
/// @brief number of transfer bits getter.
/// @return struct Bitnum with the posible bitwidth available and none B5,B6,B7,B8, not conf.
Bitnum iserial::getBits()
{
    if(this->configFlag){
        return this->btnum;
    }else{
        return BN_UNK;
    }
}
/// @brief print number of transfer bits.
void iserial::printBits(){ 
    cout << "Bits Number: ";
    if(this->btnum==BN_B5)
        cout<<"5";
    if(this->btnum==BN_B6)
        cout<<"6";
    if(this->btnum==BN_B7)
        cout<<"7";
    if(this->btnum==BN_B8)
        cout<<"8";
    if(this->btnum==BN_UNK)
        cout<<"not configured";
    cout<< "\n";
}

/// @brief flow configuration setter.
/// @param flowIn struct Flow with the posible available flow configuration None,Xon/Xoff,CRT/CTS,RTS/CTS (Not available).
void iserial::setFlow(Flow flowIn){
    this->flin=flowIn;
    if(flin==F_NONE){
        this->tty.c_iflag &= ~(IXON | IXOFF | IXANY);
        this->tty.c_cflag &= ~CRTSCTS;
    }else{
    if(flin==F_XONOFF){
        this->tty.c_cflag |= ~(IXON | IXOFF | IXANY);
        this->tty.c_cflag &= ~CRTSCTS;
    }else{
    if(flin==F_RTSCTS){
        this->tty.c_iflag &= ~(IXON | IXOFF | IXANY);
        this->tty.c_cflag |= CRTSCTS;
    }else{
    if(flin==F_DSRDTR){
        this->tty.c_iflag &= ~(IXON | IXOFF | IXANY);
        this->tty.c_cflag &= ~CRTSCTS;
        cout<<"Not inplemented DSRDTR "<<errno;
    }else{
        this->tty.c_iflag &= ~(IXON | IXOFF | IXANY);
        this->tty.c_cflag &= ~CRTSCTS;
        cout<<"Imposible configuration "<<errno;
    }}}}
    this->setFlag =false;
    this->config(0x20);
}

/// @brief flow configuration getter.
/// @return struct Flow with the posible available flow configuration None,Xon/Xoff,CRT/CTS,RTS/CTS (Not available).
Flow iserial::getFlow(){
    if(this->configFlag){
        return this->flin;
    }else{
        return F_UNK;
    }
}

/// @brief print current flow configuration.
void iserial::printFlow(){ 
    cout << "Flow: ";
    if(this->flin==F_NONE)
        cout<<"none";
    if(this->flin==F_XONOFF)
        cout<<"Xon/Off";
    if(this->flin==F_RTSCTS)
        cout<<"RTS/CTS";
    if(this->flin==F_DSRDTR)
        cout<<"DSR/DTR";
    if(this->flin==F_UNK)
        cout<<"not configured";
    cout<< "\n";
}

/// @brief echo mode configuration setter.
/// @param echoIn int with two possible values 0: all echo off, rest: all echo on.
void iserial::setEcho(int echoIn){
    this->echoC = echoIn;
    if(echoIn==0){
        this->tty.c_lflag &= ~ECHO;     // Disable echo
        this->tty.c_lflag &= ~ECHOE;    // Disable erasure
        this->tty.c_lflag &= ~ECHONL;   // Disable new-line echo
    }else{
        this->tty.c_lflag |= ECHO;      // Enable echo
        this->tty.c_lflag |= ECHOE;     // Enable erasure
        this->tty.c_lflag |= ECHONL;    // Enable new-line echo
    }
    this->setFlag =false;
    this->config(0x40);
}
/// @brief echo mode configuration getter.
/// @return int with two possible values 0: all echo off, rest: all echo on.
int iserial::getEcho()
{
    if(this->configFlag){
        return this->echoC;
    }else{
        return -1;
    }
}
/// @brief print current echo mode configuration.
void iserial::printEcho(){ cout << "Echo: " << this->echoC << "\n";}
