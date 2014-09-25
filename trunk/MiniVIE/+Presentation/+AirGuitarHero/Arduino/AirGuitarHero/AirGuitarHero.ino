/*
Air Guitar Hero
 
 Basic program for arduino modified Wii Guitar which accepts
 serial commands and emulates button presses.  
 
 The data byte received is a bit mask for the buttons to be depressed
 Bit 0 = Green
 Bit 1 = Red
 Bit 2 = Yellow
 Bit 3 = Blue
 Bit 4 = Orange
 Bit 5 = unused
 Bit 6 = Strum Down
 Bit 7 = Strum Up
 
 So a byte value of 69 would correspond to "Green, Yellow, Strum Down"
 since the binary equivalent of 69 is 01000101
 
 Created 5/25/2013 Armiger
 */

// Globals: 

// These are the pin assignments.  
// Wires to these pins on the arduino should be connected to the corresponding pin on the guitar
int green = 2;
int red = 3;
int yellow = 4;
int blue = 5;
int orange = 6;
int up = 12;
int down = 13;

int incomingByte = 0;   // for incoming serial data

// the setup routine runs once when you press reset:
void setup() {                

  // initialize serial:
  //Serial.begin(9600);
  Serial.begin(115200);

  // initialize the digital pins as an output.
  for (int i = 2; i < 13; i++) {
    pinMode(i, OUTPUT);     
    digitalWrite(i, HIGH);
  }

}

// the loop routine runs over and over again forever:
void loop() {

  if (Serial.available() > 0) {
    // read the incoming byte:
    incomingByte = Serial.read();
  }

  // Green Button
  if (incomingByte & 0x01) {
    digitalWrite(green, LOW);
  } 
  else {
    digitalWrite(green, HIGH);
  }

  // Red Button
  if (incomingByte & 0x02) {
    digitalWrite(red, LOW);
  } 
  else {
    digitalWrite(red, HIGH);
  }

  // Yellow Button
  if (incomingByte & 0x04) {
    digitalWrite(yellow, LOW);
  } 
  else {
    digitalWrite(yellow, HIGH);
  }

  // Blue Button
  if (incomingByte & 0x08) {
    digitalWrite(blue, LOW);
  } 
  else {
    digitalWrite(blue, HIGH);
  }

  // Orange Button
  if (incomingByte & 0x10) {
    digitalWrite(orange, LOW);
  } 
  else {
    digitalWrite(orange, HIGH);
  }

  // Strum Down Button
  if (incomingByte & 0x40) {
    digitalWrite(down, LOW);
  } 
  else {
    digitalWrite(down, HIGH);
  }

  // Strum Up Button
  if (incomingByte & 0x80) {
    digitalWrite(up, LOW);
  } 
  else {
    digitalWrite(up, HIGH);
  }

}


