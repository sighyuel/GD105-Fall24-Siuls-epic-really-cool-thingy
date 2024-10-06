void setup() {
  size(666,666);
}


void draw() {
  fill(random(10, 250), random(10, 250), random(10, 250));
  stroke(random(250), random(250), random(250));
  strokeWeight(10);
  circle(random(333), random(333), 50);
  line(random(333, 666), random(333, 666), random(333, 666), random(333, 666));
  rect(random(333), random(333, 666), 30, 30);
  ellipse(random(333, 666), random(333), 60, 30);
  
  if(frameCount == 500) {
    save("randomShapes_2024_10_6.png");
  }
}
