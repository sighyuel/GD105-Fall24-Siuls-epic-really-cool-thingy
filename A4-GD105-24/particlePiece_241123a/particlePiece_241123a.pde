/*
Squeakal of the build up piece using the same pallete but using a different method for 
build up :)
*/
Particle[] p; // array of particles


float hor = random(width * 0.25, width * 0.75); // x postion of the orbs
float vert = random(height * 0.25, height * 0.75); // y position of the orbs



void setup(){
  size(666,666); 
  background(255);
  p = new Particle[256]; // 256 orbs
  for(int i = 0; i < p.length; i++){
    p[i] = new Particle(hor + i, vert + i, 50); // the later orbs spawn lower and to the right
  }
  
 
}

void draw(){
  for(int i = 0; i < p.length; i++){
    p[i].display();
    p[i].update();
  }

}
