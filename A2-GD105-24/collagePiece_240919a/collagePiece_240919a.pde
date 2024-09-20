/* I am making a collage of a bunch of cool things and pictures I like and wanted
to bring it all together it includes me and my partners pet(s) as well as yummy food 
I have eaten. Enjoy!!!
*/

PImage tyler;

void setup() {
  size(600, 600);
  tyler = loadImage("tyler_w.png");
  
}

void draw() {
  background(#FFFFFF);
  translate(width/2, height/2);
  image(tyler, -300, -300);
}
