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

// Three small circles around the symbol
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

// Right tear drop thingy
rotate( TAU * 1.0 / 5.1);
ellipse(379, -40, 61, 131);


}
