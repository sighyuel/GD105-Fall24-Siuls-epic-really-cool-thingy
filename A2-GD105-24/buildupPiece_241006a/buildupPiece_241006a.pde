void setup() {
  size(666, 666);
  noSmooth();
  frameRate(50);
  background(255);
  randomSeed(5764753L);
}

void draw() {
 translate(width/2, height/2);
 fill(random(250), random(250), 215);
 noStroke();
 rotate(frameCount);
 circle(sin(1), frameCount*.03, 50);
 println(frameCount);
 
}
