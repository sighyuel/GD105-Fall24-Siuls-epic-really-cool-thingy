// all of my custom functions and random thingys shall go here!!!

float r; // radius
float theta; // measured angel
float thetaSpeed; // speed of the orbiting circle



// random colorin' for the circle movin'

color randomColorPickin(){
  
  int r, g, b;
  
  r = round(random(70, 180));
  g = round(random(70, 180));
  b = round(random(70, 180));
  
  color rainbow = color(r, g, b);
  return rainbow;
  

}
  
