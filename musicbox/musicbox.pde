import ddf.minim.*;
import processing.serial.*;

Serial myPort;
Minim minim;
AudioPlayer player;
AudioPlayer agape;
AudioPlayer cruelmoon;
AudioPlayer waltz;
String val;

void setup()
{
  size(512, 200, P3D);
  printArray(Serial.list());
  String portName = Serial.list()[5];
  println(portName);
  myPort = new Serial(this, portName, 9600);
  
  // we pass this to Minim so that it can load files from the data directory
  minim = new Minim(this);
  
  // loadFile will look in all the same places as loadImage does.
  // this means you can find files that are in the data folder and the 
  // sketch folder. you can also pass an absolute path, or a URL.
  player = minim.loadFile("waltz.mp3");
  agape = minim.loadFile("agape.mp3");
  cruelmoon = minim.loadFile("cruelmoon.mp3");
  waltz = minim.loadFile("waltz.mp3");
}

void draw(){
  
  if ( myPort.available() > 0) {         // If data is available,
    val = myPort.readStringUntil('\n');  // read it and store it in val
  }
  
  val = trim(val);
  if ( val != null ) {
    background(255);
    println(val);

    if (Integer.parseInt(val) >= 1800) {
      
      // if the player is at the end of the file,
      // we have to rewind it before telling it to play again
      if ( player.position() == player.length()) {
        player.rewind();
        player.play();
      } else {
        player.play();
      }
      
    } else {
      player.pause(); 
    }
    
  }
}
