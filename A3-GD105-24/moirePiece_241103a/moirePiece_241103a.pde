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
  background(#000000); // draws the background on every frame creates Moire effect
  
  // red lines in the background that adds texture to the piece
  
  for(int i = 0; i <= AmountLines; i++){ 
    float lineY = i * spacing; // creates consistent space between all the lines
    strokeWeight(3); // thicker background so the foreground can pop out more
    stroke(#A71224);
    line(0, lineY, 666, lineY);
 }
  
  // orange lines
  
  for(int i = 0; i <= AmountLines; i++){ 
    
    if(i <= 33){ // to keep it on the top left of the campus
      strokeWeight(1);
      float lineX = i * spacing;
      stroke(#FF7B24);
      line(lineX, 0, 666, 666);
    }

  // yellow lines

    if(i >= 33){ // keeps lines on the top right of the campus
      float lineX = i * spacing;
      stroke(#FFF624);
      line(lineX, 0, 0, 666);
      
    }
    
  }
  
  
   // makes the piece animated
   
   spacing += accell;
   
   // makes the lines go to the left of the canvas till a certain point
   
   if(spacing > 15){
     accell = -0.05;
   }
   
   // makes the lines go to the right of the canvas till a certain point
   
   if(spacing < 10){
     accell = 0.05;
   }

  
  //if(frameCount == 1){
  //  save("moirePiece.png");
  //}

}
