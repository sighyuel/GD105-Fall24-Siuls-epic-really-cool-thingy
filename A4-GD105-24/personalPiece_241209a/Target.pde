class Target{
 
  PVector pos;
  PImage normalState, hitState;
  int hurtRadius;
  
  
  Target(float x, float y, String Target){
    hurtRadius = 275;
    pos = new PVector(x, y);
    switch(Target){
      case "hitState":
        image(hitState, x, y);
        break; 
      default:
        image(normalState, x, y);
        break;
         }
  }
    
    void display(){
      pushMatrix();
      fill(#00FF00, 32);
      circle(645, 408, hurtRadius*2);
      image(normalState, pos.x, pos.y);
      popMatrix();
    }
    
    void update(){
      tint(#EA6F6F); 
      image(hitState, pos.x, pos.y);
      tint(#FFFFFF);
    } 
}
