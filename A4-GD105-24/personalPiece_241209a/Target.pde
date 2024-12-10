class Target{
 
  PVector pos;
  PImage normalState, hitState;
  int hurtRadius;
  
  Target(float x, float y, float scale, float hitScale, 
         int hurtRadius, String normalState, String hitState){
    scale = 1.0;
    hitScale = 1.0;
    hurtRadius = 225;
    normalState = "Target.png";
    hitState = "Target2.png";
    pos = new PVector(x, y);
         }
    
    void display(){
      circle(635, 400, hurtRadius*2);
      image(normalState, pos.x, pos.y);
    }
    
    void update(){
      tint(#EA6F6F); 
      image(hitState, pos.x, pos.y);
      tint(#FFFFFF);
    }
    
    
}
