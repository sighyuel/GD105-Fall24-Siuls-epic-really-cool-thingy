/*
For this piece I will be making a halloween themed clock for spooky season! It will be
wonderfully decorated for halloween time. I will use Jack-o-laterns to represent the 
hour hands and they will rotate and allow the person looking at the piece to tell the
minute of the hour as well
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
  
  int presentHour = hour() % 12;
  presentHour = presentHour == 0 ? 12 : presentHour;
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
  
  
  // Draw all 12 pumpkin "hour hands"
  for (int i = 1; i <= 12; i++) {
    // Calculate x-position
    float x = (i * 100) - 50; 
    // Adjust y based on present hour
    float y = (presentHour == i) ? height * 0.25 : height / 2;
    
    pushMatrix();
    // Move the pumpkins to the set coordinates
    translate(x, y);
    
    // Rotate the pumpkin if its current hour
    if (presentHour == i) {
      rotate(minuteHand);
    }
    // Draw the pumpkin
    image(pump, 0, 0, 90, 80);
    popMatrix();
  }
}
  
