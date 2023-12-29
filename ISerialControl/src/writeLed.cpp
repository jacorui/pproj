
#include <ISerial.hpp>

int main() {

  iserial * iser = new iserial(); //! serial device

  int ans;          //! status answer serial
  string readStr; //! read string buffer
  
  //try{
    ans=iser->fromFile("conf"); //configure from file conf
    if(ans==0){
      printf("Configured");
      ans=iser->connect("/dev/ttyUSB1"); //connect to device
      ans=iser->writeS("\n\r\n\r"); //awake
      printf("Write Led value 12\n");
      ans=iser->writeS("L 12\r"); //write values to led L XX
      while(iser->available()<10){sleep(0.2);}
      ans=iser->readS(readStr); //read answer
      printf("%s",readStr.c_str());
      std::cin.get();
      printf("Write Led value 20\n");
      ans=iser->writeS("L 20\r"); //write values to led L XX
      while(iser->available()<10){sleep(0.2);}
      readStr=""; //reset string
      ans=iser->readS(readStr); //read answer
      printf("%s",readStr.c_str());
      std::cin.get();
      printf("Write Led value 1F\n");
      ans=iser->writeS("L 1F\r"); //write values to led L XX
      while(iser->available()<10){sleep(0.2);}
      readStr=""; //reset string
      ans=iser->readS(readStr); //read answer
      printf("%s",readStr.c_str());
      std::cin.get();
      printf("Write Led value 00\n");
      ans=iser->writeS("L 00\r"); //write values to led L XX
      while(iser->available()<10){sleep(0.2);}
      readStr=""; //reset string
      ans=iser->readS(readStr); //read answer
      printf("%s",readStr.c_str());
      std::cin.get();
      printf("Read SW value\n");
      ans=iser->writeS("S\r"); //write read switch S
      while(iser->available()<10){sleep(0.2);}
      readStr="";
      ans=iser->readS(readStr); //read answer
      printf("%s",readStr.c_str());
      std::cin.get();
    }


  //}catch(...){
    //cout << "Error: " << e.what() << endl;
  //}

  return 0;
}
