void setup() { 
  size(666, 666);
  strokeCap(SQUARE);
}  

void draw() {
  background(167, 18, 36);
  // Orange line for the magma effect
  stroke(255, 123, 6);
  strokeWeight(35);
  line(65, 435, 405, 278); 
  line(69, 422, 42, 693); 
  line(71, 446, -97, 200); 
  line(230, 359, 112, -28); 
  line(379, 678, 111, 416); 
  line(-43, 113, 187, 189); 
  line(333,633, 470, -37); 
  line(139, 68, 440, 125); 
  line(429, 141, 679, 636); 
  line(382, 713, 691, 12);
 
  // Yellow line that amplifies the magma effect
  stroke(255, 246, 6);
  strokeWeight(22); 
  line(65, 435, 405, 278); 
  line(70, 422, 42, 693);  
  line(71, 444, -97, 200);  
  line(230, 359, 112, -28);  
  line(378, 678, 111, 416);  
  line(-40, 113, 178, 189);  
  line(333,633, 470, -37);  
  line(139, 68, 440, 125);  
  line(431, 144, 679, 629);
  line(379, 713, 691, 11);
  
  // White lines that further amplifies the magma effect
    stroke(249, 249, 243);
  strokeWeight(10); 
  line(69, 435, 405, 278); 
  line(71, 432, 42, 693);  
  line(71, 444, -97, 200);  
  line(230, 359, 112, -28);  
  line(378, 678, 111, 416);  
  line(-40, 113, 178, 189);  
  line(333,633, 470, -37);  
  line(139, 68, 440, 125);  
  line(431, 144, 679, 629);  
  line(379, 713, 691, 11);
  
  if(frameCount == 1) {
    save("linePiece_2024-09-05.png");
  }
}
