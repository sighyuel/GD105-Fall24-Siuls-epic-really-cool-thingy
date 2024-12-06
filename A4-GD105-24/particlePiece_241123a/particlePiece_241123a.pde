/*
I wanted to make a sequel to my build up piece but instead of a 
*/
Particle p;



void setup(){
  size(666,666);
 
  //for(int i = 0; i < p.length; i++){
    p = new Particle(random(width*0.25, width*0.75), 
                        random(height*0.25, height*0.75), 30);
  
 
}

void draw(){
  background(255);
  p.display();
  p.update();

}
