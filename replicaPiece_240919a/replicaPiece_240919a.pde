void setup () {
  size(600, 600);
}

void draw() {
  translate(width/2, height/2);
  background(#FFFFFF);
  // Outer face plate
  stroke(#000000);
  strokeWeight(10);
  fill(95);
  circle(0, 0, 416);


  // upper triangle piece
  fill(#00FF00);
  triangle(84, -181, -89, -179, 0, 0);
  noStroke();
  ellipse(0, -183, -174, 40);
  stroke(#000000);
  line(0, 0, -88, -185);
  line(0, 0, 88, -189);
  
  // bottom triangle piece
  fill(#00FF00);
  triangle(-73, 184, 89, 184, 0, 0);
  noStroke();
  ellipse(7, 185, 152, 38);
  stroke(#000000);
  line(0, 0, 92, 185);
  line(0, 0, -73, 185);
 
  // outer top circle
  stroke(166);
  strokeWeight(7);
  fill(#00FF00);
  circle(0, -206, 37);
  
  // outer right circle
  circle(208, 0, 37);
  
  // outer left circle
  circle(-208, 0, 37);
  
  // outer bottom circle
  pushMatrix();
  translate(0, 206);
  stroke(166);
  strokeWeight(7);
  fill(#00FF00);
  circle(0, 0, 37);
  popMatrix();
  

  
  
}
