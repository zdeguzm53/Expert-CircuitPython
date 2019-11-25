import processing.serial.*;
Serial myPort = new Serial(this, Serial.list()[1], 9600);

 uart = busio.UART(board.TX, board.RX, baudrate=9600);
 int myPotValue;

void setup ()
{
  size (300,300);  
  //The starting size is 300 x 300
}

void draw ()
{
  if (myPort.available() > 0) 
     { 
          int myNum = myPort.read();
          // lots more code here...
     }

  uart.write(bytes([myPotValue]));
}
