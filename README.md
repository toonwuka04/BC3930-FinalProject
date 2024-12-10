# BC3930 - FinalProject

## Blog: [Final Project - Simple Music Box](https://spotted-cayenne-502.notion.site/Final-Project-Simple-Music-Box-15828a677bce800f8b93c8bbda9f6f99)

![Simple Music Box](https://github.com/user-attachments/assets/e88924c2-04cd-4fbb-b845-dcc613da39e4)

### Goal:
Create a box that plays music when opened (triggered by a light sensor).

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
12. Figurine & Glue

### Code Description 

`/lightsensing` - holds the arduino file for code to uploaded to the ESP32 board for sensing light and gathering serial communication 

- `lightsensing.ino` - arduino file with ESP 32 code

`/enclosuredesign` - holds the svg files related to the enclosure for laser cutting

`/musicbox` - holds the code for launching the audio element of the music box through the Processing application

- `musicbox.pde` - processing file with audio playing code
  
### Fritzing Diagram

<img width="740" alt="Screenshot 2024-12-10 at 4 04 53 PM" src="https://github.com/user-attachments/assets/32fd57d6-e7f8-4455-be79-ab1b08daceef">

### Setup
1. Solder wires to your photoresistor.
2. Use the enclosure svg file in `/enclosuredesign` and some wood to laser cut the box design
3. Follow the Fritzing diagram and add your servo motor, photoresistor, 10K Ω resistor, and ESP32 board to the breadboard
4. Loop your connected servo motor and photoresistor through the hole at the bottom of the closure design
5. Glue the figurine to the servo motor while its inside the enclosure box
6. Connect your ESP32 board to your computer via a USB-C cord
7. Download the `/lightsensing` and `/musicbox` folders
8. Open these folders in the Arduino IDE application and Processing application, respectively
9. Confirm that your ESP32 board connects to the Arduino application by running the arduino code file `lightsensing.ino` (you should see printed light values read from the serial communication)
10. Open the `musicbox.pde` from the `/musixbox` folder in the Processing application and ensure that it runs and complies
11. Once a screen pops up from the Processing application, you should be able to test out your music box!
   
~ *Feel free to make any edits to the code after downloading and experiment on your own!* ~
### Media

# Video: 


https://github.com/user-attachments/assets/d85469de-3b4e-45b2-84a1-b924c08507ce



# Enclosure photos (open and closed view)
![open](https://github.com/user-attachments/assets/3ec398bd-7cab-4c51-abb1-d5eb1f8d38aa)
![closed](https://github.com/user-attachments/assets/edaaa1ab-e3e9-4c5a-8da3-2d98794d2ece)

