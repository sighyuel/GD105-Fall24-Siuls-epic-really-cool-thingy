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
    stroke(15); // no stroke so we just see the colours
    circle(pos.x, pos.y, size);
    

  }

  void update(){ 
    pos.add(velocity);
    velocity.add(acceleration);
   
 // Check for collisions with walls and reverse velocity
    if (pos.x - size / 2 <= 0 || pos.x + size / 2 >= width) {
      velocity.x *= -1;
    }
    if (pos.y - size / 2 <= 0 || pos.y + size / 2 >= height) {
      velocity.y *= -1;
    }
  }
}
