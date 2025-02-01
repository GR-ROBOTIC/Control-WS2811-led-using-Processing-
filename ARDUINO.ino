
#include <FastLED.h>

#define LED_PIN 18
#define NUM_LEDS 7

CRGB leds[NUM_LEDS];


void setup() {

  FastLED.addLeds<WS2811, LED_PIN, GRB>(leds, NUM_LEDS);
  Serial.begin(9600); // set up the serial communication
}








void loop() {
  // Wait until there are 4 bytes available on serial port
  while (Serial.available() < 3) {}

  // Read 4 bytes and convert them to original values
  byte values[3];
  for (int i = 0; i < 3; i++) {
    values[i] = Serial.read();
  }
  int value1 = values[0];
  int value2 = values[1];
  int value3 = values[2];

  

leds[0] =CRGB( values[0], values[1], values[2]);
leds[1] =CRGB( values[0], values[1], values[2]);
leds[2] =CRGB( values[0], values[1], values[2]);
leds[3] =CRGB( values[0], values[1], values[2]);
leds[4] =CRGB( values[0], values[1], values[2]);
leds[5] =CRGB( values[0], values[1], values[2]);
FastLED.show();


  
}
