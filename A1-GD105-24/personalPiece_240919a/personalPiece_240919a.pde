PFont NitroTurbo;

void setup() {
  size(666, 666);
  NitroTurbo = loadFont("LucidaSans-DemiItalic-85.vlw");
}

 void draw() {
  translate(width/2, height/2);
  background(#000000);
  
  // Big Green Football
  noStroke();
  fill(#125740);
  ellipse(-1, 0, 666, 395);
  
  // NEW YORK JETS text
  fill(255);
  textFont(NitroTurbo);
  text("NEW YORK", -236, -74);  
  text("JETS", -117, 3);
  
  // white football in the middle of the logo
  stroke(#125740);
  strokeWeight(7);
  fill(#FFFFFF);
  ellipse(-20, 40, -112, -56);
  line(-40, 48, -40, 29);
  line(-30, 48, -30, 29);
  line(-20, 48, -20, 29);   
  line(-10, 48, -10, 29);  
  line(0, 48, 0, 29);  
  line(-75, 38, -43, 38);
  line(1, 38, 36, 38);  
  
   if(frameCount == 1) {
    save("personalPiece_2024-09-18.png");
  }
  
 }
