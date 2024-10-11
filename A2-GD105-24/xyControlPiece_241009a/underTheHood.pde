// all of my custom functions and random thingys shall go here!!!

float r; // radius
float theta; // measured angel
float thetaSpeed; // speed of the orbiting circle


// random colorin' for the circle movin'

color randomColorPickin(){
  
  int h, s, b;
  
  h = round(random(0, 1));
  s = round(random(0, 1));
  b = round(random(0, 1));
  
  color rainbow = color(h, s, b);
  return rainbow;
}
  
