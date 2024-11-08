/*
wanted to make a cool portal that looks like you are gonna be sucked
into a new world filled with whimsy and wonder. I want the center to look 
like its so far away yet right infront of you. I picked the colours with
the intention of making the observer be intriged with wonder but also
feel some sense of safety.
*/

float r; // radius

float theta; // measured angel
float thetaSpeed; // speed of the thingy movin'


void setup() {
  size(666, 666);
  noSmooth();
  frameRate(5000);
  background(255);
  randomSeed(5764753L); // random set of numbers my cousin picked
   
  // setting up the border of the portal
   
  r = height * 0.54;
  theta = 0.9;
  thetaSpeed = 0.005;
}

void draw() {
 
 // getting prepared for the outer boarder of portal
  
 float x = r * cos(theta);
 float y = r * sin(theta);
 
 // setup for the look of the portal 
  
 translate(width/2, height/2);
 fill(random(250), random(250), 215);
 noStroke();

 // setup for the movement of the portal opening
 
 rotate(frameCount);
 circle(sin(1), frameCount*.03, 50);
 
 // keeping track of the amount of frames for future functions
 
 println(frameCount);
 


 
 //if(frameCount <= 15000) {
 //  saveFrame("frames/frame-######.png");
 //}

 // outer layer being constructed when the original circle leaves the boundary
 
 if(frameCount >= 12000) {
    circle(x, y, 50);
 }
}

void mouseClicked() {
 saveFrame("buildUpPiece.png"); 
 println("Done!!!");
}
  
