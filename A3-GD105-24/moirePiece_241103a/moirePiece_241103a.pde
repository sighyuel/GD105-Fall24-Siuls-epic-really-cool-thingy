/*
I want to make a squeakqule to my first line piece with made the magma effect and use
similar colours to make something move and be pretty. 
*/

int AmountLines = 222; // total lines for every colour
float spacing = 30; //  space between the lines to make them not jumbled up
float accell = 0.05; // acceleration of the movement of the lines

void setup() {
  size(666,666);
  
}

void draw(){
  background(#000000);
  
  for(int i = 0; i <= AmountLines; i++){
    float lineY = i * spacing;
    strokeWeight(1);
    stroke(#A71224);
    line(0, lineY, 666, lineY);
 }
  
  for(int i = 0; i <= AmountLines; i++){
    
    if(i <= 33){
      float lineX = i * spacing;
      stroke(#FF7B24);
      line(lineX, 0, 666, 666);
    }

    if(i >= 33){
      float lineX = i * spacing;
      stroke(#FFF624);
      line(lineX, 0, 0, 666);
      
    }
    
  }
  
  
   
   spacing += accell;
   
   if(spacing > 15){
     accell = -0.05;
   }
   
   if(spacing < 10){
     accell = 0.05;
   }

}
