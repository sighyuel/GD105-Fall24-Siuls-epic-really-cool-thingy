void setup() {
  size(666, 666);
  noSmooth();
  frameRate(5000);
  background(255);
  randomSeed(5764753L);
}

void draw() {
 
 int movement;
 movement = (int)constrain(frameRate, 833, 816);
  
 translate(width/2, height/2);
 fill(random(250), random(250), 215);
 noStroke();
 rotate(movement);
 circle(sin(50), frameCount*.03, 50);
}
