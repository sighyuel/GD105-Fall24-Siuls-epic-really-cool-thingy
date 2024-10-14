/*
I want to create an orbiting circle that changes in size while orbiting. I also want 
it to change colour with some randomness but like have it all be pretty similar 
colours. Overall I just want it to be pretty cool and amazing and stuff like that.
*/

void setup() {
 size(666,666); 
 frameRate(30); // protect from too intensive of switching of colors and size
 
 r = height * 0.42; // keeps the circle in canvas
 
 theta = 0.99; // angel
 
 thetaSpeed = 0.05; // makes the orbit a consistent speed
}

void draw() {
 
 int grow = (int)random(101); 
 
 // variables for the circle
 
 float z = map(grow, 0, 100, 0, 1);
 float x = r * cos(theta);
 float y = r * sin(theta);

 background(#ffffff);
 translate(width * 0.5, height * 0.5); // moving origin point
 
 rotate(frameCount * 0.03); // controls speed of rotation
 
 fill(randomColorPickin()); // pickin of random colours
 
 strokeWeight(3); // consistent outline with unconsistent size thinks its cool :)
 
 circle(x, y, z*100);
 
 println(frameCount);
   if(frameCount <= 210){
     saveFrame("frames/frame-###.png");
   } 
}
