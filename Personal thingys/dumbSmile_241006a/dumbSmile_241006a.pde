void setup() {
  size(700, 700);
}

void draw() {
  
  int x, y;
  
  x = (int)constrain(mouseX, width*0.25, width*0.75);
  y = (int)constrain(mouseY, width*0.25, width*0.75);
;
  
  noStroke();
  fill(#00ff00);
  circle(x, y, 50);
  
  // eyes
  translate(width/2, height/2);
  fill(#000000);
  circle(145, -110, 20);
  circle(-145, -110, 20);
  
  // mouth
  
}
