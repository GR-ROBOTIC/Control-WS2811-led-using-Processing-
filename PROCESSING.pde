import controlP5.*;
import processing.serial.*;
ControlP5 cp5;
Serial myport;
int[] rgbValues = {0, 0, 0};
Knob myKnobA;

void setup() {
size(950, 500);
noStroke();
cp5 = new ControlP5(this);
printArray(Serial.list());
myport = new Serial (this,"COM27",9600);
  
  
  
myKnobA =cp5.addKnob("R")
               .setRange(0,255)
               .setValue(0)
               .setPosition(100,70)
               .setRadius(100)
               .setColorForeground(color(255))
               .setColorBackground(color(255,0,0))
               .setColorActive(color(255,255,0))
               .setDragDirection(Knob.HORIZONTAL)
               .setNumberOfTickMarks(10)
               ;
myKnobA =cp5.addKnob("G")
               .setRange(0,255)
               .setValue(0)
               .setPosition(400,70)
               .setRadius(100)
               .setColorForeground(color(255))
               .setColorBackground(color(0,255,0))
               .setColorActive(color(255,255,0))
               .setDragDirection(Knob.HORIZONTAL)
               .setNumberOfTickMarks(10)
               ;             
 myKnobA =cp5.addKnob("B")
               .setRange(0,255)
               .setValue(0)
               .setPosition(700,70)
               .setRadius(100)
               .setColorForeground(color(255))
               .setColorBackground(color(0,0,255))
               .setColorActive(color(255,255,0))
               .setDragDirection(Knob.HORIZONTAL)
               .setNumberOfTickMarks(10)
               ;   
               
    
}

void draw() {
  background(0);
  fill(rgbValues[0],rgbValues[1],rgbValues[2]);
  rect(380,410,250,80);
  noFill();
  strokeWeight(6);
  stroke(255,255,0);
  rect(380,410,250,80);
  textSize(40);
  fill(255,255,255);
  text("RED = "   +  rgbValues[0], 140,350);
  text("GREEN = " +  rgbValues[1], 425,350);
  text("BLUE = "  +  rgbValues[2], 740,350);
 for (int i = 0; i < 3  ; i++) {
    myport.write(rgbValues[i]);
    println(rgbValues[0]);
        println(rgbValues[1]);
            println(rgbValues[2]);
  }

}



void R(int teste_R){
rgbValues[0] = teste_R;
}
void G(int teste_G){
rgbValues[1] = teste_G;
}
void B(int teste_B){
rgbValues[2] = teste_B;
}
