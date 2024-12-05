/*
Abstract Piece about the US and how its bright colors cant distract its history and 
current evil horrors it is actively participating in.
*/
Particle p;



void setup(){
  size(666,666);
  background(255);
  p = new Particle(width/2, height/2, 200);
}

void draw(){
  p.display();
  p.update();
}
