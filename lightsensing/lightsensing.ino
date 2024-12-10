/*
  LILYGO LED & Pushbutton Example
  Pushbutton on 2
  LED on 15 with 220Ω resistor
*/
#include <ESP32Servo.h>
#define LED_PIN 15
#define LIGHT_PIN 33
#define SERVO_PIN 25

int lightVal;   // light reading
Servo spinner; // servo

void setup() {
  Serial.begin(9600);
  pinMode(LED_PIN, OUTPUT);
  spinner.attach(SERVO_PIN);
}

void loop() {
  lightVal = analogRead(LIGHT_PIN); // read the current light levels
  Serial.println(lightVal);

  if(lightVal < 1800) {  //box is closed
    digitalWrite(LED_PIN, LOW); 
  }
  else { // box is open
    digitalWrite(LED_PIN, HIGH); 

    for (int deg = 0; deg <= 180; deg+= 1) {
      spinner.write(deg);
      delay(10);
    }

    for (int deg = 180; deg >= 0; deg -= 1) {
      spinner.write(deg);
      delay(10);
    }
  }

}