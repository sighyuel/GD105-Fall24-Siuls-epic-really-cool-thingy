/*
For this piece I will be making a halloween themed clock for spooky season! It will be
wonderfully decorated for halloween time. I will use Jack-o-laterns to represent the 
hour hands and they will rotate and allow the 
*/

PImage pump;
PImage bat;
PImage web;
PFont Spooky;
float minuteHand;
int colour;

void setup() {
  size(1200,1200);
  pump = loadImage("pumpkin.png");
  bat = loadImage("bat.png");
  web = loadImage("web.png");
  Spooky = loadFont("Papyrus-Regular-60.vlw");
  imageMode(CENTER);
}

void draw(){
  
  int presentHour = hour();
  minuteHand = map(minute(), 0, 59, 0, TAU); // tells the minutes for the hour
  
  // colors for AM and PM 
 
  colour = (hour() < 12) ? #540076 : #000000;
  background(colour);
  
  // decorations to make her cute!!
  
  image(bat, 275, 280, 500, 500);
  image(web, 950, 265, 400, 400);
  textFont(Spooky);
  text("BOO!!!!!!!", 190, 800);
  text("AHHHH SO SCARY!!!!!", 415, 930);
  
  // all 12 hour "hands"
  
  if(presentHour == 1 || presentHour == 13){
    pushMatrix(); // keeps the translation contained with one pumpkin
    translate(50, height * .25);
    rotate(minuteHand); // rotates the pump according to the minute similar to analog clock
    image(pump, 0, 0, 90, 80);
    popMatrix(); // ends the translation for these coords so it only effects this pump
  } else { 
    image(pump, 50, height/2, 90, 80);
    }
  
  if(presentHour == 2 || presentHour == 14){
    pushMatrix();
    translate(150, height * .25);
    rotate(minuteHand);
    image(pump, 0, 0, 90, 80);
    popMatrix();
  } else {
    image(pump, 150, height/2, 90, 80);
  }
  
  if(presentHour == 3 || presentHour == 15){
    pushMatrix();
    translate(250, height * .25);
    rotate(minuteHand);
    image(pump, 0, 0, 90, 80);
    popMatrix();
  } else {
    image(pump, 250, height/2, 90, 80);
  }
  if(presentHour == 4 || presentHour == 16){
    pushMatrix();
    translate(350, height * .25);
    rotate(minuteHand);
    image(pump, 0, 0, 90, 80);
    popMatrix();
  } else {
    image(pump, 350, height/2, 90, 80);
  }
  if(presentHour == 5 || presentHour == 17){
    pushMatrix();
    translate(450, height * .25);
    rotate(minuteHand);
    image(pump, 0, 0, 90, 80);
    popMatrix();
  } else {
    image(pump, 450, height/2, 90, 80);
  }
  if(presentHour == 6 || presentHour == 18){
    pushMatrix();
    translate(550, height * .25);
    rotate(minuteHand);
    image(pump, 0, 0, 90, 80);
    popMatrix();
  } else {
    image(pump, 550, height/2, 90, 80);
  }
  if(presentHour == 7 || presentHour == 19){
    pushMatrix();
    translate(650, height * .25);
    rotate(minuteHand);
    image(pump, 0, 0, 90, 80);
    popMatrix();
  } else {
    image(pump, 650, height/2, 90, 80);
  }
  if(presentHour == 8 || presentHour == 20){
    pushMatrix();
    translate(750, height * .25);
    rotate(minuteHand);   
    image(pump, 0, 0, 90, 80);
    popMatrix();
  } else {
    image(pump, 750, height/2, 90, 80);
  }  
  if(presentHour == 9 || presentHour == 21){
    pushMatrix();
    translate(850, height * .25);
    rotate(minuteHand); 
    image(pump, 0, 0, 90, 80);
    popMatrix();
  } else {
    image(pump, 850, height/2, 90, 80);
  }  
  if(presentHour == 10 || presentHour == 22){
    pushMatrix();
    translate(950, height * .25);
    rotate(minuteHand);   
    image(pump, 0, 0, 90, 80);
    popMatrix();
  } else {
    image(pump, 950, height/2, 90, 80);
  }  
  if(presentHour == 11 || presentHour == 23){
    pushMatrix();
    translate(1050, height * .25);
    rotate(minuteHand);
    image(pump, 0, 0, 90, 80);
    popMatrix();
  } else {
    image(pump, 1050, height/2, 90, 80);
  }  
  if(presentHour == 12 || presentHour == 0){
    pushMatrix();
    translate(1150, height * .25);
    rotate(minuteHand);
    image(pump, 0, 0, 90, 80);
    popMatrix();
  } else {
    image(pump, 1150, height/2, 90, 80);
  }  
  

}
