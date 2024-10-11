/*
I want to create an orbiting circle. I also want it to change colour with some 
randomness but like have it all be pretty similar colours. Overall I just want it 
to be pretty cool and amazing and stuff like that.
*/

void setup() {
 size(666,666); 
 frameRate(3);
 colorMode(HSB, 400);
 r = height * 0.42;
 theta = 0.999;
 thetaSpeed = 0.05;
}

void draw() {
 
 float x = r * cos(theta);
 float y = r * sin(theta);
 background(#ffffff);
 translate(width * 0.5, height * 0.5);
 rotate(frameCount * 0.03);
 fill(randomColorPickin());
 strokeWeight(3);
 circle(x, y, 50);

}
