void setup() {
  size(800, 800);
}

void draw() {
  background(255);
  
  int time = frameCount % 500; 
  float x, y;
  x = map(time, 0 , 499, 0, width);
  y = map(time, 0 , 499, height*.30, height*.80);
  
  circle(x, y, 20);
}
  
