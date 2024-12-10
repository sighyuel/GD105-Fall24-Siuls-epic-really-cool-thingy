class Bullet{
  
  PVector pos;
  PVector speed;
  color c;
  int size;
  
  Bullet(float x, float y, String type){
    pos = new PVector(x, y);
    switch(type){
      case "slow":
        speed = new PVector(0.75, 0.0);
        c = #0000FF;
        size = 60;
        break; 
      case "medi":
        speed = new PVector(1.5, 0.0);
        c = #ff0000;
        size = 30;
        break;
      default:
        speed = new PVector(3.0, 0.0);
        c = #00ff00;
        size = 15;
        break;     
    }
    
  }
  
  void display(){
    fill(c);
    noStroke();
    circle(pos.x, pos.y, size);
  }
  
  // collision goes here arrow pointign downwards
  void update(){
    pos.add(speed);
    fill(#00ff00, 32);
    circle(634, 402, 548);
    if(size/2 + 548/2 > dist(mouseX, mouseY, 634, 402)){
      pushMatrix();
      tint(#EA6F6F);
      image(Target2, 300, 135);
      popMatrix();
    }
  }
}
  
  
