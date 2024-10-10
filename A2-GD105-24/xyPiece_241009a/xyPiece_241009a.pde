/*
I want to make a peice that grows and shrinks while moving left to right while 
changing colors with a randomness but also with some continuity. I want someone to 
look at it and say oooooooooo and ahhhhhhhh.
*/

void setup() {
  size(666,666);
}

void draw() {
  background(255);
  translate(width/2, height/2);
  circle(noise(1 ,0 ,0), noise(1, 0, 1), 50);
}
