class Particle {

  PVector pos, acceleration, velocity;
  color[] pallete = {#B42033, #CECECE, #FEFEFE, #11168E}; // colours of the US flag
  int size;

  Particle(float x, float y, int s){
    pos =  new PVector(x, y);
    velocity =  PVector.random2D();
    acceleration = new PVector(0,0);
    size = s;
  }

  void display() {  
    fill((pallete[0])); // first particle will be red
    noStroke(); // no stroke so we just see the colours
    noSmooth();
    circle(pos.x, pos.y, size);
  }

  void update(){
    for(int i = 0; i < pallete.length; i++){
      fill((pallete[i])); // make shapes the rest of the colours
    } 
    circle(pos.x, pos.y, size);
    pos.add(velocity);
    velocity.add(acceleration);
  }
}
