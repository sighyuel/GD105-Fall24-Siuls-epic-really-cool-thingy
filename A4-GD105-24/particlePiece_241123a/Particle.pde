class Particle {

  PVector pos, acceleration, velocity;
  color pallete; // pallete of the orbs
  int size;

  Particle(float x, float y, int s){
    pos =  new PVector(x, y);
    velocity =  PVector.random2D();
    acceleration = new PVector(0.075,0.075); // slows down the speed of the orbs
    size = s;
    pallete = color(random(250), random(250), 215); // blues and purples and pinks
  }

  void display() {  
    fill(pallete); 
    noStroke();
    circle(pos.x, pos.y, size);
    

  }

  void update(){ 
    pos.add(velocity);
    velocity.add(acceleration);
   
 // Check for collisions with walls and reverse velocity makes orbs bounce
    if (pos.x - size / 2 <= 0 || pos.x + size / 2 >= width) {
      velocity.x *= -1;
    }
    if (pos.y - size / 2 <= 0 || pos.y + size / 2 >= height) {
      velocity.y *= -1;
    }
  }
}
