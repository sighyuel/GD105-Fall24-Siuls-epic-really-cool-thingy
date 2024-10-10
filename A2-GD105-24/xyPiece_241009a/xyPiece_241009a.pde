/*
<<<<<<< HEAD
For my XY piece I wanted to make a gif that moves 
*/
=======
I want to make a peice that grows and shrinks while moving left to right while 
changing colors with a randomness but also with some continuity. I want someone to 
look at it and say oooooooooo and ahhhhhhhh.
*/

>>>>>>> b00ea510acd5dd90bae3bfb5335e58c1ffd9ec88
void setup() {
  size(666,666);
}

void draw() {
<<<<<<< HEAD
 background(255);
 translate(width/2, height/2);
 rotate(frameRate);
 circle(noise(1), noise(0), 30);
=======
  background(255);
  translate(width/2, height/2);
  circle(noise(1 ,0 ,0), noise(1, 0, 1), 50);
>>>>>>> b00ea510acd5dd90bae3bfb5335e58c1ffd9ec88
}
