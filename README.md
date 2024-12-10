# BC3930 - FinalProject

## Blog: [Final Project - Simple Music Box](https://spotted-cayenne-502.notion.site/Final-Project-Simple-Music-Box-15828a677bce800f8b93c8bbda9f6f99)

### Tools Needed:
1. LILYGO ESP32 Board
2. [Arduino IDE](https://www.arduino.cc/en/software)
3. [Processing](https://processing.org/download)
4. TFT Espi Library [(Downloadable)](https://github.com/Xinyuan-LilyGO/TTGO-T-Display)  - [Documentation](https://github.com/Bodmer/TFT_eSPI/tree/5793878d24161c1ed23ccb136f8564f332506d53)
5. USB-c cord
6. 7 male/male wires (for breadboard)
7. 10k Ω resistor
8. Servo Motor
9. Photoresistor
10. Wires
11. Breadboard

### Code Description 

`/arduinoButtonAndJoystick` - holds the arduino file for code to uploaded to the ESP32 board for gathering serial communication 

- `buttonjoystick.ino` - arduino file with ESP 32 code

`/enclosure` - holds the svg files related to the enclosure for laser cutting

`/sanrioinvaders` - holds the code for launching the space invaders interface and game through the Processing application

- `spaceinvaders.pde` - processing file with space invaders code
  
### Fritzing Diagram




### Setup
1. Solder wires to your photoresistor.
2. Use the enclosure svg file in `/enclosuredesign` and some wood to laser cut the box design
3. Follow the Fritzing diagram and add your servo motor, photoresistor, 10K Ω resistor, and ESP32 board to the breadboard
4. Connect your ESP32 board to your computer via a USB-C cord
5. Download the `/lightsensing` and `/musicbox` folders
6. Open these folders in the Arduino IDE application and Processing application, respectively
7. Confirm that your ESP32 board connects to the Arduino application by running the arduino code file `lightsensing.ino` (you should see printed light values read from the serial communication)
8. Open the `musicbox.pde` from the `/musixbox` folder in the Processing application and ensure that it runs and complies
9. Once a screen pops up from the Processing application, you should be able to test out your music box!
   
~ *Feel free to make any edits to the code after downloading and experiment on your own!* ~
### Media

# Game Play video: 


# Enclosure photos (front and back view)
![frontview]()
![backview]()
