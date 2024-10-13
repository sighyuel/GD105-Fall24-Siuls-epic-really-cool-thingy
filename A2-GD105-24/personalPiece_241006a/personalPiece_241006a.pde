/*
My favourite colour is green and I wanted to make a forever active build up type
piece where the colour green in a bunch of different shapes just keep on going forever
and ever. Green is the best colour ever and all shades of green are pretty and make 
me smile and jump for joy.
*/

void setup() {
  size(666,666);
  frameRate(30); // makes piece a lot easier to understand
}


void draw() {
  strokeWeight(5); // makes the shapes well defined and 
  
  stroke(#000000); // makes the build up effect more obivous after a long time
  
  fill(#073B3A); // dark cyan
  circle(random(333), random(333), 50);
  
  fill(#0B6E4F); // forest green
  square(random(333), random(333, 666), 50);
  
  fill(#08A045); // greenscreen green
  ellipse(random(333, 666), random(333), 50, 25);
  
  strokeWeight(10); // thickens the lines makes cover up more apparent
  
  stroke(#6BBF59); // Nickelodeon slime green
  line(random(333, 666), random(333, 666), random(333, 666), random(333, 666));
  
  println(frameCount); // tracking when to take a picture
  
  if(frameCount == 900) {
    save("randomShapes_2024_10_6.png");
  }
}
