void setup () {
  size(666, 666);
}
// Making "Insanity" in Apothicon Language

void draw () {
  background(#000000);

  // outer circle
  noFill();
  strokeWeight(10);
  stroke(#7605FA);
  circle(width/2, height/2, width*.50);

  // Three small circles around the STsymbol
  fill(#7605FA);
  circle(202, 175, 35);
  circle(468, 175, 35);
  circle(333, 536, 35);

  strokeCap(ROUND);

  // Left Triangle

  triangle(262, 342, 284, 267, 308, 341);
  line(309, 347, 264, 343);
  line(260, 347, 307, 347);
  // Middle Triangle

  triangle(329, 297, 354, 202, 302, 202);
  line(345, 201, 300, 194);
  line(356, 195, 302, 194);
  // Right Triangle

  triangle(359, 342, 376, 267, 408, 341);
  line(358, 347, 408, 343);
  line(411, 347, 368, 347);

  // Left tear drop thingy
  rotate( TAU * 1.0 / 5.1);
  stroke(#000000);
  ellipse(379, -40, 61, 131);
  fill(#000000);
  noStroke();
  circle(409, -38, 59);

  
  // Right tear drop thingy
  fill(#7605FA);
  stroke(#000000);
  ellipse(421, -375, 57, 147);
  fill(#000000);
  noStroke();
  circle(391, -373, 59);
  
  if(frameCount == 1) {
    save("shapePiece_2024-09-17.png");
  }
}
