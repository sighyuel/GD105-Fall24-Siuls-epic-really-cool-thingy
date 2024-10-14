float r; // radius

float theta; // measured angel
float thetaSpeed; // speed of the thingy movin'


void setup() {
  size(666, 666);
  frameRate(5000);
  noSmooth();
  background(255);
  r = height * 0.54;
  theta = 0.9;
  thetaSpeed = 0.005;
}

void draw() {
  float x = r * cos(theta);
  float y = r * sin(theta);
   translate(width/2, height/2);
  rotate(frameCount);
  circle(x, y, 50);

}
