class Bullet{
  
  PVector pos;
  PVector speedRed, speedGreen, speedBlue;
  color[] pallete = {#FF0000, #0000FF, #00FF00};
  int size;
  
  Bullet(float x, float y, int s){
    pos = new PVector(x, y);
    speedRed = new PVector(1.5,0.0);
    speedBlue = new PVector(0.75,0.0);
    speedGreen = new PVector(3.0,0.0);
    size = s;
    
  }
  
  void firingRed(){
    fill(pallete[0]);
    noStroke();
    circle(pos.x, pos.y, size);
    pos.add(speedRed); //  add speed to positon should be going fast
  }
  
  void firingBlue(){
    fill(pallete[1]);
    noStroke();
    circle(pos.x, pos.y, size);  
    pos.add(speedBlue); //  should be going slow 
  }
  
  void firingGreen(){
    fill(pallete[2]);
    noStroke();
    circle(pos.x, pos.y, size);    
    pos.add(speedGreen); // should be mid speed
  }
}
  
  
