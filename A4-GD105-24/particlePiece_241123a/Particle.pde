class Particle {

  PVector pos, acceleration, velocity, speed;
  color pallete; // colours of the US flag
  int size;

  Particle(float x, float y, int s){
    pos =  new PVector(x, y);
    velocity =  PVector.random2D();
    acceleration = new PVector(0,0);
    speed = PVector.random2D();
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
    velocity.add(speed);
  }
}
