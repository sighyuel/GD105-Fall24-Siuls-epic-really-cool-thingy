class Particle {

  PVector pos, acceleration, velocity;
  color pallete; // pallete of the 
  int size;

  Particle(float x, float y, int s){
    pos =  new PVector(x, y);
    velocity =  PVector.random2D();
    acceleration = new PVector(0,0);
    size = s;
    pallete = color(random(250), random(250), 215);
  }

  void display() {  
    fill(pallete); 
    rotate(noise(0.02));
    stroke(15); // no stroke so we just see the colours
    circle(pos.x, pos.y, size);
    

  }

  void update(){ 
    pos.add(velocity);
    velocity.add(acceleration);
   
   // boolean rightEdge = pos.x + size < width;
   // boolean leftEdge = pos.x + size > width;
   // boolean topEdge = pos.y + size < height;
   // boolean botEdge = pos.y + size > height;
    
    if(pos.x + size == width){
      acceleration.mult(-1.0);
    }
    //if(topEdge || botEdge){
    //  velocity.mult(-1.0);
    //}          
  }
}
